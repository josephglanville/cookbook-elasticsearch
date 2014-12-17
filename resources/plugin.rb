actions :install, :remove
default_action :install

attribute :plugin, kind_of: String, name_attribute: true
attribute :version, kind_of: String, required: true
attribute :location, kind_of: String, required: true
