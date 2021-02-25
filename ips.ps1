Function Compare-Subnets {
param (
[parameter(Mandatory=$true)]
[Net.IPAddress]
$ip1,
 
[parameter(Mandatory=$true)]
[Net.IPAddress]
$ip2,
 
[parameter()]
[alias("SubnetMask")]
[Net.IPAddress]
$mask ="255.255.255.0"
)
 
if (($ip1.address -band $mask.address) -eq ($ip2.address -band $mask.address)) {$true}
else {$false}
 
}