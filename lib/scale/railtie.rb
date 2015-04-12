module Scale
  class Railtie < Rails::Railtie
    initializer "scale_railtie.configure_rails_initialization" do
      Mime::Type.register "image/svg+xml", :svg
    end
  end
end
