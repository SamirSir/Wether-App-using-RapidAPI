const { environment } = require('@rails/webpacker')

// adding bootstrap jquery and popperjs
const webpack = require('webpack')

environment.plugins.append('Provide', 
    new webpack.ProvidePlugin({
        $: 'jquery/src/jquery',
        jQuery: 'jquery/src/jquery',
        Popper: ['popper.js', 'default']
    })
)
module.exports = environment
