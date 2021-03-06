css = new CSSC()
css.add '.red-bg',
  backgroundColor: CSSC.red
  color: CSSC.yellow
css.add '.green-bg',
  backgroundColor: CSSC.green
  color: CSSC.yellow
css.add '.blue-bg',
  backgroundColor: CSSC.blue
  color: CSSC.white


# Polyfills are necessary if you are using raix:famono
famous.polyfills

# If you are using pierreeric:cssc-famous, you don't need this line
# as it imports the required CSS files for Famo.us in CS (therefore no
# CSS file is required which speeds up your apps and avoid tempering
# with the JS engine).
# famous.core.famous

# Required by this package
Easing = famous.transitions.Easing
Entity = famous.core.Entity

FView.ready ->
  FView.registerView 'GridLayout', famous.views.GridLayout
  console.info "%c\nFView started\n","font-weight: 300; color: #ec5f3e; font-size: x-large;font-family: 'Lato', 'Helvetica Neue', Helvetica, Arial, sans-serif;-webkit-font-smoothing: antialiased;"

Template.shootIt.rendered = ->
  console.log 'Including template', FView.from @, 'Container', (FView.byId 'container')
  fview = FView.byId 'container'
  #fview.view.commit fview.parent.node

Template.shootIt.helpers
  transition: { duration: 500, curve: Easing.outBack },
  items: [
    {name: 'Some stuff' }
    {name: 'Other stuff' }
    {name: 'Additional stuff'}
  ]
