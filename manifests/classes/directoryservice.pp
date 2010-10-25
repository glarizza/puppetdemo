# /etc/puppet/manifests/classes/directoryservice.pp

class directoryservice {
  
  service {
    "com.apple.DirectoryServices":
      provider   => "base",
      binary     => "/usr/sbin/DirectoryService",
      status     => "launchctl list | awk '{print \$3}' | grep -qx com.apple.DirectoryServices",
      stop       => "launchctl unload /System/Library/LaunchDaemons/com.apple.DirectoryServices.plist",
      start      => "launchctl unload /System/Library/LaunchDaemons/com.apple.DirectoryServices.plist",
      restart    => "killall -TERM DirectoryService";
  }
  
}
