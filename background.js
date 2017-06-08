chrome.browserAction.onClicked.addListener(function(tab) {
    var matches = tab.url.match(/:\/\/github\.com\/([a-zA-Z0-9\.-]+)\/([a-zA-Z0-9\.-]+)/);
    if (matches) {
        window.open("http://sourcegraph.com/github.com/" + matches[1] + "/" + matches[2]);
    }
});
