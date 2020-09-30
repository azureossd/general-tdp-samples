<?php

$f = fopen('largefile', 'wb');
fseek($f, 2 * 1000 * 1000 * 1000, SEEK_SET);
fwrite($f, 'after 2 GB');
fclose($f);

echo "Done";
