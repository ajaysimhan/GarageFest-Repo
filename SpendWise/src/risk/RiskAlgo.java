package risk;


public class RiskAlgo
{

    public static void main(String[] args)
    {
        double age=0;
        double annualIncome=0;
        double netWorth =0;
        double debt=0;
        double debtInterestRate=0;
        double expense=0;
        
        final double LOGCONSTANT= Math.log(24);
        double inflationRate=2;
        
        double incomeHealth = getIncomeHealth(annualIncome, LOGCONSTANT);
        double netWorthHealth = getNetworthHealth(netWorth);
        double debtHealth = getDebtHealth(annualIncome,debt,debtInterestRate,inflationRate);
        double expenseHealth = getExpenseHealth(expense, annualIncome);
        double agePoints = getAgePoints(age);
        
        double financialRisk = getFinancialRisk(incomeHealth, netWorthHealth, debtHealth, expenseHealth, agePoints);
    }

    private static double getIncomeHealth(double annualIncome, double LOGCONSTANT)
    {
        double logIncome = (annualIncome/1000)/LOGCONSTANT;
        double incomeHealth=(logIncome-1)*100;
        if(incomeHealth<5) {
            return 5;
        }
        if(incomeHealth>100) {
            return 100;
        }
        return incomeHealth;
    }

    private static double getNetworthHealth(double netWorth)
    {
        if(netWorth<-100000) {
            return -20;
        }else if(netWorth<-10000) {
            return -10;
        }else if(netWorth<0) {
            return 0;
        }else if(netWorth<1000) {
            return 20;
        }else if(netWorth<5000) {
            return 40;
        }else if(netWorth<10000) {
            return 50;
        }else if(netWorth<50000) {
            return 60;
        }else if(netWorth<100000) {
            return 70;
        }else if(netWorth<100000) {
            return 80;
        }else if(netWorth<500000) {
            return 90;
        }else if(netWorth<1000000) {
            return 95;
        }
        return 100;
    }
    
    private static double getDebtHealth( double annualIncome, double debt, double debtInterestRate, double inflationRate)
    {
        double debtRatio = debt/annualIncome;
        double debtBurden= debtInterestRate-inflationRate;
        if(debtBurden>2) {
            debtRatio=debtRatio*(debtBurden/2);
        }
        if(debtRatio>20) {
            return -90;
        }else if(debtRatio>15) {
            return -80;
        }else if(debtRatio>10) {
            return -70;
        }else if(debtRatio>5) {
            return -60;
        }
        return 0;
    }
    
    private static double getExpenseHealth(double expense, double annualIncome)
    {
        // TODO Auto-generated method stub
        return 0;
    }
    
    private static double getAgePoints(double age)
    {
        // TODO Auto-generated method stub
        return 0;
    }

    private static double getFinancialRisk(double incomeHealth, double netWorthHealth, double debtHealth, double expenseHealth, double agePoints)
    {
        // TODO Auto-generated method stub
        return 0;
    }

}

