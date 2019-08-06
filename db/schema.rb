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

ActiveRecord::Schema.define(version: 2019_08_06_200840) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.integer "old_address_id"
    t.string "line_1"
    t.string "line_2"
    t.string "city"
    t.string "state"
    t.string "zipcode"
    t.string "country"
    t.string "addressable_type"
    t.bigint "addressable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["addressable_type", "addressable_id"], name: "index_addresses_on_addressable_type_and_addressable_id"
  end

  create_table "buildings", force: :cascade do |t|
    t.string "description"
    t.string "location"
    t.string "architect"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "website"
    t.boolean "status"
    t.integer "created_by"
    t.boolean "deleted"
    t.string "library_dir"
    t.integer "sec_terr"
    t.integer "old_company_id"
    t.integer "old_address_id"
    t.integer "old_legacy_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "title"
    t.string "department"
    t.integer "sec_terr"
    t.integer "old_contact_id"
    t.integer "old_address_id"
    t.integer "old_company_id"
    t.integer "old_legacy_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "emails", force: :cascade do |t|
    t.string "email_address"
    t.string "email_type"
    t.integer "old_email_link_id"
    t.integer "old_email_intforeignid"
    t.integer "old_email_intid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "email_deleted"
  end

  create_table "employees", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "title"
    t.string "department"
    t.integer "old_employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "opportunities", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phones", force: :cascade do |t|
    t.integer "old_phone_id"
    t.string "phone_type"
    t.string "phone_country_code"
    t.string "phone_area_code"
    t.string "phone_num"
    t.string "phone_ext"
    t.string "phone_initid"
    t.string "phone_foreign_id"
    t.string "phonable_type"
    t.bigint "phonable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["phonable_type", "phonable_id"], name: "index_phones_on_phonable_type_and_phonable_id"
  end

  create_table "project_contacts", force: :cascade do |t|
    t.integer "project_id"
    t.integer "contact_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "PQ_worksheet_1"
    t.string "PQ_worksheet_1_note"
    t.string "invoice"
    t.string "invoice_note"
    t.string "scout_image_sent"
    t.date "scout_image_sent_date"
    t.string "prelims_sent"
    t.date "prelims_sent_date"
    t.string "finals_delivered"
    t.date "finals_delivered_date"
    t.string "shoot_sheet_recv"
    t.date "shoot_sheet_recv_date"
    t.date "image_order"
    t.string "image_order_notes"
    t.string "participant_info_name"
    t.string "participant_info_notes"
    t.string "other_notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "old_project_id"
    t.integer "old_contact_id"
    t.integer "old_company_id"
    t.integer "old_employee_id"
    t.integer "old_created_by_id"
    t.integer "old_additionalusage"
    t.integer "old_secterr"
    t.integer "old_legacy_id"
    t.string "job_num"
    t.string "project_type"
    t.datetime "old_final_date"
    t.string "status"
    t.string "stage"
    t.integer "client_id"
    t.integer "contact_id"
    t.integer "employee_id"
    t.integer "building_id"
  end

end
