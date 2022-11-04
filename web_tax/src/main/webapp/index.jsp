<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>个人所得税计算器</title>
    <script>
        function cal(){
            <jsp:useBean id="conn" class="com.example.web_tax.calculation"></jsp:useBean>
            <%
                String str = request.getParameter("wages");
                String str1 = "";
                String res = "";
                if(str!=null)
                {
                    double ans = com.example.web_tax.calculation.get_ans(str);
                    str1 = str;
                    if(ans>=0) res = ans+"元";
                    else res = "请输入正确的工资";
                }
            %>
        }
    </script>
</head>
<body>
<div align="center" style="position:relative;top:10px">
    <h1>个人所得税计算器</h1><p></p>
</div>
<div align="center" style="position:relative;top:10px">
    <p>请输入你的工资</p>
</div>
<form action="index.jsp" method="post">
    <div align="center" style="position:relative;top:10px">
        <input type="text" name="wages"/><br/><p></p>
    </div>
    <div align="center" style="position:relative;top:10px">
        <button type="submit" onclick="cal()">计算</button><p></p>
    </div>
</form>
<div align="center" style="position:relative;top:10px">
    <p>您输入的工资为：<%=str1%></p>
    <p>您需缴纳的个人所得税为：<%=res%></p>
</div>
</body>
</html>