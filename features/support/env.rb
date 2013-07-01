require "spork/test/cucumber_helpers.rb"

APP_ROOT    = Pathname.new(File.expand_path('../../', File.dirname(__FILE__)))
SANDBOX_DIR = APP_ROOT + "tmp/sandbox"

BundlerHelpers.set_gemfile(APP_ROOT + "features/gemsets/#{ENV["GEMSET"] || 'rails3.2'}/Gemfile")

World do
  SporkWorld.new
end

# FileUtils.rm_rf SporkWorld::SANDBOX_DIR
Before { reset_sandbox_dir }
After  { terminate_background_jobs }
