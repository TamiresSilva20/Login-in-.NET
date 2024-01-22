<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="logintcc.Login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet"href="Login.css" />
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <title></title>
</head>
<body>
    <div class="wrapper">

    <form id="form1" runat="server">
        <div>
           <h1>Login</h1> <br />
            <div class="input-box">
                <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label><asp:TextBox ID="txtEmail" runat="server"  AutoCompleteType="Email" CssClass="txtbox" ></asp:TextBox>
            
           <div class="in"><i class='bx bxs-user'></i></div>
            </div>
              <div class="input-box">
                  <asp:Label ID="lblsenha" runat="server" Text="Senha:"></asp:Label> <asp:TextBox ID="txtSenha" runat="server" CssClass="txtbox"></asp:TextBox>
         
           <div class="in"><i class='bx bxs-lock-alt' ></i></div></div>   
                  <div class="input-box">
                        
                      <asp:Label ID="Lblconfsenha" runat="server" Text="Confirma Senha:"></asp:Label> <asp:TextBox ID="txtConfSenha" runat="server" CssClass="txtbox"></asp:TextBox>
       <div class="in"><i class='bx bxs-lock-alt' ></i></div> </div> <br />

            <asp:Button ID="BtnLogin" runat="server" OnClick="BtnLogin_Click" Text="Login" CssClass="btn" />
          
            <div class="register-link">
                <p>Não tem uma conta cadastre-se <a href="Sign_up.aspx">Sign Up</a></p>
            </div>
            <asp:Label ID="lblMensagem" runat="server"></asp:Label>
        </div>
    </form>
           </div>
</body>
</html>
