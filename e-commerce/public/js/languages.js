var arrLang = {
    'en': {
        'pound': 'Pound (GBP)',
        'euro': 'Euro (EUR)',
        'dollar': 'Dollar (USD)'
    },
    'ru': {
        'pound': 'Фунты (GBP)',
        'euro': 'Евро (EUR)',
        'dollar': 'Доллары (USD)'
    }
}

$(function () {
    $('.translate').click(function () {
        var lang = $(this).attr('id');
        $('.lang').each(function (index, item) {
            $(this).text(arrLang[lang][$(this).attr('key')]);
        });
    });
});
