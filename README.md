# JetBrains 社製 IDE で Perl 5 のリモートデバッグを行うためのサンプル仮想環境


## 概要
Vagrant で Ubuntu14.04 (Trusty) の VM を立ち上げ、その中で Docker で Perl 5 のリモートデバッグ環境を作ります。

## テスト動作環境
*  macOS Yosemite 10.10.5 で以下を使用してテスト済み。
    -  VirtualBox 5.1.14
    -  Vagrant 1.9.1

## 使い方
*  まず、Vagrant で VM を作成します。(事前に VirtualBox と Vagrant をインストールしておいてください)
    -  `mv ./dev ~/Desktop`
    -  `cd ~/Desktop/dev`
    -  `vagrant up`

*  VM が起動した後は、VM に ssh でログインし、Perl 5 用の Docker イメージおよびコンテナを作成します。
    -  `vagrant ssh`
    -  `cd /vagrant/docker-perl-debug`
    -  `make setup-nc`

*  コンテナが起動した後は、以下のコマンドでコンテナ環境内に入れるようになります。
    -  `make bash`

*  詳細は Qiita で公開している [2017年 Perl5 との戦いに生き残るための最高の開発環境を手に入れる - リモートデバッグ 編](http://qiita.com/AnnPin/items/983a56a55d4b45f8e1f2) という記事を御覧ください。


