<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

    session_start();

    try 
    {
        $conn = Conexao::getConexao();

    } 
    catch (Exception $ex) 
    {

    }

    function salvarDadosUsuario($nome,$telefone,$email,$discapto,$outrasinfo)    
    {
        $sql = "CALL INSERE_PROFESSOR(:nome,:email,:telefone,:discapto,:outrasinfo)";
        try{
            
            $conn = Conexao::getConexao();
            $stmt = $conn->prepare($sql);
            $stmt->bindValue(':nome', $nome, PDO::PARAM_STR);
            $stmt->bindValue(':email', $nome, PDO::PARAM_STR);
            $stmt->bindValue(':telefone', $nome, PDO::PARAM_STR);
            $stmt->bindValue(':discapto', $nome, PDO::PARAM_STR);
            $stmt->bindValue(':outrasinfo', $nome, PDO::PARAM_STR);

            return $stmt->execute();
        }
        catch (Exception $e)
        {
            throw  new Exception("Erro ao Salvar dados do usuário");
        }
    }
    
    function SalvarHorários($horarios)
    {
        
        $sql = "CALL INSERE_DISPONIBILIDADE()";
        if(!empty($horarios))
        {
            $qtd = count($itens);
            for ($i = 0; $i < $qtd; $i++)
            {
               $conn = Conexao::getConexao();
               $stmt = $conn->prepare($sql);
               
            }
        }
    }
