<%--
  Created by IntelliJ IDEA.
  User: seoil
  Date: 2023-05-31
  Time: 오후 3:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="java.util.*,java.io.*"%>
<%
  //String saveFolder = "파일경로";
  String saveFolder = "C:\\Users\\seoil\\Desktop\\study\\JSPstudy3-1\\src\\main\\webapp\\filestorage" ;
  String encType = "utf-8";
  int maxSize = 5 * 1024 * 1024;
  try {
    MultipartRequest multi = null;
    multi = new MultipartRequest(request, saveFolder, maxSize,
            encType, new DefaultFileRenamePolicy());
    String user = multi.getParameter("user");
    String title = multi.getParameter("title");

    out.println("user: " + user + "<br/>");
    out.println("title: " + title + "<br/>");
    out.println("<hr>");

    String fileName = multi.getFilesystemName("uploadFile");
    String original = multi.getOriginalFileName("uploadFile");
    String type = multi.getContentType("uploadFile");
    File f = multi.getFile("uploadFile");

    out.println("저장된 파일 이름 : " + fileName + "<br/>");
    out.println("실제 파일 이름 : " + original + "<br/>");
    out.println("파일 타입 : " + type + "<br/>");
    if (f != null) {
      out.println("크기 : " + f.length()+"바이트");
      out.println("<br/>");
    }
  } catch (IOException ioe) {
    System.out.println(ioe);
  } catch (Exception ex) {
    System.out.println(ex);
  }
  /*//String saveFolder = "파일경로";
  String saveFolder = "C:\Users\seoil\Desktop\study\JSPstudy3-1\src\main\webapp\filestorage" ;
  String encType = "EUC-KR";
  int maxSize = 5 * 1024 * 1024;
  try {
    MultipartRequest multi = null;
    multi = new MultipartRequest(request, saveFolder, maxSize,
            encType, new DefaultFileRenamePolicy());
    Enumeration params = multi.getParameterNames();

    while(params.hasMoreElements()) {
      String name = (String) params.nextElement();
      String value = multi.getParameter(name);
      out.println(name + " = " + value + "<br/>");
    }
    Enumeration files = multi.getFileNames();
    while (files.hasMoreElements()) {
      String name = (String) files.nextElement();
      String fileName = multi.getFilesystemName(name);
      String original = multi.getOriginalFileName(name);
      String type = multi.getContentType(name);
      File f = multi.getFile(name);

      out.println("파라미터 이름 : " + name + "<br/>");
      out.println("실제 파일 이름 : " + original + "<br/>");
      out.println("저장된 파일 이름 : " + fileName + "<br/>");
      out.println("파일 타입 : " + type + "<br/>");
      if (f != null) {
        out.println("크기 : " + f.length()+"바이트");
        out.println("<br/>");
      }
    }
  } catch (IOException ioe) {
    System.out.println(ioe);
  } catch (Exception ex) {
    System.out.println(ex);
  }*/
%>

