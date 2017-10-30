<?php
        require_once 'funcoes.php';
        require_once 'conexao.php';
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
        
        
    $db = Database::conexao();
    $result = $db->query("SELECT * FROM professor");
    $seg = 1;
    $ter = 1;
    $qua = 1;
    $qui = 1;
    $sex = 1;
    $sab = 1;

    
    #versao do encoding xml
    $dom = new DOMDocument("1.0", "ISO-8859-1");

    #retirar os espacos em branco
    $dom->preserveWhiteSpace = false;

    #gerar o codigo
    $dom->formatOutput = true;

    #criando o nó principal (root)
    $root = $dom->createElement("EXPORT_URANIA_INSERT");

    #nó filho (PROFESSORES)
    $professores = $dom->createElement("PROFESSORES");

    while($row = $result->fetch(PDO::FETCH_OBJ))
    {
        $id = $row->id;
        //echo $id;
        $result2 = $db->query("SELECT * FROM uvw_prof_manha WHERE prof_id = $id");
        
        
        //row2 = Funcoes::gerarHorarioUrania($row->id);
        
        #nó filho (REGISTRO)
        $registro = $dom->createElement("REGISTRO");


        #setanto nomes e atributos dos elementos xml (nós)
        $codigo = $dom->createElement("CODIGO", $row->id);
        $nome = $dom->createElement("NOME", $row->nome);
        
        $registro->appendChild($codigo);
        $registro->appendChild($nome);
            
        while($row2 = $result2->fetch(PDO::FETCH_OBJ))
        {
                $diaid = $row2->diasemana_id;
                //var_dump($row2);
                   
                        
                        if($diaid == 1)
                        {
                            $segunda = $dom->createElement("SEG", $row2->horario);
                            $registro->appendChild($segunda);
                            
                        }
                        else
                        {
                            $segunda = $dom->createElement("SEG", "00000");
                            $registro->appendChild($segunda);
                            

                        }
                    
                       
                        if($diaid == 2)
                        {
                            $terca = $dom->createElement("TER", $row2->horario);
                            $registro->appendChild($terca);
                            
                        }
                        else
                        {
                            $terca = $dom->createElement("TER", "00000");
                            $registro->appendChild($terca);
                            
                        }
                
                        if($diaid == 3)
                        {
                            $quarta = $dom->createElement("QUA", $row2->horario);
                            $registro->appendChild($quarta);
                            
                        }
                        else
                        {
                            $quarta = $dom->createElement("QUA", "00000");
                            $registro->appendChild($quarta);
                            
                        }
                       
                       
                        if($diaid == 4)
                        {
                            $quinta = $dom->createElement("QUI", $row2->horario);
                            $registro->appendChild($quinta);
                            
                        }
                        else
                        {
                            $quinta = $dom->createElement("QUI", "00000");
                            $registro->appendChild($quinta);
                            
                        }
                
                        
                        if($diaid == 5)
                        {
                            $sexta = $dom->createElement("SEX", $row2->horario);
                            $registro->appendChild($sexta);
                            
                        }
                        else
                        {
                            $sexta = $dom->createElement("SEX", "00000");
                            $registro->appendChild($sexta);
                            
                        }
                
                
                        if($diaid == 6)
                        {
                             $sabado = $dom->createElement("SAB", $row2->horario);
                             $registro->appendChild($sabado);
                             
                        }
                        else
                        {
                            $sabado = $dom->createElement("SAB", "00000");
                            $registro->appendChild($sabado);
                            
                        }
                
        }
                
                
                
                
                
                



        
        
    
        #adiciona os nós (informacaoes do professor) em registro
        
       
        
        #adiciona o nó contato em (root) professor
        $professores->appendChild($registro);
     
    }    
    
    $root->appendChild($professores);    
    $dom->appendChild($root);

    # Para salvar o arquivo, descomente a linha
    //$dom->save("arquivos/URANEXP.xml");

    #cabeçalho da página
    header("Content-Type: text/xml");
    # imprime o xml na tela
    print $dom->saveXML();
    
    

