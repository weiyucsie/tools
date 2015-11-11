param([Parameter(Mandatory=$true)][string]$VMName,[string]$ComputerName=".")

function Get-VMMsvmComputerSystem([string]$VMName,[string]$ComputerName = ".") {
	(Get-WmiObject -Query "SELECT * FROM Msvm_ComputerSystem WHERE ElementName='$VMName'" -ComputerName $ComputerName -Namespace root\virtualization\v2).__PATH
}

function Get-VMLastAppliedSnapshot([string]$VMName,[string]$ComputerName=".") {
	$MsvmCSPath = (Get-VMMsvmComputerSystem $VMName $ComputerName)
	Get-WmiObject -Query "ASSOCIATORS OF {$MsvmCSPath} WHERE AssocClass=Msvm_LastAppliedSnapshot" -ComputerName $ComputerName -Namespace root\virtualization\v2
}

Get-VMLastAppliedSnapshot $VMName $ComputerName
