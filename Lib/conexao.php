<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

    require_once('conf.php');

    use PDO;
    use PDOException;
    use Exception;

    class Conexao
    {
        private static $connection;

        public static function getConnection() {

            $pdoConfig  = DB_DRIVER . ":". "host=" . DB_HOST . ";";
            $pdoConfig .= "dbname=".DB_NAME.";";

            try { 
                if(!isset($connection)){
                    $connection =  new PDO($pdoConfig, DB_USER, DB_PASSWORD);
                    $connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                }
                return $connection;
            } catch (PDOException $e) {
                throw new Exception("Erro de conexão com o banco de dados");
            }
        }
    } 