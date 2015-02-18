# == Class: ganglia
#
# Full description of class ganglia here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { 'ganglia':
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2015 Your name here, unless otherwise noted.
#
class ganglia (
   # http://sourceforge.net/projects/ganglia/files/ganglia monitoring core/3.6.0/ganglia-3.6.0.tar.gz
   $ganglia_core_version   = $ganglia::params::ganglia_core_version,
   $ganglia_web_version    = $ganglia::params::ganglia_web_version,
   $nginx_version          = $ganglia::params::nginx_version,
   $php_version            = $ganglia::params::php_version
   
) inherits ganglia::params {

   validate_string($ganglia_core_version)
   validate_string($ganglia_web_version)
   validate_string($nginx_version)
   validate_string($php_version)
   
}




