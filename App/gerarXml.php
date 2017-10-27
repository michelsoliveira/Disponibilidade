<?php
        require_once 'funcoes.php';
        require_once 'conexao.php';
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
        
    $qtdp = Funcoes::contadorProf();
    
    $db = Database::conexao();

    





    
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
        #nó filho (REGISTRO)
        $registro = $dom->createElement("REGISTRO");


        #setanto nomes e atributos dos elementos xml (nós)
        $codigo = $dom->createElement("CODIGO", $row->matricula);
        $nome = $dom->createElement("NOME", $row->nome);
        
        while($row2 = $result2->fetch(PDO::FETCH_OBJ))
        {
            if($row2->diasemana_id == 1)
            {
                $segunda = $dom->createElement("SEG", $row2->horario);
            }
            else
            {
                $segunda = $dom->createElement("SEG", "00000");
            }
            if($row2->diasemana_id == 2)
            {
                $terca = $dom->createElement("TER", $row2->horario);
            }
            else
            {
                $terca = $dom->createElement("TER", "00000");
            }
            if($row2->diasemana_id == 3)
            {
                $quarta = $dom->createElement("QUA", $row2->horario);
            }
            else
            {
                $quarta = $dom->createElement("QUA", "00000");
            }
            if($row2->diasemana_id == 4)
            {
                $quinta = $dom->createElement("QUI", $row2->horario);
            }
            else
            {
                $quinta = $dom->createElement("QUI", "00000");
            }
            if($row2->diasemana_id == 5)
            {
                $sexta = $dom->createElement("SEX", $row2->horario);
            }
            else
            {
                $sexta = $dom->createElement("SEX", "00000");
            }
            if($row2->diasemana_id == 6)
            {
                $sabado = $dom->createElement("SAB", $row2->horario);
            }
            else
            {
                $sabado = $dom->createElement("SAB", "00000");
            }
        }
    
    
        #adiciona os nós (informacaoes do professor) em registro
        $registro->appendChild($codigo);
        $registro->appendChild($nome);
        $registro->appendChild($segunda);
        $registro->appendChild($terca);
        $registro->appendChild($quarta);
        $registro->appendChild($quinta);
        $registro->appendChild($sexta);
        $registro->appendChild($sabado);
        
        #adiciona o nó contato em (root) professor
        $professores->appendChild($registro);
     
    }    
    
    $root->appendChild($professores);    
    $dom->appendChild($root);

    # Para salvar o arquivo, descomente a linha
    $dom->save("arquivos/URANEXP.xml");

    #cabeçalho da página
    header("Content-Type: text/xml");
    # imprime o xml na tela
    //print $dom->saveXML();
    
    

