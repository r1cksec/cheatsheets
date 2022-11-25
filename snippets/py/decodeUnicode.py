from urllib.parse import unquote                            

s = '\u00d6 \u00fc'
print(unquote(s))

