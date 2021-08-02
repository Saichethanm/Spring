package com.spring;

public class TrackCoach implements Coach {
    @Override
    public String getDailyWorkout() {
        return "track coach workout";
    }

    //add an init method
    public void doMyStartupStuff(){
        System.out.println("TrackCoach: inside method doMyStartupStuff");
    }

    //add a destroy method
    public void doMyCleanupStuff(){
        System.out.println("TrackCoach: inside method doMyCleanupStuff");
    }
}
