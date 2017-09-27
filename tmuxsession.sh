#!/bin/bash

# Script to start a tmux session with  windows and panes that I want
# Contact: Yami@yamifrankc.com

if ps ax | grep -v grep | grep "tmux new -d -s Yami -n IRC weechat" > /dev/null
	then
		:
	else
		tmux new -d -s Yami -n IRC weechat
		tmux neww -n Shell
		tmux neww -n Shell2
		tmux split-window -v
		tmux selectp -t 1
		tmux selectw -t 2
	fi
