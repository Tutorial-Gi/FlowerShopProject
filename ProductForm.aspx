<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="ProductForm.aspx.cs" Inherits="Flower_Shop.ProductForm"   %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="all-content-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="logo-pro">
                        <a href="#"><img class="main-logo" src="img/logo/logo.png" alt="" /></a>
                    </div>
                </div>
            </div>
            <div class="single-pro-review-area mt-t-30 mg-b-15">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="product-payment-inner-st">

                            <div id="myTabContent" class="tab-content custom-product-edit">
                                <div class="product-tab-list tab-pane fade active in" id="description">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="review-content-section">
                                                <div id="dropzone1" class="pro-ad addcoursepro">                                              
                                                    <div class="row">
                                                            <div class="form-group col-lg-6">
                                                                <h1>Product Form</h1>                                                              
                                                            </div>
                                                     </div>   
                                                      <asp:Label ID="lbl_Error" runat="server" ForeColor="Red" Font-Bold="true" Font-Size="Large" Visible="false"></asp:Label>
                                                      <asp:Label ID="lbl_Message" runat="server" ForeColor="Green" Font-Bold="true" Font-Size="Large" Visible="false"></asp:Label>                                              
                                                        <div class="row">
                                                            <div class="form-group col-lg-9">
                                                                <asp:Label ID="lbl_ProductName" runat="server" Text="Name" Font-Bold="true"></asp:Label>
                                                                <asp:TextBox ID="txt_ProductName" runat="server" class="form-control" ></asp:TextBox>                                                                
                                                                <asp:RequiredFieldValidator ID="rf_ProductName" InitialValue="Select Product" runat="server" ErrorMessage="Please select any one"
                                                                      ControlToValidate="txt_ProductName" ForeColor="Red" ValidationGroup="ProductAddButton">
                                                                </asp:RequiredFieldValidator>                                                                                             
                                                            </div>
                                                        </div>
                                                         <div class="row">
                                                            <div class="form-group col-lg-9">
                                                                <asp:Label ID="lbl_Category" runat="server" Text="Category" Font-Bold="True"></asp:Label>
                                                                <div class="bt-df-checkbox">
                                                                    <asp:RadioButtonList ID="rb_Category" runat="server">  
                                                                        <asp:ListItem>Single</asp:ListItem>  
                                                                         <asp:ListItem>Bouquet</asp:ListItem>  
                                                                     </asp:RadioButtonList>                                                                     
                                                                 </div>
                                                            </div>
                                                        </div>
                                                       <div class="row">
                                                            <div class="form-group col-lg-9">
                                                                <asp:Label ID="lbl_Occasion" runat="server" Text="Occasion" Font-Bold="true"></asp:Label>                                                               
                                                                <asp:DropDownList ID="ddl_Occasion" runat="server" class="form-control custom-select-value">
                                                                    <asp:ListItem> Select Occassion </asp:ListItem>
                                                                    <asp:ListItem>Wedding</asp:ListItem>
                                                                    <asp:ListItem>Birthday</asp:ListItem>
                                                                    <asp:ListItem>Congratulation</asp:ListItem>
                                                                    <asp:ListItem>Dev-Puja</asp:ListItem>
                                                                </asp:DropDownList>     
                                                            </div>
                                                        </div>
                                                         <div class="row">
                                                            <div class="form-group col-lg-9">
                                                                <asp:Label ID="lbl_Color" runat="server" Text="Color" Font-Bold="true"></asp:Label>
                                                                <asp:TextBox ID="txt_Color" runat="server" placeholder="Color" class="form-control"></asp:TextBox>                                                                 
                                                            </div>
                                                         </div>
                                                         <div class="row">
                                                            <div class="form-group col-lg-9">
                                                                <asp:Label ID="lbl_Material" runat="server" Text="Material" Font-Bold="true"></asp:Label>
                                                                <asp:DropDownList ID="ddl_Material" runat="server" class="form-control custom-select-value">
                                                                    <asp:ListItem> Select Material </asp:ListItem>
                                                                    <asp:ListItem>Plastic</asp:ListItem>
                                                                    <asp:ListItem>Original</asp:ListItem>
                                                                </asp:DropDownList>                                                             
                                                            </div>
                                                        </div>                                                         
                                                        <div class="row">
                                                            <div class="form-group col-lg-9">
                                                                <asp:Label ID="lbl_Rate" runat="server" Text="Sale Rate" Font-Bold="true"></asp:Label>
                                                                <asp:TextBox ID="txt_Rate" runat="server"  class="form-control"></asp:TextBox>
                                                                 <asp:RequiredFieldValidator ID="rf_Rate" runat="server" ErrorMessage="Enter quantity" 
                                                                   ValidationGroup="ProductAddButton" ControlToValidate="txt_Rate" ForeColor="Red"></asp:RequiredFieldValidator>
                                                            </div>
                                                         </div>                                             
                                                        <div class="row">
                                                            <div class="form-group col-lg-6">
                                                                <asp:Button ID="btn_ProductAdd" Text="Submit" runat="server" class="btn btn-success loginbtn" OnClick="btn_ProductSubmit_Click" ValidationGroup="ProductAddButton" />
                                                                <asp:Button ID="btn_ResetProduct" Text="Reset" runat="server" class="btn btn-success loginbtn" OnClick="btn_ResetProduct_Click" />                                                               
                                                            </div>                                                      
                                                         </div>                                          
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      </div>
    </div>	
        	
   

</asp:Content>
