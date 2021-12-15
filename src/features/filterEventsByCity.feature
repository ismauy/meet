Feature: Filter events by city

Scenario: When user hasn’t searched for a city, show upcoming events from all cities 
Given user hasn’t searched for any city 
When user opens the app 
Then user should see a list of all upcoming events

Scenario: User should see a list of suggestions when they search for a city 
Given main page is open 
When user starts typing in the city textbox 
Then user should see a list of cities (suggestions) that match what they typed

Scenario: User can select a city from the suggested list 
Given the user was typing “Berlin” in the city textbox. 
And the list of suggested cities is showing 
When the user selects a city from the list 
Then their city should be changed to that city. 
And the user should receive a list of upcoming events in that city