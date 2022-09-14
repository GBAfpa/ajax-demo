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

if (isset($_GET["taskname"]) && !empty($_GET["taskname"])) {

    $query = $dbCo->prepare("INSERT INTO task (task) VALUES (:taskname);");
    $isQueryOk = $query->execute([
        "taskname" => strip_tags($_GET["taskname"])
    ]);

    $result = [];

    if ($isQueryOk) {
        $result["ok"] = 1;
        $result["message"] = "La tâche est ajoutée";
        $result["idtask"] = $dbCo->lastInsertId();
    }
    else {
        $result["ok"] = 0;
        $result["message"] = "La tâche n'a pas été ajoutée";
    }

    header("Content-type: application/json; charset=utf-8");
    echo json_encode($result);
    exit;
}