# ------------------------------------------------------------------------------
# Compass

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end


# ------------------------------------------------------------------------------
# Layouts

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end


# ------------------------------------------------------------------------------
# Proxy

# Proxy pages (https://middlemanapp.com/advanced/dynamic_pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }


# ------------------------------------------------------------------------------
# Images

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes


# ------------------------------------------------------------------------------
# Paths

set :css_dir, "stylesheets"
set :js_dir, "javascripts"
set :images_dir, "images"


# ------------------------------------------------------------------------------
# URLs

# Pretty URLs - https://middlemanapp.com/advanced/pretty_urls/

activate :directory_indexes


# ------------------------------------------------------------------------------
# Development

configure :development do

  # LiveReload
  activate :livereload

end


# ------------------------------------------------------------------------------
# Build

configure :build do

  # Minify CSS
  activate :minify_css

  # Minify HTML
  activate :minify_html

  # Minify Javascript
  activate :minify_javascript

  # Optimize Images
  activate :imageoptim do |options|
    options.pngout = false
  end

  # Enable cache buster
  activate :asset_hash

  # gzip
  activate :gzip

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"

end
