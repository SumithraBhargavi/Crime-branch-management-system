<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Criminal Record Form</title>
    <style>
        body {
            background-color: black;
            color: white;
            font-family: Arial, sans-serif;
            padding: 20px;
        }
        form {
            max-width: 500px;
            margin: 0 auto;
        }
        label {
            display: block;
            margin-bottom: 10px;
        }
        input, textarea, select {
            width: 100%;
            padding: 8px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        button {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <center><h2>Criminal Record Form</h2></center>
    <form action="CrimeRecordForm" method="post">
        <label for="full_name">Full Name:</label>
        <input type="text" id="full_name" name="full_name" required>

        <label for="date_of_birth">Date of Birth:</label>
        <input type="date" id="date_of_birth" name="date_of_birth" required>

        <label for="crime_committed">Crime Committed:</label>
        <select name="crime_committed" id="Crime" required>
            <option value="" disabled selected>Select Type of Crime</option>
            <option value="Murder">Murder</option>
            <option value="Pickpocket">Pickpocket</option>
            <option value="ChainSnatching">Chain Snatching</option>
            <option value="Fight">Fight</option>
            <option value="Accident">Accident</option>
            <option value="Assault">Assault</option>
        </select>

        <label for="arrest_date">Arrest Date:</label>
        <input type="date" id="arrest_date" name="arrest_date" required>

        <label for="charges">Charges:</label>
        <input type="text" id="charges" name="charges" required>

        <label for="court_appearances">Court Appearances:</label>
        <input type="number" id="court_appearances" name="court_appearances" required>

        <label for="convictions">Convictions:</label>
        <input type="number" id="convictions" name="convictions" required>

        <label for="sentence">Sentence:</label>
        <input type="text" id="sentence" name="sentence" required>

        <button type="submit">Submit</button>
    </form>
</body>
</html>
