/**
 * @description       : 
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 01-10-2024
 * @last modified by  : Selçuk GÖKTAŞ
**/
public class EmployeeImp extends Person {
        
    public EmployeeImp(String Name, Integer Age){
        super(Name,Age);
    }

    public override void updatePerson(String Name,Integer Age){
        this.Name='OVERRIDED_'+Name;
        this.Age=Age;
    }

}