/**
 * @description       : 
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 01-09-2024
 * @last modified by  : Selçuk GÖKTAŞ
**/
public virtual class Person {

    protected String NationalId;
    protected String Name;
    private Integer Age;
    
    public String getName(){
        return Name;
    }
    public Integer getAge(){
        return Age;
    }

    public Person(String Name, Integer Age){
        this.Name=Name;
        this.Age=Age;
    }

    public virtual void updatePerson(String Name,Integer Age){
        this.Name=Name;
        this.Age=Age;
    }
}