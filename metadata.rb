maintainer       "Rackspace US, Inc."
maintainer_email "osops@lists.launchpad.net"
license          "Apache 2.0"
description      "glues collectd and graphite cookbooks together"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.4"

%W{apt apache2 collectd collectd-plugins graphite osops-utils monitoring}.each do |dep|
  depends dep
end

%W{ubuntu fedora}.each do |distro|
  supports distro
end
