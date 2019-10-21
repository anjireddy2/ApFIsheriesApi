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

ActiveRecord::Schema.define(version: 2019_10_21_110655) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aqua_lab_equipments", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "aqua_lab_images", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "aqua_lab_incharges", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "aqua_lab_staffs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "aqua_labs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "banks", force: :cascade do |t|
    t.string "bank_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "boat_types", force: :cascade do |t|
    t.string "type_of_boat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "districts", force: :cascade do |t|
    t.integer "district_code"
    t.string "district_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "having_cluster"
  end

  create_table "fish_landing_centers", force: :cascade do |t|
    t.string "flc_name"
    t.bigint "village_id"
    t.bigint "mandal_id"
    t.bigint "district_id"
    t.string "longitude"
    t.string "latitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "panchayat_id"
    t.index ["district_id"], name: "index_fish_landing_centers_on_district_id"
    t.index ["mandal_id"], name: "index_fish_landing_centers_on_mandal_id"
    t.index ["village_id"], name: "index_fish_landing_centers_on_village_id"
  end

  create_table "fisherman_skills", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fresh_water_boundaries", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fresh_water_farms", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fresh_water_land_details", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inland_registrations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invalid_flcs", force: :cascade do |t|
    t.string "raised_exception"
    t.string "data_of_invalid_flc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invalid_vessels", force: :cascade do |t|
    t.string "raised_exception"
    t.string "data_of_invalid_vessel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invalid_water_bodies", force: :cascade do |t|
    t.string "raised_exception"
    t.string "data_of_invalid_water_body"
    t.string "district_name"
    t.string "mandal_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "land_categories", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mandals", force: :cascade do |t|
    t.bigint "district_id"
    t.integer "mandal_code"
    t.string "mandal_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["district_id"], name: "index_mandals_on_district_id"
  end

  create_table "panchayats", force: :cascade do |t|
    t.bigint "mandal_id"
    t.integer "panchayat_code"
    t.string "panchayat_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mandal_id"], name: "index_panchayats_on_mandal_id"
  end

  create_table "production_types", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regsitration_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relation_types", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "role_name"
    t.string "role_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seasonalities", force: :cascade do |t|
    t.string "seasonality_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "social_statuses", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "society_members", force: :cascade do |t|
    t.string "president_name"
    t.string "president_aadhar_no"
    t.string "president_mobile_no"
    t.string "president_ration_card_no"
    t.integer "president_social_status"
    t.string "president_caste_cert_no"
    t.datetime "president_date_of_birth"
    t.string "member_name"
    t.string "member_aadhaar_no"
    t.string "member_mobile_no"
    t.string "member_ration_card_no"
    t.string "member_social_status"
    t.string "member_caste_cert_no"
    t.datetime "member_date_of_birth"
    t.boolean "active_fisher_man"
    t.boolean "swimming"
    t.boolean "netting"
    t.boolean "net_sweing"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "society_registration_id"
    t.boolean "fish_vendor"
    t.boolean "is_president"
    t.string "member_emp_status"
    t.integer "age"
    t.string "gender"
    t.string "member_aadhaar_ref_id"
    t.integer "user_id"
  end

  create_table "society_registrations", force: :cascade do |t|
    t.bigint "district_id"
    t.bigint "mandal_id"
    t.bigint "village_id"
    t.bigint "panchayat_id"
    t.bigint "fish_landing_center_id"
    t.string "society_name"
    t.string "society_reg_no"
    t.boolean "ncdc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "aadhaar_ref_id"
    t.string "gender"
    t.boolean "is_promoter"
    t.datetime "date_of_birth"
    t.integer "age"
    t.integer "emp_status"
    t.integer "social_status"
    t.boolean "fish_vendor"
    t.index ["district_id"], name: "index_society_registrations_on_district_id"
    t.index ["fish_landing_center_id"], name: "index_society_registrations_on_fish_landing_center_id"
    t.index ["mandal_id"], name: "index_society_registrations_on_mandal_id"
    t.index ["panchayat_id"], name: "index_society_registrations_on_panchayat_id"
    t.index ["village_id"], name: "index_society_registrations_on_village_id"
  end

  create_table "society_vessels", force: :cascade do |t|
    t.bigint "society_registraion_id"
    t.bigint "vessel_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["society_registraion_id"], name: "index_society_vessels_on_society_registraion_id"
    t.index ["vessel_detail_id"], name: "index_society_vessels_on_vessel_detail_id"
  end

  create_table "tackels", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_details", force: :cascade do |t|
    t.bigint "registration_type_id"
    t.string "user_name"
    t.string "mobile_number"
    t.string "gender"
    t.datetime "date_of_birth"
    t.bigint "state_id"
    t.bigint "district_id"
    t.bigint "mandal_id"
    t.bigint "grama_panchayat_id"
    t.bigint "village_id"
    t.string "pincode"
    t.string "alternate_mobile_no"
    t.string "email"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["district_id"], name: "index_user_details_on_district_id"
    t.index ["grama_panchayat_id"], name: "index_user_details_on_grama_panchayat_id"
    t.index ["mandal_id"], name: "index_user_details_on_mandal_id"
    t.index ["registration_type_id"], name: "index_user_details_on_registration_type_id"
    t.index ["state_id"], name: "index_user_details_on_state_id"
    t.index ["user_id"], name: "index_user_details_on_user_id"
    t.index ["village_id"], name: "index_user_details_on_village_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "aadhaar_no"
    t.string "password"
    t.string "mobile_no"
    t.bigint "role_id"
    t.string "user_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  create_table "vessel_crew_members", force: :cascade do |t|
    t.bigint "vessel_detail_id"
    t.string "vessel_reg_no"
    t.string "member_aadhaar_id"
    t.string "member_aadhaar_ref_id"
    t.string "member_ration_card_number"
    t.string "member_name"
    t.string "memner_father_name"
    t.string "member_age"
    t.string "member_gender"
    t.string "job_title"
    t.string "member_mobile_number"
    t.string "member_social_status"
    t.string "member_mfid"
    t.string "bank_account_number"
    t.string "bank_ifsc"
    t.string "bank_name"
    t.string "branch_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "member_email"
    t.datetime "member_date_of_birth"
    t.string "member_employement_status"
    t.string "gender"
    t.integer "user_id"
    t.index ["vessel_detail_id"], name: "index_vessel_crew_members_on_vessel_detail_id"
  end

  create_table "vessel_details", force: :cascade do |t|
    t.bigint "district_id"
    t.bigint "mandal_id"
    t.bigint "fish_landing_center_id"
    t.bigint "user_id"
    t.string "owner_id"
    t.string "owner_name"
    t.string "boat_id"
    t.string "boat_type"
    t.datetime "license_renewed_date"
    t.datetime "license_valid_upto"
    t.string "father_name"
    t.string "aadhaar_no"
    t.bigint "mobile_number"
    t.string "bank_account_number"
    t.string "ration_card_number"
    t.string "ifsc_code"
    t.string "mfid_number"
    t.string "bank_details"
    t.string "email_id"
    t.boolean "deleted"
    t.string "creation_level"
    t.string "is_eligible"
    t.integer "rejection_reason_id"
    t.string "comment"
    t.integer "gill_net_count"
    t.integer "drag_net_count"
    t.integer "cast_net_count"
    t.integer "trawl_net_count"
    t.integer "life_bouys_count"
    t.integer "dat_count"
    t.integer "gps_count"
    t.integer "fish_finder_count"
    t.integer "echo_sounder_count"
    t.string "vessel_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "member_aadhaar_ref_id"
    t.index ["district_id"], name: "index_vessel_details_on_district_id"
    t.index ["fish_landing_center_id"], name: "index_vessel_details_on_fish_landing_center_id"
    t.index ["mandal_id"], name: "index_vessel_details_on_mandal_id"
    t.index ["user_id"], name: "index_vessel_details_on_user_id"
  end

  create_table "vessel_users", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "vessel_detail_id"
    t.text "data_before_save"
    t.text "data_after_save"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_vessel_users_on_user_id"
    t.index ["vessel_detail_id"], name: "index_vessel_users_on_vessel_detail_id"
  end

  create_table "villages", force: :cascade do |t|
    t.bigint "mandal_id"
    t.string "village_code"
    t.string "village_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mandal_id"], name: "index_villages_on_mandal_id"
  end

  create_table "water_bodies", force: :cascade do |t|
    t.bigint "district_id"
    t.bigint "mandal_id"
    t.bigint "village_id"
    t.string "water_body_name"
    t.bigint "water_body_cluster_id"
    t.bigint "panchayat_id"
    t.string "village_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["district_id"], name: "index_water_bodies_on_district_id"
    t.index ["mandal_id"], name: "index_water_bodies_on_mandal_id"
    t.index ["panchayat_id"], name: "index_water_bodies_on_panchayat_id"
    t.index ["village_id"], name: "index_water_bodies_on_village_id"
    t.index ["water_body_cluster_id"], name: "index_water_bodies_on_water_body_cluster_id"
  end

  create_table "water_body_clusters", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "district_id"
    t.string "cluster_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["district_id"], name: "index_water_body_clusters_on_district_id"
    t.index ["user_id"], name: "index_water_body_clusters_on_user_id"
  end

  create_table "water_body_details", force: :cascade do |t|
    t.bigint "water_body_id"
    t.bigint "seasonality_id"
    t.bigint "water_body_type_id"
    t.bigint "water_body_ownership_id"
    t.string "twsa"
    t.string "ewsa"
    t.string "required_fingarling"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["seasonality_id"], name: "index_water_body_details_on_seasonality_id"
    t.index ["water_body_id"], name: "index_water_body_details_on_water_body_id"
    t.index ["water_body_ownership_id"], name: "index_water_body_details_on_water_body_ownership_id"
    t.index ["water_body_type_id"], name: "index_water_body_details_on_water_body_type_id"
  end

  create_table "water_body_ownerships", force: :cascade do |t|
    t.string "type_of_ownership"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "water_body_types", force: :cascade do |t|
    t.string "type_of_water_body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "water_sources", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
