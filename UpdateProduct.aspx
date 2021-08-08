<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="UpdateProduct.aspx.cs" Inherits="Flower_Shop.UpdateProduct" %>
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
                                                                <h1>Update Product</h1>
                                                                   <asp:Label ID="lbl_Error" runat="server" ForeColor="Red" Font-Bold="true" Font-Size="Large" Visible="false"></asp:Label>
                                                                <asp:Label ID="lbl_Message" runat="server" ForeColor="Green" Font-Bold="true" Font-Size="Large" Visible="false"></asp:Label>                                                                                                                                                                           
                                                            </div>
                                                     </div>                                                
                                                        <div class="row">
                                                            <div class="form-group col-lg-9">
                                                                <asp:Label ID="lbl_ProductId" runat="server"  Text="Product ID" Font-Bold="true"></asp:Label>
                                                                <asp:TextBox ID="txt_ProductID" runat="server" readonly="true" class="form-control"></asp:TextBox>                                                          
                                                            </div>
                                                         </div>
                                                        <div class="row">
                                                            <div class="form-group col-lg-9">
                                                                <asp:Label ID="lbl_ProductName" runat="server" Text= "Name" Font-Bold="true"></asp:Label>                                                      
                                                                <asp:TextBox ID="txt_ProductName" runat="server" Class="form-control"></asp:TextBox>                                                                
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
                                                                <asp:TextBox ID="txt_Material" runat="server" class="form-control"></asp:TextBox>                                                              
                                                           </div>
                                                        </div>                                                         
                                                        <div class="row">
                                                            <div class="form-group col-lg-9">
                                                                <asp:Label ID="lbl_Rate" runat="server" Text="Sale Rate" Font-Bold="true"></asp:Label>
                                                                <asp:TextBox ID="txt_Rate" runat="server"  class="form-control"></asp:TextBox>                                                                 
                                                            </div>
                                                         </div>                                                                                                       
                                                        <div class="row">
                                                            <div class="form-group col-lg-6">
                                                                <asp:Button ID="btn_ProductUpdate" Text="Update" runat="server" class="btn btn-success loginbtn" OnClick="btn_ProductUpdate_Click" />                                                                                                                               
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
