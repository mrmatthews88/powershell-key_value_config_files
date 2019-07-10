Function Get-Config([string]$filePath) {

    $config = New-Module -AsCustomObject -ScriptBlock {
        [string]$path = ".\Desktop\nnnn.txt"
        [hashTable]$settings=@{}
        Function load () {
            (get-content $path) | % { 
                $key, $value = $_.split("=")
                if ($value) { 
                    $settings[$key] = $value 
                }
            }
        }

        Function get([string]$key) {
            return $settings[$key]
        }

        Function set([string]$key, $value) {
            $settings[$key] = $value
            save
        }

        Function save() {
            "" > $path
            $settings.keys | % {
                $_ + "=" + $settings[$_] >> $path
            }
        }

        Export-ModuleMember -Variable * -Function *
    }
    $config.path = $filePath
    $config.load()
    return $config
}

$myconfig = Get-Config -filePath ".\Desktop\config.txt"
