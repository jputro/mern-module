publickey:
  cmd.run:
    - name: sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5

list_file:
  cmd.run:
    - name: echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.6 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.6.list

mongodb_pkg:
  pkg.latest:
    - pkgs:
      - mongodb-org

mongodb_service:
  service.running:
    - name: mongod
    - enable: True
