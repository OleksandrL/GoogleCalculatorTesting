Division

Narrative:
In order to get the remainder
As an end user
I want to be able to divide one number by another number

Scenario: Divide one number by another using button interface
Given the user goes on the Google Calculator page
When the user performs '25 ÷ -35.5' using button interface
Then the user should see the result '-0.70422535211'

Scenario: Divide '2 / -3'
Given the user is on the Google Calculator page
When the user performs '2 / -3' using keyboard
Then the user should see the result '-0.66666666667'

Scenario: Divide '-8.0 / 3'
Given the user is on the Google Calculator page
When the user performs '-8.0 / 3' using keyboard
Then the user should see the result '-2.66666666667'

Scenario: Divide '-0.000001 / 1'
Given the user is on the Google Calculator page
When the user performs '-0.000001 / 1' using keyboard
Then the user should see the result '-0.000001'

Scenario: Divide '0.0000001 / 1'
Given the user is on the Google Calculator page
When the user performs '0.0000001 / 1' using keyboard
Then the user should see the result '1e-7'

Scenario: Divide negative number by zero
Given the user is on the Google Calculator page
When the user performs '-20 / 0' using keyboard
Then the user should see the result '-Infinity'

Scenario: Divide positive number by zero
Given the user is on the Google Calculator page
When the user performs '20.55 / 0' using keyboard
Then the user should see the result 'Infinity'

Scenario: Divide zero by some number 
Given the user is on the Google Calculator page
When the user performs '0 / 20.0' using keyboard
Then the user should see the result '0'

Scenario: Divide zero by zero
Given the user is on the Google Calculator page
When the user performs '0.0 / 0' using keyboard
Then the user should see the result 'Error'
