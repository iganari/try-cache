<!DICTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>memcached testpage</title>
</head>
<body>
<?php echo "hello"; ?>

<?php
$memcahe_obj = new Memcache();

/* memcachedサーバに接続 */
$memcached_odj->connect('localhost', 11211);


memcache_set($memcache_obj, 'var_key', 'some variable', 0, 30);

echo memcache_get($memcache_obj, 'var_key');

?>

</body>
</html>
