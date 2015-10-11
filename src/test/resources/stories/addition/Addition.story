Addition

Narrative:
In order to get the sum
As an end user
I want to be able to add two numbers

Scenario: Add two numbers using button interface
Given the user goes on the Google Calculator page
When the user performs '-20 + 36.5' using button interface
Then the user should see the result '16.5'

Scenario: Add negative and positive numbers
Given the user is on the Google Calculator page
When the user performs '-25 + 35.5' using keyboard
Then the user should see the result '10.5'

Scenario: Add positive and negative numbers
Given the user is on the Google Calculator page
When the user performs '25.0 + -25' using keyboard
Then the user should see the result '0'

Scenario: Add some number and zero
Given the user is on the Google Calculator page
When the user performs '-20 + 0.0' using keyboard
Then the user should see the result '-20'
