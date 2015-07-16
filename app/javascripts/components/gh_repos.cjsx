# @cjsx React.DOM

React = require('react')
AjaxList = require('./ajax_list')

module.exports = React.createClass
  render: ->
    <div>
        <h1>Github Repos</h1>
        <h4>First 30 GitHub Repositories for {@props.user}</h4>
        <AjaxList endPoint={"https://api.github.com/users/"+@props.user+"/repos"} urlKey="html_url" anchorKey="name" />
    </div>

