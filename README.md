* user_tags
    belongs_to :user
    belongs_to :image
    belongs_to :owner, class_name :user, foreign_key :owner_id

* categories_tags
    has_many :images

* image_model
    belongs_to :user
    has_many :tagged_users, class_name: users, through :user_tags

* user_model
    has_many :tagged_photos, class_name :photos, through :user_tags

* create user_tags
* create category_tags
* set_up associations
* test in the console

* user_tag form
  * select user
  * get the image
  * manage uniqueness
