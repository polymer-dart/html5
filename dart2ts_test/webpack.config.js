const path = require('path');
const CopyWebpackPlugin = require('copy-webpack-plugin');

/*
module.exports = {
  entry: './lib/index.js',
  output: {
    filename: 'bundle.js',
    path: path.resolve(__dirname, 'dist')
  }
};
*/
module.exports = {
    entry: './lib/index.ts',
    devtool: 'inline-source-map',
    module: {
        rules: [
            {
                test: /\.tsx?$/,
                use: 'ts-loader',
                exclude: /node_modules/,
            }
        ]
    },
    resolve: {
        modules: [path.resolve(__dirname, "lib"), "node_modules"],
        extensions: [".tsx", ".ts", ".js"]
    },
    output: {
        filename: 'index.js',
        path: path.resolve(__dirname, 'dist')
    },
    plugins: [
        new CopyWebpackPlugin([
            {
                context: 'web',
                from: '**/*',
                to: path.resolve(__dirname, "dist")
            },
        ])
    ],
    devServer: {
        contentBase: path.join(__dirname, "web"),
        compress: true,
        port: 8081
    }
};



