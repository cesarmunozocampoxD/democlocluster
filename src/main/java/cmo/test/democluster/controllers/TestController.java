package cmo.test.democluster.controllers;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {

    @GetMapping("/test_get_request")
    public ResponseEntity<Object> testGetRequest() {
        return ResponseEntity.ok("test completed");
    }

}
