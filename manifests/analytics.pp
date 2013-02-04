class tint::analytics(
  $version = '1.19.18'
) {

  tomcat::deployment { 'rawextract':
    path => "http://artifactory.msi.umn.edu/ext-release-local/msi/umn/edu/rawextract/$version/rawextract-$version.war",
  }

}
