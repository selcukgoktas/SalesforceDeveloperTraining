/**
 * @description       : 
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 01-10-2024
 * @last modified by  : Selçuk GÖKTAŞ
**/
public virtual class Person implements PersonInterface{

    private String NationalId;
    private String Name;
    private Integer Age;
    
    public String getName(){
        return Name;
    }
    public Integer getAge(){
        return Age;
    }

    public String getNationalId(){
        return NationalId;
    }

    public Person(String NationalId,String Name, Integer Age){
        this.NationalId=NationalId;
        this.Name=Name;
        this.Age=Age;
    }

    public virtual void updatePerson(String Name,Integer Age){
        this.Name=Name;
        this.Age=Age;
    }
}