<div class="container">
      <div class="panel panel-primary" align="center">
      <div class="panel-heading">
        Disponibilidade de Horário
      </div>
      <div class="panel-body">
      <!-- <div class="row">
          <h2>Disponibilidade de horário</h2>
        </div> -->
        
        <div class="row">
          <div margin-left="-10" class="col-sm-offset-4 col-sm-4">
            <form method="post">

                <div class="form-group">
                  <label for="validate-text">Nome:</label>
                  <div class="input-group">
                    <input type="text" class="form-control" name="nome" id="validate-text" placeholder="Digite seu nome completo.." required> 
                    <span class="input-group-addon danger"><span class="glyphicon glyphicon-remove"></span>
                  </div>
                </div>  
                
                <div class="form-group">
                  <label for="validate-email">Email:</label>
                  <div class="input-group" data-validate="email">
                    <input type="text" class="form-control" name="email" id="validate-email" placeholder="Digite seu email.." required> 
                    <span class="input-group-addon danger"><span class="glyphicon glyphicon-remove"></span>
                  </div>
                </div>

                <div class="form-group">
                  <label for="validate-phone">Telefone:</label>
                  <div class="input-group" data-validate="phone">
                    <input type="text" class="form-control" name="telefone" id="validate-phone" placeholder="Digite seu Telefone.." required> 
                    <span class="input-group-addon danger"><span class="glyphicon glyphicon-remove"></span>
                  </div>
                </div>
                
                <section>
                <div class="table table-responsive" id="marcartodosM">
                  <label for="table-hor-man">Manhã</label>
                  <table class="table table-responsive" id="table" name="table-hor-man" >
                    <thead class="thead-inverse">
                      <tr>
                        <th>Horário</th>
                        <th>Segunda</th>
                        <th>Terça</th>
                        <th>Quarta</th>
                        <th>Quinta</th>
                        <th>Sexta</th>
                        <th>Sábado</th>
                      </tr>
                    </thead>

                    <tbody>
                      <tr align="center">
                        <th scope="row">Todos</th>
                        <td>
                          <input type="checkbox" id="todosSM">
                        </td>
                        <td>
                          <input type="checkbox" id="todosTM">
                        </td>
                        <td>
                          <input type="checkbox" id="todosQaM">
                        </td>
                        <td>
                          <input type="checkbox" id="todosQiM">
                        </td>
                        <td>
                          <input type="checkbox" id="todosSeM">
                        </td>
                        <td>
                          <input type="checkbox" id="todosSaM">
                        </td>
                      </tr>

                      <tr align="center">
                        <th scope="row">7:30-8:20</th>
                        <td>
                          <input type="checkbox" name="segunda[]">
                        </td>
                        <td>
                          <input type="checkbox" name="terca[]">
                        </td>
                        <td>
                          <input type="checkbox" name="quarta[]">
                        </td>
                        <td>
                          <input type="checkbox" name="quinta[]">
                        </td>
                        <td>
                          <input type="checkbox" name="sexta[]">
                        </td>
                        <td>
                          <input type="checkbox" name="sabado[]">
                        </td>
                      </tr>
                      <tr align="center">
                        <th scope="row">8:30-9:10</th>
                        <td>
                          <input type="checkbox" name="segunda[]">
                        </td>
                        <td>
                          <input type="checkbox" name="terca[]">
                        </td>
                        <td>
                          <input type="checkbox" name="quarta[]">
                        </td>
                        <td>
                          <input type="checkbox" name="quinta[]">
                        </td>
                        <td>
                          <input type="checkbox" name="sexta[]">
                        </td>
                        <td>
                          <input type="checkbox" name="sabado[]">
                        </td>
                      </tr>
                      <tr align="center">
                        <th scope="row">9:30-10:20</th>
                        <td>
                          <input type="checkbox" name="segunda[]">
                        </td>
                        <td>
                          <input type="checkbox" name="terca[]">
                        </td>
                        <td>
                          <input type="checkbox" name="quarta[]">
                        </td>
                        <td>
                          <input type="checkbox" name="quinta[]">
                        </td>
                        <td>
                          <input type="checkbox" name="sexta[]">
                        </td>
                        <td>
                          <input type="checkbox" name="sabado[]">
                        </td>
                      </tr>
                      <tr align="center">
                        <th scope="row">10:20-11:10</th>
                        <td>
                          <input type="checkbox" name="segunda[]">
                        </td>
                        <td>
                          <input type="checkbox" name="terca[]">
                        </td>
                        <td>
                          <input type="checkbox" name="quarta[]">
                        </td>
                        <td>
                          <input type="checkbox" name="quinta[]">
                        </td>
                        <td>
                          <input type="checkbox" name="sexta[]">
                        </td>
                        <td>
                          <input type="checkbox" name="sabado[]">
                        </td>
                      </tr>
                      <tr align="center">
                        <th scope="row">11:10-12:00</th>
                        <td>
                          <input type="checkbox" name="segunda[]">
                        </td>
                        <td>
                          <input type="checkbox" name="terca[]">
                        </td>
                        <td>
                          <input type="checkbox" name="quarta[]">
                        </td>
                        <td>
                          <input type="checkbox" name="quinta[]">
                        </td>
                        <td>
                          <input type="checkbox" name="sexta[]">
                        </td>
                        <td>
                          <input type="checkbox" name="sabado[]">
                        </td>
                      </tr>

                    </tbody>
                  </table>
                </div>
              </section class="form">
                <div class="table table-responsive" id="marcartodosN">
                    <label for="table-hor-noit">Noite</label>
                    <table class="table table-responsive"  name="table-hor-noit" >
                      <thead class="thead-inverse">
                        <tr>
                          <th>Horário</th>
                          <th>Segunda</th>
                          <th>Terça</th>
                          <th>Quarta</th>
                          <th>Quinta</th>
                          <th>Sexta</th>
                          <th>Sábado</th>
                        </tr>
                      </thead>
                      
                      <tbody>
                        <tr align="center">
                          <th scope="row">Todos</th>
                          <td>
                            <input type="checkbox" id="todosSN">
                          </td>
                          <td>
                            <input type="checkbox" id="todosTN">
                          </td>
                          <td>
                            <input type="checkbox" id="todosQaN">
                          </td>
                          <td>
                            <input type="checkbox" id="todosQiN">
                          </td>
                          <td>
                            <input type="checkbox" id="todosSeN">
                          </td>
                          <td>
                            <input type="checkbox" id="todosSaN">
                          </td>
                        </tr>

                        <tr align="center">
                          <th scope="row">18:20-19:10</th>
                          <td>
                            <input type="checkbox" name="segunda[]">
                          </td>
                          <td>
                            <input type="checkbox" name="terca[]">
                          </td>
                          <td>
                            <input type="checkbox" name="quarta[]">
                          </td>
                          <td>
                            <input type="checkbox" name="quinta[]">
                          </td>
                          <td>
                            <input type="checkbox" name="sexta[]">
                          </td>
                          <td>
                            <input type="checkbox" name="sabado[]">
                          </td>
                        </tr>
                        <tr align="center">
                          <th scope="row">19:10-20:00</th>
                          <td>
                            <input type="checkbox" name="segunda[]">
                          </td>
                          <td>
                            <input type="checkbox" name="terca[]">
                          </td>
                          <td>
                            <input type="checkbox" name="quarta[]">
                          </td>
                          <td>
                            <input type="checkbox" name="quinta[]">
                          </td>
                          <td>
                            <input type="checkbox" name="sexta[]">
                          </td>
                          <td>
                            <input type="checkbox" name="sabado[]">
                          </td>
                        </tr>
                        <tr align="center">
                          <th scope="row">20:20-21:10</th>
                          <td>
                            <input type="checkbox" name="segunda[]">
                          </td>
                          <td>
                            <input type="checkbox" name="terca[]">
                          </td>
                          <td>
                            <input type="checkbox" name="quarta[]">
                          </td>
                          <td>
                            <input type="checkbox" name="quinta[]">
                          </td>
                          <td>
                            <input type="checkbox" name="sexta[]">
                          </td>
                          <td>
                            <input type="checkbox" name="sabado[]">
                          </td>
                        </tr>
                        <tr align="center">
                          <th scope="row">21:10-22:00</th>
                          <td>
                            <input type="checkbox" name="segunda[]">
                          </td>
                          <td>
                            <input type="checkbox" name="terca[]">
                          </td>
                          <td>
                            <input type="checkbox" name="quarta[]">
                          </td>
                          <td>
                            <input type="checkbox" name="quinta[]">
                          </td>
                          <td>
                            <input type="checkbox" name="sexta[]">
                          </td>
                          <td>
                            <input type="checkbox" name="sabado[]">
                          </td>
                        </tr>
  
                      </tbody>
                    </table>
                </div>
                
                <div class="form-group">
                  <label for="validate-length">Disciplinas que se considera apto a lecionar:</label>
                  <div class="input-group" data-validate="length" data-length="5">
                    <textarea type="text" class="form-control" name="disc-apto" id="validate-length" placeholder="Insira aqui as disciplinas.." required></textarea>
                    <span class="input-group-addon danger"><span class="glyphicon glyphicon-remove"></span></span>
                  </div>
                </div>

                <div class="form-group">
                  <label for="validate-optional">Outras informações que considera importante:</label>
                  <div class="input-group">
                    <textarea type="text" class="form-control" name="validate-optional" id="validate-optional" placeholder="Opcional.."></textarea>
                    <span class="input-group-addon"></span>
                  </div>
                </div>

                <div class="form-group">
                  <div class="input-group">
                    <button type="submit" class="btn btn-primary col-sm-12" disabled>Submit</button>
                  </div>
                </div>

                
            </form>
          </div>
        </div>
      
      </div>
    </div>