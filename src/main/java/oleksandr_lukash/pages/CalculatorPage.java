package oleksandr_lukash.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;

import net.thucydides.core.annotations.*;
import net.serenitybdd.core.pages.WebElementFacade;
import net.serenitybdd.core.annotations.findby.FindBy;
import net.serenitybdd.core.pages.PageObject;

import java.util.List;

@DefaultUrl("https://www.google.com/")
public class CalculatorPage extends PageObject {
    
    @FindBy(css=".cwcd.cwbbc")
    private WebElementFacade buttonsSquare;

    @FindBy(id="cwos")
    private WebElementFacade inputBar;
    
    @FindBy(id="cwclrbtnAC")
    private WebElementFacade cleareButton;
    
    @FindBy(id="cwles")
    private WebElementFacade historyBar;
    
    @FindBy(id="cwmcwd")
    private WebElementFacade calculator;
    
    @FindBy(id="lst-ib")
    private WebElementFacade searchBar;

    @WhenPageOpens
    public void openCalculator(){
        searchBar.sendKeys("1-1", Keys.ENTER);
        waitFor(ExpectedConditions.visibilityOf(inputBar));
    }
    
    public void ascertainCalculatorIsOpened(){
    	if(!calculator.isPresent()){
    		this.open();
    	}
    }
    
    public void cleareCalculator(){
        waitFor(ExpectedConditions.visibilityOf(cleareButton));
    	cleareButton.click();
    }
    
    private List<WebElement> getButtonsList(){
    	return buttonsSquare.findElements(By.cssSelector("div>div>div>span"));
    }
    
    public void enterExpressionByButtons(String expression){
    	List<WebElement> buttons = getButtonsList();
    	char[]digits = (expression + "=").replaceAll("\\s", "").toCharArray();	
        for(char c: digits){
    		for(WebElement b: buttons){
    			if(b.getText().equals("" + c)){
                    b.click();
    			}
                else if(c == '-' && b.getText().equals("−")){
                	b.click();
                }
    		}
    	}
    }
    
    public String extractOnlyDigitsAndDots(String expression){
        return expression.replaceAll("[^\\.\\d]", "");
    }
    
    public void enterExpressionByKeyboard(String expression) {
    	Actions enterByKeyboard = new Actions(getDriver());
		enterByKeyboard.sendKeys(inputBar, expression.replaceAll("\\s", ""), Keys.ENTER).perform();
    }

    public String getResult() {
        return inputBar.getText();
    }
    
    public String getHistory() {
        return historyBar.getText();
    }
}