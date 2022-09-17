<!DOCTYPE html>
<html lang="en">

<!-- http://localhost/sUTEC3D//roles  nombre de la vista-->
<!-- http://localhost/sUTEC3D/Roles/getRoles  muestra el codigo en json -->
 <!-- https://jsonformatter.curiousconcept.com/ - Validar los formatos JASON -->

<?php headerAdmin($data); 
getModal('modalRoles', $data);
?>


    <main class="app-content">
      <div class="app-title">
        <div>
          <h1><i class="fas fa-user-secret"></i> <?= $data['page_title']?> <!-- Nombre de abajo-->
          <button class="btn btn-primary" type="button" onclick="openModal();"><i class="fa-sharp fa-solid fa-user-plus"></i> Nuevo</button>
        </h1>
        </div>
        <ul class="app-breadcrumb breadcrumb">
          <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
          <li class="breadcrumb-item"><a href="<?= base_url(); ?>/Roles"><?= $data['page_title']?></a></li> <!-- Nombre del lado de la casita-->
        </ul>

      </div>
        <div class="row">
        <div class="col-md-12">
          <div class="tile">
            <div class="tile-body">
              <div class="table-responsive">
                <table class="table table-hover table-bordered" id="tableRoles">
                  <thead>
                    <tr>
                      <th>ID</th>
                      <th>Nombre</th>
                      <th>Descripcion</th>
                      <th>Estatus</th>
                      <th>Acciones</th> <!-- Muestra el contenido de Acciones en el archivo de functions_roles-js-->
                      
                    </tr>
                  </thead>
                  <tbody>
                   
                   
                    
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
        </div>
    </main>
  </body>

  <?php footer_admin($data); ?>
</html>