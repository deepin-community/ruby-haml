require 'fileutils'

FileUtils.rm_f(File.expand_path("../../benchmark.rb", __FILE__))
$: << "test"
test_files = Dir['test/*_test.rb'] + Dir['test/haml-spec/*_test.rb'] - ["test/options_test.rb"]

test_files.each { |f| require f}

