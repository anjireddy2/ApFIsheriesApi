# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

require 'HTTParty'
require 'Nokogiri'
require 'roo'
#    RegsitrationType.create :name => "Aqua Lab"
#    RegsitrationType.create :name => "Aquaculture Fresh Water Farm"
#    RegsitrationType.create :name => "Inland Fisherman"
#    RegsitrationType.create :name => "Inland Fisherwoman"
#    RegsitrationType.create :name => "Inland Fishermen Society"
#    RegsitrationType.create :name => "Inland Fisherwomen Society"
#    RegsitrationType.create :name => "Marine Crew"
#    RegsitrationType.create :name => "Marine Fishermen Society"
#    RegsitrationType.create :name => "Marine Fisherwomen Society"
#    RegsitrationType.create :name => "Marine Vessel Registration"


#    Role.create :role_name => "fdo", :role_description => "Fisheries Department "
#    Role.create :role_name => "adf", :role_description => "Fisheries Department "
#    Role.create :role_name => "dd", :role_description => "Fisheries Department "
#    Role.create :role_name => "dfo", :role_description => "Fisheries Department"
#    Role.create :role_name => "addt_director", :role_description => "Fisheries Department Officer"
#    Role.create :role_name => "commissioner", :role_description => "Fisheries Department Officer"
#    Role.create :role_name => "mro", :role_description => "Mandal Revenue Officer"
#    Role.create :role_name => "svvu", :role_description => "Sri Venkateswara Veterinary University "
#    Role.create :role_name => "ciba", :role_description => "Central Institute of Brackishwater Aquaculture"
#    Role.create :role_name => "NaCSA", :role_description => "National Centre for Sustainable Aquaculture "
#    Role.create :role_name => "SIFT", :role_description => "State Institute Of Fisheries Technology"
#    Role.create :role_name => "man_user", :role_description => "Fisher Man"
#    Role.create :role_name => "woman_user", :role_description => "Fisher Woman"
#    Role.create :role_name => "FM", :role_description => ""
#    Role.create :role_name => "AIF", :role_description => ""
#    Role.create :role_name => "MPEAF", :role_description => ""

   # FisherManRole.create :role_name => "President"
   # FisherManRole.create :role_name => "Secratary"
   # FisherManRole.create :role_name => "Treasury"
   # FisherManRole.create :role_name => "Member"


#    User.create :aadhaar_no => "123456789871", :password => "admin", :role_id => 13,:mobile_no => "9985324862"
#    User.create :aadhaar_no => "123456789872", :password => "fdo", :role_id => 2,:mobile_no => "9985324861"
#    User.create :aadhaar_no => "123456789873", :password => "adf", :role_id => 3,:mobile_no => "9985324860"
#    User.create :aadhaar_no => "123456789874", :password => "dd", :role_id => 4,:mobile_no => "9985324863"
#    User.create :aadhaar_no => "123456789875", :password => "dfo", :role_id => 5,:mobile_no => "9985324864"
#    User.create :aadhaar_no => "123456789876", :password => "add_drct", :role_id => 6,:mobile_no => "9985324865"
#    User.create :aadhaar_no => "123456789877", :password => "commisioner", :role_id => 7,:mobile_no => "9985324866"
#    User.create :aadhaar_no => "123456789878", :password => "MRO", :role_id => 8,:mobile_no => "9985324867"
#    User.create :aadhaar_no => "123456789879", :password => "SVVU", :role_id => 9,:mobile_no => "9985324868"
#    User.create :aadhaar_no => "123456789880", :password => "CIBA", :role_id => 10,:mobile_no => "9985324869"
#    User.create :aadhaar_no => "123456789881", :password => "NaCSA", :role_id => 11,:mobile_no => "9985324870"
#    User.create :aadhaar_no => "123456789882", :password => "SIFT", :role_id => 12,:mobile_no => "9985324871"
#    User.create :aadhaar_no => "123456789883", :password => "man_user", :role_id => 13,:mobile_no => "9985324872"
#    User.create :aadhaar_no => "123456789884", :password => "woman_user", :role_id => 14,:mobile_no => "9985324873"

  
   
# User.create :user_name => "Kaviti", :password => "default@123", :role_id => 1
# User.create :user_name => "Ichapuram", :password => "default@123", :role_id => 1
# User.create :user_name => "Sompeta", :password => "default@123", :role_id => 1
# User.create :user_name => "Kasibugga", :password => "default@123", :role_id => 1
# User.create :user_name => "Tekkali", :password => "default@123", :role_id => 1
# User.create :user_name => "Kalingapatnam", :password => "default@123", :role_id => 1
# User.create :user_name => "Etcherla", :password => "default@123", :role_id => 1
# User.create :user_name => "Ranasthalam", :password => "default@123", :role_id => 1
# User.create :user_name => "Bhogapuram", :password => "default@123", :role_id => 1
# User.create :user_name => "Bheemili", :password => "default@123", :role_id => 1

# User.create :user_name => "FDO-CMU-1", :password => "default@123", :role_id => 1
# User.create :user_name => "Visakhapatnam", :password => "default@123", :role_id => 1
# User.create :user_name => "Atchuthapuram", :password => "default@123", :role_id => 1
# User.create :user_name => "Nakkapalli", :password => "default@123", :role_id => 1
# User.create :user_name => "Tuni", :password => "default@123", :role_id => 1
# User.create :user_name => "Uppada", :password => "default@123", :role_id => 1
# User.create :user_name => "FDO Fishing Harbour Kakinada", :password => "default@123", :role_id => 1
# User.create :user_name => "Kakinada", :password => "default@123", :role_id => 1
# User.create :user_name => "Thallarevu", :password => "default@123", :role_id => 1
# User.create :user_name => "Katrenikona", :password => "default@123", :role_id => 1

# User.create :user_name => "Uppalaguptam", :password => "default@123", :role_id => 1
# User.create :user_name => "Allavaram", :password => "default@123", :role_id => 1
# User.create :user_name => "Razole", :password => "default@123", :role_id => 1
# User.create :user_name => "Mogalthuru", :password => "default@123", :role_id => 1
# User.create :user_name => "Narsapurm", :password => "default@123", :role_id => 1
# User.create :user_name => "Kruthivennu", :password => "default@123", :role_id => 1
# User.create :user_name => "FDO Fishing Harbour Machilipatnam", :password => "default@123", :role_id => 1
# User.create :user_name => "Machilipatnam", :password => "default@123", :role_id => 1
# User.create :user_name => "Avanigadda", :password => "default@123", :role_id => 1
# User.create :user_name => "Koduru", :password => "default@123", :role_id => 1

# User.create :user_name => "Repalle", :password => "default@123", :role_id => 1
# User.create :user_name => "Nizampatnam FDO-1", :password => "default@123", :role_id => 1
# User.create :user_name => "Nizampatnam FDO-2", :password => "default@123", :role_id => 1
# User.create :user_name => "Bapatala", :password => "default@123", :role_id => 1
# User.create :user_name => "Ongole", :password => "default@123", :role_id => 1
# User.create :user_name => "Tangutur", :password => "default@123", :role_id => 1
# User.create :user_name => "Singarayakonda", :password => "default@123", :role_id => 1
# User.create :user_name => "Karamchedu", :password => "default@123", :role_id => 1
# User.create :user_name => "Kavali", :password => "default@123", :role_id => 1
# User.create :user_name => "Padugupadu", :password => "default@123", :role_id => 1

# User.create :user_name => "Indukurpeta", :password => "default@123", :role_id => 1
# User.create :user_name => "T.P. Gudur", :password => "default@123", :role_id => 1
# User.create :user_name => "Nellore", :password => "default@123", :role_id => 1
# User.create :user_name => "Kota", :password => "default@123", :role_id => 1
# User.create :user_name => "Chillakur", :password => "default@123", :role_id => 1
# User.create :user_name => "Tada", :password => "default@123", :role_id => 1
# User.create :user_name => "epa_admin", :password => "default@123", :role_id => 1
# User.create :user_name => "Marine_HO", :password => "default@123", :role_id => 1
#    Seasonality.create :seasonality_type => "SS"
#    Seasonality.create :seasonality_type => "LS"

#    WaterBodyType.create :type_of_water_body => "GP"
#    WaterBodyType.create :type_of_water_body => "MI"
#    WaterBodyType.create :type_of_water_body => "Reservoir"

#    WaterBodyOwnership.create :type_of_ownership => "Lease"
#    WaterBodyOwnership.create :type_of_ownership => "License"
#    WaterBodyOwnership.create :type_of_ownership => "Auction"

# puts "Migrating Seed data for Districts"
# csv_text = File.read(Rails.public_path+'districts.csv')
# csv = CSV.parse(csv_text, :headers => false)
# csv.each do |row|
#    District.create :district_code => row[0],:district_name => row[1]
#    puts "District Name  " + row[1]
# end

# puts "District data is migrated successfully"

# puts "Migrating Seed data for Mandals"
# csv_text = File.read(Rails.public_path+'mandals.csv')
# csv = CSV.parse(csv_text, :headers => false)
# csv.each do |row|
#    Mandal.create :district_id => row[0],:mandal_code => row[1], :mandal_name => row[2].humanize
#    puts "Mandal Name  "  + row[2]
# end

# # # # puts "Mandal data is migrated successfully"



# puts "Migrating Seed data for Panchayats"
# csv_text = File.read(Rails.public_path+'panchayats.csv')
# csv = CSV.parse(csv_text, :headers => false)
# csv.each do |row|
#    Panchayat.create :mandal_id => row[0],:panchayat_code => row[1], :panchayat_name => row[2].humanize
#    puts "Panchayat Name  " + row[2]
# end


# # puts "Panchayat data is migrated successfully"

# puts "Migrating Seed data for Villages"
# csv_text = File.read(Rails.public_path+'villages.csv')
# csv = CSV.parse(csv_text, :headers => false)
# csv.each do |row|
#    Village.create :mandal_id => row[0],:village_code => row[1], :village_name => row[2].humanize
#    puts "Village Name  " + row[2]
# end

# # puts "Villages data is migrated successfully"


# puts "Adding Water Body Clusters Data"

# csv_text = File.read(Rails.public_path+'WaterBody_DB/WaterBodyDetails.csv')
# csv = CSV.parse(csv_text, :headers => false)
# csv.each do |row|
#    usr = User.create :mobile_no => row[3],:role_id => row[4],:password => "default@123"
#    UserDetail.create :user_id => usr.id,:user_name => row[2],:mobile_number => usr.mobile_no,:alternate_mobile_no => usr.mobile_no
#    dist = District.where(:district_name => row[0]).first
#    puts dist.id
#    clstr = WaterBodyCluster.create :user_id => usr.id,:district_id => dist.id,:cluster_name => row[1]
   
# end

# puts "End of Cluster Creation"


# puts "Water Body Creation"




# csv_text = File.read(Rails.public_path+'WaterBody_DB/WaterBodies.csv', :encoding => 'ISO-8859-1')
# csv = CSV.parse(csv_text, :headers => false)
# csv.each do |row|
#    begin
       
#        mandal = Mandal.where(:mandal_name => row[0].strip.humanize).first
#        village = Village.where(:village_name => row[1].strip.humanize).first unless mandal.blank?
#        panchayat = Panchayat.where(:panchayat_name => row[1].strip.humanize).first unless mandal.blank?
#        seasonality = Seasonality.where(:seasonality_type => row[3].strip).first
#        wtr_bdy_typ = WaterBodyType.where(:type_of_water_body => row[4].strip).first
#        ownr_shp = WaterBodyOwnership.where(:type_of_ownership => row[5].strip).first

#        wtr_bdy = WaterBody.new :district_id => mandal.district.id,:mandal_id => mandal.id,:water_body_name => row[2],:water_body_cluster_id => row[8].strip,:village_name => row[1]
#        wtr_bdy.village_id = village.id unless village.blank?
#        wtr_bdy.panchayat_id = panchayat.id unless panchayat.blank?
#        wtr_bdy.save!
#        puts "Water Body Name  " + wtr_bdy.water_body_name
#        wtr_bdy_dtl = WaterBodyDetail.new :water_body_id => wtr_bdy.id,:seasonality_id => seasonality.id,:water_body_ownership_id => ownr_shp.id,:twsa => row[6].strip,:ewsa => row[7].strip,:required_fingarling => row[9],:water_body_type_id => wtr_bdy_typ.id
#        wtr_bdy_dtl.save!
#    rescue StandardError => e
#       mandal = Mandal.where(:mandal_name => row[0].strip.humanize).first
#        InvalidWaterBody.create :raised_exception => e.message,:data_of_invalid_water_body => row
# puts "Invalid Water Body   " + row[2].to_s
#    end
# end

# # puts "End of Water Body creation"

# # file = Rails.public_path+"water_body.csv"

# # waterbodies = WaterBody.all

# # column_headers = ["District Code","District Name","Mandal Code","Mandal Name","Panchayat Code","Panchayat Name" ,"Village Code","Village Name","Water Body Name","SS/LS/Resarvior","Ownership","Lease/Auction","TWSA","EWSA","Cluster Name"]

# # CSV.open(file, 'w', write_headers: true, headers: column_headers) do |writer|
# #  waterbodies.each do |wtr_bdy|
# # #    writer = []
# #      puts wtr_bdy.water_body_name.inspect
# #      writer << [wtr_bdy.mandal.district.district_code,wtr_bdy.mandal.district.district_name,wtr_bdy.mandal.mandal_code,wtr_bdy.mandal.mandal_name,wtr_bdy.panchayat.blank? ? "" : wtr_bdy.panchayat.panchayat_code,wtr_bdy.panchayat.blank? ? "" : wtr_bdy.panchayat.panchayat_name,wtr_bdy.village.blank? ? "" : wtr_bdy.village.village_code,wtr_bdy.village.blank? ? "" : wtr_bdy.village.village_name,wtr_bdy.water_body_name,wtr_bdy.water_body_detail.blank? ? "" : (wtr_bdy.water_body_detail.seasonality.blank? ? "" : wtr_bdy.water_body_detail.seasonality.seasonality_type),wtr_bdy.water_body_detail.blank? ? "" : (wtr_bdy.water_body_detail.water_body_type.blank? ? "" : wtr_bdy.water_body_detail.water_body_type.type_of_water_body),wtr_bdy.water_body_detail.blank? ? "" : (wtr_bdy.water_body_detail.water_body_ownership.blank? ? "" : wtr_bdy.water_body_detail.water_body_ownership.type_of_ownership),wtr_bdy.water_body_detail.blank? ? "" : wtr_bdy.water_body_detail.twsa,wtr_bdy.water_body_detail.blank? ? "" : wtr_bdy.water_body_detail.ewsa,wtr_bdy.water_body_cluster.blank? ? "" : wtr_bdy.water_body_cluster.cluster_name]

# #  end
# # end



# # file = Rails.public_path+"in_valid_water_body.csv"

# # in_waterbodies = InValidWaterBody.all

# # column_headers = ["Exception Reason","Data","District Name","Mandal Name","Village Name"]

# # CSV.open(file, 'w', write_headers: true, headers: column_headers) do |writer|
# #  in_waterbodies.each do |wtr_bdy|
# # #    writer = []
# # #      puts wtr_bdy.water_body_name.inspect
# #      writer << [wtr_bdy.raised_exception,wtr_bdy.data_of_invalid_water_body,wtr_bdy.district_name,wtr_bdy.mandal_name,wtr_bdy.district_name]

# #  end
# # # end


# puts "FLC Creation"

# csv_text = File.read(Rails.public_path+'FishLandingCenters/fish_landing_centers.csv', :encoding => 'ISO-8859-1')
# csv = CSV.parse(csv_text, :headers => false)
# csv.each do |row|
#    begin
# #        usr = User.new(:aadhaar_no => row[13],:password => "default@123",:mobile_no => row[14])
# #        usr.save!
#        flc = FishLandingCenter.new(:district_id => row[19],
#                                     :mandal_id => row[18],
#                                     :flc_name => row[0],
#                                     :district => row[1],
#                                     :mandal => row[2],
#                                     :longitude => row[4],
#                                     :latitude => row[5],
#                                     :last_modified_dt => DateTime.now,
#                                     :last_modified_by => 1,
#                                     :created_at => DateTime.now,
#                                     :updated_at => DateTime.now,
#                                     :is_flc_active => true,
#                                     :district_code => row[11],
#                                     :mandal_code => row[12],
#                                     :area_of_operation_code => row[13],
#                                     :village => row[14],
#                                     :village_code => row[15],
#                                     :panchayat => row[16],
#                                     :panchayat_code => row[17],
#                                     :area_of_operation => row[3])
#        flc.save!
#        puts "FLC with Name " + row[0] + " Is Created"
#    rescue StandardError => e
#        puts e.message.inspect
#        InvalidFlc.create :raised_exception => e.message,:data_of_invalid_flc => row
# puts "Invalid FLC   " + row[2].to_s
#    end
# end

# puts "Vessel Details Creation"

# csv_text = File.read(Rails.public_path+'VesselInfo/latest_boat_owner_data.csv', :encoding => 'ISO-8859-1')
# csv = CSV.parse(csv_text, :headers => false)
# csv.each do |row|
#    begin
       
#        vsl_data = JSON.parse(row[5])
     
#        fth_nm = vsl_data[0]["fatherName"]
      
#        adhr_no = vsl_data[0]["aadharNumber"]
      
#        mob_no = vsl_data[0]["mobileNumber"]
     
#        rat_no = vsl_data[0]["rationCardNumber"]
      
#        usr = User.new(:aadhaar_no => adhr_no,:password => "default@123",:mobile_no => mob_no)
#        usr.save
#        flc = FishLandingCenter.where(:flc_name => row[3].humanize).first
#        vsl = VesselDetail.new :district_id => row[0],:mandal_id => row[1],:fish_landing_center_id => flc.id,:user_id => usr.id,
#                                :owner_id => row[4],:owner_name => row[6],:boat_id => row[7],:boat_type => row[10],
#                                :license_renewed_date => row[11],:license_valid_upto => row[12],:father_name => fth_nm,
#                                :aadhaar_no => adhr_no,:mobile_number => mob_no,:bank_account_number => row[16],:ration_card_number => rat_no,:ifsc_code => row[18],:mfid_number => row[19],
#                                :bank_details => row[20],:email_id => row[21],:deleted => row[22],:creation_level => row[25],:is_eligible => row[26],:rejection_reason_id => row[27],:comment => row[28]
#        vsl.save!
#        puts "Vessel with ID " + vsl.boat_id + " Is Created"
#    rescue StandardError => e
#        puts e.message.inspect
#        InvalidVessel.create :raised_exception => e.message,:data_of_invalid_vessel => row
# puts "Invalid Vessel   " + row[2].to_s
#    end
# end




# file = Rails.public_path+"Newly_Added_Vessels_after_09-11-2019.csv"

# vsl_dtls = VesselDetail.where("created_at > '2019-11-09'")

# column_headers = ["District Name", "Mandal Name","FLC Name","Vessel Reg No",
#                     "Vessel Type", "Vessel Name","Licence Renewal Date","Licence Valid Upto",
#                     "MFID number","Owner Name","Aadhaar Ref No","Ration Card Number","Father Name","Mobile Number",
#                     "Bank Account Number","IFSC Code","Bank Name","Email id",
#                     "Gill net count","Drag net count","Cast net count","Trawl net count","Life buoys count",
#                     "DAT count","GPS count","Fish finder count","Echo sounder count"]

# CSV.open(file, 'w', write_headers: true, headers: column_headers) do |writer|

#    vsl_dtls.each do |vsl|
#       boat_type = ""
#       if vsl.boat_type == 1
#          boat_type ="Motarized"
#       else
#          boat_type = "Mechanized"
#       end
#       puts vsl.boat_id
#       writer << [vsl.district.district_name, 
#                  vsl.mandal.mandal_name,
#                  vsl.fish_landing_center.flc_name,
#                  vsl.boat_id,
#                  boat_type,
#                  vsl.vessel_name,
#                  vsl.license_renewed_date,
#                  vsl.license_valid_upto,
#                  vsl.mfid_number,
#                  vsl.owner_name,
#                  vsl.member_aadhaar_ref_id,
#                  vsl.ration_card_number,
#                  vsl.father_name,
#                  vsl.mobile_number,
#                  vsl.bank_account_number,
#                  vsl.ifsc_code,vsl.bank_details,
#                  vsl.email_id,
#                  vsl.gill_net_count,
#                  vsl.drag_net_count,
#                  vsl.cast_net_count,
#                  vsl.trawl_net_count,
#                  vsl.life_bouys_count,
#                  vsl.dat_count,
#                  vsl.gps_count,
#                  vsl.fish_finder_count,
#                  vsl.echo_sounder_count]
#  end
# end




# csv_text = File.read(Rails.public_path+'FishLandingCenters/flc_data.csv', :encoding => 'ISO-8859-1')
# csv = CSV.parse(csv_text, :headers => false)
# csv.each do |row|
#    begin
#     puts "Valid FLC   " + row.to_s
#        mandal = Mandal.where(:mandal_name => row[2].strip.humanize).first
#    puts "Mandal   " + mandal.mandal_name
#        village = Village.where(:village_name => row[3].strip.humanize).first unless village.blank?
#    puts "village   " #+ village.id unless village.blank?
#        dist = District.where(:district_name => row[1].strip.humanize).first unless dist.blank?
#    puts "District   " #+ dist.id  unless dist.blank?
#        panchayat = Panchayat.where(:panchayat_name => row[3].strip.humanize).first unless panchayat.blank?
#    puts "panchayat   " #+ panchayat.id unless panchayat.blank?
#        flc = FishLandingCenter.new :district_id => dist.id,:flc_name => row[0],:longitude => row[5],:latitude => row[4]
#        flc.village_id = village.id unless village.blank?
#        flc.panchayat_id = panchayat.id unless panchayat.blank?
#    flc.mandal_id = mandal.id unsless mandal.blank?
#        flc.save!
#       puts "Valid FLC   " + row[0]
#    rescue StandardError => e
#        InvalidFlc.create :raised_exception => e.message,:data_of_invalid_flc => row
# puts "Invalid FLC  " + row[0].to_s
#    end
# end
# file = Rails.public_path+"data.csv"
# doc = HTTParty.get("http://www.onefivenine.com/india/villages/Srikakulam/Vangara/Talagam")
# parsed_page = Nokogiri::HTML(doc)
# child = parsed_page.css("div.boxinside2")[3].children
# column_headers = ["Locality Name","Mandal Name","District","State","Region ","Language ","Date","Time zone","Elevation / Altitude","Telephone Code / Std Code"]
# CSV.open(file, 'w', write_headers: true, headers: column_headers) do |writer|

# #    parsed_page.css("div.boxinside2")[3].children[0..48].each do |c|
     
#           writer << [child[2].text.strip,child[6].text.strip,child[10].text.strip,child[14].text.strip,child[18].text.strip,child[22].text.strip,child[30].text.strip,child[34].text.strip,child[38].text.strip + child[39].text.strip,"XXXXXX"]

# #    end
# end

# file = Rails.public_path + "flc_data_capture.csv"

# fish_landing_centers = FishLandingCenter.all

# column_headers = ["FLC Name","District","Mandal","Verified Count","Remaining Count","Total Count"]

# begin
#    CSV.open(file,'w',write_headers: true,:headers: column_headers) do |writer|
#       fish_landning_centers.each do |flc|
#          puts flc.vessel_details.count
#       end
#    end
# rescue StandardError => e
#       puts e.message
#    end


# file = Rails.public_path+"flc_list.csv"
 
		 
# flcs = FishLandingCenter.all

# puts flcs.count

# puts "Fish Landing Centers"

# column_headers = ["flc_id","flc_name","district","mandal","area_of_operation",
#                    "latitude","longitude","last_modified_dt","last_modified_by","created_by",
#                    "created_at","is_flc_active","district_code",
#                    "mandal_code","area_of_operation_code"]
# begin
# CSV.open(file, 'w', write_headers: true, headers: column_headers) do |writer|
#     flcs.each do |flc|
#     #   ref_no = open("https://myap.e-pragati.in/integration-service/integration/api/v1.0/getVaultRefID?aadhaarNumber="+vessel.aadhaar_no).read
#       puts flc.flc_name.inspect
#           writer << [flc.id,flc.flc_name,flc.district.district_name,flc.mandal.mandal_name,
#                     "","","",flc.created_at,1,1,flc.created_at,true,flc.district.district_code,
#                      flc.mandal.mandal_code,""]
#     end
# end
# rescue StandardError => e
#    puts e.message
# end


# file = Rails.public_path+"vessel_details_dev.csv"
 
		 
# vessel_details = VesselDetail.where("member_aadhaar_ref_id IS NOT NULL and deleted=false")

# puts vessel_details.count

# puts "Total Verified Vessels"

# column_headers = ["vessel_id","vessel_reg_no","vessel_name","flc_id","count_of_trawl_net",
#                     "count_of_gill_net","count_of_drag_net",
#                    "count_of_cast_net","last_modified_dt","last_modified_by","created_by",
#                    "created_at","vessel_owner_name",
#                    "vessel_owner_aadhar_number","vessel_owner_dob","count_of_life_buoy",
#                    "count_of_life_jackets","count_of_dats","count_of_gps_trcs",
#                    "count_of_eco_sounders","count_of_fish_finders","is_active",
#                    "vessel_mfid_number","vessel_license_renewed_date","vessel_license_valid_upto",
#                    "vessel_owner_mobile_no","vessel_owner_ration_card_number",
#                    "vessel_owner_bank_account_number","vessel_owner_bank_account_name",
#                    "vessel_owner_bank_ifsc_code","vessel_owner_bank_details","vessel_type","engine_number",
#                     "engine_power","vessel_owner_father_name"]
# begin
# CSV.open(file, 'w', write_headers: true, headers: column_headers) do |writer|
#    vessel_details.each do |vessel|
#          # dev_ref_no = open("https://dev-eys-myap.e-pragati.in/integration-service/integration/api/v1.0/getVaultRefID?aadhaarNumber=#{vessel.aadhaar_no}").read
# puts dev_ref_no.inspect
#       puts vessel.id
#       puts "XXXXXXXXXXXXXXXXXXXXXXXXXXX"
#           writer << [vessel.id,vessel.boat_id,vessel.vessel_name,vessel.fish_landing_center_id,
#                      vessel.trawl_net_count,vessel.gill_net_count,vessel.drag_net_count,vessel.cast_net_count,
#                      vessel.updated_at,vessel.user_id,vessel.user_id,vessel.created_at,vessel.owner_name,
#                      vessel.aadhaar_no,"",vessel.life_bouys_count,"",vessel.dat_count,vessel.gps_count,vessel.echo_sounder_count,
#                      vessel.fish_finder_count,!vessel.deleted,vessel.mfid_number,vessel.license_renewed_date,
#                      vessel.license_valid_upto,vessel.mobile_number,vessel.ration_card_number,vessel.bank_account_number,
#                      vessel.bank_details,vessel.ifsc_code,vessel.bank_details,vessel.boat_type,"","",vessel.father_name]
#     end
# end
# rescue StandardError => e
#    puts e.message
# end



# file = Rails.public_path+"vessel_details_qa.csv"
 
		 
# vessel_details = VesselDetail.where("member_aadhaar_ref_id IS NOT NULL and deleted=false")

# puts vessel_details.count

# puts "Total Verified Vessels"

# column_headers = ["vessel_id","vessel_reg_no","vessel_name","flc_id","count_of_trawl_net",
#                     "count_of_gill_net","count_of_drag_net",
#                    "count_of_cast_net","last_modified_dt","last_modified_by","created_by",
#                    "created_at","vessel_owner_name",
#                    "vessel_owner_aadhar_ref_id","vessel_owner_dob","count_of_life_buoy",
#                    "count_of_life_jackets","count_of_dats","count_of_gps_trcs",
#                    "count_of_eco_sounders","count_of_fish_finders","is_active",
#                    "vessel_mfid_number","vessel_license_renewed_date","vessel_license_valid_upto",
#                    "vessel_owner_mobile_no","vessel_owner_ration_card_number",
#                    "vessel_owner_bank_account_number","vessel_owner_bank_account_name",
#                    "vessel_owner_bank_ifsc_code","vessel_owner_bank_details","vessel_type","engine_number",
#                     "engine_power","vessel_owner_father_name"]
# begin
# CSV.open(file, 'w', write_headers: true, headers: column_headers) do |writer|
#    vessel_details.each do |vessel|
#          qa_ref_no = open("https://qah1-myap.e-pragati.in/integration-service/integration/api/v1.0/getVaultRefID?aadhaarNumber=#{vessel.aadhaar_no}").read
# puts qa_ref_no.inspect
#       puts vessel.id
#       puts "XXXXXXXXXXXXXXXXXXXXXXXXXXX"
#           writer << [vessel.id,vessel.boat_id,vessel.vessel_name,vessel.fish_landing_center_id,
#                      vessel.trawl_net_count,vessel.gill_net_count,vessel.drag_net_count,vessel.cast_net_count,
#                      vessel.updated_at,vessel.user_id,vessel.user_id,vessel.created_at,vessel.owner_name,
#                      vessel.member_aadhaar_ref_id,"",vessel.life_bouys_count,"",vessel.dat_count,vessel.gps_count,vessel.echo_sounder_count,
#                      vessel.fish_finder_count,!vessel.deleted,vessel.mfid_number,vessel.license_renewed_date,
#                      vessel.license_valid_upto,vessel.mobile_number,vessel.ration_card_number,vessel.bank_account_number,
#                      vessel.bank_details,vessel.ifsc_code,vessel.bank_details,vessel.boat_type,"","",vessel.father_name]
#     end
# end
# rescue StandardError => e
#    puts e.message
# end



# file = Rails.public_path+"vessel_details_uat.csv"
 
		 
# vessel_details = VesselDetail.where("member_aadhaar_ref_id IS NOT NULL and deleted=false")

# puts vessel_details.count

# puts "Total Verified Vessels"

# column_headers = ["vessel_id","vessel_reg_no","vessel_name","flc_id","count_of_trawl_net",
#                     "count_of_gill_net","count_of_drag_net",
#                    "count_of_cast_net","last_modified_dt","last_modified_by","created_by",
#                    "created_at","vessel_owner_name",
#                    "vessel_owner_aadhar_ref_id","vessel_owner_dob","count_of_life_buoy",
#                    "count_of_life_jackets","count_of_dats","count_of_gps_trcs",
#                    "count_of_eco_sounders","count_of_fish_finders","is_active",
#                    "vessel_mfid_number","vessel_license_renewed_date","vessel_license_valid_upto",
#                    "vessel_owner_mobile_no","vessel_owner_ration_card_number",
#                    "vessel_owner_bank_account_number","vessel_owner_bank_account_name",
#                    "vessel_owner_bank_ifsc_code","vessel_owner_bank_details","vessel_type","engine_number",
#                     "engine_power","vessel_owner_father_name"]
# begin
# CSV.open(file, 'w', write_headers: true, headers: column_headers) do |writer|
#    vessel_details.each do |vessel|
#          uat_ref_no = open("https://at-myap.e-pragati.in/integration-service/integration/api/v1.0/getVaultRefID?aadhaarNumber=#{vessel.vessel.aadhaar_no}").read
# puts uat_ref_no.inspect
#       puts vessel.id
#       puts "XXXXXXXXXXXXXXXXXXXXXXXXXXX"
#           writer << [vessel.id,vessel.boat_id,vessel.vessel_name,vessel.fish_landing_center_id,
#                      vessel.trawl_net_count,vessel.gill_net_count,vessel.drag_net_count,vessel.cast_net_count,
#                      vessel.updated_at,vessel.user_id,vessel.user_id,vessel.created_at,vessel.owner_name,
#                      uat_ref_no,"",vessel.life_bouys_count,"",vessel.dat_count,vessel.gps_count,vessel.echo_sounder_count,
#                      vessel.fish_finder_count,!vessel.deleted,vessel.mfid_number,vessel.license_renewed_date,
#                      vessel.license_valid_upto,vessel.mobile_number,vessel.ration_card_number,vessel.bank_account_number,
#                      vessel.bank_details,vessel.ifsc_code,vessel.bank_details,vessel.boat_type,"","",vessel.father_name]
#     end
# end
# rescue StandardError => e
#    puts e.message
# end




# puts "Employee Details"
# begin
# file_names = ["Chittor-Data_Format_for_Software_-_With_aadhaar_No (2).xlsx",
#                "EG DistDetails for  VV,VFA,FDOAIF,AD and DFO - VFA, FDO only.xlsx",
#                "KNL-Data Format for Software - With aadhaar No.xlsx","Krishna-data with aadhaar number.xlsx",
#             "Nellore -Data Format for Software - With aadhaar numbers-.xlsx","Prakasam-Data Format for Software - With aadhaar No (1).xlsx",
#             "Srikakulam-Data Format for Software - With aadhaar No.xlsx","Visakhapatnam-ALL DATA 2019-VFA Pending.xlsx",
#             "Vizianagaram-Data Format for Software - With aadhaar No -VFA Pending.xlsx"]
# file =  Rails.public_path+"APFD_Employees_data_SIFT.csv"

# column_headers = ["aadhaar_no","aadhaar number without spaces","dev aadhaar ref","qa aadhaar ref",
#                   "uat aadhaar ref","prod aadhaar ref"]
# CSV.open(file, 'w', write_headers: true, headers: column_headers) do |writer|
# # file_names.each do |file_name|                  
# xlsx = Roo::Excelx.new(Rails.public_path+"EmployeesList/employee-aadhar_sift.xlsx")
# puts "File  Name"
# # puts file_name
# puts "XXXXXXXXXXXXXXXXXXXXXXXXx"
# xlsx.sheets.each do |sheet|
#    # num_rows = 0
#    puts "Sheet  Name"
#    puts sheet
#    puts "XXXXXXXXXXXXXXXXXXXXXXXXx"
#    xlsx.sheet(sheet).each_row_streaming(offset: 1) do |row|
#       begin
#          # dev_ref_no = open("https://dev-eys-myap.e-pragati.in/integration-service/integration/api/v1.0/getVaultRefID?aadhaarNumber=#{row[0].value.to_s}").read

#          # puts dev_ref_no
#          # puts "Dev Ref No"

#          # qa_ref_no = open("https://qah1-myap.e-pragati.in/integration-service/integration/api/v1.0/getVaultRefID?aadhaarNumber=#{row[0].value.to_s}").read
         
#          # puts qa_ref_no
#          # puts "QA Ref No"

#          uat_ref_no = open("https://at-myap.e-pragati.in/integration-service/integration/api/v1.0/getVaultRefID?aadhaarNumber=#{row[0].value.to_s}").read
         
#          puts uat_ref_no
#          puts "UAT Ref No"

#          # prod_ref_no = open("https://myap.e-pragati.in/integration-service/integration/api/v1.0/getVaultRefID?aadhaarNumber=#{row[0].value.to_s}").read

#          # puts prod_ref_no
#          # puts "Prod Ref No"

      
#       writer << [row[0],"","",uat_ref_no,""]

#       # num_rows += 1
#       rescue StandardError => e
#          puts e.message
#       end
  
# end
#     end
#    #  puts "Read #{num_rows} rows" 
# #   end
# end
# rescue StandardError => e
#    puts e.message.inspect
# end







# puts "Employee Details"
# begin
# file_names = ["ATP-data with aadhaar number.xlsx","Kadapa - ALL_DETAILS with Aadhaar No.xlsx"]
# file =  Rails.public_path+"APFD_Anathapur_Kadapa_Employees_data.csv"

# column_headers = ["Name","Mandal","Panchayat","Village","Role","Aadhaar No","Dev Aadhaar Ref No","QA Aadhaar Ref No",
#                   "UAT Aadhaar Ref No","Prod Aadhaar No","Mobile No"]
# CSV.open(file, 'w', write_headers: true, headers: column_headers) do |writer|
# file_names.each do |file_name|                  
# xlsx = Roo::Excelx.new(Rails.public_path+"EmployeesList/#{file_name}")
# puts "File  Name"
# puts file_name
# puts "XXXXXXXXXXXXXXXXXXXXXXXXx"
# xlsx.sheets.each do |sheet|
#    # num_rows = 0
#    puts "Sheet  Name"
#    puts sheet
#    puts "XXXXXXXXXXXXXXXXXXXXXXXXx"
#    xlsx.sheet(sheet).each_row_streaming(offset: 1) do |row|
#       begin
#          dev_ref_no = open("https://dev-eys-myap.e-pragati.in/integration-service/integration/api/v1.0/getVaultRefID?aadhaarNumber=#{row[7].value.to_s}").read

#          puts dev_ref_no
#          puts "Dev Ref No"

#          qa_ref_no = open("https://qah1-myap.e-pragati.in/integration-service/integration/api/v1.0/getVaultRefID?aadhaarNumber=#{row[7].value.to_s}").read
         
#          puts qa_ref_no
#          puts "QA Ref No"

#          uat_ref_no = open("https://at-myap.e-pragati.in/integration-service/integration/api/v1.0/getVaultRefID?aadhaarNumber=#{row[7].value.to_s}").read
         
#          puts uat_ref_no
#          puts "UAT Ref No"

#          prod_ref_no = open("https://myap.e-pragati.in/integration-service/integration/api/v1.0/getVaultRefID?aadhaarNumber=#{row[7].value.to_s}").read

#          puts prod_ref_no
#          puts "Prod Ref No"

      
#       writer << [row[1].value,row[3].value,row[4].value,row[5].value,row[6].value,row[7].value,dev_ref_no,
#                   qa_ref_no,uat_ref_no,prod_ref_no,row[8].value]

#       # num_rows += 1
#       rescue StandardError => e
#          puts e.message
#       end
  
# end
#     end
#    #  puts "Read #{num_rows} rows" 
#   end
# end
# rescue StandardError => e
#    puts e.message.inspect
# end


# xlsx.each_row_streaming(pad_cells: true) do |row|
#      puts row.inspect 
#      puts "XXXXXXXXXXXXXXXXXX"
# end
# csv = CSV.parse(csv_text, :headers => false)
# csv.each do |row|
#    dev_ref_no = open("https://dev-eys-myap.e-pragati.in/integration-service/integration/api/v1.0/getVaultRefID="+row[8]).read

#    # prod_ref_no = open("https://myap.e-pragati.in/integration-service/integration/api/v1.0/getVaultRefID?aadhaarNumber="+row[8]).read
#    puts dev_ref_no.inspect

#    usr = User.create :mobile_no => row[1],:role_id => 1,:password => "default@123"
#   #  UserDetail.create :user_id => usr.id,:user_name => row[2],:mobile_number => usr.mobile_no,:alternate_mobile_no => usr.mobile_no
#   #  dist = District.where(:district_name => row[0]).first
#   #  puts dist.id
#   #  clstr = WaterBodyCluster.create :user_id => usr.id,:district_id => dist.id,:cluster_name => row[1]
   
# end


# puts "Society Members"
# file_names = ["East Godavari FCS.csv",
#                "AnantapurFCS.csv","KurnoolFCS.csv","Prem_Krishna_FCS.csv",
#                "Visakhapatnam FCS.csv","WestGodavariFCS_updated.csv"]
# file_names.each do |file_name|    
#    csv_text = File.read(Rails.public_path+'SocietyDetails/'+file_name, :encoding => 'ISO-8859-1')
#    csv = CSV.parse(csv_text, :headers => false)
#    csv.each do |row|
#       begin
#          district = District.where(:district_name => row[0]).first
#          mandal = Mandal.where(:mandal_name => row[1]).first
#          village = Village.where(:village_name => row[2]).first unless mandal.blank?
#          panchayat = Panchayat.where(:panchayat_name => row[3]).first unless mandal.blank?
#          puts district.inspect
#          soci_mem = ApfSocietyMember.new
#          soci_mem.district = row[0]
#          soci_mem.district_code = district.district_code unless district.blank?
#          soci_mem.district_id = district.id unless district.blank?
#          soci_mem.mandal = row[1] 
#          soci_mem.mandal_code = mandal.mandal_code unless mandal.blank?
#          soci_mem.mandal_id = mandal.id unless mandal.blank?
#          soci_mem.village = row[2] 
#          soci_mem.village_code = village.village_code unless village.blank?
#          soci_mem.village_id = village.id unless village.blank?
#          soci_mem.panchayat = row[3] 
#          soci_mem.panchayat_code = panchayat.panchayat_code unless panchayat.blank?
#          soci_mem.panchayat_id = panchayat.id unless panchayat.blank?
#          soci_mem.pincode = row[4] 
#          soci_mem.society_name = row[6]
#          soci_mem.society_id = ""
#          soci_mem.society_reg_id = ""
#          soci_mem.role_name = row[7]
#          soci_mem.fisherman_reg_id = ""
#          soci_mem.fisherman_name = row[9]
#          soci_mem.father_name = row[10]
#          soci_mem.aadhaar_no = row[11]
#          soci_mem.mobile_no = row[12]
#          soci_mem.latitude = row[13]
#          soci_mem.longitude = row[14]
#          soci_mem.heading = row[15]
#          soci_mem.save
#       rescue StandardError => e
#          puts e.message.inspect
#          #  InvalidWaterBody.create :raised_exception => e.message,:data_of_invalid_water_body => row
#    # puts "Invalid Water Body   " + row[2].to_s
#       end
#    end

#    end


# file = Rails.public_path+"prod_data.csv"
 
       
# vessel_details = VesselDetail.where("member_aadhaar_ref_id IS NOT NULL and deleted=false")

# puts vessel_details.count

# puts "Total Verified Vessels"

# column_headers = ["vessel_id","vessel_reg_no","vessel_name","flc_id","count_of_trawl_net",
#                     "count_of_gill_net","count_of_drag_net",
#                    "count_of_cast_net","last_modified_dt","last_modified_by","created_by",
#                    "created_at","vessel_owner_name",
#                    "vessel_owner_aadhar_number","vessel_owner_dob","count_of_life_buoy",
#                    "count_of_life_jackets","count_of_dats","count_of_gps_trcs",
#                    "count_of_eco_sounders","count_of_fish_finders","is_active",
#                    "vessel_mfid_number","vessel_license_renewed_date","vessel_license_valid_upto",
#                    "vessel_owner_mobile_no","vessel_owner_ration_card_number",
#                    "vessel_owner_bank_account_number","vessel_owner_bank_account_name",
#                    "vessel_owner_bank_ifsc_code","vessel_owner_bank_details","vessel_type","engine_number",
#                     "engine_power","vessel_owner_father_name"]
# begin
# CSV.open(file, 'w', write_headers: true, headers: column_headers) do |writer|
#    vessel_details.each do |vessel|
#       puts vessel.id
#       puts "XXXXXXXXXXXXXXXXXXXXXXXXXXX"
#           writer << [vessel.id,vessel.boat_id,vessel.vessel_name,vessel.fish_landing_center_id,
#                      vessel.trawl_net_count,vessel.gill_net_count,vessel.drag_net_count,vessel.cast_net_count,
#                      vessel.updated_at,vessel.user_id,vessel.user_id,vessel.created_at,vessel.owner_name,
#                      vessel.aadhaar_no,"",vessel.life_bouys_count,"",vessel.dat_count,vessel.gps_count,vessel.echo_sounder_count,
#                      vessel.fish_finder_count,!vessel.deleted,vessel.mfid_number,vessel.license_renewed_date,
#                      vessel.license_valid_upto,vessel.mobile_number,vessel.ration_card_number,vessel.bank_account_number,
#                      vessel.bank_details,vessel.ifsc_code,vessel.bank_details,vessel.boat_type,"","",vessel.father_name]
#     end
# end
# rescue StandardError => e
#    puts e.message
# end


# aadhaar_nos = VesselDetail.all.map{|v| v.aadhaar_no}
# aadhaar_nos.each do |aadhaar|
#    adhr = AadhaarRefNo.new
#    adhr.aadhaar_no = aadhaar
#    dev_ref_no = open("https://dev-eys-myap.e-pragati.in/integration-service/integration/api/v1.0/getVaultRefID?aadhaarNumber=#{aadhaar}").read

#          puts dev_ref_no
#          puts "Dev Ref No"

#          qa_ref_no = open("https://qah1-myap.e-pragati.in/integration-service/integration/api/v1.0/getVaultRefID?aadhaarNumber=#{aadhaar}").read
         
#          puts qa_ref_no
#          puts "QA Ref No"

#          uat_ref_no = open("https://at-myap.e-pragati.in/integration-service/integration/api/v1.0/getVaultRefID?aadhaarNumber=#{aadhaar}").read
         
#          puts uat_ref_no
#          puts "UAT Ref No"

#          prod_ref_no = open("https://myap.e-pragati.in/integration-service/integration/api/v1.0/getVaultRefID?aadhaarNumber=#{aadhaar}").read

#          puts prod_ref_no
#          puts "Prod Ref No"

#          adhr.dev_aadhaar_ref_no = dev_ref_no
#          adhr.qa_aadhaar_ref_no = qa_ref_no
#          adhr.uat_aadhaar_ref_no = uat_ref_no
#          adhr.prod_aadhaar_ref_no = prod_ref_no

#          adhr.save

# end




# aadhr_nos = []
# vsl_info = []
# xlsx = Roo::Excelx.new(Rails.public_path+"VesselInfo/Vessel_Data_DBInsertion.xlsx")
# puts "File  Name"
# # puts file_name
# puts "XXXXXXXXXXXXXXXXXXXXXXXXx"
# xlsx.sheets.each do |sheet|
#    # num_rows = 0
#    puts "Sheet  Name"
#    puts sheet
#    puts "XXXXXXXXXXXXXXXXXXXXXXXXx"
#    xlsx.sheet(sheet).each_row_streaming(pad_cells: true,offset: 1) do |row|
#       begin
#          puts row[2].value.to_s.inspect if !row[2].blank?
#          # puts row.last.inspect
#          vsl_info << {:vessel_reg_no => row[1].blank? ?  "" : row[1].value.to_s,:vessel_name => row[2].blank? ?  "" : row[2].value.to_s,
#                      :flc_id => row[3].blank? ? "" : row[3].value.to_s,:count_of_trawl_net => row[4].blank? ? "" : row[4].value.to_s,
#                      :count_of_gill_net => row[5].blank? ? "" : row[5].value.to_s,:count_of_drag_net => row[6].blank? ? "" : row[6].value.to_s,
#                      :count_of_cast_net =>  row[7].blank? ? "" : row[7].value.to_s, :last_modified_dt => row[8].blank? ? "" : row[8].value.to_s,
#                      :last_modified_by => row[9].blank? ? "" : row[9].value.to_s, :created_by => row[10].blank? ? "" : row[10].value.to_s,
#                      :created_at => row[11].blank? ? "" : row[11].value.to_s,:vessel_owner_name => row[12].blank? ? "" : row[12].value.to_s,
#                      :vessel_owner_aadhar_ref_id => row[13].blank? ? "" : row[13].value.to_s, :vessel_owner_dob => row[14].blank? ? "" : row[14].value.to_s,
#                      :count_of_life_buoy => row[15].blank? ? "" : row[15].value.to_s,:count_of_life_jackets => row[16].blank? ? "" : row[16].value.to_s,
#                      :count_of_dats => row[17].blank? ? "" : row[17].value.to_s,:count_of_gps_trcs => row[18].blank? ? "" : row[18].value.to_s,
#                      :count_of_eco_sounders => row[19].blank? ? "" : row[19].value.to_s, :count_of_fish_finders => row[20].blank? ? "" : row[20].value.to_s,
#                      :is_active => row[21].blank? ? "" : row[21].value.to_s, :vessel_mfid_number =>row[22].blank? ? "" : row[22].value.to_s ,
#                      :vessel_license_renewed_date => row[23].blank? ? "" : row[23].value.to_s, :vessel_license_valid_upto => row[24].blank? ? "" : row[24].value.to_s,
#                      :vessel_owner_mobile_no => row[25].blank? ? "" : row[25].value.to_s, :vessel_owner_ration_card_number => row[26].blank? ? "" : row[26].value.to_s,
#                      :vessel_owner_bank_account_number => row[27].blank? ? "" : row[27].value.to_s, :vessel_owner_bank_account_name => row[28].blank? ? "" : row[28].value.to_s,
#                      :vessel_owner_bank_ifsc_code => row[29].blank? ? "" : row[29].value, :vessel_owner_bank_details => row[30].blank? ? "" : row[30].value,
#                      :vessel_type => row[31].blank? ? "" : row[31].value.to_s,:engine_number => row[32].blank? ? "" : row[32].value.to_s,:engine_power => row[33].blank? ? "" : row[33].value.to_s,
#                      :vessel_owner_father_name => row[34].blank? ? "" : row[34].value.to_s}
      
#       rescue StandardError => e
#          puts e.message
#       end
  
# end
#     end
    
# # puts vsl_info.inspect

# file = Rails.public_path+"vessel_details_prod_now.csv"
# invalid_vsl_nos = []
# invalid_flc_names = []
#  invalid_vsl_reg_no  = Rails.public_path+"invalid_reg_prod.csv"
# invalid_flc_reg_no = Rails.public_path+"invalid_flc_reg_no.csv"
#    column_headers = ["vessel_reg_no","vessel_name","flc_id","count_of_trawl_net",
#                      "count_of_gill_net","count_of_drag_net",
#                      "count_of_cast_net","last_modified_dt","last_modified_by","created_by",
#                      "created_at","vessel_owner_name",
#                      "vessel_owner_aadhar_ref_id","vessel_owner_dob","count_of_life_buoy",
#                      "count_of_life_jackets","count_of_dats","count_of_gps_trcs",
#                      "count_of_eco_sounders","count_of_fish_finders","is_active",
#                      "vessel_mfid_number","vessel_license_renewed_date","vessel_license_valid_upto",
#                      "vessel_owner_mobile_no","vessel_owner_ration_card_number",
#                      "vessel_owner_bank_account_number","vessel_owner_bank_account_name",
#                      "vessel_owner_bank_ifsc_code","vessel_owner_bank_details","vessel_type","engine_number",
#                      "engine_power","vessel_owner_father_name"]


#    begin
#     CSV.open(file, 'w', write_headers: true, headers: column_headers) do |writer|
#       CSV.open(invalid_vsl_reg_no, 'w', write_headers: true, headers: column_headers) do |invaldi_reg_writer|
#          CSV.open(invalid_flc_reg_no, 'w', write_headers: true, headers: column_headers) do |invaldi_flc_writer|
#       vsl_info.each do |vsl|
#          puts vsl.inspect
#          puts "CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC"
#          sts = false;
#          prod_ref_no = "10"
#          vessel = VesselDetail.where(:boat_id => vsl[:vessel_reg_no]).last
#          puts vessel.inspect
        
#          puts "YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY"
#          flc = FishLandingCenter.where(:flc_name => vsl[:flc_id].humanize).last
#          puts flc.inspect
#          puts "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
#         begin
#             puts vessel.aadhaar_no
#          #  prod_ref_no = open("https://myap.e-pragati.in/integration-service/integration/api/v1.0/getVaultRefID?aadhaarNumber="+vessel.aadhaar_no).read
#          #  puts prod_ref_no.inspect
#         rescue StandardError => e
#          invaldi_reg_writer << [vsl[:vessel_reg_no],vsl[:vessel_name],vsl[:flc_id],
#             vsl[:trawl_net_count],vsl[:gill_net_count],vsl[:drag_net_count],vsl[:cast_net_count],
#             vsl[:last_modified_dt],vsl[:last_modified_by],vsl[:created_by],vsl[:created_at],vsl[:vessel_owner_name],
#              "NOT Generated",vsl[:vessel_owner_dob],vsl[:life_bouys_count],vsl[:count_of_life_jackets],vsl[:dat_count],
#              vsl[:gps_count],vsl[:echo_sounder_count],
#              vsl[:fish_finder_count],sts,vsl[:mfid_number],vsl[:license_renewed_date],
#              vsl[:license_valid_upto],vsl[:mobile_number],vsl[:ration_card_number],vsl[:bank_account_number],
#              vsl[:bank_details],vsl[:ifsc_code],vsl[:bank_details],vsl[:boat_type],vsl[:engine_number],vsl[:engine_power],vsl[:father_name]]
#         end
#          if vsl[:is_active] == "Active"
#             sts = true
#          else
#             sts = false
#          end
#          begin
#             puts vsl[:vessel_owner_name].inspect

#             writer << [
#                         vsl[:vessel_reg_no],vsl[:vessel_name],flc.id,
#                         vsl[:trawl_net_count].to_i,vsl[:gill_net_count].to_i,vsl[:drag_net_count].to_i,vsl[:cast_net_count].to_i,
#                         vsl[:last_modified_dt],vsl[:last_modified_by],vsl[:created_by],vsl[:created_at],vsl[:vessel_owner_name],
#                         "103274234",vsl[:vessel_owner_dob],vsl[:life_bouys_count].to_i,vsl[:count_of_life_jackets].to_i,vsl[:dat_count].to_i,
#                         vsl[:gps_count].to_i,vsl[:echo_sounder_count].to_i,
#                         vsl[:fish_finder_count].to_i,sts,vsl[:mfid_number],vsl[:license_renewed_date],
#                         vsl[:license_valid_upto],vsl[:mobile_number],vsl[:ration_card_number],vsl[:bank_account_number],
#                         vsl[:bank_details],vsl[:ifsc_code],vsl[:bank_details],vsl[:boat_type],vsl[:engine_number],vsl[:engine_power],vsl[:father_name]
#                      ]
#          rescue StandardError => e
#             invaldi_flc_writer <<  [vsl[:vessel_reg_no],vsl[:vessel_name],vsl[:flc_id],
#             vsl[:trawl_net_count],vsl[:gill_net_count],vsl[:drag_net_count],vsl[:cast_net_count],
#             vsl[:last_modified_dt],vsl[:last_modified_by],vsl[:created_by],vsl[:created_at],vsl[:owner_name],
#              "NOT Generated",vsl[:vessel_owner_dob],vsl[:life_bouys_count],vsl[:count_of_life_jackets],vsl[:dat_count],
#              vsl[:gps_count],vsl[:echo_sounder_count],
#              vsl[:fish_finder_count],sts,vsl[:mfid_number],vsl[:license_renewed_date],
#              vsl[:license_valid_upto],vsl[:mobile_number],vsl[:ration_card_number],vsl[:bank_account_number],
#              vsl[:bank_details],vsl[:ifsc_code],vsl[:bank_details],vsl[:boat_type],vsl[:engine_number],vsl[:engine_power],vsl[:father_name]]
#             puts e.message
#          end
                     
#       end
#    end
# end
# end
# rescue StandardError => e
#    # puts vsl.inspect
#    puts e.message.inspect
#    # CSV.open(invalid_vsl_reg_no_prod_file, 'w', write_headers: true, headers: column_headers) do |writer_inva|
#    #    writer_inva << [vsl[:vessel_reg_no],vsl[:vessel_name],vsl[:flc_id],
#    #    vsl[:trawl_net_count],vsl[:gill_net_count],vsl[:drag_net_count],vsl[:cast_net_count],
#    #    vsl[:updated_at],vsl[:last_modified_by],vsl[:created_by],vsl[:created_at],vsl[:owner_name],
#    #     "NOT Generated",vsl[:vessel_owner_dob],vsl[:life_bouys_count],vsl[:count_of_life_jackets],vsl[:dat_count],
#    #     vsl[:gps_count],vsl[:echo_sounder_count],
#    #     vsl[:fish_finder_count],sts,vsl[:mfid_number],vsl[:license_renewed_date],
#    #     vsl[:license_valid_upto],vsl[:mobile_number],vsl[:ration_card_number],vsl[:bank_account_number],
#    #     vsl[:bank_details],vsl[:ifsc_code],vsl[:bank_details],vsl[:boat_type],vsl[:engine_number],vsl[:engine_power],vsl[:father_name]]

#    # end
# end



# file = Rails.public_path+"invalid__corrected_today_vessel_details_prod_ref_numbers_new.csv"
# invalid_vsl_reg_no  = Rails.public_path+"invalid__corrected_today_vessel_ref_numbers_data_new.csv"
# csv_text = File.read(Rails.public_path+'VesselInfo/vivek_invalid_vessels.csv', :encoding => 'ISO-8859-1')

# column_headers = ["vessel ID","vessel_reg_no","vessel_name","flc_id","count_of_trawl_net",
#                      "count_of_gill_net","count_of_drag_net",
#                      "count_of_cast_net","last_modified_dt","last_modified_by","created_by",
#                      "created_at","vessel_owner_name",
#                      "vessel_owner_aadhar_ref_id","vessel_owner_dob","count_of_life_buoy",
#                      "count_of_life_jackets","count_of_dats","count_of_gps_trcs",
#                      "count_of_eco_sounders","count_of_fish_finders","is_active",
#                      "vessel_mfid_number","vessel_license_renewed_date","vessel_license_valid_upto",
#                      "vessel_owner_mobile_no","vessel_owner_ration_card_number",
#                      "vessel_owner_bank_account_number","vessel_owner_bank_account_name",
#                      "vessel_owner_bank_ifsc_code","vessel_owner_bank_details","vessel_type","engine_number",
#                      "engine_power","vessel_owner_father_name"]
# csv = CSV.parse(csv_text, :headers => false)

# CSV.open(file, 'w', write_headers: true, headers: column_headers) do |writer|
#    CSV.open(invalid_vsl_reg_no, 'w', write_headers: true, headers: column_headers) do |invaldi_reg_writer|
#       csv.each do |row|
#          begin
#             puts row[3].inspect
#              flc = FishLandingCenter.where(:flc_name => row[3]).first
#              puts flc.inspect
#              puts "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
#             vsl = VesselDetail.where(:boat_id => row[6]).first
#             puts vsl.inspect
#             puts "VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV"
#             prod_ref_no = open("https://myap.e-pragati.in/integration-service/integration/api/v1.0/getVaultRefID?aadhaarNumber="+vsl.aadhaar_no).read
#             puts prod_ref_no.inspect
#             sts = false
#             boat_type = ""
#             if row[19] == "Active"
#                sts = true
#             end
#             if row[7] == "Motorised"
#                boat_type = "motorised"
#             else
#                boat_type = "mechanized"
#             end
#             writer << [vsl.id,row[6],row[33],flc.id,
#                         row[27],row[24],row[25],row[26],
#                         row[35],"","",row[34],row[5],
#                         "'#{prod_ref_no}'","",row[28],"",row[29],
#                         row[30],row[32],
#                         row[31],sts,row[16],row[8],
#                         row[9],row[12],row[14],"'#{row[13]}'",
#                         row[17],row[15],row[18],boat_type,"","",""]
#          rescue StandardError => e
#             puts e.message
#             invaldi_reg_writer <<  [row[6],row[6],row[33],row[3],
#                                     row[27],row[24],row[25],row[26],
#                                     row[35],"","",row[34],row[5],
#                                     row[11],"",row[28],"",row[29],
#                                     row[30],row[32],
#                                     row[31],sts,row[16],row[8],
#                                     row[9],row[12],row[14],row[13],
#                                     row[17],row[15],row[18],row[7],"","",""]
#          end
#       end
#    end
# end



# file = Rails.public_path+"vessel_details_prod_ref_numbers_new_vsl_ids.csv"
# invalid_vsl_reg_no  = Rails.public_path+"invalid_vessel_ref_numbers_data_new_vsl_ids.csv"
# csv_text = File.read(Rails.public_path+'vessel_details_prod_ref_numbers_new.csv', :encoding => 'ISO-8859-1')

# column_headers = ["vessel ID"]
# csv = CSV.parse(csv_text, :headers => false)

# CSV.open(file, 'w', write_headers: true, headers: column_headers) do |writer|
#    CSV.open(invalid_vsl_reg_no, 'w', write_headers: true, headers: column_headers) do |invaldi_reg_writer|
#       csv.each do |row|
#          begin
#             puts row[0].inspect
#             #  flc = FishLandingCenter.where(:flc_name => row[3].humanize).first
#             vsl = VesselDetail.where(:boat_id => row[0]).last
#             writer << [vsl.id]
#          rescue StandardError => e
#             puts e.message
#             writer <<  [row[0]]
#          end
#       end
#    end
# end




# puts "Panchayat data is migrated successfully"

# puts "Society Details"
# csv_text = File.read(Rails.public_path+'SocietyDetails/exported_data.csv', :encoding => 'ISO-8859-1')
# column_headers = ["Dev Ref","QA Ref","UAT Ref","Prod Ref"]
# file_to_write = Rails.public_path+"SocietyDetails/soc_mem_ref_ids.csv"
# csv = CSV.parse(csv_text, :headers => false)

# CSV.open(file_to_write, 'w', write_headers: true, headers: column_headers) do |writer|
# csv.each do |row|
#    begin
#       puts row[21].inspect
#        x = row[21].delete("\s")
#        puts x.inspect
#        puts "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
#       dev_ref_no = open("https://dev-eys-myap.e-pragati.in/integration-service/integration/api/v1.0/getVaultRefID?aadhaarNumber=#{x}").read

#       puts dev_ref_no
#       puts "Dev Ref No"

#       qa_ref_no = open("https://qah1-myap.e-pragati.in/integration-service/integration/api/v1.0/getVaultRefID?aadhaarNumber=#{x}").read
      
#       puts qa_ref_no
#       puts "QA Ref No"

#       uat_ref_no = open("https://at-myap.e-pragati.in/integration-service/integration/api/v1.0/getVaultRefID?aadhaarNumber=#{x}").read
      
#       puts uat_ref_no
#       puts "UAT Ref No"

#       prod_ref_no = open("https://myap.e-pragati.in/integration-service/integration/api/v1.0/getVaultRefID?aadhaarNumber=#{x}").read

#       puts prod_ref_no
#       puts "Prod Ref No"

   
#    # writer << [dev_ref_no,qa_ref_no,uat_ref_no,prod_ref_no]

#    # num_rows += 1
 

# end
# rescue StandardError => e
# puts e.message
# end
# end






puts "SIFT Employee Details"
begin
# file_names = ["Chittor-Data_Format_for_Software_-_With_aadhaar_No (2).xlsx",
#                "EG DistDetails for  VV,VFA,FDOAIF,AD and DFO - VFA, FDO only.xlsx",
#                "KNL-Data Format for Software - With aadhaar No.xlsx","Krishna-data with aadhaar number.xlsx",
#             "Nellore -Data Format for Software - With aadhaar numbers-.xlsx","Prakasam-Data Format for Software - With aadhaar No (1).xlsx",
#             "Srikakulam-Data Format for Software - With aadhaar No.xlsx","Visakhapatnam-ALL DATA 2019-VFA Pending.xlsx",
#             "Vizianagaram-Data Format for Software - With aadhaar No -VFA Pending.xlsx"]
file =  Rails.public_path+"Employees_data_SIFT.csv"

column_headers = ["Name","Designation","Aadhaar No","Mobile No",
                  "Remarks","Dev Ref No","QA Ref No","UAT Ref No","PROD Ref No"]
CSV.open(file, 'w', write_headers: true, headers: column_headers) do |writer|
# file_names.each do |file_name|                  
xlsx = Roo::Excelx.new(Rails.public_path+"EmployeesList/EMP_Details_SIFT.xlsx")
puts "File  Name"
# puts file_name
puts "XXXXXXXXXXXXXXXXXXXXXXXXx"
xlsx.sheets.each do |sheet|
   # num_rows = 0
   puts "Sheet  Name"
   puts sheet
   puts "XXXXXXXXXXXXXXXXXXXXXXXXx"
   xlsx.sheet(sheet).each_row_streaming(offset: 1) do |row|
      begin
         dev_ref_no = open("https://dev-eys-myap.e-pragati.in/integration-service/integration/api/v1.0/getVaultRefID?aadhaarNumber=#{row[2].value.to_s}").read

         puts dev_ref_no
         puts "Dev Ref No"

         qa_ref_no = open("https://qah1-myap.e-pragati.in/integration-service/integration/api/v1.0/getVaultRefID?aadhaarNumber=#{row[2].value.to_s}").read
         
         puts qa_ref_no
         puts "QA Ref No"

         uat_ref_no = open("https://at-myap.e-pragati.in/integration-service/integration/api/v1.0/getVaultRefID?aadhaarNumber=#{row[2].value.to_s}").read
         
         puts uat_ref_no
         puts "UAT Ref No"

          prod_ref_no = open("https://myap.e-pragati.in/integration-service/integration/api/v1.0/getVaultRefID?aadhaarNumber=#{row[2].value.to_s}").read

         puts prod_ref_no
         puts "Prod Ref No"

      
      writer << [row[0].value,row[1].value,row[2].value,row[3].value,row[4].value,"'#{dev_ref_no}'","'#{qa_ref_no}'","'#{uat_ref_no}'","'#{prod_ref_no}'"]

      # num_rows += 1
      rescue StandardError => e
         puts e.message
      end
  
end
    end
   #  puts "Read #{num_rows} rows" 
#   end
end
rescue StandardError => e
   puts e.message.inspect
end
