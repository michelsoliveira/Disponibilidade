<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

    require_once 'conexao.php';
    require_once 'funcoes.php';

    $horarios = $_REQUEST['horarios'];
    $matricula = $_REQUEST['matricula'];
    $nome = $_REQUEST['nome'];
    $email = $_REQUEST['email'];
    $telefone = $_REQUEST['telefone'];
    $discapto = $_REQUEST['disc-apto'];
    $outrasinfo = $_REQUEST['outrasinfo'];
    
    try
    {

        $lastid = Funcoes::salvarDadosUsuario($matricula ,$nome, $email, $telefone, $discapto, $outrasinfo);
        Funcoes::verificarESalvar($lastid, $horarios);
        echo "SALVO!";
    }
    catch(Exception $e)
    {
        throw new Exception($e);
    }