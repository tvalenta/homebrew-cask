cask 'fredm-fuse' do
  version '1.5.6'
  sha256 'fb7997f06f445a80ee426c9403c8a0244c0ca891479f6b80de6fc53f101df767'

  url "https://downloads.sourceforge.net/fuse-for-macosx/fuse-for-macosx/#{version}/FuseForMacOS-#{version}.zip"
  appcast 'https://sourceforge.net/projects/fuse-for-macosx/rss?path=/fuse-for-macosx'
  name 'Fuse for Mac OS X'
  homepage 'http://fuse-for-macosx.sourceforge.net/'

  app 'Fuse for MacOS/Fuse.app'
end
