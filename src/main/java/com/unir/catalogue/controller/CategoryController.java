package com.unir.catalogue.controller;

import com.unir.catalogue.controller.model.CategoryRequestDto;
import com.unir.catalogue.controller.model.CategoryResponseDto;
import com.unir.catalogue.service.CategoryService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.io.Serializable;
import java.util.List;

@RestController
@RequestMapping("/api/v1/")
@RequiredArgsConstructor
public class CategoryController implements Serializable {

    private final CategoryService categoryService;

    @GetMapping("categories")
    public ResponseEntity<List<CategoryResponseDto>> getCategories(){
        return ResponseEntity.ok(
                categoryService.getCategories()
        );
    }

    @GetMapping("categories/{id}")
    public ResponseEntity<CategoryResponseDto> getCategory(@PathVariable Integer id){
       return ResponseEntity.ok(
               categoryService.getCategory(id)
       );
    }

    @PostMapping("categories")
    public ResponseEntity<CategoryResponseDto> createCategory(@RequestBody CategoryRequestDto requestDto){
        return ResponseEntity.status(HttpStatus.CREATED)
                .body(categoryService.createCategory(requestDto));
    }

    @PutMapping("categories/{id}")
    public ResponseEntity<CategoryResponseDto> updateCategory(@PathVariable Integer id, @RequestBody CategoryRequestDto requestDto){
        return ResponseEntity.ok(
                categoryService.updateCategory(id, requestDto)
        );
    }

    @DeleteMapping("categories/{id}")
    public ResponseEntity<Void> deleteCategory(@PathVariable Integer id){
        categoryService.deleteCategory(id);
        return ResponseEntity.noContent().build();
    }
}
