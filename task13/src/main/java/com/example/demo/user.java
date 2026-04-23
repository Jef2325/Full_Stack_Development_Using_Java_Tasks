package com.example.demo;

import jakarta.persistence.*;
import jakarta.validation.constraints.*;

@Entity
@Table(name = "users")
public class user {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @NotNull(message = "Name should not be null")
    @NotBlank(message = "Name should not be empty")
    private String name;

    @NotNull(message = "Email should not be null")
    @Pattern(
        regexp = "^[A-Za-z0-9+_.-]+@gmail\\.com$",
        message = "The email is not valid"
    )
    private String email;

    @NotNull(message = "Phone Number should not be null")
    @Pattern(
        regexp = "^[0-9]{10}$",
        message = "Number should be a ten digit"
    )
    private String phone;

    public user() {}

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getPhone() {
        return phone;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}