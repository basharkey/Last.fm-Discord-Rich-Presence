# DFM
This playbook was designed to operate on a Debian 11 LXC. It will run the Discord client in a headless X session and update your Discord status based on your last.fm scrobbling activity.

## Install
This app requires your Discord token in order to authenticate to the Discord client. You must obtain your `leveldb` directory and place it in the root of this directory. This guide assumes you have Discord installed as a Flatpak on a Linux host:

1. Delete any existing Discord configuration
```
rm -rf ~/.var/app/com.discordapp.Discord/
```

2. Run Discord to regernate the app directory
```
flatpak run com.discordapp.Discord
```

3. Login to Discord to generate a new token

4. Kill Discord
```
flatpak kill com.discordapp.Discord
```

5. Copy your Discord `leveldb` directory containing your token to the `ansible` directory in this repository
```
cp -r ~/.var/app/com.discordapp.Discord/config/discord/Local\ Storage/leveldb/ ./
```

6. Delete your Discord configuration again to preserve your token (If you logout of the client your token will be invalidated)
```
rm -rf ~/.var/app/com.discordapp.Discord/
```

7. Update variables in `hosts.yml`

8. Generate a [last.fm API key](https://www.last.fm/api/account/create) and add those values to the `vault.yml`. Make sure to encrypt your vault with `make vault`

9. Run `make install` to run the playbook
