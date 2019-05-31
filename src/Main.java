import webservice.WebServiceImpl;

import javax.xml.ws.Endpoint;



public class Main  {


    public static void main(String[] args) {
        System.out.println(args);
        System.out.println("Hello World!");
        Endpoint.publish("http://localhost:3000/webserver/WebService", new WebServiceImpl());

    }
}
