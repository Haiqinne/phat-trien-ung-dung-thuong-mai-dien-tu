<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="danhsach.aspx.cs" Inherits="WebApplication3.danhsach" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    Danh sach
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung" runat="server">
    <h2>Danh sach sinh vien</h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="masv" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="masv" HeaderText="masv" InsertVisible="False" ReadOnly="True" SortExpression="masv" />
            <asp:BoundField DataField="hoten" HeaderText="hoten" SortExpression="hoten" />
            <asp:BoundField DataField="diachi" HeaderText="diachi" SortExpression="diachi" />
            <asp:BoundField DataField="dienthoai" HeaderText="dienthoai" SortExpression="dienthoai" />
            <asp:BoundField DataField="malop" HeaderText="malop" SortExpression="malop" />
            <asp:TemplateField HeaderText="Ảnh sinh viên">
                <ItemTemplate>
                    <asp:Image ID="anh" runat="server" 
                        ImageUrl='<%# "~/Images/" + Eval("anh") %>' 
                         Width="80px" Height="80px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"
                        OnClientClick="return confirm('Bạn có chắc chắn muốn xóa không ?')"
                    ></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:HyperLinkField DataNavigateUrlFields="masv" DataNavigateUrlFormatString="suasv.aspx?masv={0}" Text="Edit" HeaderText="Edit" />
        </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:truonghocdbConnectionString %>" DeleteCommand="DELETE FROM [sinhvien] WHERE [masv] = @masv" InsertCommand="INSERT INTO [sinhvien] ([hoten], [diachi], [dienthoai], [malop], [anh]) VALUES (@hoten, @diachi, @dienthoai, @malop, @anh)" ProviderName="<%$ ConnectionStrings:truonghocdbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [sinhvien]" UpdateCommand="UPDATE [sinhvien] SET [hoten] = @hoten, [diachi] = @diachi, [dienthoai] = @dienthoai, [malop] = @malop, [anh] = @anh WHERE [masv] = @masv">
    <DeleteParameters>
        <asp:Parameter Name="masv" Type="Int32"/>
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="hoten" Type="String" />
        <asp:Parameter Name="diachi" Type="String" />
        <asp:Parameter Name="dienthoai" Type="String" />
        <asp:Parameter Name="malop" Type="Int32" />
        <asp:Parameter Name="anh" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="hoten" Type="String" />
        <asp:Parameter Name="diachi" Type="String" />
        <asp:Parameter Name="dienthoai" Type="String" />
        <asp:Parameter Name="malop" Type="Int32" />
        <asp:Parameter Name="anh" Type="String" />
        <asp:Parameter Name="masv" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
