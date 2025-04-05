<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src='<c:url value="/resources/js/script.js" />'></script>

    <title>Attractive Search Engine</title>
    <style>
        /* General Body Styles */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('<c:url value="/resources/image/macbook.jpg" />'); /* Set background image */
            background-size: cover; /* Ensure the image covers the full body */
            background-position: center; /* Center the image */
            background-repeat: no-repeat; /* Do not repeat the image */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: white; /* White text */
        }

        /* Search Container Styles */
        .search-container {
            text-align: center;
            background-color: rgba(51, 51, 51, 0.7); /* Slight transparency for text readability */
            padding: 40px;
            border-radius: 40px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.4); /* Add some glow effect */
            max-width: 1000px;
            width: 100%;
        }

        .search-container h1 {
            font-size: 40px;
            margin-bottom: 20px;
            color: #fff;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        /* Search Input Field Styles */
        .search-input {
            width: 75%;
            padding: 15px 20px;
            font-size: 18px;
            border-radius: 50px;
            border: 2px solid #444;
            outline: none;
            background-color: #222;
            color: white;
            transition: all 0.3s ease;
        }

        .search-input::placeholder {
            color: #bbb; /* Placeholder text color */
        }

        .search-input:focus {
            border-color: #00bcd4; /* Light cyan color */
            box-shadow: 0 0 10px rgba(0, 188, 212, 0.6);
        }

        /* Search Button Styles */
        .search-button {
            padding: 15px 30px;
            font-size: 18px;
            background-color: #00bcd4; /* Vibrant Cyan */
            color: white;
            border: none;
            border-radius: 50px;
            cursor: pointer;
            margin-top: 20px;
            transition: background-color 0.3s, transform 0.2s ease;
        }

        .search-button:hover {
            background-color: #0288d1;
            transform: scale(1.05);
        }

        .search-button:active {
            background-color: #0077b6;
        }

        /* Footer Text */
        .search-container p {
            margin-top: 25px;
            font-size: 16px;
            color: #bbb;
        }

    </style>
</head>
<body>

    <div class="search-container">
        <h1>PLAY YOUR Beloved track</h1>
        <input type="text" class="search-input" id="searchInput" placeholder="Enter your search...">
        <button class="search-button" onclick="search()">Search</button>
        <p>ENJOY YOUR TIME</p>
    </div>

    <script>
        function search() {
            var query = document.getElementById('searchInput').value;
            if (query) {
                var searchUrl ="https://www.youtube.com/search?q="+(query);
                window.location.href = searchUrl;
            }
        }
    </script>

</body>
</html>
