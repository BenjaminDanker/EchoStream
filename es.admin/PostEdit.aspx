﻿<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PostEdit.aspx.cs" Inherits="es.admin.PostEdit" %>


<%@ Register Src="~/UserControls/MainNav.ascx" TagPrefix="usercontrols" TagName="MainNav" %>
<%@ Register Src="~/UserControls/MainHeader.ascx" TagPrefix="usercontrols" TagName="MainHeader" %>
<%@ Register Src="~/UserControls/Footer.ascx" TagPrefix="usercontrols" TagName="Footer" %>


<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">


    <!-- PAGE CONTAINER -->
    <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
    <div id="root" class="root mn--max tm--expanded-hd">

        <!-- CONTENTS -->
        <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
        <section id="content" class="content">
            <div class="content__header content__boxed overlapping">
                <div class="content__wrap">





                    <h1 class="page-title mb-0 mt-2">Add Edit Posts</h1>

                    <p class="lead">
                        Write a new article or edit an article to improve it.
                    </p>
                    <input runat="server" id="contentTitle" class="form-control form-control-lg mb-4 rounded" type="text" placeholder="Enter title here" aria-label="Post title" value="These sweet mornings of spring">
                </div>

            </div>


            <div class="content__boxed">
                <div class="content__wrap">
                    <div class="card">
                        <div class="d-md-flex gap-4">
                            <div class="flex-fill">

                                <!-- Quill TextEditor -->
                                <div class="ql-mh  h-100 d-flex flex-column">

                                    <!-- Toolbar -->
                                    <div id="_dm-quillAdvancedToolbar" class="mt-2 p-2">
                                        <div class="d-sm-flex flex-wrap">
                                            <div class="d-flex flex-column mb-3">
                                                <div class="d-flex flex-column mb-2">

                                                    <!-- Fonts selector -->
                                                    <div class="d-flex">
                                                        <span class="ql-formats">
                                                            <select class="ql-font">
                                                                <option selected=""></option>
                                                                <option value="serif"></option>
                                                                <option value="monospace"></option>
                                                            </select>
                                                        </span>
                                                        <span class="ql-formats m-0">
                                                            <select class="ql-size">
                                                                <option value="small"></option>
                                                                <option selected=""></option>
                                                                <option value="large"></option>
                                                                <option value="huge"></option>
                                                            </select>
                                                        </span>
                                                    </div>
                                                    <!-- END : Fonts selector -->

                                                </div>
                                                <div class="d-flex justify-content-between">

                                                    <!-- Font decoration -->
                                                    <span class="ql-formats d-flex">
                                                        <button class="ql-bold"></button>
                                                        <button class="ql-italic"></button>
                                                        <button class="ql-underline"></button>
                                                        <button class="ql-strike"></button>
                                                    </span>


                                                    <!-- Vertical alignment -->
                                                    <span class="ql-formats d-flex">
                                                        <button class="ql-script" value="super"></button>
                                                        <button class="ql-script" value="sub"></button>
                                                        <button class="ql-direction" value="rtl"></button>
                                                    </span>

                                                </div>
                                            </div>
                                            <div class="d-none d-sm-block opacity-10 vr mx-2 mb-3"></div>
                                            <div class="d-sm-flex flex-column justify-content-between mb-3">


                                                <!-- List and indentation -->
                                                <span class="ql-formats d-sm-flex m-0 me-md-3">
                                                    <button class="ql-list" value="ordered"></button>
                                                    <button class="ql-list" value="bullet"></button>
                                                    <button class="ql-indent" value="+1"></button>
                                                    <button class="ql-indent" value="-1"></button>
                                                </span>

                                                <!-- Text alignment -->
                                                <span class="ql-formats d-sm-flex m-0 me-md-3">
                                                    <button class="ql-align" value=""></button>
                                                    <button class="ql-align" value="center"></button>
                                                    <button class="ql-align" value="right"></button>
                                                    <button class="ql-align" value="justify"></button>
                                                </span>


                                            </div>
                                            <div class="d-none d-sm-block opacity-10 vr mx-2 mb-3"></div>
                                            <div class="d-flex justify-content-between mt-3 mt-sm-0 pb-3">
                                                <div class="d-flex">

                                                    <!-- Blockquote and code -->
                                                    <span class="ql-formats m-0 d-flex">
                                                        <button class="ql-blockquote"></button>
                                                        <button class="ql-code-block"></button>
                                                    </span>

                                                    <div class="vr opacity-10 mx-2"></div>

                                                    <!-- Attachment -->
                                                    <span class="ql-formats d-flex">
                                                        <button class="ql-link"></button>
                                                        <button class="ql-image"></button>
                                                        <button class="ql-video"></button>
                                                    </span>

                                                </div>
                                                <div>

                                                    <!-- Background and text colors -->
                                                    <span class="ql-formats m-0">
                                                        <select class="ql-color"></select>
                                                        <select class="ql-background"></select>
                                                    </span>


                                                    <!-- Headers -->
                                                    <span class="ql-formats me-1">
                                                        <button class="ql-header" value="1"></button>
                                                        <button class="ql-header" value="2"></button>
                                                    </span>

                                                    <!-- Clean -->
                                                    <span class="ql-formats">
                                                        <button class="ql-clean"></button>
                                                    </span>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- END : Toolbar -->

                                    <!-- Editor -->
                                    <div id="_dm-quillAdvancedEditor" class="pb-5">
                                        <div runat="server" id="editor">
                                            <h1>These sweet mornings of spring</h1>
                                            <p>One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin. He lay on his armour-like back, and if he lifted his head a little he could see his brown belly, slightly domed and divided by arches into stiff sections. The bedding was hardly able to cover it and seemed ready to slide off any moment. His many legs, pitifully thin compared with the size of the rest of him, waved about helplessly as he looked.</p>
                                            <br>
                                            <p><strong><em>"What's happened to me?"</em></strong> he thought. It wasn't a dream. His room, a proper human room although a little too small, lay peacefully between its four familiar walls. <a href="#" class="btn-link">A collection of textile samples</a> lay spread out on the table.</p>
                                            <br>
                                            <p>Two driven jocks help fax my big quiz. Quick, Baz, get my woven flax jodhpurs! "Now fax quiz Jack!" my brave ghost pled. Five quacking zephyrs jolt my wax bed. Flummoxed by job, kvetching W. zaps Iraq. Cozy sphinx waves quart jug of bad milk. A very bad quack might jinx zippy fowls. Few quips galvanized the mock jury box. <span style="background-color: rgb(0, 71, 178); color: rgb(255, 255, 255);">Quick brown dogs jump over the lazy fox.</span></p>
                                            <br>
                                            <br>
                                            <p><span class="ql-size-large" style="color: rgb(107, 36, 178);">Brick quiz</span> whangs jumpy veldt fox. Bright vixens jump; dozy fowl quack. Quick wafting zephyrs vex bold Jim. Quick zephyrs blow, vexing daft Jim.</p>
                                        </div>
                                    </div>
                                    <!-- END : Editor -->

                                </div>
                                <!-- END : Quill TextEditor -->

                            </div>


                            <!-- Sidebar -->
                            <div class="w-md-250px d-flex flex-column flex-grow-0 flex-shrink-0 card-body ps-md-0">


                                <!-- Publish option -->
                                <div class="mb-3">
                                    <div class="d-flex align-items-center justify-content-between mb-3">
                                        <h5 class="m-0">Publish</h5>
                                        <div class="dropdown">
                                            <button class="btn btn-icon btn-sm btn-hover btn-light" data-bs-toggle="dropdown" aria-expanded="false">
                                                <i class="demo-pli-dot-horizontal fs-4"></i>
                                                <span class="visually-hidden">Toggle Dropdown</span>
                                            </button>
                                            <ul class="dropdown-menu dropdown-menu-end">
                                                <li>
                                                    <a href="#" class="dropdown-item">
                                                        <i class="demo-pli-pen-5 fs-5 me-2"></i>Edit
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#" class="dropdown-item text-danger">
                                                        <i class="demo-pli-recycling fs-5 me-2"></i>Remove
                                                    </a>
                                                </li>
                                                <li>
                                                    <hr class="dropdown-divider">
                                                </li>
                                                <li>
                                                    <a href="#" class="dropdown-item">
                                                        <i class="demo-pli-magnifi-glass fs-5 me-2"></i>Preview
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#" class="dropdown-item">
                                                        <i class="demo-pli-upload-to-cloud fs-5 me-2"></i>Publish
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#" class="dropdown-item">
                                                        <i class="demo-pli-lock-user fs-5 me-2"></i>Lock
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <ul class="list-group list-group-borderless mb-3">
                                        <li class="list-group-item d-flex justify-content-between align-items-start px-0">
                                            <div class="me-auto">
                                                <i class="demo-pli-information fs-5 me-2"></i>Status
                                            </div>
                                            <a href="#" class="h6 btn-link text-decoration-underline">Draft</a>
                                        </li>
                                        <li class="list-group-item d-flex justify-content-between align-items-start px-0">
                                            <div class="me-auto">
                                                <i class="demo-pli-male fs-5 me-2"></i>Visibility
                                            </div>
                                            <asp:CheckBox runat="server" ID="clientCheck" CssClass="inline" Text="Client" Checked="true" />
                                        </li>
                                        <li class="list-group-item d-flex justify-content-between align-items-start px-0">
                                            <div class="me-auto">
                                                <i class="demo-pli-male fs-5 me-2"></i>
                                            </div>
                                            <asp:CheckBox runat="server" ID="prospectCheck" CssClass="inline" Text="Prospect" Checked="true" />
                                        </li>
                                        <li class="list-group-item d-flex justify-content-between align-items-start px-0">
                                            <div class="me-auto">
                                                <i class="demo-pli-calendar-4 fs-5 me-2"></i>Publish
                                            </div>
                                            <a href="#" class="h6 btn-link text-decoration-underline">Immediately</a>
                                        </li>
                                    </ul>
                                </div>
                                <!-- END : Publish option -->


                                <!-- Categories -->
                                <div class="mb-3">
                                    <h5 class="m-0">Categories</h5>
                                    <asp:Table ID="categoryTable" runat="server" CssClass="table align-middle">
                                    </asp:Table>
                                    <asp:Button runat="server" CssClass="btn btn-icon btn-primary btn-sm" OnClick="Add_Category" Text="+"></asp:Button>
                                    <asp:Button runat="server" CssClass="btn btn-icon btn-primary btn-sm" OnClick="Remove_Category" Text="-"></asp:Button>
                                    <input runat="server" id="categoryInput" class="form-control mb-1 rounded" type="text" placeholder="Add/Delete Category" value="">
                                </div>
                                <!-- END : Categories -->


                                <!-- Sidebar Footer -->
                                <hr class="mb-4">
                                <div class="d-flex align-items-center justify-content-end gap-2 mb-3 mt-auto">
                                    <button type="button" class="btn btn-secondary btn-sm">Preview</button>
                                    <button type="button" class="btn btn-secondary btn-sm">Draft</button>
                                </div>
                                <div class="d-grid">
                                    <asp:Button runat="server" class="btn btn-primary btn-lg text-nowrap" OnClick="Save_Edit" Text="Save &amp; Publish"></asp:Button>
                                </div>
                                <!-- END : Sidebar Footer -->


                            </div>
                            <!-- END : Sidebar -->

                        </div>
                    </div>

                </div>
            </div>


            <!-- FOOTER -->
            <usercontrols:Footer runat="server" />


        </section>


        <!-- HEADER -->
        <usercontrols:MainHeader runat="server" />

        <!-- MAIN NAVIGATION -->
        <usercontrols:MainNav runat="server"/>

    </div>
    <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
    <!-- END - PAGE CONTAINER -->


    <!-- SCROLL TO TOP BUTTON -->
    <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
    <div class="scroll-container">
        <a href="#root" class="scroll-page ratio ratio-1x1" aria-label="Scroll button"></a>
    </div>
    <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
    <!-- END - SCROLL TO TOP BUTTON -->


    <!-- BOXED LAYOUT : BACKGROUND IMAGES CONTENT [ DEMO ] -->
    <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
    <div id="_dm-boxedBgContent" class="_dm-boxbg offcanvas offcanvas-bottom" data-bs-scroll="true" tabindex="-1">
        <div class="offcanvas-body px-4">

            <!-- Content Header -->
            <div class="offcanvas-header border-bottom p-0 pb-3">
                <div>
                    <h4 class="offcanvas-title">Background Images</h4>
                    <span class="text-body-secondary">Add an image to replace the solid background color</span>
                </div>
                <button type="button" class="btn-close btn-lg text-reset shadow-none" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <!-- End - Content header -->


            <!-- Collection Of Images -->
            <div id="_dm-boxedBgContainer" class="row mt-3">

                <!-- Blurred Background Images -->
                <div class="col-lg-4">
                    <h5 class="mb-2">Blurred</h5>
                    <div class="_dm-boxbg__img-container d-flex flex-wrap">
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/blurred/thumbs/1.jpg" alt="Background Image" loading="lazy">
                        </a>
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/blurred/thumbs/2.jpg" alt="Background Image" loading="lazy">
                        </a>
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/blurred/thumbs/3.jpg" alt="Background Image" loading="lazy">
                        </a>
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/blurred/thumbs/4.jpg" alt="Background Image" loading="lazy">
                        </a>
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/blurred/thumbs/5.jpg" alt="Background Image" loading="lazy">
                        </a>
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/blurred/thumbs/6.jpg" alt="Background Image" loading="lazy">
                        </a>
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/blurred/thumbs/7.jpg" alt="Background Image" loading="lazy">
                        </a>
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/blurred/thumbs/8.jpg" alt="Background Image" loading="lazy">
                        </a>
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/blurred/thumbs/9.jpg" alt="Background Image" loading="lazy">
                        </a>
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/blurred/thumbs/10.jpg" alt="Background Image" loading="lazy">
                        </a>
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/blurred/thumbs/11.jpg" alt="Background Image" loading="lazy">
                        </a>
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/blurred/thumbs/12.jpg" alt="Background Image" loading="lazy">
                        </a>
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/blurred/thumbs/13.jpg" alt="Background Image" loading="lazy">
                        </a>
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/blurred/thumbs/14.jpg" alt="Background Image" loading="lazy">
                        </a>
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/blurred/thumbs/15.jpg" alt="Background Image" loading="lazy">
                        </a>
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/blurred/thumbs/16.jpg" alt="Background Image" loading="lazy">
                        </a>
                    </div>
                </div>
                <!-- End - Blurred Background Images -->


                <!-- Polygon Background Images -->
                <div class="col-lg-4">
                    <h5 class="mb-2">Polygon &amp; Geometric</h5>
                    <div class="_dm-boxbg__img-container d-flex flex-wrap mb-4">
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/polygon/thumbs/1.jpg" alt="Background Image" loading="lazy">
                        </a>
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/polygon/thumbs/2.jpg" alt="Background Image" loading="lazy">
                        </a>
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/polygon/thumbs/3.jpg" alt="Background Image" loading="lazy">
                        </a>
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/polygon/thumbs/4.jpg" alt="Background Image" loading="lazy">
                        </a>
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/polygon/thumbs/5.jpg" alt="Background Image" loading="lazy">
                        </a>
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/polygon/thumbs/6.jpg" alt="Background Image" loading="lazy">
                        </a>
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/polygon/thumbs/7.jpg" alt="Background Image" loading="lazy">
                        </a>
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/polygon/thumbs/8.jpg" alt="Background Image" loading="lazy">
                        </a>
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/polygon/thumbs/9.jpg" alt="Background Image" loading="lazy">
                        </a>
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/polygon/thumbs/10.jpg" alt="Background Image" loading="lazy">
                        </a>
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/polygon/thumbs/11.jpg" alt="Background Image" loading="lazy">
                        </a>
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/polygon/thumbs/12.jpg" alt="Background Image" loading="lazy">
                        </a>
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/polygon/thumbs/13.jpg" alt="Background Image" loading="lazy">
                        </a>
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/polygon/thumbs/14.jpg" alt="Background Image" loading="lazy">
                        </a>
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/polygon/thumbs/15.jpg" alt="Background Image" loading="lazy">
                        </a>
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/polygon/thumbs/16.jpg" alt="Background Image" loading="lazy">
                        </a>
                    </div>
                </div>
                <!-- End - Polygon Background Images -->


                <!-- Abstract Background Images -->
                <div class="col-lg-4">
                    <h5 class="mb-2">Abstract</h5>
                    <div class="_dm-boxbg__img-container d-flex flex-wrap">
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/abstract/thumbs/1.jpg" alt="Background Image" loading="lazy">
                        </a>
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/abstract/thumbs/2.jpg" alt="Background Image" loading="lazy">
                        </a>
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/abstract/thumbs/3.jpg" alt="Background Image" loading="lazy">
                        </a>
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/abstract/thumbs/4.jpg" alt="Background Image" loading="lazy">
                        </a>
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/abstract/thumbs/5.jpg" alt="Background Image" loading="lazy">
                        </a>
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/abstract/thumbs/6.jpg" alt="Background Image" loading="lazy">
                        </a>
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/abstract/thumbs/7.jpg" alt="Background Image" loading="lazy">
                        </a>
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/abstract/thumbs/8.jpg" alt="Background Image" loading="lazy">
                        </a>
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/abstract/thumbs/9.jpg" alt="Background Image" loading="lazy">
                        </a>
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/abstract/thumbs/10.jpg" alt="Background Image" loading="lazy">
                        </a>
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/abstract/thumbs/11.jpg" alt="Background Image" loading="lazy">
                        </a>
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/abstract/thumbs/12.jpg" alt="Background Image" loading="lazy">
                        </a>
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/abstract/thumbs/13.jpg" alt="Background Image" loading="lazy">
                        </a>
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/abstract/thumbs/14.jpg" alt="Background Image" loading="lazy">
                        </a>
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/abstract/thumbs/15.jpg" alt="Background Image" loading="lazy">
                        </a>
                        <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                            <img class="img-responsive" src="./assets/premium/boxed-bg/abstract/thumbs/16.jpg" alt="Background Image" loading="lazy">
                        </a>
                    </div>
                </div>
                <!-- End - Abstract Background Images -->


            </div>
            <!-- End - Collection Of Images -->


        </div>
    </div>
    <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
    <!-- END - BOXED LAYOUT : BACKGROUND IMAGES CONTENT [ DEMO ] -->


    <!-- SETTINGS CONTAINER [ DEMO ] -->
    <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

    <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
    <!-- END - SETTINGS CONTAINER [ DEMO ] -->


    <!-- OFFCANVAS [ DEMO ] -->
    <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
    <div id="_dm-offcanvas" class="offcanvas" tabindex="-1">

        <!-- Offcanvas header -->
        <div class="offcanvas-header">
            <h5 class="offcanvas-title">Offcanvas Header</h5>
            <button type="button" class="btn-close btn-lg text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>

        <!-- Offcanvas content -->
        <div class="offcanvas-body">
            <h5>Content Here</h5>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente eos nihil earum aliquam quod in dolor, aspernatur obcaecati et at. Dicta, ipsum aut, fugit nam dolore porro non est totam sapiente animi recusandae obcaecati dolorum, rem ullam cumque. Illum quidem reiciendis autem neque excepturi odit est accusantium, facilis provident molestias, dicta obcaecati itaque ducimus fuga iure in distinctio voluptate nesciunt dignissimos rem error a. Expedita officiis nam dolore dolores ea. Soluta repellendus delectus culpa quo. Ea tenetur impedit error quod exercitationem ut ad provident quisquam omnis! Nostrum quasi ex delectus vero, facilis aut recusandae deleniti beatae. Qui velit commodi inventore.</p>
        </div>

    </div>
    <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
    <!-- END - OFFCANVAS [ DEMO ] -->


    <script src="./assets/vendors/quill/quill.min.js"></script>  <!-- Quill            [ OPTIONAL ] -->
    <script src="./assets/pages/blog-add-edit-post.js"></script> <!-- Initialize       [ SAMPLE ]   -->

</asp:Content>
