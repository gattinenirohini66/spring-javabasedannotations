<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>KeepNote</title>
</head>
<body>
   <!-- Create a form which will have text boxes for Note ID, title, content and status along with a Send
        button. Handle errors like empty fields -->
<form  action="saveNote" method="post">
<table>
   <tr>
   <td>Note id:</td>
   <td><input type="text" name="noteId"></td>
   </tr>
   <tr>
   <td>Title:</td>
   <td><input type="text" name="noteTitle"></td>
   </tr>
   <tr>
   <td>Content:</td>
   <td><input type="text" name="noteContent"></td>
   </tr>
   <tr>
   <p>
       <td>Status:</td>
       <td><select name="noteStatus">
                 <option>Activated</option>
                 <option>Deactivated</option>
           </select></td>
    </p>
    </tr>
    <tr>
    <td><input type="submit"></td>
    </tr>
    </table>
</form>
   <!-- display all existing notes in a tabular structure with Id, Title,Content,Status, Created Date and Action -->
<table  border="1">
  <tr>
     <th>Id</th>
     <th>Title</th>
     <th>Content</th>
     <th>Status</th>
     <th>Created Date</th>
     <th>Action</th>
  </tr>
  <c:forEach items="${Notes}" var="note">
  <tr>
     <td><c:out value="${note.getNoteId()}"/></td>
     <td><c:out value="${note.getNoteTitle()}"/></td>
     <td><c:out value="${note.getNoteContent()}"/></td>
     <td><c:out value="${note.getNoteStatus()}"/></td>
     <td><c:out value="${note.getCreatedAt()}"/></td>
     <td><a href="deleteNote?noteId=${note.noteId}">Delete</a></td>
   </tr>
   </c:forEach>
</table>
</body>
</html>