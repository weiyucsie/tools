(function() {
    // �p�G�i�Hforward���ܡA�N�|�e���A���M�N�S�@�ΡC
    history.forward();
    var linkNext = document.querySelector('link[rel=next]');
    if (linkNext) {
        location.assign(linkNext.href);
    }
})();