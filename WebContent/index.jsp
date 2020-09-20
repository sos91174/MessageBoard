
<%@ page import="java.text.SimpleDateFormat" %>	
<%@ page import="java.util.List" %>
<%@ page import="test.Message" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<table>
    <form action="message" method="post">
    <tr>
        <td>使用者</td>
        <td><input type="text" name="name"></td>
    </tr>
    <tr>
        <td>標題</td>
        <td><input type="text" name="title"></td>
    </tr>
    <tr>
        <td>內容</td>
        <td><textarea name="content" id="" cols="30" rows="10"></textarea></td>
    </tr>
    <tr>
        <td colspan="2">  <input type="submit" value="確認"></td>
    </tr>
    </form>
</table>
<%
    SimpleDateFormat format = new SimpleDateFormat("yyyy年MM月dd日hh時mm分ss秒");
    List list = (List) session.getAttribute("messageList");
    if(list != null) {
        for(int i=0;i<list.size();i++) {
            Message message = (Message) list.get(i);
    %>
            樓層：<%=i+1%> 樓 <br>
            留言人：<%=message.getName()%> <br>
            時間：<%=format.format(message.getCreateTime())%> <br>
            標題：<%=message.getTitile()%><br>
            内容：<%=message.getContent()%><br>
            <hr>
    <%
        }
    }
%>
</body>
</html>