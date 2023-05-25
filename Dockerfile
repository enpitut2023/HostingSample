# ベースイメージの指定
FROM nginx:latest

# Nginxの設定ファイルをコンテナ内にコピー
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY ./index.html /root/public/
COPY ./img /root/public/img

RUN mkdir /root/logs
RUN chmod 755 -R /root

# コンテナのポート設定
EXPOSE 8080

# コンテナ起動時のコマンド設定
CMD ["nginx", "-g", "daemon off;"]
