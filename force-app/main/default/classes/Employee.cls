/**
 * @description       : 
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 01-09-2024
 * @last modified by  : Selçuk GÖKTAŞ
**/
public class Employee extends Person{
    
    public Employee(String NationalId, String Name, Integer Age){
        // super runs the Person Class Constructor
        super(Name,Age); 
        
        // updatePerson is Person Class
        this.updatePerson('Employee : ' + Name,Age); 

        // update protected variable from Person
        this.NationalId=NationalId;
    }

    // Get protected Variable with getter method from person.
    public String getNationalId(){
        return this.NationalId;
    }

    // override person class updateperson virtual method.
    public override void updatePerson(String Name,Integer Age){
        this.Name='OVERRIDED '+Name;        
    }
}