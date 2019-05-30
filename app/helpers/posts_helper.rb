module PostsHelper
  def author_select
    if @post.author.nil?
      f.select :author_id, options_from_collection_for_select(Author.all, :id, :name)
    else
      f.hidden_field :author_id
    end
  end
end
