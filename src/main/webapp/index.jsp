<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>FitConnect - Connect with Fitness</title>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
  <style>
    body {
      margin: 0;
      font-family: 'Poppins', sans-serif;
      background: #f5f7fa;
      color: #333;
    }
    .navbar {
      display: flex;
      justify-content: space-between;
      align-items: center;
      background-color: #0d6efd;
      padding: 1rem 2rem;
      box-shadow: 0 2px 5px rgba(0,0,0,0.1);
    }
    .navbar .logo {
      font-size: 1.8rem;
      font-weight: 600;
      color: #fff;
      text-decoration: none;
    }
    .navbar .login-btn {
      background-color: #fff;
      color: #0d6efd;
      padding: 0.5rem 1.2rem;
      border: none;
      border-radius: 25px;
      font-weight: 600;
      cursor: pointer;
      text-decoration: none;
      transition: background 0.3s ease;
    }
    .navbar .login-btn:hover {
      background-color: #e2e6ea;
    }
    .hero {
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      text-align: center;
      height: 90vh;
      padding: 0 1rem;
    }
    .hero h1 {
      font-size: 3rem;
      margin-bottom: 1rem;
      color: #0d6efd;
    }
    .hero p {
      font-size: 1.2rem;
      color: #555;
      max-width: 600px;
      margin-bottom: 2rem;
    }
    .hero .get-started-btn {
      background-color: #0d6efd;
      color: #fff;
      padding: 0.8rem 2rem;
      border: none;
      border-radius: 30px;
      font-size: 1rem;
      font-weight: 600;
      cursor: pointer;
      transition: background 0.3s ease;
      text-decoration: none;
    }
    .hero .get-started-btn:hover {
      background-color: #0b5ed7;
    }
  </style>
</head>
<body>

<nav class="navbar">
  <a href="" class="logo">FitConnect</a>
  <a href="auth/login" class="login-btn">Login</a>
</nav>

<section class="hero">
  <h1>Welcome to FitConnect</h1>
  <p>Your fitness journey starts here. Connect, train, and achieve your goals with the best community and tools.</p>
  <a href="auth/registration" class="get-started-btn">Get Started</a>
</section>
</body>
</html>
