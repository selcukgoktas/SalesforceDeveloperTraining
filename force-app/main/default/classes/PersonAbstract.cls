/**
 * @description       : 
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 01-09-2024
 * @last modified by  : Selçuk GÖKTAŞ
**/
public abstract class PersonAbstract {
    protected String NationalId;
    protected String Name;
    protected Integer Age;
    
    public String getName(){
        return Name;
    }
    public Integer getAge(){
        return Age;
    }

    public PersonAbstract(String Name, Integer Age){
        this.Name=Name;
        this.Age=Age;
    }

    public abstract void updatePerson(String Name,Integer Age);
}