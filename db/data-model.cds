namespace employee.details;
using { reuse.types as types } from './reuse';
using { cuid } from '@sap/cds/common';

entity Employee : types.PersonDetail,cuid{

  
  gender : String;
  DOB : Date;
  contractStarted : Date;
  email : types.email not null;
  phone : types.phone not null ;
  address: Composition of many Address on address.employee = $self;
  Department : Association to Department;
  Salary : Association to Employee;
}

entity Address:cuid {
  street:String;
  pincode:Integer ;

  employee : Association to Employee

}

entity Department: cuid{
 name: String;
description : String;
headCount: Integer; 
//employee : Association to Employee

}

entity Salary : cuid{
employeePf : types.Amount;
nps        : types.Amount;
vpf : types.Amount;
//employee : Association to Employee

}