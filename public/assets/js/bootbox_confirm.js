function bootbox_confirm( msg, url ) {

    bootbox.setDefaults( {
        /**
         * @optional String
         * @default: en
         * which locale settings to use to translate the three
         * standard button labels: OK, CONFIRM, CANCEL
         */

        locale: 'pt_BR',

        /**
         * @optional Boolean
         * @default: true
         * whether the dialog should be shown immediately
         */
        show: true,

        /**
         * @optional Boolean
         * @default: true
         * whether the dialog should be have a backdrop or not
         */
        backdrop: true,

        /**
         * @optional Boolean
         * @default: true
         * show a close button
         */
        closeButton: true,

        /**
         * @optional Boolean
         * @default: true
         * animate the dialog in and out (not supported in < IE 10)
         */
        animate: true,

        /**
         * @optional String
         * @default: null
         * an additional class to apply to the dialog wrapper
         */
        className: "my-modal",


    } );

    bootbox.confirm( msg, function ( result ) {

        if ( result === true ) {
            window.location = url;
        }
    } );

}
