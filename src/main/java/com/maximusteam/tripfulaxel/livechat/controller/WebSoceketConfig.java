package com.maximusteam.tripfulaxel.livechat.controller;

import org.springframework.context.annotation.Configuration;
import org.springframework.messaging.simp.config.MessageBrokerRegistry;
import org.springframework.web.socket.config.annotation.EnableWebSocketMessageBroker;
import org.springframework.web.socket.config.annotation.StompEndpointRegistry;
import org.springframework.web.socket.config.annotation.WebSocketMessageBrokerConfigurer;

@Configuration
@EnableWebSocketMessageBroker
public class WebSoceketConfig implements WebSocketMessageBrokerConfigurer{

/*
 * STOMP 가 중간 메세지 브로커 역할이기에 먼저 이곳으로 들어온후
 * publish 할 때 사용할 url -> ApplicationDestinationPrefixes 로 설정
 * subscribe 할 때 사용할 url -> enableSimpleBroker로 설정
 * 
 * registerStompEndpoints -> 해당 링크로 동작하는 sockJs를 만들겠다는 의미 이다.
 */
	@Override
	public void configureMessageBroker(MessageBrokerRegistry config) {
		
		config.enableSimpleBroker("/topic");
		config.setApplicationDestinationPrefixes("/app");
	}
	
	@Override
	public void registerStompEndpoints(StompEndpointRegistry registry) {
		registry.addEndpoint("/chat").withSockJS();
	}
	

}
