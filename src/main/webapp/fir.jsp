<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>File FIR</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
            animation: fadeIn 0.5s ease-in-out;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        header {
            background-color: #333;
            color: #fff;
            padding: 20px;
            text-align: center;
            animation: slideIn 0.5s ease-in-out;
            border-bottom: 2px solid #fff;
        }

        @keyframes slideIn {
            from {
                transform: translateY(-50px);
            }
            to {
                transform: translateY(0);
            }
        }

        main {
            padding: 20px;
            max-width: 600px;
            margin: 20px auto;
            background-color: #f9f9f9;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
            color: #333;
        }

        input[type="text"],
        input[type="email"],
        input[type="date"],
        input[type="time"],
        textarea,
        select {
            width: calc(100% - 22px); /* Adjusting for padding and border */
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            margin-top: 5px;
            transition: border-color 0.3s;
        }

        input[type="text"]:focus,
        input[type="email"]:focus,
        input[type="date"]:focus,
        input[type="time"]:focus,
        textarea:focus,
        select:focus {
            outline: none;
            border-color: #555;
        }

        textarea {
            resize: vertical; /* Allowing vertical resizing for textarea */
        }

        button {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #0056b3;
        }

        footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 10px;
            position: fixed;
            bottom: 0;
            width: 100%;
            border-top: 1px solid #666;
        }

        footer p {
            margin: 0;
        }
    </style>
</head>
<body>
    <header>
        <h1>File FIR Online</h1>
    </header>
    <main>
        <section id="fileFIR">
            <h2>File FIR Form</h2>
            <form action="FIR" method="post">
                <div class="form-group">
                    <label for="name">Your Name:</label>
                    <input type="text" id="name" name="name" required>
                </div>
                <div class="form-group">
                    <label for="email">Your Email:</label>
                    <input type="email" id="email" name="email" required>
                </div>
                <div class="form-group">
                    <label for="incidentDate">Incident Date:</label>
                    <input type="date" id="incidentDate" name="incidentDate" required>
                </div>
                <div class="form-group">
                    <label for="incidentTime">Incident Time:</label>
                    <input type="time" id="incidentTime" name="incidentTime" required>
                </div> 
                <div class="form-group">
                    <label for="occurrenceArea">Occurrence Area:</label>
                    <input type="text" id="occurrenceArea" name="occurrenceArea" required>
                </div>
                <div class="form-group">
                    <label for="Offence">Type of Offence:</label>
                    <select name="Offence" id="Offence">
                        <option value="">Select Offence</option>
                        <option value="Murder">Murder</option>
                        <option value="Pickpocket">Pickpocket</option>
                        <option value="ChainSnatching">Chain Snatching</option>
                        <option value="Fight">Fight</option>
                        <option value="Accident">Accident</option>
                        <option value="Assault">Assault</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="incident">Incident Description:</label>
                    <textarea id="incident" name="incident" rows="5" required></textarea>
                </div>
                <button type="submit">Submit FIR</button>
            </form>
        </section>
    </main>
    <footer>
        <p>&copy; 2024 Crime Management System</p>
    </footer>
</body>
</html>
