import java.util.Scanner;

public class RiskAlgo
{

    public static void main(String[] args)
    {
        double age=0;
        double annualIncome=0;
        double netWorth =0;
        double debt=0;
        double debtInterestRate=0;
        double monthlyExpense=0;
        
        final double LOGCONSTANT= Math.log(24);
        double inflationRate=2;
        
        Scanner dd = new Scanner(System.in);

        System.out.println("Enter your age.");
        age = dd.nextDouble();
        System.out.println("Enter your Annual Income.");
        annualIncome = dd.nextDouble();
        System.out.println("Enter your netWorth.");
        netWorth = dd.nextDouble();
        System.out.println("Enter your total debt.");
        debt = dd.nextDouble();
        System.out.println("Enter your debt interest rate.");
        debtInterestRate = dd.nextDouble();
        System.out.println("Enter your monthly expense.");
        monthlyExpense = dd.nextDouble();
        
        double incomeHealth = getIncomeHealth(annualIncome, LOGCONSTANT);
        double netWorthHealth = getNetworthHealth(netWorth);
        double debtHealth = getDebtHealth(annualIncome,debt,debtInterestRate,inflationRate);
        double expenseHealth = getExpenseHealth(monthlyExpense, annualIncome);
        double agePoints = getAgePoints(age);
        
        double financialRisk = getFinancialRisk(incomeHealth, netWorthHealth, debtHealth, expenseHealth, agePoints);
        System.out.println(financialRisk);
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
            return 10;
        }else if(netWorth<5000) {
            return 20;
        }else if(netWorth<10000) {
            return 30;
        }else if(netWorth<50000) {
            return 40;
        }else if(netWorth<100000) {
            return 50;
        }else if(netWorth<100000) {
            return 60;
        }else if(netWorth<500000) {
            return 75;
        }else if(netWorth<1000000) {
            return 90;
        }
        return 100;
    }
    
    private static double getDebtHealth(double annualIncome, double debt, double debtInterestRate, double inflationRate)
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
        }else if(debtRatio>4) {
            return -50;
        }else if(debtRatio>3) {
            return -40;
        }else if(debtRatio>2) {
            return -30;
        }else if(debtRatio>1) {
            return -10;
        }
        return 0;
    }
    
    private static double getExpenseHealth(double monthlyExpense, double annualIncome)
    {
        double monthlyIncome=annualIncome/12;
        double expenseHealth=100-(monthlyExpense/monthlyIncome)*100;
        return expenseHealth;
    }
    
    private static double getAgePoints(double age)
    {
        if(age<20) {
            return 20;
        }else if(age<=60){
            return (60-age)/2;
        }
        return 0;
    }

    private static double getFinancialRisk(double incomeHealth, double netWorthHealth, double debtHealth, double expenseHealth, double agePoints)
    {
       double financialRisk = (incomeHealth*2 + netWorthHealth*1.5 + debtHealth + expenseHealth*2.5)/8 + agePoints;
       if(financialRisk<5) {
           return 5;
       }
       if(financialRisk>100) {
           return 100;
       }
       return financialRisk;
    }

}
