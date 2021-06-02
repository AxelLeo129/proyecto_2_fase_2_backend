<?php
    
    include 'conexion.php';

    if($_SERVER['REQUEST_METHOD'] == 'GET') {

        if(isset($_GET['id'])) {
            $sql = "SELECT * FROM Persona WHERE id = " . $_GET['id'];
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
        } else {
            $sql = "SELECT * FROM Persona";
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

    if($_SERVER['REQUEST_METHOD'] == 'POST') {
        $sql = "INSERT INTO Persona VALUES (?)";
        $params = array($_POST['nombre']);
        $stmt = sqlsrv_query($conn, $sql, $params);

        if( $stmt === false ) {
            die( print_r( sqlsrv_errors(), true));
        } else {
            header("HTTP/1.1 200 OK");
            echo json_encode(["Success"=>"Persona almacenada exitosamente."]);
        }
    }

    header("HTTO/1.1 400 Bad Request");