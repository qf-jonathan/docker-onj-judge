<?php
$in = fopen("php://stdin", "r");

function isPrime($n) {
    for($i = 2; $i * $i <= $n; $i++) {
        if($n % $i == 0) return false;
    }
    return true;
}

fscanf($in, "%d", $t);

while($t-- > 0) {
    fscanf($in, "%d", $n);
    while(!isPrime(++$n));
    printf("%d\n", $n);
}
?>
