require "compass"
require "susy"

activate :livereload

###
# Helpers
###

# Methods defined in the helpers block are available in templates
helpers do
  # Calculate the years for a copyright
  def copyright_years(start_year)
    end_year = Date.today.year
    if start_year == end_year
      start_year.to_s
    else
      start_year.to_s + '-' + end_year.to_s
    end
  end

  # Render a SCSS partial with code highlighting
  def render_scss(partial)
    html = ""
    html += "<pre><code class='language-scss'>"
    html += File.read("source/stylesheets/examples/_#{partial}.scss")
    html += "</code></pre>"
  end

  # Render a HTML partial with code highlighting
  def render_html

  end

  # Render a JS partial with code highlighting
  def render_js

  end
end

configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css
  # Minify Javascript on build
  activate :minify_javascript

  # Use relative URLs
  activate :relative_assets

  # Compress PNGs after build
  # First: gem install middleman-smusher
  require "middleman-smusher"
  # activate :smusher
end

