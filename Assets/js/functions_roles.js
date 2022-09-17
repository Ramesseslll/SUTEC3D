var tableRoles;

document.addEventListener('DOMContentLoaded',function(){
    tableRoles = $('#tableRoles').DataTable({
       "aProcessing":true,
       "aServerSide":true,
       "language":{
        "url":"//cdn.datatables.net/plug-ins/1.10.20/i18n/Spanish.json" //configura el legunaje español en la tabla
    },
        "ajax":{ 
            "url":" "+base_url+"/Roles/getRoles",
            "dataSrc":""
        },
       "columns": [  // Se obtiene informacion de las columnas de la base de datos 
            { data: 'idrol' },
            { data: 'nombrerol' },
            { data: 'descripcion' },
            { data: 'status' },
            { data: 'options' } // Muestra el contenido la columna actions en la vista roles
        ],
        "resonsieve":"true",
        "bDestroy":true,
        "iDisplayLength":10, //se colocan el numero de registros
        "order":[[0,"desc"]]
    });

    var formRol = document.querySelector('#formRol');
    formRol.onsubmit = function(e){
        e.preventDefault();

        var strNombre = document.querySelector('#txtNombre').value;
        var strDescripcion = document.querySelector('#txtDescripcion').value;
        var intStatus = document.querySelector('#listStatus').value;

        if(strNombre=='' || strDescripcion =='' || intStatus =='' ){
            swal("Atención", "Todos los campos son obligatorios.", "error");
            return false;
        }
        var request = (window.XMLHttpRequest) ? new XMLHttpRequest() : new ActiveXObject('Microsoft.XMLHTTP');
        var ajaxUrl = base_url+'/Roles/setRol'; 
        var formData = new FormData(formRol);
        request.open("POST",ajaxUrl, true);
        request.send(formData);
        request.onreadystatechange = function(){
            if(request.readyState == 4 && request.Status == 200){
                console.log(request.ResposeText);
            }
            
        }

    }
});
$('#tableRoles').DataTable();

function openModal(){
    $('#modalFormRol').modal('show');
}