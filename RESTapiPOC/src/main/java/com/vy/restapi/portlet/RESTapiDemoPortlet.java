package com.vy.restapi.portlet;


import java.io.IOException;

import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.Portlet;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.entity.ContentType;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.osgi.service.component.annotations.Component;

import com.liferay.portal.kernel.portlet.bridges.mvc.MVCPortlet;
import com.liferay.portal.kernel.servlet.HttpHeaders;
import com.liferay.portal.kernel.util.ParamUtil;
import com.vy.restapi.constants.RESTapiDemoPortletKeys;


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
		"javax.portlet.name=" + RESTapiDemoPortletKeys.RESTapiDemo,
		"javax.portlet.resource-bundle=content.Language",
		"javax.portlet.security-role-ref=power-user,user"
	},
	service = Portlet.class
)
public class RESTapiDemoPortlet extends MVCPortlet {
	@SuppressWarnings("deprecation")
	public void basicAuthRets(ActionRequest req,ActionResponse res) throws IOException {
		System.out.println("RESTapiDemoPortlet.basicAuthRestApi()");
		String url=ParamUtil.getString(req,"url"); 
		String uName=ParamUtil.getString(req,"username");
		String pwd=ParamUtil.getString(req,"pwd");
		 
		  System.out.println(url);
		  System.out.println(uName);
		  System.out.println(pwd);
		  
/*		  CredentialsProvider credsProvider = new BasicCredentialsProvider();
	        credsProvider.setCredentials(
	            new AuthScope("httpbin.org", 80),
	            new UsernamePasswordCredentials("user", "passwd"));
	        CloseableHttpClient httpclient = HttpClients.custom()
	            .setDefaultCredentialsProvider(credsProvider)
	            .build();
	        try {
	            HttpGet httpget = new HttpGet("http://httpbin.org/basic-auth/user/passwd");

	            System.out.println("Executing request " + httpget.getRequestLine());
	            CloseableHttpResponse response = httpclient.execute(httpget);
	            try {
	                System.out.println("----------------------------------------");
	                System.out.println(response.getStatusLine());
	                System.out.println(EntityUtils.toString(response.getEntity()));
	            } finally {
	                response.close();
	            }
	        } finally {
	            httpclient.close();
	        }
	}*/
	
		  
		  
		  
		  try {

			@SuppressWarnings("deprecation")
			org.apache.http.conn.ssl.SSLSocketFactory sf = org.apache.http.conn.ssl.SSLSocketFactory.getSocketFactory();
			sf.setHostnameVerifier(new MyHostnameVerifier());
			org.apache.http.conn.scheme.Scheme sch = new Scheme("https", 8090, sf);
		  
		  DefaultHttpClient httpclient = new DefaultHttpClient();
		  httpclient.getConnectionManager().getSchemeRegistry().register(sch);
          httpclient.getCredentialsProvider().setCredentials(
                  new AuthScope(AuthScope.ANY_HOST, AuthScope.ANY_PORT), 
                  new UsernamePasswordCredentials(uName, pwd));

          HttpPost httppost = new HttpPost(url);
          StringEntity params =new StringEntity("{\"Messages\":[{\"From\": {\"Email\": \"karnatiravinder94@gmail.com\",\"Name\": \"Ravinder\"},\"To\": [{\"Email\": \"hariaahil@gmail.com\"}],\"Subject\": \"Xing Event\",\"TextPart\": \"Hi This Is For Testing\",\"HTMLPart\": \"Hi This Is For Testing\"}]}");
          httppost.setHeader(HttpHeaders.CONTENT_TYPE, "application/json");
          httppost.setHeader(HttpHeaders.ACCEPT, "application/json");
          
          httppost.setEntity(params);
          System.out.println(httppost.getEntity());
          System.out.println("executing request " + httppost.getRequestLine());
          HttpResponse response;
          response = httpclient.execute(httppost);
          HttpEntity entity = response.getEntity();

          System.out.println("----------------------------------------");
          System.out.println(response.getStatusLine());
          System.out.println();
          if (entity != null) {
              System.out.println("Response content length: " + entity.getContentLength());
          }
          if (entity != null) {
              entity.consumeContent();
          }

          httpclient.getConnectionManager().shutdown();  
	
	}catch(Exception e) {
		System.out.println(e);
	}
		  
		  
		  
		  
		  
		  
		  
		  
		  
		/*
		 * @SuppressWarnings("deprecation") org.apache.http.conn.ssl.SSLSocketFactory sf
		 * = org.apache.http.conn.ssl.SSLSocketFactory.getSocketFactory();
		 * sf.setHostnameVerifier(new MyHostnameVerifier());
		 * org.apache.http.conn.scheme.Scheme sch = new Scheme("https", 443, sf);
		 * 
		 * 
		 * 
		 * try {
		 * 
		 * @SuppressWarnings("resource") DefaultHttpClient httpclient = new
		 * DefaultHttpClient();
		 * httpclient.getConnectionManager().getSchemeRegistry().register(sch);
		 * httpclient.getCredentialsProvider().setCredentials( new
		 * AuthScope(AuthScope.ANY_HOST, AuthScope.ANY_PORT), new
		 * UsernamePasswordCredentials(uName, pwd));
		 * 
		 * HttpPost httppost = new HttpPost(url+"/basic-auth/"+uName+"/"+pwd);
		 * 
		 * System.out.println("executing request " + httppost.getRequestLine());
		 * HttpResponse response;
		 * 
		 * response = httpclient.execute(httppost); HttpEntity entity =
		 * response.getEntity();
		 * 
		 * 
		 * 
		 * System.out.println("----------------------------------------");
		 * System.out.println(response.getStatusLine()); if (entity != null) {
		 * System.out.println("Response content length: " + entity.getContentLength());
		 * } if (entity != null) { entity.consumeContent(); }
		 * 
		 * httpclient.getConnectionManager().shutdown();
		 * 
		 * 
		 * } catch (IOException e) { e.printStackTrace(); }
		 */
/*    CredentialsProvider credsProvider = new BasicCredentialsProvider();
    credsProvider.setCredentials(new AuthScope(AuthScope.ANY_HOST, AuthScope.ANY_PORT),new UsernamePasswordCredentials(uName, pwd));
    CloseableHttpClient httpclient = HttpClients.custom().setDefaultCredentialsProvider(credsProvider).build();
    try {
        HttpPost httppost = new HttpPost(url);
        
        System.out.println("Executing request " + httppost.getRequestLine());
        CloseableHttpResponse response = httpclient.execute(httppost);
        try {
            System.out.println("----------------------------------------");
            System.out.println(response.getStatusLine());
            System.out.println(EntityUtils.toString(response.getEntity()));
            System.out.println(response);
        } finally {
            response.close();
        }
    } finally {
        httpclient.close();
    }
}
}*/


		
	    /* CredentialsProvider credsProvider = new BasicCredentialsProvider();
	        credsProvider.setCredentials(
	            new AuthScope("httpbin.org", 80),
	            new UsernamePasswordCredentials(uName, pwd));
	        CloseableHttpClient httpclient = HttpClients.custom()
	            .setDefaultCredentialsProvider(credsProvider)
	            .build();
	        try {
	            HttpGet httpget = new HttpGet(url+"/basic-auth/"+uName+"/"+pwd);

	            System.out.println("Executing request " + httpget.getRequestLine());
	            CloseableHttpResponse response = httpclient.execute(httpget);
	            try {
	                System.out.println("----------------------------------------");
	                System.out.println(response.getStatusLine());
	                try {
						System.out.println(EntityUtils.toString(response.getEntity()));
					} catch (ParseException e) {
						e.printStackTrace();
					} catch (IOException e) {
						e.printStackTrace();
					}
	            } finally {
	                try {
						response.close();
					} catch (IOException e) {
						e.printStackTrace();
					}
	            }
	        } finally {
	            httpclient.close();
	        }
	    }
	}
		
		

*/

	}
		class MyHostnameVerifier implements org.apache.http.conn.ssl.X509HostnameVerifier {

			@Override
			public boolean verify(String host, SSLSession session) {
				String sslHost = session.getPeerHost();
				System.out.println("Host=" + host);
				System.out.println("SSL Host=" + sslHost);
				if (host.equals(sslHost)) {
					return true;
				} else {
					return false;
				}
			}

			@Override
			public void verify(String host, SSLSocket ssl) throws IOException {
				String sslHost = ssl.getInetAddress().getHostName();
				System.out.println("Host=" + host);
				System.out.println("SSL Host=" + sslHost);
				if (host.equals(sslHost)) {
					return;
				} else {
					throw new IOException("hostname in certificate didn't match: " + host + " != " + sslHost);
				}
			}

			@Override
			public void verify(String host, String[] cns, String[] subjectAlts) throws SSLException {
				throw new SSLException("Hostname verification 2 not implemented");
			}

			@Override
			public void verify(String host, java.security.cert.X509Certificate cert) throws SSLException {
				throw new SSLException("Hostname verification 1 not implemented");

			}
		}
  
  
  
 
		  }