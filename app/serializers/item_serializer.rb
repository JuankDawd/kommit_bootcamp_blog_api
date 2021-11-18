class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :done

  belongs_to :todos

  def comments_by_me
    Comments.where(user_id: instance_options[:user_id], post_id: object.id)
  end
end
