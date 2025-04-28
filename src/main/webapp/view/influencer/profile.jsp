<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Profile</title>
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
        h1, h2 {
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

        /* Profile Card */
        .fc-card.profile-card {
            border: none;
            border-radius: var(--border-radius-lg);
            box-shadow: 0 4px 8px var(--shadow);
            background-color: var(--white);
            max-width: 600px;
            margin: 0 var(--spacing-lg);
            padding: var(--spacing-md);
        }

        .profile-header {
            text-align: center;
            margin-bottom: var(--spacing-md);
        }

        .profile-photo {
            width: 120px;
            height: 120px;
            border-radius: 50%;
            object-fit: cover;
            margin-bottom: var(--spacing-sm);
            border: 2px solid var(--primary);
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

        .fc-btn-secondary {
            background-color: var(--secondary);
            border-color: var(--secondary);
            color: var(--white);
        }

        .fc-btn-secondary:hover {
            background-color: #5c636a;
            border-color: #565e64;
        }

        .action-buttons {
            display: flex;
            gap: var(--spacing-sm);
            justify-content: center;
            margin-top: var(--spacing-md);
        }

        .profile-field {
            margin-bottom: var(--spacing-sm);
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .profile-field label {
            font-weight: var(--font-weight-bold);
            color: #212529;
            flex: 1;
        }

        .profile-field span {
            flex: 2;
            color: var(--secondary);
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
    <h1>User Profile</h1>

    <!-- Profile Card -->
    <div class="profile-card fc-card">
        <div class="profile-header">
            <img src="https://via.placeholder.com/120" alt="Profile Photo" class="profile-photo">
            <button class="fc-btn fc-btn-primary" onclick="window.location.href='changePhoto.jsp'">Change Photo</button>
        </div>
        <h2>Account Information</h2>
        <div class="profile-field">
            <label>Name:</label>
            <span>Jane Smith</span>
        </div>
        <div class="profile-field">
            <label>Email:</label>
            <span>jane.smith@example.com</span>
        </div>
        <div class="profile-field">
            <label>Password:</label>
            <span>********</span>
        </div>
        <div class="profile-field">
            <label>Phone Number:</label>
            <span>+1 (555) 123-4567</span>
        </div>
        <div class="profile-field">
            <label>Certifications:</label>
            <span>Certified Personal Trainer (CPT), Nutrition Specialist</span>
        </div>
        <div class="profile-field">
            <label>Specialties:</label>
            <span>Weight Loss, Strength Training</span>
        </div>
        <div class="profile-field">
            <label>Years of Experience:</label>
            <span>5</span>
        </div>
        <div class="profile-field">
            <label>Client Count:</label>
            <span>25</span>
        </div>
        <div class="action-buttons">
            <button class="fc-btn fc-btn-primary" onclick="window.location.href='updateProfile.jsp'">Update Profile</button>
            <button class="fc-btn fc-btn-secondary" onclick="window.location.href='changePassword.jsp'">Change Password</button>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>