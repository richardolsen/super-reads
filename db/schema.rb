# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131107185301) do

  create_table "author_genres", :force => true do |t|
    t.integer  "author_id",  :null => false
    t.integer  "genre_id",   :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "author_genres", ["author_id", "genre_id"], :name => "index_author_genres_on_author_id_and_genre_id", :unique => true
  add_index "author_genres", ["author_id"], :name => "index_author_genres_on_author_id"
  add_index "author_genres", ["genre_id"], :name => "index_author_genres_on_genre_id"

  create_table "authors", :force => true do |t|
    t.string   "name",       :null => false
    t.date     "birthday"
    t.string   "gender"
    t.string   "website"
    t.text     "bio"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "authors", ["name"], :name => "index_authors_on_name"

  create_table "comments", :force => true do |t|
    t.integer  "user_id",           :null => false
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.integer  "parent_comment_id"
    t.string   "title"
    t.text     "body"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "comments", ["commentable_id"], :name => "index_comments_on_commentable_id"
  add_index "comments", ["parent_comment_id"], :name => "index_comments_on_parent_comment_id"
  add_index "comments", ["user_id"], :name => "index_comments_on_user_id"

  create_table "friendings", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.integer  "friend_id",  :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "friendings", ["friend_id"], :name => "index_friendings_on_friend_id"
  add_index "friendings", ["user_id", "friend_id"], :name => "index_friendings_on_user_id_and_friend_id", :unique => true
  add_index "friendings", ["user_id"], :name => "index_friendings_on_user_id"

  create_table "genres", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "genres", ["name"], :name => "index_genres_on_name"

  create_table "publishers", :force => true do |t|
    t.string   "name",       :null => false
    t.string   "city"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ratings", :force => true do |t|
    t.integer  "user_id",                   :null => false
    t.integer  "text_id",                   :null => false
    t.integer  "rating",     :default => 5, :null => false
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "ratings", ["text_id"], :name => "index_ratings_on_text_id"
  add_index "ratings", ["user_id", "text_id"], :name => "index_ratings_on_user_id_and_text_id", :unique => true
  add_index "ratings", ["user_id"], :name => "index_ratings_on_user_id"

  create_table "reviews", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.integer  "text_id",    :null => false
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "reviews", ["text_id"], :name => "index_reviews_on_text_id"
  add_index "reviews", ["user_id"], :name => "index_reviews_on_user_id"

  create_table "text_authors", :force => true do |t|
    t.integer  "text_id",    :null => false
    t.integer  "author_id",  :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "text_authors", ["author_id"], :name => "index_text_authors_on_author_id"
  add_index "text_authors", ["text_id", "author_id"], :name => "index_text_authors_on_text_id_and_author_id", :unique => true
  add_index "text_authors", ["text_id"], :name => "index_text_authors_on_text_id"

  create_table "text_genres", :force => true do |t|
    t.integer  "text_id",    :null => false
    t.integer  "genre_id",   :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "text_genres", ["genre_id"], :name => "index_text_genres_on_genre_id"
  add_index "text_genres", ["text_id", "genre_id"], :name => "index_text_genres_on_text_id_and_genre_id", :unique => true
  add_index "text_genres", ["text_id"], :name => "index_text_genres_on_text_id"

  create_table "text_states", :force => true do |t|
    t.integer  "text_id",    :null => false
    t.integer  "user_id",    :null => false
    t.string   "state"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "text_states", ["text_id", "user_id"], :name => "index_text_states_on_text_id_and_user_id", :unique => true
  add_index "text_states", ["text_id"], :name => "index_text_states_on_text_id"
  add_index "text_states", ["user_id"], :name => "index_text_states_on_user_id"

  create_table "texts", :force => true do |t|
    t.string   "title",          :null => false
    t.text     "description"
    t.integer  "publisher_id",   :null => false
    t.date     "published_date"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "texts", ["publisher_id"], :name => "index_texts_on_publisher_id"
  add_index "texts", ["title"], :name => "index_texts_on_title"

  create_table "users", :force => true do |t|
    t.string   "username",        :null => false
    t.string   "password_digest", :null => false
    t.string   "session_token",   :null => false
    t.string   "firstname",       :null => false
    t.string   "lastname",        :null => false
    t.string   "email",           :null => false
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.date     "birthdate"
    t.string   "gender"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["username"], :name => "index_users_on_username", :unique => true

end
