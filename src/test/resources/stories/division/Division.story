Division

Narrative:
In order to get the remainder
As an end user
I want to be able to divide one number by another number

Scenario: Divide one number by another using button interface
Given the user goes on the Google Calculator page
When the user performs '25 ÷ -35.5' using button interface
Then the user should see the result '-0.70422535211'

Scenario: Divide
Given the user is on the Google Calculator page
When the user performs 'expression' using keyboard
Then the user should see the result 'result'

Examples:
|expression   |result        |
|2 / -3       |-0.66666666667|
|-8.0 / 3     |-2.66666666667|
|-0.000001 / 1|-0.000001     |
|0.0000001 / 1|1e-7          |
|-20 / 0      |-Infinity     |
|20.55 / 0    |Infinity      |
|0 / 20.0     |0             |
|0.0 / 0      |Error         |
