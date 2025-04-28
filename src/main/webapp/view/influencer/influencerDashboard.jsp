<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Dashboard - FitConnect</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f5f7fa;
        }
        .navbar-brand {
            font-weight: 700;
            color: #0d6efd;
        }
        .card {
            border: none;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.05);
            margin-bottom: 2rem;
        }
        .card-header {
            background-color: #0d6efd;
            color: #fff;
            font-weight: 600;
            border-top-left-radius: 12px;
            border-top-right-radius: 12px;
        }
        .btn-success, .btn-danger {
            border-radius: 6px;
        }
    </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light bg-light shadow-sm">
    <div class="container">
        <a class="navbar-brand" href="#">FitConnect</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="dashboard">Dashboard</a></li>
                <li class="nav-item"><a class="nav-link" href="clients">Clients</a></li>
                <li class="nav-item"><a class="nav-link" href="profile">Profile</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Logout</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Dashboard Container -->
<div class="container mt-5">
    <h2 class="mb-4">Welcome, John Doe!</h2>

    <div class="row">
        <!-- Pending Bookings -->
        <div class="col-lg-6">
            <div class="card">
                <div class="card-header">Pending Bookings</div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th>Client</th>
                                <th>Date</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>Emily Smith</td>
                                <td>May 1, 2025</td>
                                <td>
                                    <button class="btn btn-success btn-sm me-2" aria-label="Accept booking">Accept</button>
                                    <button class="btn btn-danger btn-sm" aria-label="Reject booking">Reject</button>
                                </td>
                            </tr>
                            <tr>
                                <td>Michael Brown</td>
                                <td>May 2, 2025</td>
                                <td>
                                    <button class="btn btn-success btn-sm me-2" aria-label="Accept booking">Accept</button>
                                    <button class="btn btn-danger btn-sm" aria-label="Reject booking">Reject</button>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <!-- Quick Stats -->
        <div class="col-lg-6">
            <div class="card">
                <div class="card-header">Quick Stats</div>
                <div class="card-body d-flex justify-content-around">
                    <div class="text-center">
                        <h4>10</h4>
                        <p>Total Clients</p>
                    </div>
                    <div class="text-center">
                        <h4>5</h4>
                        <p>Active Bookings</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <!-- Client List -->
        <div class="col-lg-6">
            <div class="card">
                <div class="card-header">Client List</div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th>Name</th>
                                <th>Last Activity</th>
                                <th>Progress</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>Emily Smith</td>
                                <td>April 25, 2025</td>
                                <td><a href="#" class="btn btn-primary btn-sm">View Progress</a></td>
                            </tr>
                            <tr>
                                <td>Michael Brown</td>
                                <td>April 24, 2025</td>
                                <td><a href="#" class="btn btn-primary btn-sm">View Progress</a></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <!-- Recent Messages -->
        <div class="col-lg-6">
            <div class="card">
                <div class="card-header">Recent Messages</div>
                <div class="card-body">
                    <ul class="list-group">
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            <span>Emily: "Looking forward to our next session!"</span>
                            <a href="#" class="btn btn-outline-primary btn-sm">Go to Chat</a>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            <span>Michael: "Can we reschedule?"</span>
                            <a href="#" class="btn btn-outline-primary btn-sm">Go to Chat</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
