git:
  pkg.installed

nodejs:
  pkg.installed
  
/usr/bin/node:
   file.symlink:
     - target: /usr/bin/nodejs
