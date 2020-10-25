#!/bin/bash
/bin/su -s /bin/bash -c "ssh-keygen -q -t rsa -N " ansible
/bin/su -s /bin/bash -c "ssh-copy-id "