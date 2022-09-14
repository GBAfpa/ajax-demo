<?php
try {
    $dbCo = new PDO(
        'mysql:host=localhost;dbname=ajaxtest;charset=utf8',
        'root'
    );
    $dbCo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
}
catch (Exception $e) {
    die("Unable to connect to the database.".$e->getMessage());
}

$query = $dbCo->query("SELECT id_task, task FROM task;");



?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"   content="width=device-width, initial-scale=1.0">
    <title>Ajax test</title>
</head>
<body>
    <h1>Ajax test</h1>

    <h2>Liste des tâches</h2>
    <ul id="task-list">
        <?php

foreach ($query->fetchAll() as $task) {
    echo "<li>".$task["task"]."</li>";
}

?>
    </ul>
    <h2>Ajouter une tâche</h2>
    <input type="text" id="task-name" name="task-name">
    <button type="button" id="btn-add-task">Ajouter la tâche</button>

<script src="js/script.js?<?=time()?>"></script>
</body>
</html>