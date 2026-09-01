<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>select type of crime</title>
    <style>
        body {
            background-image: url("https://wallpapertag.com/wallpaper/full/5/4/0/505200-crime-scene-wallpaper-1920x1080-download-free.jpg");
            background-size: cover;
            background-position: center;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            padding: 0;
        }

        form {
            background-color: rgba(255, 255, 255, 0.8);
            padding: 40px; 
            border-radius: 10px;
            text-align: center;
        }

        select {
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            box-sizing: border-box;
            width: 100%;
            max-width: 300px; 
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 10px;
        }

        button {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        button:hover {
            background-color: #555;
        }
    </style>
</head>
<body>
    <form action="CrimeRecords" method="post">
        <label for="crime_committed">Type of Offence:</label>
        <select name="crime_committed" id="crime_committed">
            <option value="Type of Offence"><b>Select</b></option>
            <option value="Murder">Murder</option>
            <option value="Pickpocket">Pickpocket</option>
            <option value="ChainSnatching">ChainSnatching</option>
            <option value="Fight">Fight</option>
            <option value="Accident">Accident</option>
            <option value="Assault">Assault</option>
        </select>
        <br><br>
        <button type="submit">Submit</button>
    </form>
</body>
</html>