<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="SupplierDetails.aspx.cs" Inherits="Flower_Shop.SuppilerDetails" %>
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
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="product-payment-inner-st">
                            <div id="myTabContent" class="tab-content custom-product-edit">
                                <div class="product-tab-list tab-pane fade active in" id="description">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="review-content-section">
                                                <div id="dropzone1" class="pro-ad addcoursepro">                                                                                                                                                                                                               
                                                            <div class="row">
                                                                <div class="form-group col-lg-12">
                                                                     <h1>Supplier Details</h1>                                                                                                                                
                                                                       <div class="add-product">                                                                    
                                                                            <a href="SuppilerForm.aspx">Add Supplier</a>
                                                                        </div>     
                                                                 </div>
                                                            </div>                                                                                                                         
                                                        <div class="row">
                                                            <div class="form-group col-lg-9">
                                                               <asp:Label ID="lbl_labelSuppilerDetails" runat="server"></asp:Label>
                                                            </div> 
                                                             <asp:GridView ID="gv_SupplierDetails" runat="server" 
                                                                CssClass="table table-bordered table-responsive" AutoGenerateColumns="False"  
                                                                    DataKeyName="SupplierId" AllowPaging="True" 
                                                                OnPageIndexChanging="gv_SupplierDetails_PageIndexChanging" 
                                                                OnRowCommand="GridView1_RowCommand" DataSourceID="SqlDataSource1">                                                  
                                                                    <Columns>
                                                                        <asp:BoundField DataField="SupplierId" HeaderText="SupplierId" ReadOnly="True" SortExpression="SupplierId" >                                                                       
                                                                        </asp:BoundField>
                                                                        <asp:BoundField DataField="Name" HeaderText="Name"  SortExpression="Name" />
                                                                        <asp:BoundField DataField="SupplierAddress" HeaderText="Address"  SortExpression="Address" >                                                                       
                                                                        </asp:BoundField>
                                                                        <asp:BoundField DataField="City" HeaderText="City"  SortExpression="City" />
                                                                        <asp:BoundField DataField="Pincode" HeaderText="Pincode" SortExpression="Pincode" />
                                                                        <asp:BoundField DataField="SupplierState" HeaderText="State"  SortExpression="State" />
                                                                        <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                                                                        <asp:BoundField DataField="MobileNo" HeaderText="Mobile No" SortExpression="Mobile No" />                                                                                                                                                                                                                                                                               
                                                                        <asp:TemplateField>
                                                                            <ItemTemplate>
                                                                                <asp:Button ID="btn_Edit" runat="server" class="btn btn-success loginbtn" Text="Edit" CommandName="EditButton" CommandArgument="<%#((GridViewRow)Container).RowIndex  %>" />
                                                                            </ItemTemplate>
                                                                        </asp:TemplateField> 
                                                                        <asp:TemplateField>
                                                                            <ItemTemplate>
                                                                                <asp:Button ID="btn_Delete" runat="server" class="btn btn-success loginbtn" Text="Delete" CommandName="DeleteButton" CommandArgument="<%#((GridViewRow)Container).RowIndex  %>"  />
                                                                            </ItemTemplate>
                                                                        </asp:TemplateField>                                                                                                                                        
                                                                    </Columns>                                                                 
                                                             </asp:GridView>                                                          
                                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
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
