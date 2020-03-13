FROM centos

RUN adduser m

USER m

ADD --chown=m:m apps /matrixssl/apps
ADD --chown=m:m testkeys /matrixssl/testkeys
ADD --chown=m:m relaunch.sh /matrixssl/

EXPOSE 4433

ENTRYPOINT "/matrixssl/relaunch.sh"
