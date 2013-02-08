define tint::config::deploy_properties(
) {
  include tint::config

  file { "$::tint::params::config_dir/$name":
    owner   => $::tint::params::web_user,
    mode    => 0700,
    ensure  => 'directory',
    require => [Class["tint::config"],],
  }

  file { "$::tint::params::config_dir/$name/deploy.properties":
    owner   => $::tint::params::web_user,
    mode    => 0700,
    content => template("tint/${name}_deploy.properties.erb"),
    require => [File["$::tint::params::config_dir/$name"],],
  }

}

class tint::config {
  include tint::params

  file { $::tint::params::config_dir :
    ensure  => 'directory',
    owner   => $::tint::params::web_user,
    mode    => 0700,
    require => Package['tomcat6-user'],
  }

}
