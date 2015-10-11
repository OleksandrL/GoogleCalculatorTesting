package oleksandr_lukash.jbehave;

import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.Given;
import org.jbehave.core.annotations.Then;
import org.jbehave.core.annotations.When;

import oleksandr_lukash.steps.EndUserSteps;

public class CalculationSteps {

    @Steps
    EndUserSteps endUser;

    @Given("the user goes on the Google Calculator page")
    public void givenTheUserGoesOnTheGoogleCalculatorPage() {
        endUser.goesOnTheStartPage();
    }
    
    @Given("the user is on the Google Calculator page")
    public void givenTheUserIsOnTheGoogleCalculatorPage() {
        endUser.isTheStartPage();
    }
    
    @When("the user performs '$expression' using button interface")
    public void whenTheUserPerformsByButton(String expression) {
        endUser.entersByButtons(expression);
    }
    
    @When("the user performs '$expression' using keyboard")
    public void whenTheUserPerformsByKeyboard(String expression) {
        endUser.entersByKeyboard(expression);
    }

    @Then("the user should see the result '$result'")
    public void thenTheUserShouldSeeTheResult(String result) {
        endUser.shouldSeeResult(result);
    }

}
