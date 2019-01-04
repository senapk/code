$add 4 5 6 8 1 2 2 9
$rmi 0
$show
[ 5 6 8 1 2 2 9 ]
$rmi 5
$show
[ 5 6 8 1 2 9 ]
$rmi 5
$show
[ 5 6 8 1 2 ]
$rmi 2
$show
[ 5 6 1 2 ]
$rmi -1
fail
$rmi 4
fail
$show
[ 5 6 1 2 ]
$end
