# Cover My Shift

Cover My Shift is a platform designed to streamline scheduling for managers and simplify shift management, time-off requests, and hours tracking for employees. The application features different views based on the user's role, providing a tailored and user-friendly experience for both managers and staff.

## Features
- **Shift Management:** Employees can view assigned shifts, request days off, manage their availability, and request to pick up uncovered shifts.
- **Time-Off Requests:** Easily request and manage time-off with clear visibility of pending and approved requests.
- **Hours Tracking:** Keep track of assigned hours and monitor your work schedule.
- **Manager's Daily Coverage:** Managers can input the required number of work hours needed per day to see daily coverage. Based on this input, managers can add or remove shifts to ensure all coverage needs are met.
- **Role-Based Views:** Customized user interfaces for different roles, ensuring relevant information and actions are always accessible.

## Technologies Used
- **Frontend:** Vue.js
- **Backend:** Java, Spring Boot
- **Database:** PostgreSQL
- **Tools:** Postman (for API testing), E/RD diagrams for database modeling

## Screenshots
![Cover My Shift Dashboard](./Downloads/my_shifts_employee_view.png)


## Getting Started

### Prerequisites
- Java 11+
- PostgreSQL
- Node.js and npm

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/Caleb-Stockham/Cover-My-Shift.git

2. **Set up the Database:**

- Navigate to `java/database/create.sh`.
- Ensure the `BASEDIR` in the `create.sh` file is set to the correct location.
- Run the `create.sh` script to set up the database:
  ```bash
  sh java/database/create.sh

3. **Run the Backend Server:**

- Navigate to the main application directory.
- Start the server via `Application.java` in your Java IDE or via the command line:
  ```bash
  ./mvnw spring-boot:run

4. **Set up the Frontend:**

- Navigate to the `vue` folder.
- Install the required npm packages:
  ```bash
  npm install
  
- Start the frontend development server:
  ```bash
  npm run dev

- Open the provided URL in Chrome


# Optimal User Experience

For the best viewing experience, make sure your display scale is set to 100%.

# Contributing

Contributions are welcome! Please fork this repository and submit a pull request for any feature additions, bug fixes, or improvements.

# Acknowledgements

- **Team Collaboration:** Worked closely with the product owner and team members to design and implement the UI.
- **Technology Stack:** Special thanks to the open-source community for the tools and frameworks used in this project.



