env            = "dev"
aws_account_id = "328670579073"
project        = "devguide"
domain         = "test-devguide.trimble.com"
allowed_ips = ["35.164.161.182/32", # (e-tools Prod stack)
  "35.164.8.36/32",                 # (e-tools Prod stack)
  "34.226.10.107/32",               # (e-tools DR stack)
  "52.200.203.219/32"               # (e-tools DR stack)
]
vpc_name               = "VPC-TECHNOLOGY-OFFICE-DEV-TECHNOLOGY-OFFICE-DEV-VPC"
subnet_public_tag_name = "SUB-PUB-*"
known_hosts            = "bitbucket.trimble.tools,54.213.20.69 ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCKfu+VKNPNWZhoN8yoxSvtN6F9zT5uvsqWm2DDGJeOSkafNzwQ2Vcyrocfv+TX92RR05vglbtnDX0JP1gJYLNcffsql1kZZtGv1QZUT6Tphg2oY/oL0lJEUwperpLKSEdFDKVAqdEmR72OUhe93f++sa8Q4HxyMV5Fqt1HWkUpAHC/wO3RKuMLHjikZtIDG7W3vLh9BXd09/as8NqgibXgdNX+tKiBEPKTx/np4uaSeUhmYiMx72/5vsOIl4nBDfAzGcYRv3tvxotkGl7FONSgCzAhQifDo7sNWVfiR72vfCw/+YQGGWYNyykQS6Blk5IHdAaPhdZB4c8AYJ8jrL3r"
branch                 = "develop"
