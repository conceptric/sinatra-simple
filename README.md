# Sinatra Simple

Other than a straight Sinatra install, and as it's name suggests, this is my most basic Sinatra template. 

It extends Sinatra::Base, so it can be used for prototyping standalone web applications or Rack middleware, and the template includes support for:

* Test frameworks
  * RSpec
  * Cucumber
* View templating with Haml
* Stylesheets based on SCSS with some of my personal mixins
* Dependencies managed with Bundler, so my Gemfile is included

As an RVM user and fan, I've included a .rvmrc file in the project to set up Ruby Enterprise Edition and a default gemset.

Feel free to fork this template for your own purposes, but it comes with the obligatory disclaimer, no guarantees or support.

------
Copyright © 2011 James Whinfrey

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.