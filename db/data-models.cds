namespace employee.model.db;

//using { cuid, managed , sap.common.Countries } from '@sap/cds/common';
 using { cuid } from '@sap/cds/common';

type CommonFields {
firstName   : String(40);
lastName    : String(40);
address     : String(300);
mobile      : String(13);
email       : String(50);
}

//, managed 
entity Employees : CommonFields ,cuid  {
//key employeeID  : UUID;
salary      : Decimal(10, 2);
designation : String(50);
//Countries   : Association  to Countries;
//FamilyMembers : Association to many FamilyMembers on FamilyMembers.employee = $self;
familyMembers : Composition of many FamilyMembers on familyMembers.employee = $self;
}

entity FamilyMembers : CommonFields ,cuid {
    key FamilyMemID : UUID;
    relationship    : String;
    employee: Association to Employees ;
}   
 