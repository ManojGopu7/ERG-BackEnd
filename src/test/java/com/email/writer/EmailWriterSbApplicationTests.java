package com.email.writer;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;

import com.email.writer.app.EmailGeneratorService;

@SpringBootTest
class EmailWriterSbApplicationTests {

	@MockBean
    private EmailGeneratorService emailGeneratorService;
	
	@Test
	void contextLoads() {
	}

}
