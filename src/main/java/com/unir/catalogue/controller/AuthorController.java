package com.unir.catalogue.controller;

import com.unir.catalogue.controller.model.AuthorRequestDto;
import com.unir.catalogue.controller.model.AuthorResponseDto;
import com.unir.catalogue.service.AuthorService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.io.Serializable;
import java.util.List;

@RestController
@RequestMapping("/api/v1/")
@RequiredArgsConstructor
public class AuthorController implements Serializable {

    private final AuthorService authorService;

    @GetMapping("authors")
    public ResponseEntity<List<AuthorResponseDto>> getAuthors(){
        return ResponseEntity.ok(
                authorService.getAuthors()
        );
    }

    @GetMapping("authors/{id}")
    public ResponseEntity<AuthorResponseDto> getAuthor(@PathVariable Integer id){
        return ResponseEntity.ok(
                authorService.getAuthor(id)
        );
    }

    @PostMapping("authors")
    public ResponseEntity<AuthorResponseDto> createAuthor(@RequestBody AuthorRequestDto requestDto){
        return ResponseEntity.status(HttpStatus.CREATED)
                .body(authorService.createAuthor(requestDto));
    }

    @PutMapping("authors/{id}")
    public ResponseEntity<AuthorResponseDto> updateAuthor(@PathVariable Integer id, @RequestBody AuthorRequestDto requestDto){
        return ResponseEntity.ok(
                authorService.updateAuthor(id,requestDto)
        );
    }

    @DeleteMapping("authors/{id}")
    public ResponseEntity<Void> deleteAuthor(@PathVariable Integer id){
        authorService.deleteAuthor(id);
        return ResponseEntity.noContent().build();
    }
}
