<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 style="text-align: center">Html中元素的水平居中方式</h1>
<p style="text-align: center;">行内元素</p>
<div style="margin: 0 auto; width: 200px; text-align: center;">定宽块元素</div>
<table align="center">
    <tr>
        <td>
            <div>不定宽块元素，方法1</div>
        </td>
    </tr>
</table>
<div style="text-align: center;">
    <div style="display: inline-block;">不定宽块元素，方法2</div>
</div>
<div style="height: 30px;">
    <div style="float: left; position: relative;left: 50%;">
        <div style="position: relative;left: -50%;">不定宽块元素，方法3</div>
    </div>
</div>
</div>

</body>
</html>

