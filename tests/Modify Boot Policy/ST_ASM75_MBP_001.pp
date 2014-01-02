include ciscoucs

import '../data.pp'

transport_ciscoucs { 'ciscoucs':
  username => "${ciscoucs['username']}",
  password => "${ciscoucs['password']}",
  server   => "${ciscoucs['server']}",
 
}


ciscoucs_modify_serviceprofile_boot_policy { 'serviceprofilename':
   ensure    => "${ciscoucs_modify_serviceprofile_boot_policy['modify']}",,
   transport  => Transport_ciscoucs['ciscoucs'],
   bootpolicydn => "${ciscoucs_modify_serviceprofile_boot_policy['bootpolicydn']}",
   bootpolicyname => "",
   bootpolicyorganization => "",
   serviceprofiledn => "${ciscoucs_modify_serviceprofile_boot_policy['serviceprofiledn']}",
   serviceprofilename => "",
   serviceprofileorganization => "",
}

