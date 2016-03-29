<?php
//memcachedからデータを読み込むプログラム
$m = new Memcached();
$m->addServer('localhost', 11211);
if ($val = $m->get('key')) {
    echo $val;
}
