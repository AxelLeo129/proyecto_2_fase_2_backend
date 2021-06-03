<?php
    
    include 'conexion.php';

    header('Access-Control-Allow-Origin: *');

    if($_SERVER['REQUEST_METHOD'] == 'GET') {

        if(isset($_GET['id'])) {
            $sql = "SELECT * FROM Persona WHERE id = " . $_GET['id'];
            $stmt = sqlsrv_query($conn, $sql);

            if( $stmt === false ) {
                die( print_r( sqlsrv_errors(), true));
            } else {
                $response = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC);
                header("HTTP/1.1 200 OK");
                echo json_encode($response);
            }
        } else {
            $sql = "SELECT * FROM Persona";
            $stmt = sqlsrv_query($conn, $sql);

            if( $stmt === false ) {
                die( print_r( sqlsrv_errors(), true));
            } else {
                $response = [];
                while($row = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC)) {
                    array_push($response, ['id' => $row["ID"], 'nombre' => $row["nombre"], 'imagen' => $row["imagen"]]);
                }
                header("HTTP/1.1 200 OK");
                echo json_encode($response);
            }
        }

    }

    //Register
    if($_SERVER['REQUEST_METHOD'] == 'POST') {
        if(isset($_POST['nombre_usuario'])) {
            $sql = "INSERT INTO Persona VALUES ('" . $_POST['nombre']. "', '" . $_POST['nombre_usuario'] . "', '" . $_POST['email'] . "', '" . $_POST['password'] . "', 'https://gravatar.com/avatar/" . $_POST['nombre_usuario'] . "?d=identicon&f=y')";
            $stmt = sqlsrv_query($conn, $sql);

            if( $stmt === false ) {
                die( print_r( sqlsrv_errors(), true));
            } else {
                $sql = "SELECT MAX(ID) AS LastID FROM Persona";
                $stmt = sqlsrv_query($conn, $sql);
                $response = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC);

                $generos = explode(",", $_POST['generos']);
                for($i = 0; $i < count($generos); $i++) {
                    $sql = 'INSERT INTO likes_autor VALUES ((SELECT $node_id FROM Persona WHERE ID = ' . $response['LastID'] .'), (SELECT $node_id FROM Autor WHERE ID = ' . $generos[$i] .'), 4)';
                    $stmt = sqlsrv_query($conn, $sql);
                }

                header("HTTP/1.1 200 OK");
                echo $response['LastID'];
            }
        } else {
            $sql = "INSERT INTO Persona VALUES ('" . $_POST['nombre']. "', '" . $_POST['nombre_usuario'] . "', '" . $_POST['email'] . "', '" . $_POST['password'] . "', 'https://gravatar.com/avatar/" . $_POST['nombre_usuario'] . "?d=identicon&f=y')";
            $stmt = sqlsrv_query($conn, $sql);
            
            if( $stmt === false ) {
                die( print_r( sqlsrv_errors(), true));
            } else {
                $sql = "SELECT MAX(ID) AS LastID FROM Persona";
                $stmt = sqlsrv_query($conn, $sql);
                $response = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC);
            
                $generos = explode(",", $_POST['generos']);
                for($i = 0; $i < count($generos); $i++) {
                    $sql = 'INSERT INTO likes_autor VALUES ((SELECT $node_id FROM Persona WHERE ID = ' . $response['LastID'] .'), (SELECT $node_id FROM Autor WHERE ID = ' . $generos[$i] .'), 4)';
                    $stmt = sqlsrv_query($conn, $sql);
                }
            
                header("HTTP/1.1 200 OK");
                echo $response['LastID'];
            }
        }
    }

    header("HTTO/1.1 400 Bad Request");