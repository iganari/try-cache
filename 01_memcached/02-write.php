<?php
$m = new Memcached();
$m-> addServer('localhost', 11211);
$m->set('key', date('Y/m/d H:i:s'), time() + 60);
