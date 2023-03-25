### Get all snapshots of given URL
```
https://web.archive.org/cdx/search/cdx?url=<url>
```

### Get history of twitter username profile (grep)
```
curl -s "https://web.archive.org/cdx/search/cdx?url=twitter.com/<username>" | awk -F " " '{print "wget -qO- \"https://web.archive.org/web/"$2"/"$3"\" | grep -oiE \"<title.*title>\""}' | bash
```

