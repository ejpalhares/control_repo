class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDN/CKRaKOVcCT5plNZvJ3IXxpipQKSbVO6R1m9nSUSDabzDvxZHqYoyOPbGOVcpOSAUrkKMK9U8ZDEBe2BmK3DZy4BdoLl6bcHWJ5POV5WnlFCxTPlMA9rNC25pBWoWPOoIIl9ru/Zp3sf4TRfIWwopXjik9kTz3djW9D9tVePmv3CT/wR1RLNJa3crKEb1jW0WFvv+IWwmYzCQFY4fY5yGev7Ydb2+nWtH1AM+cJxuZaV5vtpEijO6oHcbs1e2ueNBjNYmXvDtpw7uLud+7nmzNbmtgyBvFOhGlAN91Xr/7SRvZkI2HtCv8qY8DE6A0Fh4jAgBcHLuiYjW/Wl4SKv',
  }  
}
