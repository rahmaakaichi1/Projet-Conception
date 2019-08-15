package com.example.com.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.concurrent.ThreadPoolTaskScheduler;
import org.springframework.stereotype.Component;

@Component
public class ReservationTaskScheduler {
	
	@Autowired
    public ThreadPoolTaskScheduler taskScheduler;
	
	
	
	
	
	
	

}

class RunnableTask implements Runnable {

    private String message;

    public RunnableTask(String message) {
        this.message = message;
    }

    @Override
    public void run() {
        System.out.println("Runnable Task with " + message + " on thread " + Thread.currentThread().getName());
    }
}