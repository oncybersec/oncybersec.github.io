Jekyll::Hooks.register :posts, :post_write do |post|
    all_existing_tags = Dir.entries("tags")
      .map { |t| t.match(/(.*).md/) }
      .compact.map { |m| m[1] }

    tags = post['tags'].reject { |t| t.empty? }
    tags.each do |tag|
      tag_file = tag.gsub(" ", "_")
      generate_tag_file(tag, tag_file) if !all_existing_tags.include?(tag_file)
    end
  end
  
  def generate_tag_file(tag, tag_file)    
    File.open("tags/#{tag_file}.md", "wb") do |file|
      file << "---\nlayout: tags\ntag-name: #{tag}\n---\n"
    end
  end
