package com.nmnm.gms;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.UrlBasedViewResolver;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesView;

// Spring IoC 컨테이너가 탐색할 패키지 설정
// => 지정한 패키지 및 그 하위 패키지를 모두 뒤져서
// @Component 애노테이션이 붙은 클래스를 찾아 객체를 생성한다.
//
@ComponentScan(value = "com.nmnm.gms")
@EnableWebMvc
public class AppConfig {

  static Logger logger = LogManager.getLogger(AppConfig.class);

  public AppConfig() {
    logger.debug("AppConfig 객체 생성!");
  }

  // Spring IoC 컨테이너에 수동으로 객체를 등록하고 싶다면,
  // 그 객체를 만들어 주는 팩토리 메서드를 정의해야 한다.
  // => 단 메서드 선언부에 @Bean 애노테이션을 붙여야 한다.
  // => 그래야만 Spring IoC 컨테이너는
  // 이 메서드를 호출하고 그 리턴 값을 보관한다.

//  @Bean
//  public ViewResolver viewResolver() {
//    InternalResourceViewResolver vr = new InternalResourceViewResolver(//
//        "/WEB-INF/jsp/", // prefix
//        ".jsp" // suffix
//    );
//    vr.setOrder(2);
//    return vr;
//  }

  @Bean
  public ViewResolver tilesViewResolver() {
    UrlBasedViewResolver vr = new UrlBasedViewResolver();

    // Tiles 설정에 때라 템플릿을 실행할 뷰 처리기를 등록한다.
    vr.setViewClass(TilesView.class);

    // 뷰리졸버의 우선 순위를 InternalResourceViewResolver 보다 우선하게 한다.
    //vr.setOrder(1);
    return vr;
  }

  @Bean
  public TilesConfigurer tilesConfigurer() {
    TilesConfigurer configurer = new TilesConfigurer();
    configurer.setDefinitions("/WEB-INF/defs/tiles.xml");
    return configurer;
  }

  //    <!-- MultipartResolver 설정 --> 
  @Bean
  public MultipartResolver multipartResolver() {
    CommonsMultipartResolver mr = new CommonsMultipartResolver();
    mr.setMaxUploadSize(10000000);
    mr.setMaxInMemorySize(2000000);
    mr.setMaxUploadSizePerFile(5000000);
    return mr;
  }

}


