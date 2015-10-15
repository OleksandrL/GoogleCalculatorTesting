Addition

Narrative:
In order to get the sum
As an end user
I want to be able to add two numbers

Scenario: Add two numbers using button interface
Given the user goes on the Google Calculator page
When the user performs '-20 + 36.5' using button interface
Then the user should see the result '16.5'

Scenario: Add
Given the user is on the Google Calculator page
When the user performs 'expression' using keyboard
Then the user should see the result 'result'

Examples:
|expression|result|
|-25 + 35.5|10.5|
|25.0 + -25|0   |
|-20 + 0.0 |-20 |