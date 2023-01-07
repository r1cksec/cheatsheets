# GUI

### Show all high value groups
```
MATCH p=(n:User)-[r:MemberOf*1..]->(m:Group {highvalue:true}) RETURN p
```

### Show all objects (non-domain admins) that have control over domain admins
```
MATCH p1 = (daPrincipal)-[:MemberOf*1..]->(daGroup:Group {name:'DOMÄNEN-ADMINS@DOMAIN.LOCAL'}) WITH p1,daPrincipal,daGroup OPTIONAL MATCH p2 = (l)-[{isacl:true}]->(daPrincipal) WHERE NOT 1 = daGroup AND NOT 1 = daPrincipal OPTIONAL MATCH p3 = (m)-[:MemberOf*1..]->(g:Group)-[{isacl:true}]->(daPrincipal) WHERE NOT m = daPrincipal AND NOT m = daGroup AND NOT g = daGroup AND NOT  (m)-[:MemberOf*1..]->(daGroup) RETURN p1,p2,p3
```

### Find all users with an SPN
```
MATCH (n:User) WHERE n.hasspn=true RETURN n
```

### Find unsupported OS Windows 7
```
MATCH (H:Computer) WHERE H.operatingsystem =~ 'Windows 7 Enterprise Service Pack 1|Windows Server 2008 R2 Standard Service Pack 1|Windows Server 2012 R2 Standard|Windows Server 2003|Windows 7 Enterprise|Windows 7 Professional|Windows Server 2003|Windows Server 2008 R2 Enterprise|Windows Server 2008 R2 Standard|Windows XP Professional' RETURN H
```

### View GPOs that contain a keyword
```
Match (n:GPO) WHERE n.name CONTAINS "SERVER" return n
```

### View all groups that contain the word 'admin'
```
Match (n:Group) WHERE n.name CONTAINS "ADMIN" return n
```

### Find user that does not require kerberos pre-authentication
```
MATCH (u:User {dontreqpreauth: true}) RETURN u
```

### Find all users that never logged on and account is still active
```
MATCH (n:User) WHERE n.lastlogontimestamp=-1.0 AND n.enabled=TRUE RETURN n.name ORDER BY n.name
```

### Find the AdminTo edges of the domain users against the domain computers
```
MATCH p1=shortestPath(((u1:User)-[r1:MemberOf*1..]->(g1:Group))) MATCH p2=(u1)-[:AdminTo*1..]->(c:Computer) RETURN p2
```

### Get top 10 users with most sessions
```
MATCH (n:User),(m:Computer), (n)<-[r:HasSession]-(m) WHERE NOT n.name STARTS WITH 'ANONYMOUS LOGON' AND NOT n.name='' WITH n, count(r) as rel_count order by rel_count desc LIMIT 10 MATCH p=(m)-[r:HasSession]->(n) RETURN p
```

### Get top 10 users with most local admin rights
```
MATCH (n:User),(m:Computer), (n)-[r:AdminTo]->(m) WHERE NOT n.name STARTS WITH 'ANONYMOUS LOGON' AND NOT n.name='' WITH n, count(r) as rel_count order by rel_count desc LIMIT 10 MATCH p=(m)<-[r:AdminTo]-(n) RETURN p
```


# Console (127.0.0.1:7474)

### List all user
```
Match (n:User) RETURN n
```

### Show computer description -console
```
MATCH (c:Computer) RETURN c.name,c.description
```

### Return all nodes where a given group has GenericAll rights
```
MATCH (n:Group) WHERE n.name =~ '<name>@<domain>' MATCH (m:Group) WHERE NOT m.name = n.name MATCH p=allShortestPaths((n)-[r:GenericAll]->(m)) RETURN p
```

### Find all computer (except DC) with unconstrained delegation
```
MATCH (c1:Computer)-[:MemberOf*1..]->(g:Group) WHERE g.objectid ENDS WITH '-516' WITH COLLECT(c1.name) AS domainControllers MATCH (c2:Computer {unconstraineddelegation:true}) WHERE NOT c2.name IN domainControllers RETURN c2.name,c2.operatingsystem ORDER BY c2.name ASC
```

### Find every user object where the 'userpassword' attribute is populated
```
MATCH (u:User) WHERE NOT u.userpassword IS null RETURN u.name,u.userpassword
```

### Find users with password last set older than 90 days
```
MATCH (u:User) WHERE u.pwdlastset < (datetime().epochseconds - (90 * 86400)) and NOT u.pwdlastset IN [-1.0, 0.0] RETURN u.name, u.pwdlastset order by u.pwdlastset
```

### Users that have never logged on and account is still active 
```
MATCH (n:User) WHERE n.lastlogontimestamp=-1.0 AND n.enabled=TRUE RETURN n.name ORDER BY n.name
```

### Find groups that can reset passwords
```
MATCH p=(m:Group)-[r:ForceChangePassword]->(n:User) RETURN m.name, n.name ORDER BY m.name
```

### Find kerberoastable users with most rights
```
MATCH (u:User {hasspn:true}) OPTIONAL MATCH (u)-[:AdminTo]->(c1:Computer) OPTIONAL MATCH (u)-[:MemberOf*1..]->(:Group)-[:AdminTo]->(c2:Computer) WITH u,COLLECT(c1) + COLLECT(c2) AS tempVar UNWIND tempVar AS comps RETURN u.name,COUNT(DISTINCT(comps)) ORDER BY COUNT(DISTINCT(comps)) DESC
```

### Find groups with the most admin rights to computers
```
MATCH (g:Group) OPTIONAL MATCH (g)-[:AdminTo]->(c1:Computer) OPTIONAL MATCH (g)-[:MemberOf*1..]->(:Group)-[:AdminTo]->(c2:Computer) WITH g, COLLECT(c1) + COLLECT(c2) AS tempVar UNWIND tempVar AS computers RETURN g.name AS GroupName,COUNT(DISTINCT(computers)) AS AdminRightCount ORDER BY AdminRightCount DESC
```

### Shortest path to Domain Admins from the Domain Users group
```
MATCH (g:Group) WHERE g.name =~ 'DOMÄNEN-BENUTZER@.*' MATCH (g1:Group) WHERE g1.name =~ 'DOMÄNEN-ADMINS@.*' OPTIONAL MATCH p=shortestPath((g)-[r:MemberOf|HasSession|AdminTo|AllExtendedRights|AddMember|ForceChangePassword|GenericAll|GenericWrite|Owns|WriteDacl|WriteOwner|CanRDP|ExecuteDCOM|AllowedToDelegate|ReadLAPSPassword|Contains|GpLink|AddAllowedToAct|AllowedToAct|SQLAdmin*1..]->(g1)) RETURN p
```

### Get percentage of collected session information
```
MATCH (u1:User)
WITH COUNT(u1) AS totalUsers
MATCH (c:Computer)-[r:HasSession]->(u2:User)
RETURN 100 * COUNT(DISTINCT(u2)) / totalUsers
```

### List users and their login times + pwd last set times
```
MATCH (n:User) WHERE n.enabled = TRUE RETURN n.name, datetime({epochSeconds: toInteger(n.pwdlastset) }), datetime({epochSeconds: toInteger(n.lastlogon) }) order by n.pwdlastset
```

### Show computers (excluding Domain Controllers) where Domain Admins are logged in
```
MATCH (n:User)-[:MemberOf*1..]->(g:Group {name:'DOMAIN ADMINS@DOMAIN.GR'}) WITH n as privusers
```

