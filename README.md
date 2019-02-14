# Сервер DNSMASQ

По-умолчанию в Ubuntu работает системная утилита для кэширования dns-запросов systemd-resolvd.

Отключите службу systemd-resol и остановите ее:

```bash
sudo systemctl disable systemd-resolved.service
sudo service systemd-resolved stop
```

Удалить символическую ссылку /etc/resolv.conf и добавить dns-сервер в resolv.conf

```bash
rm /etc/resolv.conf
echo "nameserver 192.168.1.1" > /etc/resolv.conf
```

Файл конфигурации находится в /etc/dnsmasq.d/dnsmasq.conf

Логфайл находится в /var/log/dnsmasq/dnsmasq-queries.log