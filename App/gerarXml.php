<?php
        require_once 'funcoes.php';
        require_once 'conexao.php';
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
        
    $qtdp = Funcoes::contadorProf();
    $qtdd = Funcoes::contadorDisp();
        
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

    for($i=0; $i<$qtdp; $i++)
    {
        #nó filho (REGISTRO)
        $registro = $dom->createElement("REGISTRO");


        #setanto nomes e atributos dos elementos xml (nós)
        $codigo = $dom->createElement("CODIGO", "123");
        $nome = $dom->createElement("NOME", "Rafael Clares");
        $segunda = $dom->createElement("SEG", "11111");
        $terca = $dom->createElement("TER", "000000");
        $quarta = $dom->createElement("QUA", "111000");
        $quinta = $dom->createElement("QUI", "111000");
        $sexta = $dom->createElement("SEX", "000111");
        $sabado = $dom->createElement("SAB", "101010");

        #adiciona os nós (informacaoes do contato) em contato
        $registro->appendChild($codigo);
        $registro->appendChild($nome);
        $registro->appendChild($segunda);
        $registro->appendChild($terca);
        $registro->appendChild($quarta);
        $registro->appendChild($quinta);
        $registro->appendChild($sexta);
        $registro->appendChild($sabado);

        #adiciona o nó contato em (root) agenda
        
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

