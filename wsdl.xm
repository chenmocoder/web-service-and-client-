<definitions xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd" xmlns:wsp="http://www.w3.org/ns/ws-policy" xmlns:wsp1_2="http://schemas.xmlsoap.org/ws/2004/09/policy" xmlns:wsam="http://www.w3.org/2007/05/addressing/metadata" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tns="http://webservice/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns="http://schemas.xmlsoap.org/wsdl/" targetNamespace="http://webservice/" name="WebServiceImplService">
    <types>
        <xsd:schema>
            <xsd:import namespace="http://webservice/" schemaLocation="http://localhost:3000/webserver/WebService?xsd=1"/>
        </xsd:schema>
    </types>
    <message name="compare">
        <part name="parameters" element="tns:compare"/>
    </message>
    <message name="compareResponse">
        <part name="parameters" element="tns:compareResponse"/>
    </message>
    <message name="sayHello">
        <part name="parameters" element="tns:sayHello"/>
    </message>
    <message name="sayHelloResponse">
        <part name="parameters" element="tns:sayHelloResponse"/>
    </message>
    <portType name="WebServiceImpl">
        <operation name="compare">
            <input wsam:Action="http://webservice/WebServiceImpl/compareRequest" message="tns:compare"/>
            <output wsam:Action="http://webservice/WebServiceImpl/compareResponse" message="tns:compareResponse"/>
        </operation>
        <operation name="sayHello">
            <input wsam:Action="http://webservice/WebServiceImpl/sayHelloRequest" message="tns:sayHello"/>
            <output wsam:Action="http://webservice/WebServiceImpl/sayHelloResponse" message="tns:sayHelloResponse"/>
        </operation>
    </portType>
    <binding name="WebServiceImplPortBinding" type="tns:WebServiceImpl">
        <soap:binding transport="http://schemas.xmlsoap.org/soap/http" style="document"/>
        <operation name="compare">
            <soap:operation soapAction=""/>
            <input>
                <soap:body use="literal"/>
            </input>
            <output>
                <soap:body use="literal"/>
            </output>
        </operation>
        <operation name="sayHello">
            <soap:operation soapAction=""/>
            <input>
                <soap:body use="literal"/>
            </input>
            <output>
                <soap:body use="literal"/>
            </output>
        </operation>
    </binding>
    <service name="WebServiceImplService">
        <port name="WebServiceImplPort" binding="tns:WebServiceImplPortBinding">
            <soap:address location="http://localhost:3000/webserver/WebService"/>
        </port>
    </service>
</definitions>