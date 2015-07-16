# @cjsx React.DOM

React  = require('react')
GHRepos = require('./components/gh_repos')

React.render(
  <GHRepos user="enriquez" />,
  document.getElementById('gh-repos')
)
