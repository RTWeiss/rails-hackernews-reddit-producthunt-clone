module ApplicationHelper

  def site_title_text
      ENV["SITE_TITLE"] || "Trnden | Discover Trending Startups"
  end

  def seo_title_text
      ENV["SEO_TITLE"] || "Trnden | Discover Trending Startups"
  end

  def link_to_list_item(name, link, options={})
    options = current_page?(link) ? {class: "active"} : {}
    content_tag :li, options do
      link_to name, link, options
    end

  end
end
