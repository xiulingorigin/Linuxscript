#! /bin/bash
#kalilinux_path

#安装基础工具
apt-get install -y msmtp
apt-get install -y mutt

# 创建配置文件
touch /etc/msmtprc

echo "#Set default values for all the following accounts" >> /etc/msmtprc
echo "defaults" >> /etc/msmtprc
echo "logfile /var/log/msmtp.log" >> /etc/msmtprc  #设置日志文件的路径
echo "#The SMTP server of the provider" >> /etc/msmtprc
echo "account minjianshushi" >> /etc/msmtprc #发信账号
echo "host smtp.163.com" >> /etc/msmtprc  #SMTP邮件服务器地址
echo "from minjianshushi@163.com" >> /etc/msmtprc  #发件人地址
echo "auth login" >> /etc/msmtprc
echo "user minjianshushi@163.com" >> /etc/msmtprc  #邮件服务器登录账号
echo "password ************" >> /etc/msmtprc  #邮件服务器登录密码
echo "account default:minjianshushi" >> /etc/msmtprc  #默认账号名称

chmod 600 /etc/msmtprc

echo "set sendmail='/usr/bin/msmtp'" >> /etc/Muttrc  #设置msmtp命令路径
echo "set use_from=yes" >> /etc/Muttrc
echo "set realname='minjianshushi'" >> /etc/Muttrc  #设置发件人的别名，可以不是邮件地址
echo "set from='minjianshushi@163.com'" >> /etc/Muttrc  #设置发件人地址
echo "set envelope_from=yes" >> /etc/Muttrc
echo "set charset='utf-8'" >> /etc/Muttrc
echo "set editor='vim'" >> /etc/Muttrc
echo "set crypt_use_gpgme=no" >> /etc/Muttrc

echo "This is a test mail" | mutt -s "Test mail" xiulingorigin@163.com
