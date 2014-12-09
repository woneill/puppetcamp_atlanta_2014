# Keep environment up-to-date
vcsrepo { '/etc/puppet/environments/production':
  ensure   => latest,
  provider => hg,
  source   => 'https://localhost/mercurial/puppet-modules',
}
