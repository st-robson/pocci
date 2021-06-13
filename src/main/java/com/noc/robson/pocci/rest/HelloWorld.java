package com.noc.robson.pocci.rest;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/helloworld")
public class HelloWorld {
    @GetMapping
    public String getMessage() {
        return "<h1>Hello World!</h1>";
    }
}
