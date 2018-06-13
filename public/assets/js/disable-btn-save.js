$(document).ready(function () {
    $('form').on('submit', function () {
        $('button[name="submit"]').attr('disabled', 'disabled');
    });
});