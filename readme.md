# memcachedに触れてみる

### 趣旨

memcachedを実際に立ち上げて、挙動を確認してみる。


+ vagrantの立ち上げ方

```
git clone repo.git
cd try-memcached/opsfiles
vagrant up
```


### 使い方 

```
$ ansible-play -i hosts site.yml
```


### 補足

マルチVMに対応するために、ansible内包型からansible外包型へ変更
