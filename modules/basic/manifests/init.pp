class basic {
	package { "screen":
		ensure => "present"
	}
	package { "tree":
		ensure => "absent"
	}
	user { "remya":
		ensure => "present",
		managehome => true,
	}
	group { "sree":
		ensure => "present",
		gid => 800,
	}
	file { "/etc/remya":
		ensure => "directory",
		owner => "remya",
		group => "sree",
		mode => 777,
		require => [
				User["remya"], 
				Group["sree"]
			]
	}
}
