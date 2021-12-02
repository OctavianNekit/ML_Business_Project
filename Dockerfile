FROM python:3.7
LABEL maintainer="octaviannekit@yandex.ru"
COPY . ./
WORKDIR ./
RUN pip install -r requirements.txt
EXPOSE 8180
EXPOSE 8181
VOLUME /models
COPY ./docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]