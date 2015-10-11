Subtraction

Narrative:
In order to get the difference
As an end user
I want to be able to subtract one number from another number

Scenario: Subtract one number from another using button interface
Given the user goes on the Google Calculator page
When the user performs '-14.8 − 9.7' using button interface
Then the user should see the result '-24.5'

Scenario: Subtract some number from zero
Given the user is on the Google Calculator page
When the user performs '0.0 - 20' using keyboard
Then the user should see the result '-20'

Scenario: Subtract one number from another using two minuses
Given the user is on the Google Calculator page
When the user performs '20 - -20.0' using keyboard
Then the user should see the result '0'

Scenario: "Subtract" positive number with a sign from another
Given the user is on the Google Calculator page
When the user performs '20.0 - +20' using keyboard
Then the user should see the result '40'
