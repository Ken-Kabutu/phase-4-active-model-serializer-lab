class PostSerializer < ActiveModel::Serializer
  attributes :title, :content, :author_name, :tags, :short_content

  def author_name
    object.author.name
  end

  def tags
    object.tags.pluck(:name)
  end

  def short_content
    "#{object.content[0..39]}"
  end

end
