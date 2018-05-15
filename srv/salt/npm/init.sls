mern_cli:
  cmd.run:
    - name: bash npm.sh
    
brac_repo:
  cmd.run:
    - name: sudo add-apt-repository ppa:webupd8team/brackets

update:
  cmd.run:
    - name: sudo apt-get update

brackets:
  pkg.installed
