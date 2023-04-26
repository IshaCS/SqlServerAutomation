@MsSql
Feature: Mssql source- Verify Mssql source plugin design time scenarios

  Scenario: To verify Mssql source plugin validation with connection and basic details for connectivity
    Given Open Datafusion Project to configure pipeline
    When Expand Plugin group in the LHS plugins list: "Source"
    When Select plugin: "SQL Server" from the plugins list as: "Source"
    Then Navigate to the properties page of plugin: "SQL Server"
    Then Select dropdown plugin property: "select-jdbcPluginName" with option value: "sqlserver42"
    Then Replace input plugin property: "host" with value: "host" for Credentials and Authorization related fields
    Then Replace input plugin property: "port" with value: "port" for Credentials and Authorization related fields
    Then Select radio button plugin property: "authenticationType" with value: "SQL Login"
    Then Replace input plugin property: "user" with value: "username" for Credentials and Authorization related fields
    Then Replace input plugin property: "password" with value: "password" for Credentials and Authorization related fields
    Then Enter input plugin property: "referenceName" with value: "sourceRef"
    Then Enter input plugin property: "database" with value: "db"
    Then Enter textarea plugin property: "importQuery" with value: "selectQuery"
    Then Click on the Get Schema button
    Then Verify the Output Schema matches the Expected Schema: "outputSchema"
    Then Validate "SQL Server" plugin properties
    Then Close the Plugin Properties page


  Scenario: To verify Mssql source plugin validation with connection arguments
    Given Open Datafusion Project to configure pipeline
    When Expand Plugin group in the LHS plugins list: "Source"
    When Select plugin: "SQL Server" from the plugins list as: "Source"
    Then Navigate to the properties page of plugin: "SQL Server"
    Then Select dropdown plugin property: "select-jdbcPluginName" with option value: "sqlserver42"
    Then Replace input plugin property: "host" with value: "host" for Credentials and Authorization related fields
    Then Replace input plugin property: "port" with value: "port" for Credentials and Authorization related fields
    Then Select radio button plugin property: "authenticationType" with value: "SQL Login"
    Then Replace input plugin property: "user" with value: "username" for Credentials and Authorization related fields
    Then Replace input plugin property: "password" with value: "password" for Credentials and Authorization related fields
    Then Enter key value pairs for plugin property: "connectionArguments" with values from json: "connectionArgumentsList"
    Then Enter input plugin property: "referenceName" with value: "sourceRef"
    Then Enter input plugin property: "database" with value: "db"
    Then Enter textarea plugin property: "importQuery" with value: "selectQuery"
    Then Click on the Get Schema button
    Then Verify the Output Schema matches the Expected Schema: "outputSchema"
    Then Validate "SQL Server" plugin properties
    Then Close the Plugin Properties page



  Scenario: To verify Mssql source plugin validation with advanced details
    Given Open Datafusion Project to configure pipeline
    When Expand Plugin group in the LHS plugins list: "Source"
    When Select plugin: "SQL Server" from the plugins list as: "Source"
    Then Navigate to the properties page of plugin: "SQL Server"
    Then Select dropdown plugin property: "select-jdbcPluginName" with option value: "sqlserver42"
    Then Replace input plugin property: "host" with value: "host" for Credentials and Authorization related fields
    Then Replace input plugin property: "port" with value: "port" for Credentials and Authorization related fields
    Then Select radio button plugin property: "authenticationType" with value: "SQL Login"
    Then Replace input plugin property: "user" with value: "username" for Credentials and Authorization related fields
    Then Replace input plugin property: "password" with value: "password" for Credentials and Authorization related fields
    Then Enter key value pairs for plugin property: "connectionArguments" with values from json: "connectionArgumentsList"
    Then Enter input plugin property: "referenceName" with value: "sourceRef"
    Then Enter input plugin property: "database" with value: "db"
    Then Enter textarea plugin property: "importQuery" with value: "selectQuery"
    Then Enter input plugin property: "instanceName" with value: "instance"
    Then Replace input plugin property: "queryTimeout" with value: "querytimeout" for Credentials and Authorization related fields
    Then Replace input plugin property: "loginTimeout" with value: "logintimeout" for Credentials and Authorization related fields
    Then Enter input plugin property: "workstationID" with value: "id"
    Then Enter input plugin property: "failoverPartner" with value: "partner"
    Then Replace input plugin property: "packetSize" with value: "packetsize" for Credentials and Authorization related fields
    Then Enter input plugin property: "currentLanguage" with value: "english"
    Then Click on the Get Schema button
    Then Verify the Output Schema matches the Expected Schema: "outputSchema"
    Then Validate "SqlServer" plugin properties
    Then Close the Plugin Properties page






