<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Register - FitConnect</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            font-family: 'Poppins', sans-serif;
            background: #f5f7fa;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }
        .navbar {
            background-color: #0d6efd;
            padding: 1rem 2rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .navbar a {
            color: #fff;
            text-decoration: none;
            margin-left: 1rem;
            font-weight: 600;
            font-size: 1rem;
        }
        .navbar a:hover {
            text-decoration: underline;
        }
        .register-container {
            background: #fff;
            padding: 2rem 3rem;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            text-align: center;
            width: 400px;
            margin: 2rem auto;
        }
        .register-container h2 {
            color: #0d6efd;
            margin-bottom: 1.5rem;
        }
        .register-container input {
            width: 100%;
            padding: 0.8rem;
            margin-bottom: 1rem;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 1rem;
        }
        .register-container button {
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
        .register-container button:hover {
            background-color: #0b5ed7;
        }
        .register-container p {
            margin-top: 1rem;
            font-size: 0.9rem;
        }
        .register-container a {
            color: #0d6efd;
            text-decoration: none;
            font-weight: 600;
        }
        .register-container a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="navbar">
    <div class="logo" style="font-weight: 700; font-size: 1.5rem; color: #fff;">
        <a href="/FitConnect_war">FitConnect</a>
    </div>
    <div class="nav-links">
        <a href="/FitConnect_war">Home</a>
        <a href="login">Login</a>
    </div>
</div>

<div class="register-container">
    <h2>Create Your Account</h2>
    <form action="RegisterServlet" method="post">
        <input type="text" name="fullname" placeholder="Full Name" required />
        <input type="email" name="email" placeholder="Email" required />
        <input type="password" name="password" placeholder="Password" required />
        <input type="password" name="confirmPassword" placeholder="Confirm Password" required />
        <button type="submit">Register</button>
    </form>
    <p>Already have an account? <a href="login">Login</a></p>
</div>

</body>
</html>
