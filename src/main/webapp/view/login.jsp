<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login - FitConnect</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            font-family: 'Poppins', sans-serif;
            background: #f5f7fa;
        }
        /* Navbar styles */
        .navbar {
            background-color: #0d6efd;
            padding: 1rem 2rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .navbar .logo {
            color: #fff;
            font-size: 1.5rem;
            font-weight: 600;
            text-decoration: none;
        }
        .navbar .nav-button {
            background-color: #fff;
            color: #0d6efd;
            border: none;
            padding: 0.5rem 1rem;
            font-size: 1rem;
            font-weight: 600;
            border-radius: 8px;
            cursor: pointer;
            text-decoration: none;
        }
        .navbar .nav-button:hover {
            background-color: #e2e6ea;
        }
        /* Center container styles */
        .login-container {
            background: #fff;
            padding: 2rem 3rem;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            text-align: center;
            width: 350px;
            margin: 3rem auto;
        }
        .login-container h2 {
            color: #0d6efd;
            margin-bottom: 1.5rem;
        }
        .login-container input {
            width: 100%;
            padding: 0.8rem;
            margin-bottom: 1rem;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 1rem;
        }
        .login-container button {
            background-color: #0d6efd;
            color: #fff;
            border: none;
            padding: 0.8rem;
            width: 100%;
            border-radius: 8px;
            font-size: 1rem;
            font-weight: 600;
            cursor: pointer;
            margin-top: 1rem;
            transition: background 0.3s;
        }
        .login-container button:hover {
            background-color: #0b5ed7;
        }
        .login-container p {
            margin-top: 1rem;
            font-size: 0.9rem;
        }
        .login-container a {
            color: #0d6efd;
            text-decoration: none;
            font-weight: 600;
        }
        .login-container a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar">
    <a href="/FirConnect_war" class="logo">FitConnect</a>
    <a href="registration" class="nav-button">Register</a>
</nav>

<!-- Main Content -->
<div class="login-container">
    <h2>Login to FitConnect</h2>
    <form action="auth/login" method="post">
        <input type="text" name="email" placeholder="Email" required />
        <input type="password" name="password" placeholder="Password" required />
        <button type="submit">Login</button>
    </form>
    <p>Don't have an account? <a href="registration">Register</a></p>
</div>

</body>
</html>
