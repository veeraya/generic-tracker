task :scrape => :environment do
    require 'nokogiri'
    require 'open-uri'
    require 'json'

    Page.all.each do |p|
      source = Nokogiri::HTML(open(p.url)).to_s

      if !p.source || p.source.empty?
        p.source = source
      elsif p.source != source
        binding.pry
        p.source = source
        UserMailer.notification_email(p).deliver
      end

    end
end
