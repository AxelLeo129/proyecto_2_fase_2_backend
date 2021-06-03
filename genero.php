<?php

    include 'conexion.php';

    header('Access-Control-Allow-Origin: *');

    if($_SERVER['REQUEST_METHOD'] == 'GET') { 
        if(isset($_GET['id'])) { 
            $sql = "SELECT Genero.nombre, Genero.ID FROM Cancion, de_genero, Genero WHERE MATCH(Cancion-(de_genero)->Genero) AND Cancion.ID = " . $_GET['id'];
            $stmt = sqlsrv_query($conn, $sql);

            if( $stmt === false ) {
                die( print_r( sqlsrv_errors(), true));
            } else {
                $response = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC);
                header("HTTP/1.1 200 OK");
                echo json_encode($response);
            }
        } else {
            $sql = "SELECT * FROM Genero";
            $stmt = sqlsrv_query($conn, $sql);

            if( $stmt === false ) {
                die( print_r( sqlsrv_errors(), true));
            } else {
                $response = [];
                while($row = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC)) {
                    array_push($response, ['id' => $row["ID"], 'nombre' => $row["nombre"]]);
                }

                header("HTTP/1.1 200 OK");
                echo json_encode($response);
            }
        }
    }

    header("HTTO/1.1 400 Bad Request");