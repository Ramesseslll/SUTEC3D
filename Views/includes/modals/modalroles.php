<!-- Modal -->
<div class="modal fade" id="modalFormRol" tabindex="-1" role="dialog" >
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalCenterTitle">Nuevo rol</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <div class="col-md-12">
          <div class="tile">
            <div class="tile-body">
              <form id="FormRol" name="FormRol">
                <div class="form-group">
                  <label class="control-label">Nombre</label>
                  <input class="form-control" id="txtNomre" name="txtNomre" type="text" placeholder="Nombre del rol" required="">
                </div>
                <div class="form-group">
                  <label class="control-label">Descripcion</label>
                  <textarea class="form-control"id="txtDescripcion" name="txtDescripcion" rows="2" placeholder="Descripcion del rol" required=""></textarea>
                </div>
                <div class="form-group">
                    <label for="exampleSelect1">Estado del rol</label>
                    <select class="form-control" id="liststatus" name="liststatus" required="">
                      <option values="1" >Activo </option>
                      <option values="2" >Inactivo </option>
                    </select>
                  </div>
                  <div class="tile-footer">
              <button class="btn btn-primary" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Guardar</button>&nbsp;&nbsp;&nbsp;<a 
                    class="btn btn-secondary" href="#"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancelar</a>
            </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>