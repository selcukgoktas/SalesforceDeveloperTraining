/**
 * @description       : 
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 01-10-2024
 * @last modified by  : Selçuk GÖKTAŞ
**/
public virtual class Employee extends Person{

    private String employeeId;
    private String title;
    private String department;
    protected Decimal wage;

    public Employee(String NationalId, String Name, Integer Age){
        // super runs the Person Class Constructor
        super(NationalId,Name,Age);       
    }

    public virtual void increaseWage(Decimal rate){
        this.wage += ((this.wage*rate)/100)+12.6732;
    }

    public String getEmployeeId(){ return employeeId;}
    public void setEmployeeId(String employeeId){
        this.employeeId=employeeId;
    }

    public String getTitle(){ return title;}
    public void setTitle(String title){
        this.title=title;
    }

    public String getDepartment(){ return department;}
    public void setDepartment(String department){
        this.department=department;
    }

    public Decimal getWage(){ return wage;}
    public void setWage(Decimal wage){
        this.wage=wage;
    }

    

}