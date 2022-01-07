FROM alpine:3.15.0

# Metadata params
ARG BUILD_DATE
ARG ANSIBLE_VERSION

# Metadata
LABEL org.label-schema.build-date=${BUILD_DATE} \
      org.label-schema.version=${ANSIBLE_VERSION}

ADD https://bitbucket.org/Bandarenka/docker/src/master/docker_task.txt /home

RUN apk --update --no-cache add \
        python3\
        py3-pip

RUN apk --update add --virtual \
        python3-dev \
        curl \
 && pip3 install --upgrade \
        pip \
 && pip3 install \
        ansible==${ANSIBLE_VERSION}

RUN mkdir -p /etc/ansible

COPY ls.sh /usr/local/bin/

WORKDIR /ansible

ENTRYPOINT ["ls.sh"]

CMD [ "ansible-playbook", "${ANSIBLE_VERSION}" ]
