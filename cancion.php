<?php

    include 'conexion.php';

    header('Access-Control-Allow-Origin: *');

    if($_SERVER['REQUEST_METHOD'] == 'GET') { 
        if(isset($_GET['id'])) {
            $sql = "SELECT Cancion.nombre, Cancion.ID, Cancion.imagen, Autor.nombre as autor FROM Cancion, de_genero, pertenece_a, Genero, Autor WHERE MATCH(Autor<-(pertenece_a)-Cancion-(de_genero)->Genero) AND Cancion.ID = " . $_GET['id'];
            $stmt = sqlsrv_query($conn, $sql);

            if( $stmt === false ) {
                die( print_r( sqlsrv_errors(), true));
            } else {
                $response = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC);
                header("HTTP/1.1 200 OK");
                echo json_encode($response);
            }
        }

        if(isset($_GET['user'])) {
            $sql = "SELECT Cancion.nombre, Cancion.ID, Autor.nombre AS autor FROM Persona, likes_cancion, pertenece_a, Cancion, Autor WHERE MATCH(Persona-(likes_cancion)->Cancion-(pertenece_a)->Autor) AND Persona.ID = " . $_GET['user'];
            $stmt = sqlsrv_query($conn, $sql);

            if( $stmt === false ) {
                die( print_r( sqlsrv_errors(), true));
            } else {
                $response = [];
                while($row = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC)) {
                    array_push($response, ['nombre' => $row["nombre"], 'id' => $row["ID"], 'autor' => $row["autor"]]);
                }

                header("HTTP/1.1 200 OK");
                echo json_encode($response);
            }
        }
        
        if(isset($_GET['genero'])) {
            $sql = "SELECT Cancion.nombre FROM Cancion, de_genero, Genero WHERE MATCH(Cancion-(de_genero)->Genero) AND Genero.ID = " . $_GET['genero'];
            $stmt = sqlsrv_query($conn, $sql);

            if( $stmt === false ) {
                die( print_r( sqlsrv_errors(), true));
            } else {
                $response = [];
                while($row = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC)) {
                    array_push($response, ['nombre' => $row["nombre"]]);
                }

                header("HTTP/1.1 200 OK");
                echo json_encode($response);
            }
        }
        
        if(isset($_GET['genre_recomended'])) {
            $sql = "SELECT Cancion.nombre, Cancion.ID, Cancion.imagen, Autor.nombre AS autor FROM Cancion, de_genero , pertenece_a, Genero, Autor WHERE MATCH(Genero<-(de_genero)-Cancion-(pertenece_a)->Autor) AND Genero.ID = " . $_GET['genre_recomended'];
            $stmt = sqlsrv_query($conn, $sql);

            if( $stmt === false ) {
                die( print_r( sqlsrv_errors(), true));
            } else {
                $response = [];
                while($row = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC)) {
                    array_push($response, ['nombre' => $row["nombre"], 'id' => $row["ID"], 'imagen' => $row["imagen"], 'autor' => $row["autor"]]);
                }

                header("HTTP/1.1 200 OK");
                echo json_encode($response);
            }
        }

        if(isset($_GET['verificar'])) {
            $sql = "SELECT Cancion.nombre, Cancion.ID FROM Persona, likes_cancion, Cancion WHERE MATCH(Persona-(likes_cancion)->Cancion) AND Persona.ID = " . $_GET['user_id'] . " AND Cancion.ID = " . $_GET['verificar'];
            $stmt = sqlsrv_query($conn, $sql);

            if( $stmt === false ) {
                die( print_r( sqlsrv_errors(), true));
            } else {
                $response = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC);
                header("HTTP/1.1 200 OK");
                echo json_encode($response);
            }
        }

        if(isset($_GET['list'])) {
            $sql = "SELECT Cancion.nombre, Cancion.ID, Cancion.imagen, Autor.nombre AS autor FROM Cancion, pertenece_a, Autor WHERE MATCH(Cancion-(pertenece_a)->Autor)";
            $stmt = sqlsrv_query($conn, $sql);

            if( $stmt === false ) {
                die( print_r( sqlsrv_errors(), true));
            } else {
                $response = [];
                while($row = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC)) {
                    array_push($response, ['nombre' => $row["nombre"], 'id' => $row["ID"], 'autor' => $row["autor"], 'imagen' => $row["imagen"]]);
                }

                header("HTTP/1.1 200 OK");
                echo json_encode($response);
            }
        }

    }

    if($_SERVER['REQUEST_METHOD'] == 'POST') {
        $sql = 'INSERT INTO likes_cancion VALUES ((SELECT $node_id FROM Persona WHERE ID =' . $_POST['user_id'] . '), (SELECT $node_id FROM Cancion WHERE ID = ' . $_POST['song_id'] . '), 4)';
        $stmt = sqlsrv_query($conn, $sql);

        if( $stmt === false ) {
            die( print_r( sqlsrv_errors(), true));
        } else {
            header("HTTP/1.1 200 OK");
            echo "Guardado exitosamente";
        }
    }

    //header("HTTO/1.1 400 Bad Request");

?>