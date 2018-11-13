<%@page import="edu.sdfi.train.HelloWorld"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java EE Test</title>
</head>
<body>
<h1>HelloWrold!</h1>
<% 
	edu.sdfi.train.HelloWorld hello=new edu.sdfi.train.HelloWorld();
	out.println(hello.sayHello("Luo"));
	System.out.println("Hello World!");
	edu.sdfi.train.BubbleSort sort = new edu.sdfi.train.BubbleSort();
	int array[] = new int[] {63,4,24,1,3,15};
	edu.sdfi.train.BubbleSort sorter = new edu.sdfi.train.BubbleSort();
	sorter.sort(array);
	//out.println(sorter.newArray);
%>
<br>
<% 
	out.println();
	out.println(new java.util.Date());
%>
</body>
</html>