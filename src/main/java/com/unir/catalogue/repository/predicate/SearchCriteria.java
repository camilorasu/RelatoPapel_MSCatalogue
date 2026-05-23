package com.unir.catalogue.repository.predicate;

import jakarta.persistence.criteria.CriteriaBuilder;
import jakarta.persistence.criteria.CriteriaQuery;
import jakarta.persistence.criteria.Predicate;
import jakarta.persistence.criteria.Root;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.repository.Query;

import java.util.LinkedList;
import java.util.List;

public class SearchCriteria<Book> implements Specification<Book> {
    private final List<SearchStatement> list = new LinkedList<>();

    public void add(SearchStatement criteria){
        list.add(criteria);
    }

    @Override
    public Predicate toPredicate(Root<Book> root, CriteriaQuery<?> query, CriteriaBuilder builder){
        query.distinct(true);

        List<Predicate> predicates = new LinkedList<>();

        for(SearchStatement criteria: list) {
            if(criteria.getOperation().equals(SearchOperation.GREATER_THAN)){
                predicates.add(builder.greaterThan(
                        root.get(criteria.getKey()), criteria.getValue().toString()));
            } else if (criteria.getOperation().equals(SearchOperation.LESS_THAN)){
                predicates.add(builder.lessThan(
                        root.get(criteria.getKey()),criteria.getValue().toString()
                ));
            } else if (criteria.getOperation().equals(SearchOperation.GREATER_THAN_EQUAL)){
                predicates.add(builder.greaterThanOrEqualTo(
                        root.get(criteria.getKey()),criteria.getValue().toString()
                ));
            } else if (criteria.getOperation().equals(SearchOperation.LESS_THAN_EQUAL)){
                predicates.add(builder.lessThanOrEqualTo(
                        root.get(criteria.getKey()), criteria.getValue().toString()
                ));
            } else if (criteria.getOperation().equals(SearchOperation.NOT_EQUAL)){
                predicates.add(builder.notEqual(
                        root.get(criteria.getKey()), criteria.getValue()
                ));
            } else if (criteria.getOperation().equals(SearchOperation.EQUAL)) {
                predicates.add(builder.equal(
                        root.get(criteria.getKey()), criteria.getValue()
                ));
            } else if (criteria.getOperation().equals(SearchOperation.MATCH)) {
                if(criteria.getKey().equals(SearchFields.CATEGORIES)){
                    predicates.add(builder.like(
                            builder.lower(
                                    root.join("categories").get("name")
                            ),
                            "%" + criteria.getValue()
                                    .toString()
                                    .toLowerCase() + "%"
                    ));
                }
                else if (criteria.getKey().equals(SearchFields.AUTHORS)) {
                    predicates.add(builder.like(
                            builder.lower(
                                    root.join("authors").get("name")
                            ),
                            "%" + criteria.getValue()
                                    .toString()
                                    .toLowerCase() + "%"
                    ));
                }
                else if (criteria.getKey().equals(SearchFields.PUBLISHER)) {
                    predicates.add(builder.like(
                            builder.lower(
                                    root.join("publisher").get("name")
                            ),
                            "%" + criteria.getValue()
                                    .toString()
                                    .toLowerCase() + "%"
                    ));
                } else {
                    predicates.add(builder.like(
                            builder.lower(root.get(criteria.getKey())),
                            "%" + criteria.getValue().toString().toLowerCase() + "%"
                    ));
                }
            } else if (criteria.getOperation().equals(SearchOperation.STARTS_WITH)) {
                predicates.add(builder.like(
                        builder.lower(root.get(criteria.getKey())),
                        criteria.getValue().toString().toLowerCase() + "%"
                ));
            } else if (criteria.getOperation().equals(SearchOperation.ENDS_WITH)) {
                predicates.add(builder.like(
                        builder.lower(root.get(criteria.getKey())),
                        "%" + criteria.getValue().toString().toLowerCase()
                ));
            }
        }
        return builder.and(predicates.toArray(new Predicate[0]));
    }
}
