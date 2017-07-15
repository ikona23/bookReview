class Book < ActiveRecord::Base
  belongs_to :user
  belongs_to :category

  class User < ActiveRecord::Base
    has_attached_file :book_img, styles: { :book_index => "250x350>", :book_shop => "325x350>" }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :book_img, content_type: /\Aimage\/.*\z/
  end
end
