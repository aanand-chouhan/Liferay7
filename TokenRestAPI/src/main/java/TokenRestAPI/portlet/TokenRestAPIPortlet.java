package TokenRestAPI.portlet;

import java.io.IOException;

import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.Portlet;
import javax.security.cert.X509Certificate;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;
import org.osgi.service.component.annotations.Component;

import com.liferay.portal.kernel.json.JSONFactoryUtil;
import com.liferay.portal.kernel.json.JSONObject;
import com.liferay.portal.kernel.portlet.bridges.mvc.MVCPortlet;
import com.liferay.portal.kernel.util.ParamUtil;

import TokenRestAPI.constants.TokenRestAPIPortletKeys;

/**
 * @author vidyayug
 */
@Component(
	immediate = true,
	property = {
		"com.liferay.portlet.display-category=category.sample",
		"com.liferay.portlet.instanceable=true",
		"javax.portlet.init-param.template-path=/",
		"javax.portlet.init-param.view-template=/view.jsp",
		"javax.portlet.name=" + TokenRestAPIPortletKeys.TokenRestAPI,
		"javax.portlet.resource-bundle=content.Language",
		"javax.portlet.security-role-ref=power-user,user"
	},
	service = Portlet.class
)
public class TokenRestAPIPortlet extends MVCPortlet {
	public void TokenAuthRest(ActionRequest req,ActionResponse res) throws IOException {
	/* try {
		 System.out.println("TokenRestAPIPortlet.TokenAuthRest()");
         HttpClient httpclient = HttpClientBuilder.create().build();  // the http-client, that will send the request
         System.out.println("1");
         HttpGet httpGet = new HttpGet("https://www.eventbriteapi.com/v3/users/me/");   // the http GET request
         System.out.println("2");
         httpGet.addHeader("Authorization", "Bearer VUREY2JVDRQRE572JH2M"); // add the authorization header to the request
         System.out.println("3");
         HttpResponse response = httpclient.execute(httpGet); // the client executes the request and gets a response
         System.out.println("4");
         int responseCode = response.getStatusLine().getStatusCode();  // check the response code
         System.out.println("5");
         switch (responseCode) {
             case 200: { 
                 // everything is fine, handle the response
                 String stringResponse = EntityUtils.toString(response.getEntity());  // now you have the response as String, which you can convert to a JSONObject or do other stuff
                 break;
             }
             case 500: {
                 System.out.println("server problem man");
                 break;
             }
             case 403: {
            	  System.out.println("you have no authorization to access that resource"); 
                 break;
             }
         }
     } catch (IOException ex) {
         // handle exception
     }
	}*/
		System.out.println("RESTapiDemoPortlet.basicAuthRestApi()");
		
		
	    
		String url=ParamUtil.getString(req,"url");
		String finalToken =ParamUtil.getString(req,"token");
		
		System.out.println(finalToken);
		System.out.println(url);
		DefaultHttpClient httpclient = new DefaultHttpClient(); 
		HttpPost post = new HttpPost(url);
		post.setHeader("Content-Type","application/json");
		post.setHeader("Authorization", "Bearer " + finalToken);
		System.out.println("1");
		JSONObject json = JSONFactoryUtil.createJSONObject();
		// json.put ...
		// Send it as request body in the post request 
		System.out.println("2");
		HttpResponse response = httpclient.execute(post);
		System.out.println(response.getStatusLine());
		StringEntity params = new StringEntity(json.toString());
		post.setEntity(params);

		
		System.out.println("response "+response);
		HttpEntity entity = response.getEntity();
		String responseString = EntityUtils.toString(entity, "UTF-8");
		System.out.println(responseString);
		httpclient.getConnectionManager().shutdown();
}
}


