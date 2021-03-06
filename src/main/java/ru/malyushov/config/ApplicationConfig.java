package ru.malyushov.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.text.SimpleDateFormat;

@Configuration
public class ApplicationConfig {

    @Bean("date")
    public SimpleDateFormat simpleDateFormatForDate() {
        return new SimpleDateFormat("yyyy-MM-dd");
    }

    @Bean("time")
    public SimpleDateFormat simpleDateFormatForTime() {
        return new SimpleDateFormat("yyyy-MM-dd HH");
    }

}
