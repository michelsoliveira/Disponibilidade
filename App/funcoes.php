<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

    require_once './lib/conexao.php';
    session_start();
    
    class Funcoes
    {
        public static function salvarDadosUsuario($nome,$telefone,$email,$discapto,$outrasinfo)    
        {
            $db = Database::Conexao();


            $sql = "CALL INSERE_PROFESSOR(:nome,:email,:telefone,:discapto,:outrasinfo)";
            try
            {

                $stmt = $db->prepare($sql);
                $stmt->bindValue(':nome', $nome, PDO::PARAM_STR);
                $stmt->bindValue(':email', $email, PDO::PARAM_STR);
                $stmt->bindValue(':telefone', $telefone, PDO::PARAM_STR);
                $stmt->bindValue(':discapto', $discapto, PDO::PARAM_STR);
                $stmt->bindValue(':outrasinfo', $outrasinfo, PDO::PARAM_STR);
                $stmt->execute();

                $LSID = $bd->lastInsertId();
                return $LSID;
            }
            catch (Exception $e)
            {
                throw  new Exception("Erro ao Salvar dados do usuário");
            }
        }

        public static function salvarDisponibilidadeProfesor($idprofessor, $iddt)
        {
            $bd = Database::Conexao();
            $sql = "CALL INSERE_DISPONIBLIDADE(?, ?)";
            
            try
            {
                $stmt = $bd->prepare($sql);
                $stmt->bindValue(1, $idprofessor, PDO::PARAM_INT);
                $stmt->bindValue(2, $iddt, PDO::PARAM_INT);
                $stmt->execute();
                
            }
            catch(Exception $e)
            {
                throw new Exception("Erro ao salvar disponibilidade");
            }
             
        }
        
        public static function verificarESalvar($idprofessor, $horario)
        {
            $idhorario = 0;
            try
            {
                if(!empty($horario))
                {
                    $qtd = count($horario);
                    
                    for ($i = 0; $i<$qtd; $i++)
                    {
                        if(Funcoes::buscarDiaTempo($grupo[$i]))
                        {
                            $idhorarios = ($grupo[$i]);
                            Funcoes::salvarDisponibilidadeProfesor($idprofessor, $iddt);
                        }
                    }
                }
            }
            catch(Exception $e)
            {
               throw new Exception("Erro ao Alocar o professor no horário"); 
            }
        }
        
        

        public static function buscarDiaTempo($id)
        {
            $bd = Database::Conexao();

            $sql = "SELECT COUNT(*) FROM dia_tempo WHERE id=:id";

            try
            {
                $stmt = $bd->prepare($sql);
                $stmt->bindValue(':id', $id, PDO::PARAM_INT);

                return $stmt->execute()? TRUE : FALSE;

            }
            catch (Exception $e)
            {
                throw new Exception("Erro ao verificar disponibilidade");
            }
        }
    }