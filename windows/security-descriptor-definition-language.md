### ssdl - a text string that can be used to describe a security descriptor
```
RP 	= Start  
WP 	= Stop  
WD	= WDac  
SY	= Local System  
BA	= Built-in (local) administrators  
AU	= Authenticated Users  
```

### example
```
(A;;RPQP;;;AU) - users within the authenticated users group are allowed to start or stop the service
```

