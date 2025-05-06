package com.umu.appdemo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/messages")
public class AppRestController {

    @GetMapping
    public String getMessage() {
        return "Hello Everyone";
    }
}
