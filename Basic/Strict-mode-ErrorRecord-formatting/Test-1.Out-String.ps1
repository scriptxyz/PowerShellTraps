
# v6-rc: fixed
[PowerShell]::Create().AddScript({
	Set-StrictMode -Version 2
	try {
		throw 'Oops!'
	}
	catch {
		'Error {'
		$_ | Out-String
		'}'
		$Error[0]
	}
}).Invoke()