require 'spec_helper'

describe 'tint::rawextract' do

  describe 'specifing version' do
    
    let(:params) { { 'version' => '1.19.19' } }
    
    it { should contain_tomcat__deployment('rawextract').with_path('http://artifactory.msi.umn.edu/ext-release-local/msi/umn/edu/rawextract/1.19.19/rawextract-1.19.19.war') }
    
  end

  #Puppet::Util::Log.level = :debug
  #Puppet::Util::Log.newdestination(:console)

  describe 'specifing service name' do

    let(:params) { { 'service_name' => 'RAWExtract Testing'} }

    it { should contain_tint__config__deploy_properties('rawextract') }
    #it { $stdout.puts self.catalogue.to_yaml }
    it { should contain_file('/usr/share/tomcat6/.tropix/') }
    it { should contain_file('/usr/share/tomcat6/.tropix/rawextract') }
    it { should contain_file('/usr/share/tomcat6/.tropix/rawextract/deploy.properties').with_content('name=RAWExtract Testing') }
  end

end
