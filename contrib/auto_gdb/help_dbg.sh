#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.helpcore/helpd.pid file instead
help_pid=$(<~/.helpcore/testnet3/helpd.pid)
sudo gdb -batch -ex "source debug.gdb" helpd ${help_pid}
