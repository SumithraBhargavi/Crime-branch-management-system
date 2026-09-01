<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Missing Report</title>
    <style>
        body {
            background-color: grey;
            color: black;
            font-family: Arial, sans-serif;
        }
        .container {
            width: 50%;
            margin: 0 auto;
            padding: 20px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin-bottom: 5px;
        }
        input[type="text"],
        input[type="number"],
        input[type="date"],
        select,
        textarea {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            color: black;
        }
        textarea {
            resize: vertical;
        }
        button[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        button[type="submit"]:hover {
            background-color: #a07145;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Missing Report Form</h2>
        <form action="MissingReportForm" method="post">
            <div class="form-group">
                <label for="name">Name of the missing person:</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="date_of_birth">Date of Birth:</label>
                <input type="date" id="date_of_birth" name="date_of_birth" required>
            </div>
            <div class="form-group">
                <label for="gender">Gender:</label>
                <select id="gender" name="gender" required>
                    <option value="select">Select Gender</option>
                    <option value="male">Male</option>
                    <option value="female">Female</option>
                    <option value="other">Other</option>
                </select>
            </div>
            <div class="form-group">
                <label for="height">Height (in cm):</label>
                <input type="number" id="height" name="height" required>
            </div>
            <div class="form-group">
                <label for="weight">Weight (in kg):</label>
                <input type="number" id="weight" name="weight" required>
            </div>
            <div class="form-group">
                <label for="last_seen_date">Date Last Seen:</label>
                <input type="date" id="last_seen_date" name="last_seen_date" required>
            </div>
            <div class="form-group">
                <label for="last_seen_location">Last Seen Location:</label>
                <input type="text" id="last_seen_location" name="last_seen_location" required>
            </div>
            <div class="form-group">
                <label for="circumstances">Circumstances of Disappearance:</label>
                <textarea id="circumstances" name="circumstances" required></textarea>
            </div>
            <button type="submit">Submit</button>
        </form>
        <div id="error-message"></div>
    </div>

    <script src="script.js"></script>
</body>
</html>
