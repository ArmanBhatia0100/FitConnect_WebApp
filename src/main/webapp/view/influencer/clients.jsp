<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Clients Dashboard</title>
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

        h1 {
            color: #2c3e50;
            margin-bottom: 20湘莲花直播 20px;
        }

        /* Summary Cards */
        .summary-cards {
            display: flex;
            gap: 20px;
            margin-bottom: 30px;
        }

        .summary-card {
            background: #3498db;
            color: white;
            padding: 20px;
            border-radius: 8px;
            flex: 1;
            text-align: center;
        }

        .summary-card h3 {
            margin-bottom: 10px;
            font-size: 18px;
        }

        .summary-card p {
            font-size: 24px;
            font-weight: bold;
        }

        .summary-card.active {
            background: #27ae60;
        }

        .summary-card.inactive {
            background: #c0392b;
        }

        /* Table Styles */
        .clients-table {
            width: 100%;
            border-collapse: collapse;
            background-color: white;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }

        .clients-table th,
        .clients-table td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        .clients-table th {
            background-color: #f5f6fa;
            color: #2c3e50;
            font-weight: 600;
        }

        .clients-table tr:hover {
            background-color: #f8f9fa;
        }

        .status-active {
            color: #27ae60;
            font-weight: 500;
        }

        .status-inactive {
            color: #c0392b;
            font-weight: 500;
        }

        .view-btn {
            padding: 8px 15px;
            background-color: #3498db;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .view-btn:hover {
            background-color: #2980b9;
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
    <h1>Clients List</h1>
    <!-- Summary Cards -->
    <div class="summary-cards">
        <div class="summary-card">
            <h3>Total Clients</h3>
            <p>4</p>
        </div>
        <div class="summary-card active">
            <h3>Active Clients</h3>
            <p>3</p>
        </div>
        <div class="summary-card inactive">
            <h3>Inactive Clients</h3>
            <p>1</p>
        </div>
    </div>
    <!-- Clients Table -->
    <table class="clients-table">
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
                <button class="view-btn" onclick="window.location.href='client.jsp?name=JohnDoe'">View</button>
            </td>
        </tr>
        <tr>
            <td>Jane Smith</td>
            <td>2023-03-22</td>
            <td>2024-03-22</td>
            <td class="status-active">Active</td>
            <td>
                <button class="view-btn" onclick="window.location.href='client.jsp?name=JaneSmith'">View</button>
            </td>
        </tr>
        <tr>
            <td>Bob Johnson</td>
            <td>2022-11-10</td>
            <td>2023-11-10</td>
            <td class="status-inactive">Inactive</td>
            <td>
                <button class="view-btn" onclick="window.location.href='client.jsp?name=BobJohnson'">View</button>
            </td>
        </tr>
        <tr>
            <td>Alice Brown</td>
            <td>2023-06-01</td>
            <td>2024-06-01</td>
            <td class="status-active">Active</td>
            <td>
                <button class="view-btn" onclick="window.location.href='client.jsp?name=AliceBrown'">View</button>
            </td>
        </tr>
        </tbody>
    </table>
</div>
</body>
</html>