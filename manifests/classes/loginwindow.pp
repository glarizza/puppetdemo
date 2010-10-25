# Class to manage all services on Mac OS X

class loginwindow {
  include directoryservice
  
  service {
    "com.apple.loginwindow":
      provider   => "base",
      binary     => "/System/Library/CoreServices/loginwindow.app/Contents/MacOS/loginwindow",
      status     => "launchctl list | awk '{print \$3}' | grep -qx com.apple.loginwindow",
      stop       => "launchctl unload /System/Library/LaunchDaemons/com.apple.loginwindow.plist",
      start      => "launchctl unload /System/Library/LaunchDaemons/com.apple.loginwindow.plist",
      restart    => "killall -HUP loginwindow",
      require    => Service["com.apple.DirectoryServices"];
  }
  
}
