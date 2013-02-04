require 'spec_helper'

describe 'tint::analytics' do

  describe 'specifing version' do
    
    let(:params) { { 'version' => '1.19.19' } }
    
    it { should contain_tomcat__deployment('rawextract').with_path('http://artifactory.msi.umn.edu/ext-release-local/msi/umn/edu/rawextract/1.19.19/rawextract-1.19.19.war') }
    
  end



end
