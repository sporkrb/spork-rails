require 'rspec'
require 'spork'

SPEC_TMP_DIR = File.expand_path('tmp', File.dirname(__FILE__))

require "spork/test/test_helpers"

Dir.glob("#{File.dirname(__FILE__)}/support/*.rb").each { |f| require(f) }

RSpec.configure do |config|
  include(TmpProjectHelpers)

  config.before(:each) do
    TestIOStreams.set_streams(StringIO.new, StringIO.new)

    @current_dir = nil
    clear_tmp_dir
  end
end
