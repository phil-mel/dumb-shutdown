$realseconds = (get-date).second
$minutes = (get-date).minute
$hours = (get-date).hour
$realminutes = (new-timespan -minutes $minutes).totalseconds
$realhours = (new-timespan -hours $hours).totalseconds

$trueseconds = ($realseconds + $realminutes + $realhours)

$shutdowntime = (61200-$trueseconds)
$shutdowntime

shutdown -s -t $shutdowntime