cp /etc/sysctl.conf /tmp
cp /etc/security/limits.conf
cd /srv/exaproxy
git stash
git pull
cp etc/systemd/sysctl.conf /etc/sysctl.conf
cp etc/systemd/security/limits.conf /etc/security/limits.conf
sysctl -p
supervisorctl restart all
