<%@ Page Title="" Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="Ingreso.aspx.cs" Inherits="Vista.Ingreso" %>

<asp:Content ID="Ingreso" ContentPlaceHolderID="ContenidoGeneral" runat="server">
    <div class="container">

        <div class="row">
            <div class="col-sm">
                
            </div>
            <div class="col-sm">
                <div class="container">
                    <form>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email address</label>
                            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <input type="password" class="form-control" id="exampleInputPassword1">
                        </div>
                        <div class="form-group form-check">
                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                            <label class="form-check-label" for="exampleCheck1">Check me out</label>
                        </div>
                        <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" OnClick="btnIngresar_Click" />
                    </form>
                </div>
            </div>
            <div class="col-sm">
                
            </div>
        </div>

    </div>
</asp:Content>
