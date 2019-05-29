#!/bin/bash

systemctl stop postfix.service
systemctl disable postfix.service

./gen.sh
rm -rf /mailu

# 记录类型-主机记录-------------解析线路-记录值-----------------------------MX优先级-TTL
# MX      @                    默认        mail.typhoon.fun                  10       1天
# MX      mail                 默认        mail.typhoon.fun                  10       1天
# TXT     dkim._domainkey.mail 默认        v=DKIM1; k=rsa; p=....            --       10分钟
# TXT     mail                 默认        v=spf1 mx a:mail.typhoon.fun -all --       1天
# A       mail                 默认        106.12.2.90                       --       10分钟

docker-compose up -d
#docker-compose exec admin flask mailu admin admin mail.typhoon.fun PASSWORD
