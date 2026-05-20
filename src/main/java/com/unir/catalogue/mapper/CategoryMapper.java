package com.unir.catalogue.mapper;

import com.unir.catalogue.controller.model.CategoryRequestDto;
import com.unir.catalogue.controller.model.CategoryResponseDto;
import com.unir.catalogue.repository.model.Category;

import java.util.List;

public class CategoryMapper {

    private CategoryMapper categoryMapper;

    public static CategoryResponseDto toResponse(Category category){
        return CategoryResponseDto.builder()
                .id(category.getId())
                .name(category.getName())
                .build();
    }

    public static List<CategoryResponseDto> toResponseList(List<Category> categories){
        return categories.stream()
                .map(CategoryMapper::toResponse)
                .toList();
    }

    public static Category toEntity(CategoryRequestDto dto){
        return Category.builder()
                .name(dto.getName())
                .build();
    }
}
