# Maintainer: Andreas Brenk <mail@andreasbrenk.com>
pkgname=('openhab-runtime'
         'openhab-action-mail'
         'openhab-action-nma'
         'openhab-action-prowl'
         'openhab-action-squeezebox'
         'openhab-action-twitter'
         'openhab-action-xbmc'
         'openhab-action-xmpp'
         'openhab-binding-asterisk'
         'openhab-binding-astro'
         'openhab-binding-bluetooth'
         'openhab-binding-comfoair'
         'openhab-binding-configadmin'
         'openhab-binding-cups'
         'openhab-binding-digitalstrom'
         'openhab-binding-dmx'
         'openhab-binding-enocean'
         'openhab-binding-epsonprojector'
         'openhab-binding-exec'
         'openhab-binding-fritzaha'
         'openhab-binding-fritzbox'
         'openhab-binding-homematic'
         'openhab-binding-http'
         'openhab-binding-hue'
         'openhab-binding-ihc'
         'openhab-binding-knx'
         'openhab-binding-koubachi'
         'openhab-binding-milight'
         'openhab-binding-modbus'
         'openhab-binding-mpd'
         'openhab-binding-mqtt'
         'openhab-binding-mqttitude'
         'openhab-binding-netatmo'
         'openhab-binding-networkhealth'
         'openhab-binding-nibeheatpump'
         'openhab-binding-nikobus'
         'openhab-binding-novelanheatpump'
         'openhab-binding-ntp'
         'openhab-binding-onewire'
         'openhab-binding-onkyo'
         'openhab-binding-opensprinkler'
         'openhab-binding-owserver'
         'openhab-binding-piface'
         'openhab-binding-plcbus'
         'openhab-binding-plugwise'
         'openhab-binding-pulseaudio'
         'openhab-binding-rfxcom'
         'openhab-binding-samsungtv'
         'openhab-binding-serial'
         'openhab-binding-snmp'
         'openhab-binding-sonos'
         'openhab-binding-squeezebox'
         'openhab-binding-systeminfo'
         'openhab-binding-tcp'
         'openhab-binding-tinkerforge'
         'openhab-binding-urtsi'
         'openhab-binding-vdr'
         'openhab-binding-wol'
         'openhab-binding-xbmc'
         'openhab-binding-zwave'
         'openhab-io-dropbox'
         'openhab-io-freetts'
         'openhab-io-marytts'
         'openhab-io-squeezeserver'
         'openhab-persistence-cosm'
         'openhab-persistence-db4o'
         'openhab-persistence-exec'
         'openhab-persistence-gcal'
         'openhab-persistence-logging'
         'openhab-persistence-mqtt'
         'openhab-persistence-rrd4j'
         'openhab-persistence-sense'
         'openhab-persistence-mysql'
         'openhab-demo-configuration')
pkgbase=openhab
pkgver=1.6.1
pkgrel=1
arch=('x86_64'
      'armv6h'
      'armv7h')
url="http://openhab.org/"
license=('EPL')
depends=('java-environment')
makedepends=('unzip')
options=(!strip)
changelog=ChangeLog
#https://openhab.ci.cloudbees.com/job/openHAB/lastSuccessfulBuild/artifact/distribution/target/distribution-1.5.0-SNAPSHOT-addons.zip
source=("https://github.com/openhab/openhab/releases/download/v${pkgver}/distribution-${pkgver}-runtime.zip"
        "https://github.com/openhab/openhab/releases/download/v${pkgver}/distribution-${pkgver}-addons.zip"
        "https://github.com/openhab/openhab/releases/download/v${pkgver}/distribution-${pkgver}-demo-configuration.zip"
        'openhab'
        'openhab.conf.d'
        'openhab.service'
        'wrapper.conf')
noextract=("distribution-${pkgver}-demo-configuration.zip")
md5sums=('2ed35f210fd47e62aef3118844dbdcbb'
         '4fdde88782a02ab70c9ece418e92fa66'
         '24ea9eec6df3a0b636f67346fdf027b7'
         'cf1e4b7cc86d242176fe3c67a688485c'
         'abe63d99dc7a173e079c6c033fd39377'
         '891947fb68de43849339ab0cd1b1a031'
         '131aa0634410f585324a7186a2849c49')
if test "$CARCH" == x86_64; then
  source+=('http://wrapper.tanukisoftware.com/download/3.5.25/wrapper-linux-x86-64-3.5.25.tar.gz')
  md5sums+=('6810b2766c0f3fdbde8786b82d9cc355')
elif test "$CARCH" == armv6h; then
  source+=('http://wrapper.tanukisoftware.com/download/3.5.25/wrapper-linux-armhf-32-3.5.25.tar.gz')
  md5sums+=('1de7eccb6c20b1f6e75802dfca74d8bb')
elif test "$CARCH" == armv7h; then
  source+=('http://wrapper.tanukisoftware.com/download/3.5.25/wrapper-linux-armhf-32-3.5.25.tar.gz')
  md5sums+=('1de7eccb6c20b1f6e75802dfca74d8bb')
fi
options=(!strip)

do_package_action() {
  arch=('any')
  depends=("openhab-runtime=${pkgver}")
  pkgdesc="The ${2} action for the openHAB Home Automation Bus"

  cd "${srcdir}"
  mkdir -p "${pkgdir}/opt/openhab/addons"
  install -m 644 org.openhab.action.${1}-${pkgver}.jar "${pkgdir}/opt/openhab/addons/"
}

do_package_binding() {
  arch=('any')
  depends=("openhab-runtime=${pkgver}")
  pkgdesc="The ${2} binding for the openHAB Home Automation Bus"

  cd "${srcdir}"
  mkdir -p "${pkgdir}/opt/openhab/addons"
  install -m 644 org.openhab.binding.${1}-${pkgver}.jar "${pkgdir}/opt/openhab/addons/"
}

do_package_io() {
  arch=('any')
  depends=("openhab-runtime=${pkgver}")
  pkgdesc="${2} support for the openHAB Home Automation Bus"

  cd "${srcdir}"
  mkdir -p "${pkgdir}/opt/openhab/addons"
  install -m 644 org.openhab.io.${1}-${pkgver}.jar "${pkgdir}/opt/openhab/addons/"
}

do_package_persistence() {
  arch=('any')
  depends=("openhab-runtime=${pkgver}")
  pkgdesc="The ${2} persistence service for the openHAB Home Automation Bus"

  cd "${srcdir}"
  mkdir -p "${pkgdir}/opt/openhab/addons"
  install -m 644 org.openhab.persistence.${1}-${pkgver}.jar "${pkgdir}/opt/openhab/addons/"
}

package_openhab-runtime() {
  pkgdesc="A universal integration platform for all things around home automation based on Java and OSGi"
  changelog=ChangeLog
  backup=('opt/openhab/configurations/logback.xml'
          'opt/openhab/configurations/openhab.cfg'
          'opt/openhab/configurations/users.cfg')
  install=install

  cd "$srcdir"

  install -d -m755 -o openhab -g openhab ${pkgdir}/opt/openhab
  install -d -m755 -o openhab -g openhab ${pkgdir}/opt/openhab/logs
  install -d -m755 -o openhab -g openhab ${pkgdir}/opt/openhab/run

  for dir in addons contexts etc server sounds webapps
  do
    find $dir -type d -exec install -d -m755 -o openhab -g openhab {} ${pkgdir}/opt/openhab/{} \;
    find $dir -type f -exec install -D -m644 -o openhab -g openhab {} ${pkgdir}/opt/openhab/{} \;
  done

  install -D -m644 -o openhab -g openhab configurations/logback.xml ${pkgdir}/opt/openhab/configurations/logback.xml
  install -D -m644 -o openhab -g openhab configurations/openhab_default.cfg ${pkgdir}/opt/openhab/configurations/openhab_default.cfg

  # install main configuration files group writable
  for dir in items persistence rules scripts sitemaps transform
  do
    find configurations/$dir -type d -exec install -d -m2775 -o openhab -g openhab {} ${pkgdir}/opt/openhab/{} \;
    find configurations/$dir -type f -exec install -D -m664 -o openhab -g openhab {} ${pkgdir}/opt/openhab/{} \;
  done

  # install sensitive files that contain API keys or passwords with restrictive permissions
  install -D -m600 -o openhab -g openhab configurations/openhab_default.cfg ${pkgdir}/opt/openhab/configurations/openhab.cfg
  install -D -m600 -o openhab -g openhab configurations/users.cfg ${pkgdir}/opt/openhab/configurations/users.cfg

  install -D -m755 -o openhab -g openhab openhab ${pkgdir}/opt/openhab/bin/openhab
  install -D -m644 -o openhab -g openhab wrapper.conf ${pkgdir}/opt/openhab/etc/wrapper.conf
  install -D -m644 -o openhab -g openhab openhab.conf.d ${pkgdir}/etc/conf.d/openhab
  install -D -m644 -o openhab -g openhab openhab.service ${pkgdir}/usr/lib/systemd/system/openhab.service

  [ "$CARCH" == "x86_64" ] && cd "$srcdir"/wrapper-linux-x86-64-3.5.25
  [ "$CARCH" == "armv6h" ] && cd "$srcdir"/wrapper-linux-armhf-32-3.5.25
  [ "$CARCH" == "armv7h" ] && cd "$srcdir"/wrapper-linux-armhf-32-3.5.25

  install -D -m755 -o openhab -g openhab bin/wrapper ${pkgdir}/opt/openhab/lib/wrapper
  install -D -m644 -o openhab -g openhab lib/libwrapper.so ${pkgdir}/opt/openhab/lib/libwrapper.so
  install -D -m644 -o openhab -g openhab lib/wrapper.jar ${pkgdir}/opt/openhab/lib/wrapper.jar
}

package_openhab-action-mail() {
  do_package_action 'mail' 'Mail'
}

package_openhab-action-nma() {
  do_package_action 'nma' 'Notify My Android'
}

package_openhab-action-prowl() {
  do_package_action 'prowl' 'Prowl'
}

package_openhab-action-squeezebox() {
  depends+=('openhab-io-squeezeserver')

  do_package_action 'squeezebox' 'Squeezebox'
}

package_openhab-action-twitter() {
  do_package_action 'twitter' 'Twitter'
}

package_openhab-action-xbmc() {
  do_package_action 'xbmc' 'XBMC'
}

package_openhab-action-xmpp() {
  do_package_action 'xmpp' 'XMPP / Jabber'
}

package_openhab-binding-asterisk() {
  do_package_binding 'asterisk' 'Asterisk'
}

package_openhab-binding-astro() {
  do_package_binding 'astro' 'Astro'
}

package_openhab-binding-bluetooth() {
  do_package_binding 'bluetooth' 'Bluetooth'
}

package_openhab-binding-comfoair() {
  do_package_binding 'comfoair' 'ComfoAir'
}

package_openhab-binding-configadmin() {
  do_package_binding 'configadmin' 'OSGi Configuration Admin'
}

package_openhab-binding-cups() {
  do_package_binding 'cups' 'CUPS'
}

package_openhab-binding-digitalstrom() {
  do_package_binding 'digitalstrom' 'digitalSTROM'
}

package_openhab-binding-dmx() {
  do_package_binding 'dmx' 'DMX512'
  install -m 644 org.openhab.binding.dmx.lib485-${pkgver}.jar "${pkgdir}/opt/openhab/addons/"
  install -m 644 org.openhab.binding.dmx.ola-${pkgver}.jar "${pkgdir}/opt/openhab/addons/"
}

package_openhab-binding-enocean() {
  do_package_binding 'enocean' 'EnOcean'
}

package_openhab-binding-epsonprojector() {
  do_package_binding 'epsonprojector' 'Epson projector'
}

package_openhab-binding-exec() {
  do_package_binding 'exec' 'Exec'
}

package_openhab-binding-fritzaha() {
  do_package_binding 'fritzaha' 'FRITZ!Powerline'
}

package_openhab-binding-fritzbox() {
  do_package_binding 'fritzbox' 'Fritz!Box'
}

package_openhab-binding-homematic() {
  do_package_binding 'homematic' 'HomeMatic'
}

package_openhab-binding-http() {
  do_package_binding 'http' 'HTTP'
}

package_openhab-binding-hue() {
  do_package_binding 'hue' 'Philips Hue'
}

package_openhab-binding-ihc() {
  do_package_binding 'ihc' 'IHC / ELKO'
}

package_openhab-binding-knx() {
  do_package_binding 'knx' 'KNX'
}

package_openhab-binding-koubachi() {
  do_package_binding 'koubachi' 'Koubachi'
}

package_openhab-binding-milight() {
  do_package_binding 'milight' 'Milight'
}

package_openhab-binding-modbus() {
  do_package_binding 'modbus' 'Modbus'
}

package_openhab-binding-mpd() {
  do_package_binding 'mpd' 'MPD'
}

package_openhab-binding-mqtt() {
  do_package_binding 'mqtt' 'MQTT'
}

package_openhab-binding-mqttitude() {
  do_package_binding 'mqttitude' 'OwnTracks'
}

package_openhab-binding-netatmo() {
  do_package_binding 'netatmo' 'Netatmo'
}

package_openhab-binding-networkhealth() {
  do_package_binding 'networkhealth' 'Network Health'
}

package_openhab-binding-nibeheatpump() {
  do_package_binding 'nibeheatpump' 'Nibe Heatpump'
}

package_openhab-binding-nikobus() {
  do_package_binding 'nikobus' 'Nikobus'
}

package_openhab-binding-novelanheatpump() {
  do_package_binding 'novelanheatpump' 'Novelan Heatpump'
}

package_openhab-binding-ntp() {
  do_package_binding 'ntp' 'NTP'
}

package_openhab-binding-onewire() {
  do_package_binding 'onewire' 'One-Wire'
}

package_openhab-binding-onkyo() {
  do_package_binding 'onkyo' 'Onkyo'
}

package_openhab-binding-opensprinkler() {
  do_package_binding 'opensprinkler' 'OpenSprinkler'
}

package_openhab-binding-owserver() {
  do_package_binding 'owserver' 'owserver'
}

package_openhab-binding-piface() {
  do_package_binding 'piface' 'Pi-Face'
}

package_openhab-binding-plcbus() {
  do_package_binding 'plcbus' 'PLCBus'
}

package_openhab-binding-plugwise() {
  do_package_binding 'plugwise' 'Plugwise'
}

package_openhab-binding-pulseaudio() {
  do_package_binding 'pulseaudio' 'Pulseaudio'
}

package_openhab-binding-rfxcom() {
  do_package_binding 'rfxcom' 'RFXCOM'
}

package_openhab-binding-samsungtv() {
  do_package_binding 'samsungtv' 'Samsung TV'
}

package_openhab-binding-serial() {
  do_package_binding 'serial' 'Serial'
}

package_openhab-binding-snmp() {
  do_package_binding 'snmp' 'SNMP'
}

package_openhab-binding-sonos() {
  do_package_binding 'sonos' 'Sonos'
}

package_openhab-binding-squeezebox() {
  depends+=('openhab-io-squeezeserver')

  do_package_binding 'squeezebox' 'Squeezebox'
}

package_openhab-binding-systeminfo() {
  do_package_binding 'systeminfo' 'System Info'
}

package_openhab-binding-tcp() {
  do_package_binding 'tcp' 'TCP'
}

package_openhab-binding-tinkerforge() {
  do_package_binding 'tinkerforge' 'TinkerForge'
}

package_openhab-binding-urtsi() {
  do_package_binding 'urtsi' 'Somfy URTSI II'
}

package_openhab-binding-vdr() {
  do_package_binding 'vdr' 'VDR'
}

package_openhab-binding-wol() {
  do_package_binding 'wol' 'Wake on LAN'
}

package_openhab-binding-xbmc() {
  do_package_binding 'xbmc' 'XBMC'
}

package_openhab-binding-zwave() {
  do_package_binding 'zwave' 'Z-Wave'
}

package_openhab-io-dropbox() {
  arch=('any')
  pkgdesc="Dropbox support for the openHAB Home Automation Bus"

  cd "${srcdir}"
  mkdir -p "${pkgdir}/opt/openhab/addons"
  install -m 644 org.openhab.io.dropbox-${pkgver}.jar "${pkgdir}/opt/openhab/addons/"
}

package_openhab-io-freetts() {
  arch=('any')
  pkgdesc="FreeTTS support for the openHAB Home Automation Bus"

  cd "${srcdir}"
  mkdir -p "${pkgdir}/opt/openhab/addons"
  install -m 644 org.openhab.io.multimedia.tts.freetts-${pkgver}.jar "${pkgdir}/opt/openhab/addons/"
}

package_openhab-io-marytts() {
  arch=('any')
  pkgdesc="MaryTTS support for the openHAB Home Automation Bus"

  cd "${srcdir}"
  mkdir -p "${pkgdir}/opt/openhab/addons"
  install -m 644 org.openhab.io.multimedia.tts.marytts-${pkgver}.jar "${pkgdir}/opt/openhab/addons/"
}

package_openhab-io-squeezeserver() {
  do_package_io 'squeezeserver' 'Squeezeserver'
}

package_openhab-persistence-cosm() {
  do_package_persistence 'cosm' 'Cosm'
}

package_openhab-persistence-db4o() {
  do_package_persistence 'db4o' 'db4o'
}

package_openhab-persistence-exec() {
  do_package_persistence 'exec' 'Exec'
}

package_openhab-persistence-gcal() {
  do_package_persistence 'gcal' 'Google Calendar'
}

package_openhab-persistence-logging() {
  do_package_persistence 'logging' 'Logging'
}

package_openhab-persistence-mqtt() {
  do_package_persistence 'mqtt' 'MQTT'
}

package_openhab-persistence-rrd4j() {
  do_package_persistence 'rrd4j' 'rrd4j'
}

package_openhab-persistence-sense() {
  do_package_persistence 'sense' 'Open.Sen.se'
}

package_openhab-persistence-mysql() {
  do_package_persistence 'mysql' 'MySQL'
}

package_openhab-demo-configuration() {
  arch=('any')
  depends=("openhab-binding-http=${pkgver}" 
           "openhab-binding-ntp=${pkgver}"
           "openhab-io-freetts=${pkgver}"
           "openhab-persistence-rrd4j=${pkgver}"
           "openhab-persistence-logging=${pkgver}"
           "openhab-persistence-exec=${pkgver}")
  pkgdesc="A sample configuration for the openHAB Home Automation Bus"

  unzip distribution-${pkgver}-demo-configuration.zip 'configurations/*'

  cd "${srcdir}"
  mkdir -p "${pkgdir}/opt/openhab/configurations"
  mkdir -p "${pkgdir}/opt/openhab/configurations/items"
  mkdir -p "${pkgdir}/opt/openhab/configurations/persistence"
  mkdir -p "${pkgdir}/opt/openhab/configurations/rules"
  mkdir -p "${pkgdir}/opt/openhab/configurations/scripts"
  mkdir -p "${pkgdir}/opt/openhab/configurations/sitemaps"

  install -m 644 ${srcdir}/configurations/items/demo.items "${pkgdir}/opt/openhab/configurations/items"
  install -m 644 ${srcdir}/configurations/persistence/db4o.persist "${pkgdir}/opt/openhab/configurations/persistence"
  install -m 644 ${srcdir}/configurations/persistence/exec.persist "${pkgdir}/opt/openhab/configurations/persistence"
  install -m 644 ${srcdir}/configurations/persistence/logging.persist "${pkgdir}/opt/openhab/configurations/persistence"
  install -m 644 ${srcdir}/configurations/persistence/rrd4j.persist "${pkgdir}/opt/openhab/configurations/persistence"
  install -m 644 ${srcdir}/configurations/rules/demo.rules "${pkgdir}/opt/openhab/configurations/rules"
  install -m 644 ${srcdir}/configurations/scripts/demo.script "${pkgdir}/opt/openhab/configurations/scripts"
  install -m 644 ${srcdir}/configurations/sitemaps/demo.sitemap "${pkgdir}/opt/openhab/configurations/sitemaps"
}

# vim:set ts=2 sw=2 et:
