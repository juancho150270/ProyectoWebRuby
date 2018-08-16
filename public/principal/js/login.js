// Login Form

$(function() {
    var button = $('#loginButton');
    var btnRecovery = $('#recoveryButton');
    var box = $('#loginBox');
    var boxRecovery = $('#recoveryBox');
    var form = $('#loginForm');
    var rForm = $('#rloginForm');
    boxRecovery.hide();
    button.removeAttr('href');
    button.mouseup(function(login) {
        box.toggle();
        button.toggleClass('active');
        button.hide();
    });
    btnRecovery.removeAttr('href');
    btnRecovery.mouseup(function(rLogin) {
        boxRecovery.toggle();
        btnRecovery.toggleClass('active');
        box.hide();
    });
    form.mouseup(function() { 
        return false;
    });
    rForm.mouseup(function() { 
        return false;
    });
    $(this).mouseup(function(login) {
        if(!($(login.target).parent('#loginButton').length > 0)) {
            button.removeClass('active');
            box.hide();
            boxRecovery.hide();
            button.show();
        }
    });
});