class httpd {
	$mycustom = "remya edited"
	package { "httpd":
		ensure => "present",
	}
	service { "httpd":
		ensure => "running",
		enable => true,
		require => Package["httpd"]
	}
	file { "/etc/httpd/conf/remya.com":
		ensure => "present",
		source => "puppet:///modules/httpd/remya.com"
	}
	file { "/etc/httpd/conf/remya.conf":
		ensure => "present",
		content => template("httpd/remya.erb")
	}
}
