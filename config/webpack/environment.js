const { environment } = require('@rails/webpacker')

// adding bootstrap jquery..
const webpack = require('webpack')

environment.plugins.append('Provide', 
    new webpack.ProvidePlugin({
        $: 'jquery',
        jQuery: 'jquery',
        Popper: ['popper.js', 'default']
    })
)
module.exports = environment