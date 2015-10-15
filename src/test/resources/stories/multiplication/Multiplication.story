Multiplication

Narrative:
In order to get the product
As an end user
I want to be able to multiply two numbers

Scenario: Multiplicate two numbers using button interface
Given the user goes on the Google Calculator page
When the user performs '25 × -35.5' using button interface
Then the user should see the result '-887.5'

Scenario: Multiplicate
Given the user is on the Google Calculator page
When the user performs 'expression' using keyboard
Then the user should see the result 'result'

Examples:
|expression        |result       |
|123456789012.0 * 1|123456789012 |
|-123456789012 * 1 |-123456789012|
|1234567850001 * 1 |1.2345679e+12|
|1234567840001 * 1 |1.2345678e+12|
|-20 * 0           |0            |
