npm:
  pkg.installed

mern-cli:
  cmd.run:
    - name: bash mern-module/srv/salt/npm/npm.sh
        
brac_repo:
  cmd.run:
    - name: sudo add-apt-repository ppa:webupd8team/brackets

update_pkg:
  cmd.run:
    - name: sudo apt-get update

brackets:
  pkg.installed
