# LESSON4
~/.vimrc
autocmd FileType yaml setlocal ai ts=2 sw=2 et

## Checking playbook, verbose output, dry run
```
ansible-playbook --syntax-check vsftpd.yaml
-v 
-vv
-vvv
-vvvv
-C perform dry run
```
## LABS:
1. Write a playbook that installs the httpd package on ansible2.example.com
2. Ensure that it is started and that the firewall is opened to allow access to it
3. Also create a file /var/www/html/index.html with some welcome text
4. Lastly, write a playbook that will undo all modifications
