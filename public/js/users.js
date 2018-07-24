$(document).ready(function() {
    $("#btnGuardar").click(function() {
        $.ajax({
            url: 'profiles/new',
            data: { 'txtLogin':$('#txtLogin').val(),
                    'ddlPerfiles':$('#ddlPerfiles').val() },
            type: 'POST',
            dataType: 'json',
            success: function(json) {
               
            },
            error: function(xhr, status) {
               
            }
        });
    });
 });
 
 
 