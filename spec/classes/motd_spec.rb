require 'spec_helper'

describe 'motd' do
  it { is_expected.to compile.with_all_deps }
  it { is_expected.to contain_file('/etc/motd') \
    .with_content('Hello World!') }
end
