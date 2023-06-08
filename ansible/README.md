# DFM
This playbook was designed to operate on a Debian 11 LXC. It will run the Discord client in a headless X session and update your Discord status based on your last.fm scrobbling activity.

## Install
1. This app requires your Discord token in order to authenticate to the Discord client. You must obtain your `leveldb` directory and place it in the root of this directory. If you have Discord installed as a flatpak and you have logged into the client you can copy your `leveldb` directory by running the following:
```
cp -r ~/.var/app/com.discordapp.Discord/config/discord/Local\ Storage/leveldb .
```

2. Update `hosts.yml` with your LXCs address and the name of your last.fm account.

3. You will also need to generate a [last.fm API key](https://www.last.fm/api/account/create) and add those values to the `vault.yml`. Make sure to encrypt your vault with `make vault`.

4. Finally run `make install` to run the playbook.
