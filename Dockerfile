## rubyのバージョン3.1を使用、使用したいrailsのバージョンと兌換性のあるものを設定する
## 参考　https://www.fastruby.io/blog/ruby/rails/versions/compatibility-table.html
FROM ruby:3.1

## パッケージをインストール
RUN set -eux && \
    apt-get update -qq && \
    apt-get install -y \
      postgresql-client

## 作業ディレクトリをコンテナ側で作成し、以後ここで作業する
WORKDIR /rails-practice

## ホスト側のファイルをコンテナ側の作業ディレクトリにコピーする
COPY Gemfile Gemfile.lock /rails-practice/

## コンテナ側でbudle installを実行する
RUN bundle install