require 'rubygems'
require 'geminabox'

Geminabox.data = '/opt/geminabox/data'
Geminabox.build_legacy = ENV['BUILD_LEGACY'] && ENV['BUILD_LEGACY'].downcase.strip == 'true'
Geminabox.rubygems_proxy = true
Geminabox.allow_remote_failure = true

run Geminabox::Server
