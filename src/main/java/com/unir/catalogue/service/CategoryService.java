package com.unir.catalogue.service;

import com.unir.catalogue.controller.model.CategoryRequestDto;
import com.unir.catalogue.controller.model.CategoryResponseDto;
import com.unir.catalogue.exception.CategoryNotFoundException;
import com.unir.catalogue.mapper.CategoryMapper;
import com.unir.catalogue.repository.CategoryJpaRepository;
import com.unir.catalogue.repository.model.Category;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@RequiredArgsConstructor
public class CategoryService {
    private final CategoryJpaRepository categoryJpaRepository;

    @Transactional(readOnly = true)
    public List<CategoryResponseDto> getCategories(){
        List<Category> categories = categoryJpaRepository.findAll();
        return CategoryMapper.toResponseList(categories);
    }

    @Transactional(readOnly = true)
    public CategoryResponseDto getCategory(Integer id){
        Category category = categoryJpaRepository.findById(id)
                .orElseThrow(()-> new CategoryNotFoundException(id));
        return CategoryMapper.toResponse(category);
    }

    @Transactional
    public CategoryResponseDto createCategory(CategoryRequestDto dto){
        Category category = CategoryMapper.toEntity(dto);
        Category saveCategory = categoryJpaRepository.save(category);
        return CategoryMapper.toResponse(saveCategory);
    }

    @Transactional
    public CategoryResponseDto updateCategory(Integer id, CategoryRequestDto dto){
        Category category = categoryJpaRepository.findById(id)
                .orElseThrow(()-> new CategoryNotFoundException(id));
        category.setName(dto.getName());
        Category updateCategory = categoryJpaRepository.save(category);
        return CategoryMapper.toResponse(updateCategory);
    }

    @Transactional
    public void deleteCategory(Integer id){
        Category category = categoryJpaRepository.findById(id)
                .orElseThrow(()-> new CategoryNotFoundException(id));
        if(!category.getBooks().isEmpty()){
            throw new IllegalStateException(
                    "No se puede eliminar la categoria porque tiene libros asociados"
            );
        }
        categoryJpaRepository.delete(category);
    }
}
