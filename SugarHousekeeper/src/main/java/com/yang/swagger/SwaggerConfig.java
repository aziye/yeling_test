package com.yang.swagger;

import static springfox.documentation.builders.PathSelectors.regex;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

import com.google.common.collect.Sets;

/**
 * Swagger描述
 */
@Configuration
@EnableWebMvc
@EnableSwagger2
public class SwaggerConfig {

	@Bean
	public Docket configSpringfoxDocketForAll() {
		return new Docket(DocumentationType.SWAGGER_2)
				.produces(Sets.newHashSet("application/json"))
				.consumes(Sets.newHashSet("application/json"))
				.protocols(Sets.newHashSet("http")).forCodeGeneration(true)
				.select().paths(regex(".*")).build().apiInfo(apiInfo());
	}

	private ApiInfo apiInfo() {
		Contact contact = new Contact("公司标题", "公司网址", "公司邮箱");
		ApiInfo apiInfo = new ApiInfo("项目名 API REST API文档",
				"使用Swagger UI构建CNPCMMS REST风格的可视化文档", "1.0.0",
				"此处改为index中修改的HTML地址", contact, "Apache License",
				"http://www.apache.org/licenses/LICENSE-2.0.html");
		return apiInfo;
	}

}
