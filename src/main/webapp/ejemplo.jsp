<%-- 
    Document   : ejemplo
    Created on : Jan 30, 2020, 9:30:35 PM
    Author     : juancarlos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.jceceniceros.tecmilenio.samplewebapp.Suma"%>
        
<%
    String n1 = request.getParameter("n1");
    String n2 = request.getParameter("n2");
    
    Suma suma = new Suma(n1, n2);
    suma.suma();
    int resultado = suma.getResultado();
%>
        
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>Hello, world!</title>
  </head>
  <body>
    <div class="row">
        <div class="offset-4 col-4 text-center">
            <h1>Suma</h1>
            <form>
                <div class="form-group">
                    <label>Número 1</label>
                    <input type="number" class="form-control" disabled readonly value="<%= n1 %>">
                </div>

                <div class="form-group">
                    <label>Número 2</label>
                    <input type="number" class="form-control" disabled readonly value="<%= n2 %>">
                </div>
                
                <div class="form-group">
                    <label>Resultado:</label>
                    <input type="number" class="form-control" disabled readonly value="<%= resultado %>">
                </div>
                
                <div class="form-control">
                    <a href="/SampleWebApp/">Reintentar</a>
                </div>
            </form>
        </div>
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  </body>
</html>
