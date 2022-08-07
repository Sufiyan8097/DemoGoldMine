using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace DemoTest
{
    public partial class DetailCandidate : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["HrConnect"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetData();
              
            }
        }

        public void GetData()
        {
            SqlCommand cmmd = new SqlCommand("select Id,CandidateName from CandidateDetails  order by CandidateName asc", conn);
            SqlDataAdapter dat = new SqlDataAdapter(cmmd);
            DataTable dt = new DataTable();
            dat.Fill(dt);
            ddcan.DataSource = dt;
            ddcan.DataTextField = "CandidateName";
            ddcan.DataValueField = "Id";
            ddcan.DataBind();
            ddcan.Items.Insert(0, new ListItem("---Select---", "-1"));
        }

        public void GridData()
        {
            SqlCommand cmmd = new SqlCommand("select CandidateName,Experience,CTC,Applied,Expected from CandidateDetails", conn);
            SqlDataAdapter dat = new SqlDataAdapter(cmmd);
            DataTable dt = new DataTable();
            dat.Fill(dt);
            GridView1.DataSource = dt;
  
            GridView1.DataBind();
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmmd = new SqlCommand("select Id,CandidateName,Experience,CTC,Applied,Expected,Status from CandidateDetails where CandidateName='"+ ddcan.SelectedItem.Text+"'", conn);
            SqlDataAdapter dat = new SqlDataAdapter(cmmd);
            DataTable dt = new DataTable();
            dat.Fill(dt);
            GridView1.DataSource = dt;
            // ddApplied.DataBind();
            GridView1.DataBind();
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("HRLogin.aspx");
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow && GridView1.EditIndex==e.Row.RowIndex)
            {
                conn.Open();
                DropDownList dropDownList1 = (e.Row.FindControl("ddstatus") as DropDownList);
                SqlCommand cmd = new SqlCommand("select * from CStatus", conn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                conn.Close();
                dropDownList1.DataSource = dt;

                dropDownList1.DataTextField = "Status";
                dropDownList1.DataValueField = "ID";
                dropDownList1.DataBind();
                dropDownList1.Items.Insert(0, new ListItem("--Select--", "0"));
            }
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            
            string status = (GridView1.Rows[e.RowIndex].FindControl("ddstatus") as DropDownList).SelectedItem.Text;
            string candidateId = GridView1.DataKeys[e.RowIndex].Value.ToString();
            
            SqlCommand cmmd = new SqlCommand("Update CandidateDetails set Status='" + status + "' where Id='" + Convert.ToInt32(candidateId) + "'", conn);
            conn.Open();
            cmmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect(Request.Url.AbsoluteUri);
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            Button1_Click(sender, e);
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            Button1_Click(sender, e);
        }
    }
}