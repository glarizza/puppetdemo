Facter.add('role') do
  setcode do
   %x{cat /etc/role} 
  end
end
