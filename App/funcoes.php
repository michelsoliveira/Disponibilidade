<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

    require_once 'conexao.php';
    session_start();
    
    class Funcoes
    {
        public $db;

        public static function salvarDadosUsuario($nome,$email,$telefone,$discapto,$outrasinfo)    
        {
            $db = Database::Conexao();


            $sql = "INSERT INTO professor(nome, email, telefone, discapto, outrasinfo) VALUES(:nome,:email,:telefone,:discapto,:outrasinfo)";
            try
            {

                $stmt = $db->prepare($sql);
                $stmt->bindValue(':nome', $nome, PDO::PARAM_STR);
                $stmt->bindValue(':email', $email, PDO::PARAM_STR);
                $stmt->bindValue(':telefone', $telefone, PDO::PARAM_STR);
                $stmt->bindValue(':discapto', $discapto, PDO::PARAM_STR);
                $stmt->bindValue(':outrasinfo', $outrasinfo, PDO::PARAM_STR);
                $stmt->execute();

                $LSID = $db->lastInsertId();
                return $LSID;
            }
            catch (Exception $e)
            {
                throw  new Exception($e);
            }
        }

        public static function salvarDisponibilidadeProfesor($idprofessor, $iddt)
        {
            $bd = Database::Conexao();
            $sql = "INSERT INTO disponibilidade(professor_id, diatempo_id) VALUES (?, ?)";
            
            try
            {
                $stmt = $bd->prepare($sql);
                $stmt->bindValue(1, $idprofessor, PDO::PARAM_INT);
                $stmt->bindValue(2, $iddt, PDO::PARAM_INT);
                $stmt->execute();
                
            }
            catch(Exception $e)
            {
                throw new Exception($e);
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
                        if(Funcoes::buscarDiaTempo($horario[$i]))
                        {
                            $idhorarios = ($horario[$i]);
                            Funcoes::salvarDisponibilidadeProfesor($idprofessor, $idhorarios);
                        }
                    }
                }
            }
            catch(Exception $e)
            {
               throw new Exception($e); 
            }
        }
        
        

        public static function buscarDiaTempo($id)
        {
            $bd = Database::Conexao();

            $sql = "SELECT COUNT(*) FROM diatempo WHERE id=:id";

            try
            {
                $stmt = $bd->prepare($sql);
                $stmt->bindValue(':id', $id, PDO::PARAM_INT);

                return $stmt->execute()? TRUE : FALSE;

            }
            catch (Exception $e)
            {
                throw new Exception($e);
            }
        }
        
        public static function contadordisp()
        {
            $bd = Database::Conexao();
            $sql = "SELECT count(*)  from professor AS p, disponibilidade AS d, diatempo AS dt, tempoaula AS tp, diasemana AS ds
                    WHERE p.id = d.professor_id
                    AND d.diatempo_id = dt.id
                    AND dt.diasemana_id = ds.id
                    AND dt.tempoaula_id = tp.id;";
            
            $qtd = 0;
            
            try
            {
                $stmt = $bd->prepare($sql);
                $qtd = $stmt->execute();
                
                return $qtd;
            }
            catch(Exception $e)
            {
                throw new Exception($e);
            }
            
        }
    
        public static function contadorDispProf($id)
        {
            $bd = Database::Conexao();
            $sql = "SELECT count(*)  from professor AS p, disponibilidade AS d, diatempo AS dt, tempoaula AS tp, diasemana AS ds
                    WHERE p.id = :id
                    AND p.id = d.professor_id
                    AND d.diatempo_id = dt.id
                    AND dt.diasemana_id = ds.id
                    AND dt.tempoaula_id = tp.id;";
            
            $qtd = 0;
            
            try
            {
                $stmt = $bd->prepare($sql);
                $stmt = $bd->bindValue('id', $id, PDO::PARAM_INT);
                $qtd = $stmt->execute();
                
                return $qtd;
            }
            catch(Exception $e)
            {
                throw new Exception($e);
            }
            
        }
        
        public static function contadorProf()
        {
            $bd = Database::Conexao();
            $sql = "SELECT count(*)  from professor";
            $qtd = 0;
            
            try
            {
                $stmt = $bd->prepare($sql);
                $qtd = $stmt->execute();
                
                return $qtd;
            }
            catch(Exception $e)
            {
                throw new Exception($e);
            }
            
        }
        
        
        public static function buscarDispProf($idprof)
        {
            $Ahorario[6] = 0;
            $qtd = Funcoes::contadordisp();
            
            for($i = 0; $i<$qtd; $i++)
            {
            
                //for($j=0; $j<6;)
                //{
                    if($idprof == $idprofdisp)//idprofdisp é o id do professor na tabela disponibilidade.
                    {
                        if($iddisp == 1);
                            
                        
                    }
               //}
            }
            
        }
        
        public static function gerarHorarioUrania($id)
        {
            $db = Database::Conexao();
            
            $sql = "SELECT * FROM uvw_prof_manha"
            
            $qtd; 
            $j = 1;
            $k = 1;
            $horario = 0;
            
            try
            {
                $stmt = $db->prepare($sql);
                $stmt->bindValue(':id', $id, PDO::PARAM_INT);
                $result = $stmt->execute();
                
                
              
                 
            } 
            catch (Exception $e) 
            {
                throw new Exception($e);
            }
            
            
            
        }
    }