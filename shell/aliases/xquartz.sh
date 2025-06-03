#!/bin/bash
alias start-xquartz='open -a XQuartz; socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\"'
