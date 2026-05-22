package com.unir.catalogue.controller;

import com.unir.catalogue.controller.model.PublisherResponseDto;
import com.unir.catalogue.service.PublisherService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/v1/")
@RequiredArgsConstructor
public class PublisherController {
 private final PublisherService publisherService;

    @GetMapping("publishers")
    public ResponseEntity<List<PublisherResponseDto>> getPublishers(){
        return ResponseEntity.ok(
                publisherService.getPublishers()
        );
    }

    @GetMapping("publisher/{id}")
    public ResponseEntity<PublisherResponseDto> getPublisher(@PathVariable Integer id){
        return ResponseEntity.ok(
                publisherService.getPublisher(id)
        );
    }
}
