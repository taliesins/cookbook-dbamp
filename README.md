# dbamp-cookbook

Install DBAmp, a plugin to facilitate data integration between Salesforce.com and SQL Server.

## Supported Platforms

Windows

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['dbamp']['properties']['APPDIR']</tt></td>
    <td>String</td>
    <td>App installation directory</td>
    <td><tt>C:\\Program Files\DBAmp\\</tt></td>
  </tr>
  <tr>
    <td><tt>['dbamp']['properties']['TARGETDIR']</tt></td>
    <td>String</td>
    <td>App installation directory</td>
    <td><tt>C:\\Program Files\DBAmp\\</tt></td>
  </tr>
  <tr>
    <td><tt>['dbamp']['properties']['PIDKEY']</tt></td>
    <td>String</td>
    <td>Serial Key</td>
    <td><tt></tt></td>
  </tr>
  <tr>
    <td><tt>['dbamp']['properties']['USERNAME']</tt></td>
    <td>String</td>
    <td>Username</td>
    <td><tt></tt></td>
  </tr>
  <tr>
    <td><tt>['dbamp']['properties']['COMPANYNAME']</tt></td>
    <td>String</td>
    <td>Company Name</td>
    <td><tt></tt></td>
  </tr>    
</table>

## Usage

### dbamp::default

Include `dbamp` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[dbamp::default]"
  ]
}
```

## License and Authors

Author:: Taliesin Sisson (<taliesins@yahoo.com>)
