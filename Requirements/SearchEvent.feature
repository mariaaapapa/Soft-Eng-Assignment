Feature: Search Event 
       As a user 
       I want to be able to search for an event created by me or an event i am attending
       So that i can view it
  
    Scenario: Search Event
            Given I want to find an event
            When I hover over the Events tab
            And I select the My events option
            Then I am redirected to My events page
            And I can search an event created by me or an event I am attending either by Name, Location, Date or Type        
    Scenario: Search event by name
            Given I want to find an event
            When I hover over the Events tab
            And I select the My events option
            Then I am redirected to My events page
            When I select Events Attending or Events Created By Me
            Then I can search an event either by Name , Location ,Date or Type
            When I search an event by name
            And I type the name of the event 
            Then all available events that have the same name with the one that I typed appear 
            And I can select the desired event
    Scenario: Search event by name unsuccessfully
            Given I want to find an event
            When I hover over the Events tab
            And I select the My events option
            Then I am redirected to My events page
            When I select Events Attending or Created
            Then I can search an event either by Name, Location, Date or Type
            When I search an event by name
            And I type the name of the event 
            And there are no available events that have the same name with the one that I typed 
            Then a message pops up " There are no available events under the name you have chosen"
    Scenario: Search event by date
            Given I want to find an event
            When I hover over the Events tab
            And I select the My events option
            Then I am redirected to My events page
            When I select Events Created or Attending
            Then I can search an event either by Name , Location ,Date or Type
            When I search an event by date
            Then a calendar appears 
            And I can select the desired date
            Then all available events that are going to take place the same date with the one that I chose appear 
            And I can select the desired event
    Scenario: Search event by date Unsuccessfully
            Given I want to find an event
            When I hover over the Events tab
            And I select the My events option
            Then I am redirected to My events page
            When I select Events Created or Attending 
            Then I can search an event by Name , Location ,Date or Type
            When I search an event by date
            Then a calendar appears 
            And I can select the desired date
            And there are no available events that are going to take place the same date with the one that I have chosen  
            Then a message pops up " There are no available events at the date you have chosen"
            
