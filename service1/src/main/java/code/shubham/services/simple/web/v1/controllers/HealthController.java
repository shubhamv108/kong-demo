package code.shubham.services.simple.web.v1.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import reactor.core.publisher.Mono;

@RestController
public class HealthController {

    @GetMapping("/")
    public Mono<String> welcome() {
        return Mono.just("Welcome!");
    }

    @GetMapping("/healthz")
    public Mono<String> health() {
        return Mono.just("Backend is healthy!");
    }
}