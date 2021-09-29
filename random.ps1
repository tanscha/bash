foreach($i in 1..10){
( (1..4) | ForEach-Object { Get-Random -Minimum 0 -Maximum 2 } ) -join ''
}
