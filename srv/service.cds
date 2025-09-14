using { employee.model.db as dataModel } from '../db/data-models';

service  EmployeeODataService{
    entity EmployeeSet as projection on dataModel.Employees;
    //entity FamilySet as projection on dataModel.FamilyMembers;
}   

