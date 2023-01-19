import ballerina/http;
import ballerina/log;
import ballerinax/mysql;
import ballerinax/mysql.driver as _; // This bundles the driver to the project so that you don't need to bundle it via the `Ballerina.toml` file.

service /hello on new http:Listener(9090) {
    resource function get .() returns string|error {
        log:printInfo("Success");
        log:printError("Error in the service");
        error typedescResult = error("Anomaly error");
        log:printError("SQL Error", 'error = typedescResult );
        log:printInfo("Success information");
        
        final mysql:Client dbClient = check new(host="127.0.0.1", user="shairam", password="pass", port=3306, database="Company");
        return "Hello World Shai";
    }
}
