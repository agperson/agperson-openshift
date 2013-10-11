#!/bin/sh
[[ $(rpm -qa | grep ^git-) ]] || (yum install -y -q git && sleep 5)
[[ "$(gem query -i -n r10k)" == "true" ]] || gem install --no-rdoc --no-ri r10k
rsync -a /puppet ~/puppet
cd ~/puppet && r10k -v info puppetfile install
