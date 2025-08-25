<!DOCTYPE html>
<html>
<head>
    <title>Colorful Message Board</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #74ebd5, #ACB6E5);
            text-align: center;
            color: #333;
            margin: 0;
            padding: 20px;
        }
        h1 {
            color: #2C3E50;
            text-shadow: 2px 2px 5px rgba(0,0,0,0.2);
        }
        form {
            background: #ffffffcc;
            padding: 20px;
            border-radius: 15px;
            display: inline-block;
            box-shadow: 0px 4px 8px rgba(0,0,0,0.2);
        }
        input, textarea, button {
            width: 250px;
            margin: 10px 0;
            padding: 10px;
            border-radius: 10px;
            border: 1px solid #ccc;
            font-size: 16px;
        }
        button {
            background: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
            transition: background 0.3s ease;
        }
        button:hover {
            background: #45a049;
        }
        hr {
            margin: 40px 0;
            border: none;
            height: 2px;
            background: #fff;
        }
        iframe {
            background: #ffffffcc;
            border: none;
            border-radius: 15px;
            box-shadow: 0px 4px 8px rgba(0,0,0,0.2);
        }
    </style>
</head>
<body>
    <h1>🎨 Colorful Message Board 🎨</h1>
    <form action="message" method="post">
        <input type="text" name="username" placeholder="Your name" required><br>
        <textarea name="message" placeholder="Write your colorful message..." required></textarea><br>
        <button type="submit">Post Message</button>
    </form>
    <hr>
    <h2>Messages</h2>
    <iframe src="message" width="400" height="300"></iframe>
</body>
</html>

