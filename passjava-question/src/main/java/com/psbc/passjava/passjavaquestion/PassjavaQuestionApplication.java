package com.psbc.passjava.passjavaquestion;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@MapperScan("com.psbc.passjava.passjava-question.dao")
@SpringBootApplication
public class PassjavaQuestionApplication {

    public static void main(String[] args) {
        SpringApplication.run(PassjavaQuestionApplication.class, args);
    }

}
