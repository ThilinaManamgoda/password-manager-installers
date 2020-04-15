#!/bin/bash

HOME="/home/ubuntu"
mkdir ${HOME}/password-manager_${1}_amd64
cp -r ${HOME}/debian/* ${HOME}/password-manager_${1}_amd64/
cp ${HOME}/password-manager ${HOME}/password-manager_${1}_amd64/usr/bin/
pushd ${HOME}/password-manager_${1}_amd64/usr/share/doc/password-manager/
 gzip -9 -n changelog
popd

pushd ${HOME}
 dpkg-deb --build password-manager_${1}_amd64
popd