<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title></title>
</head>
<body>
	<table>
		<tr><td>Dear {{ $name }}</td></tr>
		<tr><td>&nbsp;</td></tr>
		<tr><td>Please click on below link to activate your Fruitage Foods Account :-:</td></tr>
		<tr><td>&nbsp;</td></tr>
		<tr><td><a href="{{ url('/user/confirm/'.$code) }}">Confirm Account</a></td></tr>
		<tr><td>&nbsp;</td></tr>	
		<tr><td>&nbsp;</td></tr>
		<tr><td>Thanks & Regards,</td></tr>
		<tr><td>Fuitage Foods</td></tr>
	</table>
</body>
</html>