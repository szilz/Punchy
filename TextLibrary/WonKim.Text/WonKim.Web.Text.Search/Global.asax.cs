using System;
using System.ServiceModel.Activation;
using System.Web;
using System.Web.Routing;

namespace WonKim.Web.Text.Search
{
	public class Global : HttpApplication
	{
		void Application_Start(object sender, EventArgs e)
		{
			RegisterRoutes();
		}

		private void RegisterRoutes()
		{
			RouteTable.Routes.Add(new ServiceRoute("PatternStringSearchService", new WebServiceHostFactory(), typeof(PatternStringSearchService)));
			RouteTable.Routes.Add(new ServiceRoute("DictionaryStringSearchService", new WebServiceHostFactory(), typeof(DictionaryStringSearchService)));
		}
	}
}
