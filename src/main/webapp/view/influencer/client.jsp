<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Client Fitness Journey</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        :root {
            /* Color Palette */
            --primary: #0d6efd;
            --secondary: #6c757d;
            --success: #198754;
            --danger: #dc3545;
            --background: #f5f7fa;
            --white: #ffffff;
            --shadow: rgba(0, 0, 0, 0.05);

            /* Typography */
            --font-family: 'Poppins', sans-serif;
            --font-size-base: 1rem;
            --font-weight-regular: 400;
            --font-weight-bold: 600;

            /* Spacing */
            --spacing-sm: 0.5rem;
            --spacing-md: 1rem;
            --spacing-lg: 2rem;

            /* Border Radius */
            --border-radius-sm: 6px;
            --border-radius-lg: 12px;
        }

        body {
            font-family: var(--font-family);
            font-size: var(--font-size-base);
            font-weight: var(--font-weight-regular);
            background-color: var(--background);
            color: #212529;
            line-height: 1.5;
        }

        /* Typography */
        h1, h2, h3 {
            font-weight: var(--font-weight-bold);
            color: #212529;
        }

        h1 {
            font-size: 1.75rem;
            margin-bottom: var(--spacing-lg);
        }

        h2 {
            font-size: 1.5rem;
            margin-bottom: var(--spacing-md);
        }

        h3 {
            font-size: 1.25rem;
            margin-bottom: var(--spacing-md);
        }

        /* Navbar */
        .fc-navbar {
            background-color: var(--white);
            box-shadow: 0 2px 4px var(--shadow);
        }

        .fc-navbar .logo {
            font-weight: var(--font-weight-bold);
            color: var(--primary);
            font-size: 1.5rem;
            cursor: pointer;
        }

        .fc-navbar .nav-links {
            display: flex;
            gap: var(--spacing-md);
        }

        .fc-navbar .nav-links a {
            color: var(--secondary);
            font-weight: var(--font-weight-regular);
            padding: var(--spacing-sm) var(--spacing-md);
            text-decoration: none;
        }

        .fc-navbar .nav-links a:hover {
            color: var(--primary);
        }

        /* Container */
        .container {
            max-width: 1200px;
            margin: var(--spacing-lg) auto;
            padding: 0 var(--spacing-md);
        }

        /* Client Status */
        .fc-card.client-status {
            border: none;
            border-radius: var(--border-radius-lg);
            box-shadow: 0 4px 8px var(--shadow);
            background-color: var(--white);
            margin-bottom: var(--spacing-lg);
            display: flex;
            gap: var(--spacing-md);
            padding: var(--spacing-md);
        }

        .client-status-column {
            flex: 1;
        }

        .status-active {
            color: var(--success);
            font-weight: var(--font-weight-regular);
        }

        /* Diet and Workout Plans */
        .diet-plans, .workout-plans {
            margin-bottom: var(--spacing-lg);
        }

        /* Buttons */
        .fc-btn {
            border-radius: var(--border-radius-sm);
            font-weight: var(--font-weight-regular);
            padding: var(--spacing-sm) var(--spacing-md);
            transition: background-color 0.2s, color 0.2s;
        }

        .fc-btn-primary {
            background-color: var(--primary);
            border-color: var(--primary);
            color: var(--white);
        }

        .fc-btn-primary:hover {
            background-color: #0b5ed7;
            border-color: #0a58ca;
        }

        .fc-btn-sm {
            padding: calc(var(--spacing-sm) / 2) var(--spacing-sm);
            font-size: 0.875rem;
        }

        /* Tables */
        .fc-table {
            width: 100%;
            margin-bottom: var(--spacing-md);
        }

        .fc-table th {
            font-weight: var(--font-weight-bold);
            color: #212529;
            padding: var(--spacing-sm) var(--spacing-md);
        }

        .fc-table td {
            padding: var(--spacing-sm) var(--spacing-md);
            vertical-align: middle;
        }

        .fc-table.table-hover tbody tr:hover {
            background-color: #f8f9fa;
        }

        /* Exercise List */
        .exercise-list {
            margin-left: var(--spacing-md);
            list-style: disc;
        }

        /* Notification Bar */
        .notification-bar {
            background-color: var(--primary);
            color: var(--white);
            padding: var(--spacing-md);
            border-radius: var(--border-radius-lg);
            margin-bottom: var(--spacing-lg);
            box-shadow: 0 4px 8px var(--shadow);
        }
    </style>
</head>
<body>
<!-- Navbar -->
<nav class="fc-navbar navbar">
    <div class="logo" onclick="window.location.href='index.jsp'">Logo</div>
    <div class="nav-links">
        <a href="dashboard">Dashboard</a>
        <a href="clients">Clients</a>
        <a href="profile">Profile</a>
        <a href="logout.jsp">Logout</a>
    </div>
</nav>

<!-- Main Content -->
<div class="container">
    <h1>Client: John Doe</h1>

    <!-- Client Status -->
    <div class="client-status fc-card">
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
        <button class="fc-btn fc-btn-primary" onclick="window.location.href='createDietPlan.jsp'">Create New Diet Plan</button>

        <!-- Current Diet Plan -->
        <h3>Current Diet Plan</h3>
        <table class="fc-table table table-hover">
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
                    <button class="fc-btn fc-btn-primary fc-btn-sm" onclick="window.location.href='dietPlan.jsp?id=2'">View Details</button>
                </td>
            </tr>
            </tbody>
        </table>

        <!-- Previous Diet Plans -->
        <h3>Previous Diet Plans</h3>
        <table class="fc-table table table-hover">
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
                    <button class="fc-btn fc-btn-primary fc-btn-sm" onclick="window.location.href='dietPlan.jsp?id=1'">View Details</button>
                </td>
            </tr>
            </tbody>
        </table>
    </div>

    <!-- Workout Plans -->
    <div class="workout-plans">
        <h2>Workout Plans</h2>
        <button class="fc-btn fc-btn-primary" onclick="window.location.href='createWorkoutPlan.jsp'">Add New Workout</button>

        <!-- Current Workout Plan -->
        <h3>Current Workout Plan</h3>
        <table class="fc-table table table-hover">
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
                    <button class="fc-btn fc-btn-primary fc-btn-sm" onclick="window.location.href='editWorkoutPlan.jsp?id=push'">Modify</button>
                </td>
            </tr>
            </tbody>
        </table>

        <!-- Previous Workout Plans -->
        <h3>Previous Workout Plans</h3>
        <table class="fc-table table table-hover">
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
                    <button class="fc-btn fc-btn-primary fc-btn-sm" onclick="window.location.href='editWorkoutPlan.jsp?id=pull'">Modify</button>
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
                    <button class="fc-btn fc-btn-primary fc-btn-sm" onclick="window.location.href='editWorkoutPlan.jsp?id=leg'">Modify</button>
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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>