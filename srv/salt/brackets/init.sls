add_repository:
  cmd.run:
    - name: sudo add-apt-repository ppa:webupd8team/brackets -y

pkg_update:
  cmd.run:
    - name: sudo apt-get update

brackets:
  pkg.installed
