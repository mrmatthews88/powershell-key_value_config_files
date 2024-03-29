# powershell-key_value_config_files

With the .ps1 file included assign the config object into a variable like so

```powershell
$myconfig = Get-Config -filePath ".\Desktop\config.txt"
```
## to get a variable from the config run 
```powershell
$myconfig.get("keyname")
```

## to set a variable in the config run
```powershell
$myconfig.set("keyname", "value")
```
Due to how the function is saving the data, when you set a variable if either the key or the config file does not exist it will be created.


## Learning Resources
- Making objects with functions (Class?) 
  - https://social.technet.microsoft.com/wiki/contents/articles/7804.powershell-creating-custom-objects.aspx
- Hash Tables 
  - https://4sysops.com/archives/the-powershell-hash-table/
- Export-ModuleMember
  - https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/export-modulemember?view=powershell-6
