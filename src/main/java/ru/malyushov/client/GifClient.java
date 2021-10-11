package ru.malyushov.client;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Repository;

import java.util.Map;

public interface GifClient {

    ResponseEntity<Map> getRandomGif(String apiKey, String tag);

}

