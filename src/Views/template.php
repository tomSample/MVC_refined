<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Simple MVC</title>
</head>
<body>
    <nav>
        <ul>
            <li><a href="/">Home</a></li>
            <li><a href="/user">Users</a></li>
            <li><a href="#!">Contact</a></li>
        </ul>
    </nav>
    
    <main>
        <?php include($view); ?> 
    </main>
    
    <footer>
        <p>&copy; 2023 Mon Projet</p>
    </footer>
</body>
</html>