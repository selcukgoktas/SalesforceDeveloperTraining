
// Anonymous Window

EmployeeDeveloper devAli = New EmployeeDeveloper('11111','Ali',28);

system.debug('devAli  :  ' + devAli.getNationalId() 
                                +'/ ' +devAli.getName()+' / ' 
                                    + devAli.getAge() + ' / '
                                    );

Employee empAli = (Employee)devAli;

system.debug('empAli  :  ' + empAli.getNationalId() 
                                +'/ ' +empAli.getName()+' / ' 
                                    + empAli.getAge() + ' / '
                                    );


Person personAli = (Person)empAli;

system.debug('personAli  :  ' + personAli.getNationalId() 
                                +'/ ' +personAli.getName()+' / ' 
                                    + personAli.getAge() + ' / '
                                    );


Person personAli2 = (Person)devAli;

system.debug('personAli2  :  ' + personAli2.getNationalId() 
                                +'/ ' +personAli2.getName()+' / ' 
                                    + personAli2.getAge() + ' / '
                                    );