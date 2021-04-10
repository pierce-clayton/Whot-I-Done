import React from 'react'
import ReactDOM from 'react-dom'

const Hello = () => {
  <div className="test">JS Stuff here</div>
}

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <Hello name="React" />,
    document.body.appendChild(document.createElement('div')),
  )
})