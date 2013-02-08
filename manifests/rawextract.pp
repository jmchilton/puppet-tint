class tint::rawextract(
  $version = '1.19.18',
  $msconvert_path = '/usr/bin/msconvert',
  $service_name = undef,
) {

  if $service_name != undef {
    $service_name_line = "service.name=$service_name"
  } else {
    $service_name_line = ""
  }

  tint::config::deploy_properties { 'rawextract' :
  }

  tomcat::deployment { 'rawextract':
    path => "http://artifactory.msi.umn.edu/ext-release-local/msi/umn/edu/rawextract/$version/rawextract-$version.war",
  }

}
