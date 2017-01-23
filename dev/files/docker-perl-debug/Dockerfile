FROM ubuntu:14.04
MAINTAINER AnnPin "e0956224@gmail.com"
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -y \
	make \
	build-essential \
	apache2 \
	libclass-dbi-perl \
	libgd-perl \
	libwww-perl \
	libfile-copy-recursive-perl
RUN ln -s /usr/bin/vi /usr/bin/vim
RUN rm -f /etc/apache2/apache2.conf
RUN rm -f /etc/apache2/sites-available/000-default.conf
RUN rm -rf /var/www
RUN mkdir /www && ln -s /www /var/www

ADD ./apache2.conf /etc/apache2/
ADD ./000-default.conf /etc/apache2/sites-available/
# Devel::Camelcadedb を有効にして Perl を実行するシェルスクリプト
ADD ./perl /usr/local/bin/perl
ADD ./setup.sh /setup.sh

# cpan 自動コンフィグ
ENV PERL_MM_USE_DEFAULT 1
# Devel::Camelcadedb をインストール
RUN cpan install Devel::Camelcadedb

WORKDIR /
RUN chmod a+x ./setup.sh

CMD ["/setup.sh"]

