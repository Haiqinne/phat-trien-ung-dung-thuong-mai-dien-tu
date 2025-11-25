<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="StyleSheet1.css" type="text/css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="container">
            <h1>My Project Web</h1>
            <nav>
                <ul>
                     <li><a href="#">Danh sách sinh viên</a></li>
                     <li><a href="#">Thêm sinh viên</a></li>
                     <li><a href="#">sửa sinh viên</a></li>
                     <li><a href="#">Xóa sinh viên</a></li>
                     <li><a href="#">Hướng dẫn</a></li>
                </ul>
            </nav>
            <aside>
                <img src="anh1.jpg" alt="Flower" height="200" width="200"/>
                <h3>Links</h3>
                <ul>
                    <li>Home</li>
                    <li>Tutorial</li>
                    <li>Download</li>
                    <li>Help</li>
                </ul>
            </aside>
            <section id='main'>
                <h2>Data here</h2>
                <p>
                    Lorem ipsum dolor sit amet, consectetuer
                    Maecenas porttitor congue
                    massa. Fusce posuere, magna sed pulvinar
                </p>
                <p>
                    Nunc viverra imperdiet enim. Fusce est. Vivamus a tellus.
                    Pellentesque habitant morbi tristique senectus a netus
                    et malesuada fames ac turpis egestas.
                </p>
            </section>
            <footer>
                Hanoi University of Industry
            </footer>
        </div>
    </div>
    </form>
</body>
</html>
