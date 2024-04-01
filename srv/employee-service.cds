using employee.details as db from '../db/data-model';
@path: '/EmployeeSRV'
service EmployeeService {
    entity Employee as projection on db.Employee;
    entity Address as projection on db.Address;
    entity Department as projection on db.Department;
    entity Salary as projection on db.Salary
       entity Designation as projection on db.Designation;

}

annotate EmployeeService.Designation with @(
    capabilities: {
        InsertRestriction :{
            $Type : 'Capabilites.InsertRestrictionsType',
            Insertable: true
        },
    UpdateRestrictions :{
        $Type :'capabilites.DeleteRestrictionsType',
        Updatable : false
    },
    DeleteRestrictions :{
        $Type : 'Capabilities.DeleteRestrictionsType',
        Deletable : true
    },
    ReadRestrictions :{
        $Type :'Capabilites.ReadRestrictionsType',
        Readable :true 

    },
    });