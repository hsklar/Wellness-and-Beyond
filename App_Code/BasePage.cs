using System;
using System.Web;
public class BasePage : System.Web.UI.Page
{
  private void Page_PreRender(object sender, EventArgs e)
  {
    if (string.IsNullOrEmpty(this.Title) || this.Title.Equals("Untitled Page", StringComparison.CurrentCultureIgnoreCase))
    {
      throw new Exception("Page title cannot be \"Untitled Page\" or an empty string.");
    }
  }

  private void Page_PreInit(object sender, EventArgs e)
  {
   
  }

  public BasePage()
  {
    this.PreRender += Page_PreRender;
    this.PreInit += Page_PreInit;
  }
}