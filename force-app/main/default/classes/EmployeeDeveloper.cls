/**
 * @description       : 
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 01-10-2024
 * @last modified by  : Selçuk GÖKTAŞ
**/
public class EmployeeDeveloper extends Employee{

    private Decimal developerWageExtra=1000;

    public EmployeeDeveloper(String NationalId, String Name, Integer Age) {
        // super runs the Employee > Person Class Constructor
        super(NationalId,Name,Age);  
    }

    public override void increaseWage(Decimal rate){
        this.wage += ((this.wage*rate)/100) + developerWageExtra;
    }

    public Decimal getdeveloperWageExtra(){ return developerWageExtra;}
    public void setdeveloperWageExtra(Decimal developerWageExtra){
        this.developerWageExtra=developerWageExtra;
    }
}