$default_packages = ['vim', 'mosh', 'tmux']

node default {
  package {$default_packages:
    ensure => present
  }
  user { 'danieldreier':
    ensure           => 'present',
    comment          => 'Daniel Dreier',
    shell            => '/bin/zsh',
  }
  ssh_authorized_key { 'danieldreier':
    user => 'danieldreier',
    type => 'ssh-rsa',
    key  => 'AAAAB3NzaC1yc2EAAAADAQABAAACAQCqipbVMpiJcXR02uoRccYG371qx6RvjSAvZMqYM46+SGT+mldJiIZKcV9qf0D+OzND6fPiPYWaQFhh+tg9wzjb5wj0naMoaI5X2jLBjlRbpFEI26vXB4e2QOfH4tWef6bcHjWAeOrlm7KpsgTA9S1imRdrKKEBXTupJIyyN7bxCX2az15QlAeNY19Lj03B7uiHpGBgBfdPKB7u1Qewi8CIzeNEhv5jQjH0YjT3RGrsipch7Og9GM0qWu8jDVlxDNImG/jgrOEJ74nOHnBXoIaKHdpIXrUfV8jW3tsVZdXLF046oTDNP9q+/+v23LPL5qgHnRKyNZcylkSm9O6BhXVX/TkNc+Q1n4M5jKqG+hgGqw0aH/+gGKNxbUTeREMrz50gBI3Lj3RJKg1NuslHZtPNyWqLXhA6uyo8ZvmNrHkFXirJHIREeL91WPF8V90bKNqOdfTfE7WFGMvpGf6USrEvkjApstY4ODNmopudvztKow0yqGoSj5c8bdU205ynga3sEpW5sopgCfwYyPoZC17CUkJJHR5C+vtZbeNfciF/ap4+1qySGPaWeRtgrfPDr68KtOm19zv7NzO4bK6TWFQtouSKgX8RXZT6k6KMwOanjTIRklJqL5X9qt7z2SrXIIb/Gxj8eun6zRYBH5jb9NvoR4hox1lwTzd0F87IvlA5tQ==',
  }
}
