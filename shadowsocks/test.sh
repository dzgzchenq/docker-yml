#!/bin/bash

export http_proxy=socks5://127.0.0.1:1080
#export https_proxy=socks5://127.0.0.1:1080
#export ftp_proxy=socks5://127.0.0.1:1080
export no_proxy=127.0.0.1:1080
curl cip.cc
