package com.unir.catalogue.mapper;

import com.unir.catalogue.controller.model.AuthorRequestDto;
import com.unir.catalogue.controller.model.AuthorResponseDto;
import com.unir.catalogue.controller.model.BookRequestDto;
import com.unir.catalogue.repository.model.Author;

import java.util.List;

public class AuthorMapper {
    private AuthorMapper(){}

    public static AuthorResponseDto toResponse(Author author){
        return AuthorResponseDto.builder().id(author.getId())
                .name(author.getName())
                .build();
    }

    public static List<AuthorResponseDto> toResponseList(List<Author> authors){
        return authors.stream()
                .map(AuthorMapper::toResponse)
                .toList();
    }

    public static Author toEntity(AuthorRequestDto dto){
        return Author.builder().name(dto.getName()).build();
    }
}
