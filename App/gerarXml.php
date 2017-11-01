<?php
/**
 * Created by PhpStorm.
 * User: michel.oliveira
 * Date: 01/11/2017
 * Time: 15:14
 */
    require_once 'conexao.php';


    #Instancia a conexao com o banco através da classe conexao
    $db = Database::conexao();

    #passa para o result as informações de todos os professores no banco
    $result = $db->query("SELECT * FROM professor");

    #versao do encoding do XML
    $dom = new DOMDocument("1.0", "ISO-8859-1");

    #retirar espaços em branco
    $dom->preserveWhiteSpace = false;

    #gerar o código
    $dom->formatOutput = true;

    #cria o nó principal (<EXPORT_URANIA_INSERT>)
    $root = $dom->createElement("EXPORT_URANIA_INSERT");

    #cria nó filho (<PROFESSORES>)
    $professores = $dom->createElement("PROFESSORES");

    #percorre todas as informações dos professores
    while($row = $result->fetch(PDO::FETCH_OBJ))
    {
        #cria nó filho (<REGISTRO>) para cada professor;
        $registro = $dom->createElement("REGISTRO");

        #cria nós filhos de registro código e nome
        $codigo = $dom->createElement("CODIGO", $row->id);
        $nome = $dom->createElement("NOME", $row->nome);

        #adiciona os nós como filho de registro
        $registro->appendChild($codigo);
        $registro->appendChild($nome);

        #armazena o id do professor
        $id = $row->id;

        #executa a consulta para todas as disponiblidades do professor na vez do lopp
        $result2 = $db->query("SELECT * FROM uvw_prof_manha WHERE prof_id = $id");

        #cria variaves temporárias para armazenar os horários que se não houver horário preenchido recebe "00000"
        $seg = "00000"; $ter = "00000"; $qua = "00000"; $qui = "00000"; $sex = "00000"; $sab = "00000";

        #percorre todos os registros de disponibilidade do professor na tabela disponibilidade
        while($row2 = $result2->fetch(PDO::FETCH_OBJ))
        {
            #verifica os dias da semana para preencher o xml com os nós dos dias
            if($row2->diasemana_id == 1) #segunda
            {
                $seg = $row2->horario;
            }
            if($row2->diasemana_id == 2) #terca
            {
                $ter= $row2->horario;
            }
            if($row2->diasemana_id == 3) #quarta
            {
                $qua = $row2->horario;
            }
            if($row2->diasemana_id == 4) #quinta
            {
                $qui = $row2->horario;
            }
            if($row2->diasemana_id == 5) #sexta
            {
                $sex = $row2->horario;
            }
            if($row2->diasemana_id == 6) #sabado
            {
                $sab= $row2->horario;
            }

        }
            #cria os nós dos dias
            $segunda = $dom->createElement("SEG", $seg);
            $terca = $dom->createElement("TER", $ter);
            $quarta = $dom->createElement("QUA", $qua);
            $quinta = $dom->createElement("QUI", $qui);
            $sexta = $dom->createElement("SEX", $sex);
            $sabado = $dom->createElement("SAB", $sab);

            #referencia os nós dos dias como filhos do nó registro
            $registro->appendChild($segunda);
            $registro->appendChild($terca);
            $registro->appendChild($quarta);
            $registro->appendChild($quinta);
            $registro->appendChild($sexta);
            $registro->appendChild($sabado);

            #referencia o nó registro como filho de professor
            $professores->appendChild($registro);

    }

    #referencia o professor como filho do root
    $root->appendChild($professores);
    $dom->appendChild($root);

    # Para salvar o arquivo, descomente a linha
    //$dom->save("arquivos/URANEXP.xml");

    #cabeçalho da página
    header("Content-Type: text/xml");

    # imprime o xml na tela
    print $dom->saveXML();

