cask 'segger-ozone' do
  version '3.10h'
  sha256 '9432a0180997966a03cb5b601b6a4d582043952e0ed5bf7ea97f1fe360ad2546'

  url "https://www.segger.com/downloads/jlink/Ozone_MacOSX_V#{version.no_dots}_Universal.pkg"
  appcast 'https://www.segger.com/downloads/jlink/ReleaseNotes_Ozone.html'
  name 'Ozone'
  homepage 'https://www.segger.com/products/development-tools/ozone-j-link-debugger'

  pkg "Ozone_MacOSX_V#{version.no_dots}_Universal.pkg"

  uninstall quit:    'com.yourcompany.Ozone',
            pkgutil: 'com.segger.pkg.Ozone'

  zap trash: [
               '~/Library/Application Support/SEGGER',
               '~/Library/Application Support/SEGGER\\RTTViewer.ini',
               '~/Library/Saved Application State/com.segger.JFlashLite.*savedState',
               '~/Library/Saved Application State/com.segger.JLinkGDBServer.*savedState',
               '~/Library/Saved Application State/com.segger.JLinkLicenseManager.*savedState',
               '~/Library/Saved Application State/com.segger.JLinkRegistration.*savedState',
               '~/Library/Saved Application State/com.segger.JLinkRemoteServer.*savedState',
               '~/Library/Saved Application State/com.yourcompany.Ozone.savedState',
             ]
end
