# A sample Guardfile
# More info at https://github.com/guard/guard#readme

#guard 'ctags-bundler' do
#  watch(%r{^(app|lib|spec/support)/.*\.rb$})  { ["app", "lib", "spec/support"] }
#  watch('Gemfile.lock')
#end

guard 'annotate' do
  watch( 'db/schema.rb' )

  # Uncomment the following line if you also want to run annotate anytime
  # a model file changes
  watch( 'app/models/**/*.rb' )

  # Uncomment the following line if you are running routes annotation
  # with the ":routes => true" option
  watch( 'config/routes.rb' )
end

# guard :test do
#   watch(%r{^lib/(.+)\.rb$}) { |m| "test/#{m[1]}_test.rb" }
#   watch(%r{^test/.+_test\.rb$})
#   watch(%r{^test/factories/(.+)\.rb$}) { |m| ["test/unit/#{m[1]}_test.rb", "test/functional/#{m[1]}_test.rb"] }
#   watch('test/test_helper.rb') { "test" }

#   # Rails example
#   watch(%r{^app/models/(.+)\.rb$}) { |m| "test/unit/#{m[1]}_test.rb" }
#   watch(%r{^app/controllers/(.+)\.rb$}) { |m| "test/functional/#{m[1]}_test.rb" }
#   watch(%r{^app/concerns/(.+)_methods\.rb$}) { |m| ["test/unit/#{m[1]}_test.rb", "test/functional/#{m[1]}_test.rb"] }
#   watch(%r{^app/uploaders/.+\.rb$}) { "test/unit/uploaders" }
#   watch(%r{^app/views/.+\.rb$}) { "test/integration" }
#   watch('app/controllers/application_controller.rb') { ["test/functional", "test/integration"] }
# end

guard 'bundler' do
  watch('Gemfile')
  # Uncomment next line if Gemfile contain `gemspec' command
  # watch(/^.+\.gemspec/)
end
