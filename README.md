# Nuxt.js Kong Rails

* Frontend: Nuxt.js
* Web Server, L7LB: Kong
* API: Rails

## 開発環境構築

### ツール
* Docker, docker-compose

#### アプリケーションの構築
```
# 初回
make build

# nuxt.js, kong, railsを起動
make serve
```

http://localhost:3030 にアクセス

## 技術スタック
* Docker
* docker-compose
* rails 
  * ruby:2.6.2
  * Rails 5.2.0
  * postgresql:10
  * redis:4
* kong 
  * kong 0.13
  * postgresql:10
  * kong-dashboard 3.5
* nuxt.js 
  * node:9
  * yarn
  * nuxt.js ^2.0.0
