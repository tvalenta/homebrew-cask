cask 'viscosity' do
  version '1.7.11'
  sha256 '1d225369131c6c25dc9f04ea489ede00bd973bb11b2975b616d7a6c42ed6850a'

  url "https://swupdate.sparklabs.com/download/mac/release/viscosity/Viscosity%20#{version}.dmg"
  appcast 'https://swupdate.sparklabs.com/appcast/mac/release/viscosity/'
  name 'Viscosity'
  homepage 'https://www.sparklabs.com/viscosity/'

  auto_updates true

  app 'Viscosity.app'

  uninstall delete:     [
                          '/Library/Application Support/Viscosity',
                          '/Library/PrivilegedHelperTools/com.sparklabs.ViscosityHelper',
                        ],
            launchctl:  'com.sparklabs.ViscosityHelper',
            login_item: 'Viscosity',
            signal:     ['TERM', 'com.viscosityvpn.Viscosity']

  zap trash: [
               '~/Library/Application Support/Viscosity',
               '~/Library/Caches/com.viscosityvpn.Viscosity',
               '~/Library/Cookies/com.viscosityvpn.Viscosity.binarycookies',
               '~/Library/Preferences/com.viscosityvpn.Viscosity.plist',
             ]
end
