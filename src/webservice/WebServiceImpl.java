package webservice;


import javax.jws.soap.SOAPBinding;

@javax.jws.WebService
@SOAPBinding(style = SOAPBinding.Style.DOCUMENT)
public class WebServiceImpl implements WebService {
    @Override
    public String sayHello(String name) {
        System.out.println("call method");
        System.out.println(name);
        return "hello " + name;
    }

    @Override
    public Boolean compare(int a, int b) {
        System.out.println("a=" + a +"b=" + b);
        return a - b >= 0;
    }
}
