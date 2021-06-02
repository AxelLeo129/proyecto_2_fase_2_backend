<?php

    $host = "DESKTOP-CQEB9CM\MSSQLSERVER1";
    $database = "prueba";
    $user = "sa";
    $password = "1296";

    try {
        $connectionOptions = array(
            "Database" => $database,
            "Uid" => $user,
            "PWD" => $password
        );

        $conn = sqlsrv_connect($host, $connectionOptions);
        if( $conn === false ) {
            die( print_r( sqlsrv_errors(), true)); //See why it fails
        }
    } catch(Exception $e) {
        echo $e->getMessage();
    }
