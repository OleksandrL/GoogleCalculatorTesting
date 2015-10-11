package oleksandr_lukash.steps;

import oleksandr_lukash.pages.CalculatorPage;
import net.serenitybdd.core.Serenity;
import net.thucydides.core.annotations.Step;
import net.thucydides.core.steps.ScenarioSteps;
import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.equalTo;

@SuppressWarnings("serial")
public class EndUserSteps extends ScenarioSteps {

    CalculatorPage calculatorPage;

    @Step
    public void entersByButtons(String expression){
        calculatorPage.enterExpressionByButtons(expression);
        assertThat(calculatorPage.extractOnlyDigitsAndDots(expression), 
                equalTo(calculatorPage.extractOnlyDigitsAndDots(calculatorPage.getHistory())));
    }
    
    @Step
    public void entersByKeyboard(String expression) {
        calculatorPage.enterExpressionByKeyboard(expression);
    }

    @Step
    public void shouldSeeResult(String result) {
        assertThat(calculatorPage.getResult(), equalTo(result));
        Serenity.takeScreenshot();
    }

    @Step
    public void goesOnTheStartPage() {
        calculatorPage.open();
        calculatorPage.cleareCalculator();
    }
    
    @Step
    public void isTheStartPage() {
    	calculatorPage.ascertainCalculatorIsOpened();
        calculatorPage.cleareCalculator();
    }
}