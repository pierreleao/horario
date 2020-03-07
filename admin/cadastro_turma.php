<?php require '../exe/conexao_exe.php'; ?>
<!--==========================
  Cadastro de Turma
  ============================-->
<main>
  <!-- Cadastro -->
  <h1 align="center">Cadastro de Turmas</h1>
  <section class="img_cadastros">
    <div class="container font">
      <div class="font">
        <form action="../exe/cadastro_turma_exe.php" method="post">
          <div class="row">
            <div class="col">
              <label for="exampleInputPassword1">Nome</label>
              <input type="text" class="form-control" placeholder="Digite a Turma" required="required" name="nome">
            </div>
            <div class="col">
              <label for="exampleInputPassword1">Quantidade de Horários</label>
              <input type="text" class="form-control" placeholder="Digite a Quantidade de Horários" name="qnt_horarios">
            </div>
          </div><br>
         <div class="col">
              <label for="exampleInputPassword1">Turno</label>
                <select type="text" class="form-control" placeholder="Selacione o Turno" required="required" name ="turno">
                  <option value="none" style="color: #DCDCDC">Selecione o turno desejado</option>               
                  <option value="Vespertino">Vespertino</option>
                  <option value="Matutino">Matutino</option>
                  <option value="Noturno">Noturno</option>
                  <option value="Vespertino/Matutino">Vespertino/Matutino</option>
                  <option value="Vespetino/Matutino/Noturno">Vespertino/Matutino/Noturno</option>
                </select>
             
            </div>
            <div class="table">
              <label for="exampleInputPassword1"></label>
              <div >
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button type="submit" class="btn btn-primary tamanho_button">Salvar</button>
             </div>
              <label for="exampleInputPassword1"></label>
            </div>
        </form>


 <!-- Tabela de cadastrados -->
  <table class="table">
    <thead class="thead-dark">
      <tr>
        <th scope="col">#</th>
        <th scope="col">Nome</th>
        <th scope="col">Quantidade de horários</th>
        <th scope="col">Turno</th>
        <th scope="col">Ação</th>
        
      </tr>
    </thead>
  
  
  <?php
             
    $consulta = "SELECT * FROM turma";
    $resultado = mysqli_query($conexao, $consulta);
    $array = mysqli_fetch_array($resultado);
      while ($array = mysqli_fetch_assoc($resultado)) {
          ?>                    
              <tr>
                 <form action="../exe/excluir_turma_exe.php" method="get">
                      <td><?php echo $array['cod_turma']; ?></td>
                      <td><?php echo $array['nome']; ?></td>
                      <td><?php echo $array['qnt_horarios']; ?></td>
                      <td><?php echo $array['turno']; ?></td>   
                      <td><button type="submit" class="btn btn-danger" name="cod_turma" value=<?php echo $array['cod_turma']; ?>>Excluir</button></td>
                    </form>
                  </tr>
                <?php } ?>
                  
              </tbody>
       </table>
      <!-- Fim tabela de cadastrados -->
    </div>
  </section>
</main>
