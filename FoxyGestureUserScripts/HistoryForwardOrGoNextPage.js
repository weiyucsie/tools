(function() {
    // 如果可以forward的話，就會前往，不然就沒作用。
    history.forward();
    var linkNext = document.querySelector('link[rel=next]');
    if (linkNext) {
        location.assign(linkNext.href);
    }
})();