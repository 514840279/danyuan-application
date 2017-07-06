var Confirm = {
    modalContainerId: '#modal-container',
    modalBackgroundId: '#modal-background',
    modalMainId: '#confirm-modal',
    customButton: {
        'Okay': {
            'primary': true,
            'callback': function() {
                Confirm.hide();
            }
        }
    },
    customEvent: null,

    init: function(size) {
        var self = this;
        var ElemHtml = '';

        $(self.modalMainId).remove();

        ElemHtml = '<div id="confirm-modal" class="modal fade role="dialog" tabindex="-1">' + '<div class="modal-dialog modal-' + size + '">' + '<div class="modal-content">' + '<div class="modal-header">' + '<button id="modal-upper-close" class="close modal-close" aria-label="Close" type="button">' + '<span aria-hidden="true">×</span>' + '</button>' + '<h4 id="modal-title" class="modal-title">Modal Title</h4>' + '</div>' + '<div id="modal-body" class="modal-body"> Modal Message </div>' + '<div id="modal-footer" class="modal-footer">' + '</div>' + '</div>' + '</div>' + '</div>' + '<div id="modal-background" class=""></div>';

        $('body').append(ElemHtml);
    },

    addCustomButtons: function() {
        var self = this;
        var condition = true;

        $('.modal-custom-button').remove();

        closeButton = '';

        if (self.customButton)
            closeButton = '<button id="modal-close" type="button" class="btn btn-default modal-custom-button">Close</button>';
        else {
            self.customButton = {
                'Okay': {
                    'primary': true,
                    'callback': function() {
                        Confirm.hide();
                    }
                }
            };
        }

        $.each(self.customButton, function(key, val) {
            buttonName = key.replace(/ /g, '');

            var ElemHtml = '';
            var ButtonState = 'btn-default';

            if (val['primary'])
                ButtonState = 'btn-primary';
            if (buttonName.toLowerCase() == 'okay' || buttonName.toLowerCase() == 'ok')
                closeButton = '';

            if (buttonName.toLowerCase() == 'delete' || buttonName.toLowerCase() == 'remove')
                ButtonState = 'btn-danger';

            ElemHtml = closeButton + '<button id="button-' + buttonName.toLowerCase() + '" type="button" class="btn modal-custom-button ' + ButtonState + '">' + buttonName + '</button>';

            $('#modal-footer').append(ElemHtml);

            if ($('#modal-close'))
                closeButton = '';

            self.addCustomButtonEvents(buttonName.toLowerCase(), val['callback']);
        });

        $('#modal-upper-close').unbind();
        $('#modal-upper-close').bind('click', function(e) {
            e.preventDefault();
            self.hide();
        });

        $('#modal-close').unbind();
        $('#modal-close').bind('click', function(e) {
            e.preventDefault();
            self.hide();
        });
    },

    addCustomButtonEvents: function(customButtonId, callback) {
        var self = this;

        $('#button-' + customButtonId).unbind();
        $('#button-' + customButtonId).bind('click', function(e) {
            e.preventDefault();
            callback();
        });
    },

    show: function(title, message, customEvent) {
        var self = this;

        if (title)
            $('#modal-title').html(title);

        if (message)
            $('#modal-body').html(message);

        self.customButton = customEvent;

        $(self.modalMainId).addClass('in');
        $(self.modalBackgroundId).addClass('modal-backdrop fade in');
        $(self.modalMainId).css({
            'display': 'block',
            'padding-right': '17px'
        });
        self.addCustomButtons();
    },

    hide: function() {
        var self = this;

        $(self.modalMainId).removeClass('in');
        $(self.modalBackgroundId).removeClass('modal-backdrop fade in');

        $(self.modalMainId).css('display', 'none');
    }
};

$(document).ready(function() {
    Confirm.init();
});

//www.sucaijiayuan.com 素材家园