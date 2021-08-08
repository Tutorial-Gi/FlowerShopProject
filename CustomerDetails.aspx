<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="CustomerDetails.aspx.cs" Inherits="Flower_Shop.CustomerDetails" %>
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
                                                                     <h1>Customer Details</h1>                                                            
                                                                    
                                                                       <div class="add-product">                                                                    
                                                                            <a href="CustomerForm.aspx">Add Customer</a>
                                                                        </div>     
                                                                 </div>                                  
                                                      </div>                                                    
                                                        <div class="row">
                                                            <div class="form-group col-lg-9">
                                                               <asp:Label ID="lbl_CustomerDetails" runat="server"></asp:Label>

                                                            </div> 
                                                             <asp:GridView ID="gv_CustomerDetails" runat="server" CssClass="table table-bordered table-responsive" AutoGenerateColumns="False"
                                                                   DataSourceID="SqlDataSource1" DataKeyName="CustomerId" OnRowCommand="GridView1_RowCommand" OnPageIndexChanging="gv_CustomerDetails_PageIndexChanging" PageSize="10" AllowPaging="true" >                                                                                                                                                                                                                                                             
                                                                    <Columns>
                                                                        <asp:BoundField DataField="CustomerId" HeaderText="CustomerId" ReadOnly="True" SortExpression="CustomerId" >
                                                                        </asp:BoundField>
                                                                        <asp:BoundField DataField="Name" HeaderText="Name"  SortExpression="Name" />
                                                                        <asp:BoundField DataField="CustomerAddress" HeaderText="Address"  SortExpression="Address" >                                                                       
                                                                        </asp:BoundField>
                                                                        <asp:BoundField DataField="City" HeaderText="City"  SortExpression="City" />
                                                                        <asp:BoundField DataField="Pincode" HeaderText="Pincode" SortExpression="Pincode" />
                                                                        <asp:BoundField DataField="CustomerState" HeaderText="State"  SortExpression="State" />
                                                                        <asp:BoundField DataField="Country" HeaderText="Country"  SortExpression="Country" />
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
