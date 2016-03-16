FROM python:2.7

RUN pip install dagobah pysqlite==2.6.0 sqlalchemy==0.9.4 alembic==0.6.4

RUN sed -i 's/host: 127.0.0.1/host: 0.0.0.0/' /usr/local/lib/python2.7/site-packages/dagobah/daemon/dagobahd.yml
RUN sed -i 's/auth_disabled: False/auth_disabled: True/' /usr/local/lib/python2.7/site-packages/dagobah/daemon/dagobahd.yml

COPY ssh/* /root/.ssh/
RUN chmod 600 /root/.ssh/*
RUN chown root /root/.ssh/*
RUN echo "    IdentityFile /root/.ssh/id_rsa" >> /etc/ssh/ssh_config

WORKDIR /usr/local/lib/python2.7/site-packages/

EXPOSE 9000

CMD ["dagobahd"]