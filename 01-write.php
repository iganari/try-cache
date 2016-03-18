<?php
//memcachedにデータを書き込むPHPプログラム
$m = new Memcached();
$m->addServer('localhost', 11211);
$m->set('key', 'wanko', 60); //('キー', 'バリュー', '有効期限(s)')
