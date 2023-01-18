import ballerina/http;
import ballerina/sql;
import ballerina/log;

service /hello on new http:Listener(9090) {
    resource function get .() returns string {
        log:printInfo("Success");
        log:printError("Error in the service");
        error typedescResult = error("Anomaly error");
        log:printError("SQL Error", 'error = typedescResult );
        return "Hello World";
    }
}
