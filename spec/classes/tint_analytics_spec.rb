require 'spec_helper'

describe 'tint::analytics' do
  let(:params) { { 'version' => '1.19.18' } }

  it { should contain_tomcat__deployment('rawextract').with_path('http://artifactory.msi.umn.edu/ext-release-local/msi/umn/edu/rawextract/1.19.18/rawextract-1.19.18.war') }

end
