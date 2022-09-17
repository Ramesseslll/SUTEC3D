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
});
$('#tableRoles').DataTable();

function openModal(){
    $('#modalFormRol').modal('show');
}