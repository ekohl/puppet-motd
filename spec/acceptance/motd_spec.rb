require 'spec_helper_acceptance'

describe 'motd' do
  let(:pp) { 'include motd' }
  it { apply_manifest(pp, catch_failures: true) }
  it { apply_manifest(pp, catch_changes: true) }
  describe file('/etc/motd') do
    it { is_expected.to be_file }
    its(:content) { should eq 'Hello World!' }
  end
end
