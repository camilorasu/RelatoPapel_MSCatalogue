package com.unir.catalogue.service;

import com.unir.catalogue.controller.model.AuthorRequestDto;
import com.unir.catalogue.controller.model.AuthorResponseDto;
import com.unir.catalogue.exception.AuthorNotFoundException;
import com.unir.catalogue.mapper.AuthorMapper;
import com.unir.catalogue.repository.AuthorJpaRepository;
import com.unir.catalogue.repository.model.Author;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@RequiredArgsConstructor
public class AuthorService {
    private final AuthorJpaRepository authorJpaRepository;

    @Transactional(readOnly = true)
    public List<AuthorResponseDto> getAuthors(){
        List<Author> authors = authorJpaRepository.findAll();
        return AuthorMapper.toResponseList(authors);
    }

    @Transactional(readOnly = true)
    public AuthorResponseDto getAuthor(Integer id){
        Author author = authorJpaRepository.findById(id)
                .orElseThrow(()-> new AuthorNotFoundException(id));
        return AuthorMapper.toResponse(author);
    }

    @Transactional
    public AuthorResponseDto createAuthor(AuthorRequestDto dto){
        Author author = AuthorMapper.toEntity(dto);
        Author saveAuthor = authorJpaRepository.save(author);
        return AuthorMapper.toResponse(saveAuthor);
    }

    @Transactional
    public AuthorResponseDto updateAuthor(Integer id, AuthorRequestDto dto){
        Author author = authorJpaRepository.findById(id)
                .orElseThrow(()->new AuthorNotFoundException(id));
        author.setName(dto.getName());
        Author updateAuthor=authorJpaRepository.save(author);
        return AuthorMapper.toResponse(updateAuthor);
    }

    @Transactional
    public void deleteAuthor(Integer id){
        Author author = authorJpaRepository.findById(id)
                .orElseThrow(()-> new AuthorNotFoundException(id));
        authorJpaRepository.delete(author);
    }
}
