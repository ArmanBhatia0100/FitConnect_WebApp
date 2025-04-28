<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Client Fitness Journey</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        /* Navbar Styles */
        .navbar {
            background-color: #2c3e50;
            padding: 15px 30px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            color: white;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }

        .navbar .logo {
            font-size: 24px;
            font-weight: bold;
            cursor: pointer;
        }

        .nav-links {
            display: flex;
            gap: 20px;
        }

        .nav-links a {
            color: white;
            text-decoration: none;
            font-size: 16px;
            padding: 8px 15px;
            border-radius: 4px;
            transition: background-color 0.3s;
        }

        .nav-links a:hover {
            background-color: #34495e;
        }

        /* Main Content Styles */
        .container {
            max-width: 1200px;
            margin: 30px auto;
            padding: 0 20px;
        }

        h1, h2, h3 {
            color: #2c3e50;
            margin-bottom: 20px;
        }

        /* Client Status */
        .client-status {
            background: #f5f6fa;
            padding: 20px;
            border-radius: 8px;
            margin-bottom: 30px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            display: flex;
            justify-content: space-between;
            gap: 20px;
        }

        .client-status-column {
            flex: 1;
        }

        .client-status p {
            margin: 10px 0;
            font-size: 16px;
        }

        .status-active {
            color: #27ae60;
            font-weight: 500;
        }

        /* Diet and Workout Plans */
        .diet-plans, .workout-plans {
            margin-bottom: 30px;
        }

        .action-btn {
            padding: 10px 20px;
            background-color: #3498db;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
            margin-bottom: 20px;
        }

        .action-btn:hover {
            background-color: #2980b9;
        }

        .plan-table {
            width: 100%;
            border-collapse: collapse;
            background-color: white;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            margin-bottom: 1.5rem;
        }

        .plan-table th, .plan-table td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        .plan-table th {
            background-color: #f5f6fa;
            color: #2c3e50;
            font-weight: 600;
        }

        .plan-table tr:hover {
            background-color: #f8f9fa;
        }

        .table-action-btn {
            padding: 8px 15px;
            background-color: #3498db;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .table-action-btn:hover {
            background-color: #2980b9;
        }

        /* Workout Plans */
        .exercise-list {
            margin-left: 20px;
            list-style: disc;
        }

        /* Notification Bar */
        .notification-bar {
            background: #3498db;
            color: white;
            padding: 15px;
            border-radius: 8px;
            margin-bottom: 30px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
    </style>
</head>
<body>
<!-- Navbar -->
<nav class="navbar">
    <div class="logo" onclick="window.location.href='index.jsp'">Logo</div>
    <div class="nav-links">
        <a href="dashboard.jsp">Dashboard</a>
        <a href="clients.jsp">Clients</a>
        <a href="profile.jsp">Profile</a>
        <a href="logout.jsp">Logout</a>
    </div>
</nav>

<!-- Main Content -->
<div class="container">
    <h1>Client: John Doe</h1>

    <!-- Client Status -->
    <div class="client-status">
        <div class="client-status-column">
            <h2>Fitness Journey Status</h2>
            <p><strong>Status:</strong> <span class="status-active">Active</span></p>
            <p><strong>Goal:</strong> Weight Loss</p>
            <p><strong>Progress:</strong> Lost 5kg in 2 months</p>
            <p><strong>Last Check-in:</strong> 2023-04-20</p>
            <p><strong>Body Weight:</strong> 80 kg</p>
        </div>
        <div class="client-status-column">
            <h2>Physical Features</h2>
            <p><strong>Height:</strong> 175 cm</p>
            <p><strong>BMI:</strong> 26.1</p>
            <p><strong>TDEE:</strong> 2200 kcal/day</p>
            <p><strong>Body Fat Percentage:</strong> 22%</p>
        </div>
    </div>

    <!-- Diet Plans -->
    <div class="diet-plans">
        <h2>Diet Plans</h2>
        <button class="action-btn" onclick="window.location.href='createDietPlan.jsp'">Create New Diet Plan</button>

        <!-- Current Diet Plan -->
        <h3>Current Diet Plan</h3>
        <table class="plan-table">
            <thead>
            <tr>
                <th>Plan Name</th>
                <th>Start Date</th>
                <th>End Date</th>
                <th>Description</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>Balanced Nutrition</td>
                <td>2023-03-16</td>
                <td>2023-06-16</td>
                <td>Moderate carbs, proteins, and fats for sustainability</td>
                <td>
                    <button class="table-action-btn" onclick="window.location.href='dietPlan.jsp?id=2'">View Details</button>
                </td>
            </tr>
            </tbody>
        </table>

        <!-- Previous Diet Plans -->
        <h3>Previous Diet Plans</h3>
        <table class="plan-table">
            <thead>
            <tr>
                <th>Plan Name</th>
                <th>Start Date</th>
                <th>End Date</th>
                <th>Description</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>Keto Diet</td>
                <td>2023-01-15</td>
                <td>2023-03-15</td>
                <td>Low-carb, high-fat diet to promote fat loss</td>
                <td>
                    <button class="table-action-btn" onclick="window.location.href='dietPlan.jsp?id=1'">View Details</button>
                </td>
            </tr>
            </tbody>
        </table>
    </div>

    <!-- Workout Plans -->
    <div class="workout-plans">
        <h2>Workout Plans</h2>
        <button class="action-btn" onclick="window.location.href='createWorkoutPlan.jsp'">Add New Workout</button>

        <!-- Current Workout Plan -->
        <h3>Current Workout Plan</h3>
        <table class="plan-table">
            <thead>
            <tr>
                <th>Workout Type</th>
                <th>Exercises</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>Push</td>
                <td>
                    <ul class="exercise-list">
                        <li>Push-ups - 3 sets of 15 reps</li>
                        <li>Bench Press - 3 sets of 10 reps</li>
                        <li>Shoulder Press - 3 sets of 12 reps</li>
                    </ul>
                </td>
                <td>
                    <button class="table-action-btn" onclick="window.location.href='editWorkoutPlan.jsp?id=push'">Modify</button>
                </td>
            </tr>
            </tbody>
        </table>

        <!-- Previous Workout Plans -->
        <h3>Previous Workout Plans</h3>
        <table class="plan-table">
            <thead>
            <tr>
                <th>Workout Type</th>
                <th>Exercises</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>Pull</td>
                <td>
                    <ul class="exercise-list">
                        <li>Pull-ups - 3 sets of 8 reps</li>
                        <li>Deadlifts - 3 sets of 10 reps</li>
                        <li>Barbell Rows - 3 sets of 12 reps</li>
                    </ul>
                </td>
                <td>
                    <button class="table-action-btn" onclick="window.location.href='editWorkoutPlan.jsp?id=pull'">Modify</button>
                </td>
            </tr>
            <tr>
                <td>Leg</td>
                <td>
                    <ul class="exercise-list">
                        <li>Squats - 3 sets of 12 reps</li>
                        <li>Lunges - 3 sets of 12 reps per leg</li>
                        <li>Leg Press - 3 sets of 10 reps</li>
                    </ul>
                </td>
                <td>
                    <button class="table-action-btn" onclick="window.location.href='editWorkoutPlan.jsp?id=leg'">Modify</button>
                </td>
            </tr>
            </tbody>
        </table>
    </div>

    <!-- Notification Bar -->
    <div class="notification-bar">
        <p>Reminder: John has a check-in scheduled for 2023-04-30. Please review progress and update goals.</p>
    </div>
</div>
</body>
</html>