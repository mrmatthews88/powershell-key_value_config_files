# powershell-key_value_config_files

With the .ps file included assign the config object into a variable like so

$myconfig = Get-Config -filePath ".\Desktop\config.txt"

## to get a variable from the config run 
$myconfig.get("keyname")


## to set a variable in the config run
$myconfig.set("keyname", "value")

## Learning Resources
- Making objects with functions (Class?) https://social.technet.microsoft.com/wiki/contents/articles/7804.powershell-creating-custom-objects.aspx
- Hash Tables https://4sysops.com/archives/the-powershell-hash-table/
