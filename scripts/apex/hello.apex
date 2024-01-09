
// Anonymous Window

Person person = New Person('Selcuk',42);
system.debug('NAME : '+person.getName());
system.debug('AGE : '+person.getAge());
// person.NationalId='111111'; // [ERROR] Variable is not visible: Person.NationalId

Employee employee = New Employee('22222','Alex',42);

employee.updatePerson('Alex Victor',42);


system.debug('NAME : '+employee.getName());
system.debug('AGE : '+employee.getAge());
system.debug('NATIONAL ID : ' + employee.getNationalId());