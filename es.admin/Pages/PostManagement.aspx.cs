﻿using es.data;
using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Security.Policy;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.Script.Serialization;
using System.Diagnostics;
using System.Drawing;

namespace es.admin
{
    public partial class PostManagement : System.Web.UI.Page
    {
        private int maxRows = 10;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ViewState.Add("page", 0);

            }

            var request = new Requests();
            var posts = request.getNContent(this.maxRows, (int)ViewState["page"]);

            Create_Posts(sender, e, posts);
        }
        protected void Page_LoadComplete(object sender, EventArgs e)
        {
            var page = (int)ViewState["page"];

            if (page == 0)
            {
                this.previousBTN.Enabled = false;
            }
            else
            {
                this.previousBTN.Enabled = true;
            }
        }





        protected void Search_Posts(object sender, EventArgs e)
        {
            Clear_Posts(sender, e);

            var request = new Requests();
            var posts = request.getSearchContent(this.search.Text, this.maxRows, (int)ViewState["page"] * this.maxRows);

            Create_Posts(sender, e, posts);
        }

        protected void Create_Posts(object sender, EventArgs e, List<data.Content> posts)
        {
            foreach (var post in posts)
            {
                TableRow row = new TableRow();

                TableCell cell1 = new TableCell();
                cell1.Text = post.Title;
                cell1.Attributes.Add("class", "text-nowrap text-body-secondary");
                row.Cells.Add(cell1);

                TableCell cell2 = new TableCell();
                cell2.Text = post.PublishedDate.ToString();
                cell2.Attributes.Add("class", "text-nowrap text-body-secondary");
                row.Cells.Add(cell2);

                TableCell cell3 = new TableCell();
                cell3.Text = post.Tags;
                cell3.Attributes.Add("class", "text-nowrap text-body-secondary");
                row.Cells.Add(cell3);


                TableCell cell4 = new TableCell();
                cell4.Attributes.Add("class", "text-nowrap text-body-secondary");

                Button btn1 = new Button();
                btn1.Attributes.Add("class", "btn btn-icon btn-sm btn-hover btn-danger");
                btn1.Click += new EventHandler((s, evnt) => this.Delete_Post(sender, e, post.ContentID, row));
                btn1.Text = "Delete";
                cell4.Controls.Add(btn1);

                Button btn2 = new Button();
                btn2.Attributes.Add("class", "btn btn-icon btn-sm btn-hover btn-danger");
                btn2.Click += new EventHandler((s, evnt) => this.Redirect(sender, e, post.ContentID));
                btn2.Text = "Edit";
                cell4.Controls.Add(btn2);

                row.Cells.Add(cell4);


                postTable.Rows.Add(row);
            }
        }

        protected void Delete_Post(object sender, EventArgs e, int contentID, TableRow row)
        {
            var request = new Requests();
            request.removeContent(contentID);

            row.Visible = false;
        }

        protected void Clear_Posts(object sender, EventArgs e)
        {
            postTable.Rows.Clear();
        }

        protected void Redirect(object sender, EventArgs e, int contentID)
        {
            Response.Redirect("~/Pages/PostEdit.aspx?contentID=" + contentID.ToString());
        }

        protected void Previous(object sender, EventArgs e)
        {
            // page number
            var page = (int)ViewState["page"];
            page--;
            ViewState["page"] = page;


            // table
            Clear_Posts(sender, e);

            var request = new Requests();
            var posts = request.getNContent(this.maxRows, (int)ViewState["page"] * this.maxRows);

            Create_Posts(sender, e, posts);
        }

        protected void Next(object sender, EventArgs e)
        {
            // page number
            var page = (int)ViewState["page"];
            page++;
            ViewState["page"] = page;


            // table
            Clear_Posts(sender, e);

            var request = new Requests();
            var posts = request.getNContent(this.maxRows, (int)ViewState["page"] * this.maxRows);

            Create_Posts(sender, e, posts);
        }
    }
}