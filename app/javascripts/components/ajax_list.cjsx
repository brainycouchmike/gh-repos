# @cjsx React.DOM

React = require('react')

module.exports = React.createClass
    getInitialState: ->
        list: []
    componentDidMount: ->
        urlKey    = @props.urlKey
        anchorKey = @props.anchorKey
        $.get(@props.endPoint, ((repos) ->
          repoList = []
          for repo in repos
            repoList.push 
              link: repo[urlKey]
              anchor: repo[anchorKey]
          @setState(list: repoList)
        ).bind(this)
        )
    render: ->
        <ul>
            {<li>
                <a href={item['link']}>{item['anchor']}</a>
            </li> for item in @state.list}
        </ul>