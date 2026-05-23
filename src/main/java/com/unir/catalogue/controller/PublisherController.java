package com.unir.catalogue.controller;

import com.unir.catalogue.controller.model.PublisherRequestDto;
import com.unir.catalogue.controller.model.PublisherResponseDto;
import com.unir.catalogue.service.PublisherService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

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

    @GetMapping("publishers/{id}")
    public ResponseEntity<PublisherResponseDto> getPublisher(@PathVariable Integer id){
        return ResponseEntity.ok(
                publisherService.getPublisher(id)
        );
    }

    @PostMapping("publishers")
    public ResponseEntity<PublisherResponseDto> createPublisher(@RequestBody PublisherRequestDto requestDto){
        return ResponseEntity.status(HttpStatus.CREATED)
                .body(publisherService.createPublisher(requestDto));
    }

    @PutMapping("publishers/{id}")
    public ResponseEntity<PublisherResponseDto> updatePublisher(@PathVariable Integer id, @RequestBody PublisherRequestDto requestDto){
        return ResponseEntity.ok(
                publisherService.updatePublisher(id,requestDto)
        );
    }

    @DeleteMapping("publishers/{id}")
    public ResponseEntity<Void> deletePublisher(@PathVariable Integer id){
        publisherService.deletePublisher(id);

        return ResponseEntity.noContent().build();
    }
}
