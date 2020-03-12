FROM centos

ADD apps /matrixssl/apps
ADD testkeys /matrixssl/testkeys
ADD relaunch.sh /matrixssl/

EXPOSE 4433

ENTRYPOINT "/matrixssl/relaunch.sh"
