<template>
    <div class="container">
      <h1>Employee Information</h1>
      <!-- Search Box -->
      <div class="search-container mb-3">
        <input type="text" v-model="searchQuery" placeholder="Search Employee" class="form-control" />
      </div>
      <!-- Employee List -->
      <div v-if="employeeData && employeeData.length > 0">
        <div v-for="employee in filteredEmployeeData" :key="employee.employeeId" class="employee-card mb-3">
          <ul>
            <li><strong>Employee ID:</strong> {{ cart.name}}</li>
            <li><strong>Name:</strong> {{ employee.name }}</li>
            <li><strong>Position:</strong> {{ employee.position_name }}</li>
            <li><strong>Department:</strong> {{ employee.department_name }}</li>
            <!-- <li><strong>Salary:</strong> R{{ formatSalary(employee.salary) }}</li> -->
            <li><strong>Salary:</strong> R{{ employee.salary }}</li>
            <li><strong>Employment History:</strong> {{ employee.details }}</li>
            <li><strong>Contact:</strong> {{ employee.email }}</li>
          </ul>
          <!-- Edit Button -->
          <button @click="editEmployee(employee)" class="btn btn-warning">Edit</button>
        </div>
      </div>
      <div v-else>
        <p>No employee data available.</p>
      </div>
      <!-- Modal for Editing Employee -->
      <div v-if="editingEmployee" class="modal fade show" tabindex="-1" style="display: block;">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">Edit Employee</h5>
              <button type="button" class="close" @click="closeModal">&times;</button>
            </div>
            <div class="modal-body">
              <form @submit.prevent="saveEmployee">
                <div class="form-group">
                  <label for="employeeName">Name:</label>
                  <input type="text" id="employeeName" v-model="editingEmployee.name" class="form-control" />
                </div>
                <div class="form-group">
                  <label for="employeePosition">Position:</label>
                  <input type="text" id="employeePosition" v-model="editingEmployee.position" class="form-control" />
                </div>
                <div class="form-group">
                  <label for="employeeDepartment">Department:</label>
                  <input type="text" id="employeeDepartment" v-model="editingEmployee.department" class="form-control" />
                </div>
                <div class="form-group">
                  <label for="employeeSalary">Salary:</label>
                  <input type="number" id="employeeSalary" v-model="editingEmployee.salary" class="form-control" />
                </div>
                <button type="submit" class="btn btn-primary mt-3">Save Changes</button>
              </form>
            </div>
          </div>
        </div>
      </div>
      <!-- Go Back Button -->
      <button @click="goBack" class="btn btn-primary mt-3">Go Back to Dashboard</button>
    </div>
  </template>
  <script>
  import axios from 'axios';
  export default {
    name: 'EmployeeView',
    data() {
      return {
        employeeData: null,
        searchQuery: '',
        editingEmployee: null,
      }
    },
    // computed: {
    //   filteredEmployeeData() {
    //     // Filters employees based on the search query (case-insensitive)
    //     return this.employeeData.filter(employee =>
    //       employee.name.toLowerCase().includes(this.searchQuery.toLowerCase())
    //     );
    //   },
    // },
    created() {
      this.fetchEmployeeData();
    },
    methods: {
      fetchEmployeeData() {
        axios.get('http://localhost:5000/employees', {
          headers: {
            'Content-Type': 'application/json',
          },
        })
          .then(response => {
            console.log('Employee data:', response.data);
            this.employeeData = response.data;
          })
          .catch(error => {
            console.error('Error fetching employee data:', error);
          });
      },
      // fetchEmployeeData() {
      //   this.employeeData = [
      //     {
      //       employeeId: 1,
      //       name: 'Sibongile Nkosi',
      //       position: 'Software Engineer',
      //       department: 'Development',
      //       salary: 70000,
      //       employmentHistory: 'Joined in 2015, promoted to Senior in 2018',
      //       contact: 'sibongile.nkosi@moderntech.com'
      //     },
      //     {
      //         "employeeId": 2,
      //         "name": "Lungile Moyo",
      //         "position": "HR Manager",
      //         "department": "HR",
      //         "salary": 80000,
      //         "employmentHistory": "Joined in 2013, promoted to Manager in 2017",
      //         "contact": "lungile.moyo@moderntech.com"
      //     },
      //     {
      //         "employeeId": 3,
      //         "name": "Thabo Molefe",
      //         "position": "Quality Analyst",
      //         "department": "QA",
      //         "salary": 55000,
      //         "employmentHistory": "Joined in 2018",
      //         "contact": "thabo.molefe@moderntech.com"
      //     },
      //     {
      //         "employeeId": 4,
      //         "name": "Keshav Naidoo",
      //         "position": "Sales Representative",
      //         "department": "Sales",
      //         "salary": 60000,
      //         "employmentHistory": "Joined in 2020",
      //         "contact": "keshav.naidoo@moderntech.com"
      //     },
      //     {
      //         "employeeId": 5,
      //         "name": "Zanele Khumalo",
      //         "position": "Marketing Specialist",
      //         "department": "Marketing",
      //         "salary": 58000,
      //         "employmentHistory": "Joined in 2019",
      //         "contact": "zanele.khumalo@moderntech.com"
      //     },
      //     {
      //         "employeeId": 6,
      //         "name": "Sipho Zulu",
      //         "position": "UI/UX Designer",
      //         "department": "Design",
      //         "salary": 65000,
      //         "employmentHistory": "Joined in 2016",
      //         "contact": "sipho.zulu@moderntech.com"
      //     },
      //     {
      //         "employeeId": 7,
      //         "name": "Naledi Moeketsi",
      //         "position": "DevOps Engineer",
      //         "department": "IT",
      //         "salary": 72000,
      //         "employmentHistory": "Joined in 2017",
      //         "contact": "naledi.moeketsi@moderntech.com"
      //     },
      //     {
      //         "employeeId": 8,
      //         "name": "Farai Gumbo",
      //         "position": "Content Strategist",
      //         "department": "Marketing",
      //         "salary": 56000,
      //         "employmentHistory": "Joined in 2021",
      //         "contact": "farai.gumbo@moderntech.com"
      //     },
      //     {
      //         "employeeId": 9,
      //         "name": "Karabo Dlamini",
      //         "position": "Accountant",
      //         "department": "Finance",
      //         "salary": 62000,
      //         "employmentHistory": "Joined in 2018",
      //         "contact": "karabo.dlamini@moderntech.com"
      //     },
      //     {
      //         "employeeId": 10,
      //         "name": "Fatima Patel",
      //         "position": "Customer Support Lead",
      //         "department": "Support",
      //         "salary": 58000,
      //         "employmentHistory": "Joined in 2016",
      //         "contact": "fatima.patel@moderntech.com"
      //     }
      // ];
      editEmployee(employee) {
        this.editingEmployee = { ...employee }; // Clone the employee to edit
      },
      saveEmployee() {
        const index = this.employeeData.findIndex(emp => emp.employeeId === this.editingEmployee.employeeId);
        if (index !== -1) {
          this.employeeData.splice(index, 1, this.editingEmployee);
          this.closeModal();
        }
      },
      closeModal() {
        this.editingEmployee = null; // Close the modal
      },
      goBack() {
        this.$router.push('/home');
      },
      formatSalary(salary) {
        return typeof salary === 'number' ? salary.toLocaleString() : 'N/A';
      }
    }
  }
  </script>
  <style scoped>
  /* Style adjustments */
  .employee-card {
    border: 1px solid #ddd;
    border-radius: 8px;
    padding: 15px;
    background-color: #F9F9F9;
  }
  .modal-dialog {
    max-width: 500px;
  }
  .modal-header {
    background-color: #F7F7F7;
  }
  .search-container {
    margin-bottom: 20px;
  }
  </style>
  
  
  
  
  NEW
  
  
  
  
  
  
  
  