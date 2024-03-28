namespace employee.details;
using { reuse.types as types } from './reuse';
using { cuid } from '@sap/cds/common';

entity Employee : types.PersonDetail,cuid{

  
  gender : String;
  DOB : Date;
  contractStarted : Date;
  email : types.email not null;
  phone : types.phone not null ;
  address:Composition of Address
}

entity Address:cuid {
  street:String;
  pincode:Integer
}
