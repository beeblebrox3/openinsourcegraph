chrome.browserAction.onClicked.addListener(tab => {
    const matches = tab.url.match(/:\/\/github\.com\/([a-zA-Z0-9\.-]+)\/([a-zA-Z0-9\.-]+)/);

    if (matches) {
        chrome.tabs.create({
            active: true,
            url: "http://sourcegraph.com/github.com/" + matches[1] + "/" + matches[2],
        });
    }
});
