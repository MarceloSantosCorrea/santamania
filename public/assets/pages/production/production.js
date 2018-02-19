var Production = function () {

    var formProduction = $('#production-date-form');

    var newDateProduction = function () {
        $('#modal_date_production').modal('toggle');
    };

    var close = function (id) {

        AjaxService.exec(Application.getBasePath() + '/production/ajax',
            {action: 'close-day', data: id},
            function () {
            },
            function (response) {
                if (response.success) {
                    $.Notification.notify('success', 'top left', 'Notificação de Sucesso', response.message);
                } else {
                    $.Notification.notify('error', 'top left', 'Notificação de Erro', response.message);
                }
                window.location.reload();
            }, function (error) {
                console.log(error.success);
            }
        );
    };

    var saveDateProduction = function () {
        var config = {};
        jQuery(formProduction).serializeArray().map(function (item) {
            if (config[item.name]) {
                if (typeof(config[item.name]) === "string") {
                    config[item.name] = [config[item.name]];
                }
                config[item.name].push(item.value);
            } else {
                config[item.name] = item.value;
            }
            console.log(config);
        });

        AjaxService.exec(Application.getBasePath() + '/production/ajax',
            {action: 'date-save-production', data: config},
            function () {
            },
            function (response) {
                if (response.result) {
                    $('#modal_date_production').modal('hide');
                    $.Notification.notify('success', 'top left', 'Notificação de Sucesso', 'Data Cadastrada com Sucesso');
                    window.location.reload();
                } else {

                    $.Notification.notify('error', 'top left', 'Notificação de Erro', 'Esta data já esta cadastrada');
                }
            },
            function (error) {
                console.log(error);
            });
    };

    return {
        init: function () {
            formProduction.on('submit', function (e) {
                e.preventDefault();
                saveDateProduction();
            })
        },

        openDateProduction: function () {
            newDateProduction();
        },

        closeday: function (id) {
            close(id);
        }
    }
}();

$(document).ready(function () {
    Production.init();
});