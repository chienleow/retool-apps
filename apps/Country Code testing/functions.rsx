<GlobalFunctions>
  <SqlQueryUnified
    id="getRows"
    query={include("./lib/getRows.sql", "string")}
    queryTimeout="10001"
    resourceDisplayName="retool_db"
    resourceName="0fa087a5-f626-42d9-8eab-30b0bf1202d8"
  />
  <State id="selectedItem" />
</GlobalFunctions>
