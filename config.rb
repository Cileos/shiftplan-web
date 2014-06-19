activate :livereload
activate :i18n, path: "/:locale/", mount_at_root: false

set :css_dir, 'css'
set :js_dir, 'js'
set :images_dir, 'images'

compass_config do |config|
	config.add_import_path "./components"
end

after_configuration do
	@bower_config = JSON.parse(IO.read("#{root}/.bowerrc"))
	sprockets.append_path File.join "#{root}", @bower_config["directory"]
end

configure :build do
	activate :minify_css
	activate :minify_javascript
	activate :relative_assets
end

helpers do

  def path_without_locale
    # Assuming /:locale/page.html
    if @page_id
      @page_id.split("/", 2).last.sub(/\..*$/, '')
    end
  end

end
