Subtraction

Narrative:
In order to get the difference
As an end user
I want to be able to subtract one number from another number

Scenario: Subtract one number from another using button interface
Given the user goes on the Google Calculator page
When the user performs '-14.8 − 9.7' using button interface
Then the user should see the result '-24.5'

Scenario: Subtract
Given the user is on the Google Calculator page
When the user performs 'expression' using keyboard
Then the user should see the result 'result'

Examples:
|expression|result|
|0.0 - 20  |-20   |
|20 - -20.0|0     |
|20.0 - +20|40    |
