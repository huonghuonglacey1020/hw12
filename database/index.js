const connection = require('./connection');
class DATABASE {
    constructor(connection){
        this.connection = connection;
        


    }
    addDepartment(department){
        return this.connection.query("insert into department SET ?", department)

    }
    addRole(role){
        return this.connection.query("insert into role SET ?", role)

    };
    addEmployee(employee){
        return this.connection.query("insert into employee SET ?", employee)


    };
    viewDepartment(){
        return this.connection.query("select department.id, department.name,sum(role.salary) from employee left join role on employee = role.id left join department on role.department = department.id group by department.id, department.name")

    };
    viewRole(){
        return this.connection.query("select role.id, role.title, role.salary, department.name from role left join department on role.department_id = department.id")}
    viewEmployee(){
        return this.connection.query("select employee.id, employee.first_name, employee.last_name, role.title department.name role.salary concat(manager.first_name,' ',manager.last_name) as fullName from employee left join role on employee.role_id = role.id left join deparment on role.department_id = department.id left join employee fullName on manager_id = employee.manager_id")


    };
    updateEmployeeRole(employeeId, managerId){
        return this.connection.query("update employee SET manager_id = ? where id = ? ", managerId, employeeId)
    };
    

    
    
}
module.export = new DATABASE(connection);
