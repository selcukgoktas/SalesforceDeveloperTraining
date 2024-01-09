
// Anonymous Window

Person Person = New Person('11111','Ali',28);

system.debug('Standard Person :  ' + Person.getNationalId() 
                                +'/ ' +Person.getName()+' / ' 
                                    + Person.getAge());

Employee Employee = New Employee('22222','Ayşe',33);
Employee.setWage(11402.32);
Employee.setTitle('Aşgari Ücretli');
Employee.setDepartment('Satış Temsilcisi');

system.debug('Employee  :  ' + Employee.getNationalId() 
                                +'/ ' +Employee.getName()+' / ' 
                                    + Employee.getAge() + ' / '
                                    + Employee.getTitle() + ' / '
                                    + Employee.getWage() );
Employee.increaseWage(49);

system.debug('Employee  :  ' + Employee.getNationalId() 
                                +'/ ' +Employee.getName()+' / ' 
                                    + Employee.getAge() + ' / '
                                    + Employee.getTitle() + ' / '
                                    + Employee.getWage() );


EmployeeDeveloper developer = New EmployeeDeveloper('3333','Selçuk',42);
developer.setWage(30000);
developer.setTitle('Salesforce Developer');
developer.setDepartment('Project Triforcia');

system.debug('developer  :  ' + developer.getNationalId() 
                                +'/ ' +developer.getName()+' / ' 
                                    + developer.getAge() + ' / '
                                    + developer.getTitle() + ' / '
                                    + developer.getWage() );

developer.increaseWage(49);
system.debug('developer  :  ' + developer.getNationalId() 
                                +'/ ' +developer.getName()+' / ' 
                                    + developer.getAge() + ' / '
                                    + developer.getTitle() + ' / '
                                    + developer.getWage() );