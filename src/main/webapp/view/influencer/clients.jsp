<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Clients Dashboard</title>
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
        h1, h3 {
            font-weight: var(--font-weight-bold);
            color: #212529;
        }

        h1 {
            font-size: 1.75rem;
            margin-bottom: var(--spacing-lg);
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

        /* Summary Cards */
        .summary-cards {
            display: flex;
            gap: var(--spacing-md);
            margin-bottom: var(--spacing-lg);
        }

        .fc-card {
            border: none;
            border-radius: var(--border-radius-lg);
            box-shadow: 0 4px 8px var(--shadow);
            background-color: var(--white);
            flex: 1;
        }

        .fc-card-header {
            background-color: var(--primary);
            color: var(--white);
            font-weight: var(--font-weight-bold);
            border-top-left-radius: var(--border-radius-lg);
            border-top-right-radius: var(--border-radius-lg);
            padding: var(--spacing-md);
            text-align: center;
        }

        .fc-card-body {
            padding: var(--spacing-md);
            text-align: center;
        }

        .fc-card.active .fc-card-header {
            background-color: var(--success);
        }

        .fc-card.inactive .fc-card-header {
            background-color: var(--danger);
        }

        /* Table */
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

        .status-active {
            color: var(--success);
            font-weight: var(--font-weight-regular);
        }

        .status-inactive {
            color: var(--danger);
            font-weight: var(--font-weight-regular);
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
    <h1>Clients List</h1>
    <!-- Summary Cards -->
    <div class="summary-cards">
        <div class="fc-card">
            <div class="fc-card-header">Total Clients</div>
            <div class="fc-card-body">
                <p>4</p>
            </div>
        </div>
        <div class="fc-card active">
            <div class="fc-card-header">Active Clients</div>
            <div class="fc-card-body">
                <p>3</p>
            </div>
        </div>
        <div class="fc-card inactive">
            <div class="fc-card-header">Inactive Clients</div>
            <div class="fc-card-body">
                <p>1</p>
            </div>
        </div>
    </div>
    <!-- Clients Table -->
    <table class="fc-table table table-hover">
        <thead>
        <tr>
            <th>Name</th>
            <th>Date of Membership</th>
            <th>Expiring Date</th>
            <th>Status</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>John Doe</td>
            <td>2023-01-15</td>
            <td>2024-01-15</td>
            <td class="status-active">Active</td>
            <td>
                <button class="fc-btn fc-btn-primary" onclick="window.location.href='client.jsp?name=JohnDoe'">View</button>
            </td>
        </tr>
        <tr>
            <td>Jane Smith</td>
            <td>2023-03-22</td>
            <td>2024-03-22</td>
            <td class="status-active">Active</td>
            <td>
                <button class="fc-btn fc-btn-primary" onclick="window.location.href='client.jsp?name=JaneSmith'">View</button>
            </td>
        </tr>
        <tr>
            <td>Bob Johnson</td>
            <td>2022-11-10</td>
            <td>2023-11-10</td>
            <td class="status-inactive">Inactive</td>
            <td>
                <button class="fc-btn fc-btn-primary" onclick="window.location.href='client.jsp?name=BobJohnson'">View</button>
            </td>
        </tr>
        <tr>
            <td>Alice Brown</td>
            <td>2023-06-01</td>
            <td>2024-06-01</td>
            <td class="status-active">Active</td>
            <td>
                <button class="fc-btn fc-btn-primary" onclick="window.location.href='client.jsp?name=AliceBrown'">View</button>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>