# How to Use

### What is repcached

+ 2台のサーバに別々でいるmemcachedをレプリケーションするソフト
  + 開発はKLab
  + Master-Master構成
  + repcachedの最新情報は2008年4月11日でstop
    + http://dsas.blog.klab.org/archives/cat_50030369.html




### 構築方法

```
$ git clone ###
$ cd ###
$ vagrant up
```

### 使い方

Qiita

### コマンドとか

+ memcachedおよびrepcahcedのバージョン確認

```
$ memcached -h 

memcached 1.2.8  
repcached 2.2.1
``` 

+ プロセス確認

```
$ ps aux | grep memcached
```

+ memcachedによる状態確認
    + memcached-toolに関してはこちら()

```
$ sudo memcached-tool localhost:11211

### 詳細
$ memcached-tool localhost:11211 display  
$ memcached-tool localhost:11211          # オプションなしは"display"と同じ
$ memcached-tool localhost:11211 stats 
$ memcached-tool localhost:11211 dump     # 全てのキーとバリューが画面にダンプされます。
```
