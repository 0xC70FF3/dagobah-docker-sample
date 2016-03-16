FROM alpine:3.2

RUN apk update && apk add -u curl

COPY Dockerfiles/job_seeder/entrypoint.sh /root/
COPY jobs/* /root/jobs/

RUN chmod a+x /root/entrypoint.sh

EXPOSE 9000

CMD ["/root/entrypoint.sh"]