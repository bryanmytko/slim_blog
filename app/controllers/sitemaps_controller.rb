class SitemapsController < ApplicationController
  def show
    # Redirect to CloudFront and S3
    redirect_to "http://d29vt9erfclfk0.cloudfront.net/sitemaps/sitemap.xml.gz"
  end
end
