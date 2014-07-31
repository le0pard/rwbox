#
# Cookbook Name:: rwprecise64
# Recipe:: default
#
# Copyright (C) 2013 Alexey Vasiliev
#
# All rights reserved - MIT
#

# CVS
package "git-core"
package "mercurial"

# Time sync
package "ntp"

# rmagick
package "imagemagick"
package "libmagickwand-dev"

# curb
package "libcurl3"
package "libcurl3-gnutls"
package "libcurl4-openssl-dev"

# utils
package "htop"

# UTF-8 locale
locale_vars = <<EOF
LANG=en_US.UTF-8
LANGUAGE=en_US.UTF-8
LC_CTYPE="en_US.UTF-8"
LC_NUMERIC="en_US.UTF-8"
LC_TIME="en_US.UTF-8"
LC_COLLATE="en_US.UTF-8"
LC_MONETARY="en_US.UTF-8"
LC_MESSAGES="en_US.UTF-8"
LC_PAPER="en_US.UTF-8"
LC_NAME="en_US.UTF-8"
LC_ADDRESS="en_US.UTF-8"
LC_TELEPHONE="en_US.UTF-8"
LC_MEASUREMENT="en_US.UTF-8"
LC_IDENTIFICATION="en_US.UTF-8"
LC_ALL=en_US.UTF-8
EOF

file "/etc/default/locale" do
  content locale_vars
  owner "root"
  group "root"
  mode 00644
end



include_recipe 'rwprecise64::mysql'
include_recipe 'rwprecise64::postgresql'