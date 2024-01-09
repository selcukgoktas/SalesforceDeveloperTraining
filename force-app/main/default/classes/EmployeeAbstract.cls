/**
 * @description       : 
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 01-09-2024
 * @last modified by  : Selçuk GÖKTAŞ
**/
public class EmployeeAbstract extends PersonAbstract{

    public EmployeeAbstract(String NationalId,String Name,Integer Age) {
        // super runs the PersonAbstract Class Constructor
        super(Name,Age); 

        // update protected variable from Person
        this.NationalId=NationalId;        

    }

    public override void updatePerson(String Name,Integer Age){
       this.Name='ABSTRACT OVERRIDE '+Name;
       this.Age=Age;

    }

    public String getNationalId(){
        return this.NationalId;
    }
}