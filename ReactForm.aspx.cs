using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReactWebForm
{
    public partial class ReactForm : System.Web.UI.Page
    {
        public class EvProp
        {
            public int id { get; set; }
            public string fio { get; set; }
        }
        protected IEnumerable<EvProp> GetProps()
        {
            return Enumerable.Range(0, 10).Select(i => new EvProp { id = i, fio = Guid.NewGuid().ToString() });
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            rep1.DataSource = GetProps();
            rep1.DataBind();
        }
    }
}