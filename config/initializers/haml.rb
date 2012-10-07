# encoding: utf-8
#
# HAML configuration
# See http://haml.hamptoncatlin.com/docs/rdoc/classes/Haml.html -> HAML Options

Haml::Template.options[:format] = :html5
Haml::Template.options[:autoclose] = %w[meta img link br hr input area param col base else var assign script log submit exit reprompt goto]
Haml::Template.options[:ugly] = defined? RAILS_ENV and RAILS_ENV == 'production' or false
Haml::Template.options[:attr_wrapper] = '"'
