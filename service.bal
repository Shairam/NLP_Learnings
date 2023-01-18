import ballerina/http;
import ballerina/log;

service /hello on new http:Listener(9090) {
    resource function get .() returns string {
        log:printInfo("Success");
        log:printError("Error in the service");
        return "Hello World";
    }
}
