Multiplication

Narrative:
In order to get the product
As an end user
I want to be able to multiply two numbers

Scenario: Multiplicate two numbers using button interface
Given the user goes on the Google Calculator page
When the user performs '25 × -35.5' using button interface
Then the user should see the result '-887.5'

Scenario: Multiplicate '123456789012.0 * 1'
Given the user is on the Google Calculator page
When the user performs '123456789012.0 * 1' using keyboard
Then the user should see the result '123456789012'

Scenario: Multiplicate '-123456789012 * 1'
Given the user is on the Google Calculator page
When the user performs '-123456789012 * 1' using keyboard
Then the user should see the result '-123456789012'

Scenario: Multiplicate '1234567850001 * 1'
Given the user is on the Google Calculator page
When the user performs '1234567850001 * 1' using keyboard
Then the user should see the result '1.2345679e+12'

Scenario: Multiplicate '1234567840001 * 1'
Given the user is on the Google Calculator page
When the user performs '1234567840001 * 1' using keyboard
Then the user should see the result '1.2345678e+12'

Scenario: Multiplicate some number and zero
Given the user is on the Google Calculator page
When the user performs '-20 * 0' using keyboard
Then the user should see the result '0'
