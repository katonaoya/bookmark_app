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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_211_024_070_058) do
  create_table 'mybooks', force: :cascade do |t|
    t.string 'title', null: false
    t.string 'memo'
    t.integer 'page', null: false
    t.text 'feedback'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'records', force: :cascade do |t|
    t.integer 'readed_page', null: false
    t.text 'comment'
    t.integer 'mybook_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['mybook_id'], name: 'index_records_on_mybook_id'
  end
end
