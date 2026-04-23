package com.example.demo;

import org.springframework.web.bind.annotation.*;
import jakarta.validation.Valid;
import java.util.List;

@RestController
@RequestMapping("/users")
public class userController {

    private final UserRepository repo;

    public userController(UserRepository repo) {
        this.repo = repo;
    }

    // Insert user
    @PostMapping
    public user createUser(@Valid @RequestBody user user) {
        return repo.save(user);
    }

    // Get all users
    @GetMapping
    public List<user> getAllUsers() {
        return repo.findAll();
    }
}