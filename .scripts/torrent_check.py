#!/usr/bin/env python

import getpass
import os
import time

CURRENT_USER = getpass.getuser()

while True:
    done = 0

    torrentinfo = os.popen('transmission-remote -l').read()
    activetorrents = torrentinfo.split('\n')[1:-2]

    for torrent in activetorrents:
        if "Done" in torrent:
            done += 1

    with open(os.path.join('/home/', CURRENT_USER, '.torrentind'), 'w') as torfile:
        torfile.write("{}:{}".format(len(activetorrents), done))

    time.sleep(10)
