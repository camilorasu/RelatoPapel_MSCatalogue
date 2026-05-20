package com.unir.catalogue.mapper;

import com.unir.catalogue.controller.model.PublisherRequestDto;
import com.unir.catalogue.controller.model.PublisherResponseDto;
import com.unir.catalogue.repository.model.Publisher;

import java.util.List;

public class PublisherMapper {

    private PublisherMapper(){}

    public static PublisherResponseDto toResponse(Publisher publisher){
        return PublisherResponseDto.builder()
                .id(publisher.getId())
                .name(publisher.getName())
                .build();
    }

    public static List<PublisherResponseDto> toResponseList(List<Publisher> publishers){
        return publishers.stream()
                .map(PublisherMapper::toResponse)
                .toList();
    }

    public static Publisher toEntity(PublisherRequestDto dto){
        return Publisher.builder()
                .name(dto.getName())
                .build();
    }
}
