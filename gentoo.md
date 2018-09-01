
# Create New Docker Images

## Start

See https://github.com/gentoo/gentoo-docker-images for reference.

    docker create -v /usr/portage --name myportagesnapshot gentoo/portage:latest /bin/true
    docker run -ti --volumes-from myportagesnapshot --name mygentoo --hostname mygentoo gentoo/stage3-amd64:latest /bin/bash

## Run Container

    docker start -ai mygentoo

## Install and Config

- Update make.conf
- Intall tools

        emerge sudo vim dev-vcs/git

- Add user

        useradd -m -G users,wheel,audio -s /bin/bash <user_name>
        passwd <user_name>
        vim /etc/sudoers

- Login

        su -l <user_name>

# Portage Cheatsheet

    emerge --sync
    emerge --update --deep --with-bdeps=y --newuse @world
    revdep-rebuild -v
    emerge -av --depclean

    emerge -pve world              # List all installed packages with USE
    sudo emerge --ask <package>    # See USE and dep first.

# Backup

## Save copies

First commit containers to images:

    docker ps -a
    docker commit ff8b82bd792c myportagesnapshot-2018-08-31
    docker commit c70f7dc12074 gentoo-2018-08-30

Then, save images to tar files:

    docker save -o /tmp/myportagesnapshot-2018-08-31.tar myportagesnapshot-2018-08-31
    docker save -o /tmp/gentoo-2018-08-30.tar gentoo-2018-08-30

## Restore

    docker load -i myportagesnapshot-2018-08-31.tar
    docker load -i gentoo-2018-08-30.tar
    # same as the cmds in create section but different image names.
    docker create -v /usr/portage --name myportagesnapshot myportagesnapshot-2018-08-31 /bin/true
    docker run -ti --volumes-from myportagesnapshot --name mygentoo --hostname mygentoo gentoo/stage3-amd64:latest /bin/bash
