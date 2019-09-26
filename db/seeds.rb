# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'
# require 'HTTParty'
# require 'Nokogiri'
   RegsitrationType.create :name => "Aqua Lab"
   RegsitrationType.create :name => "Aquaculture Fresh Water Farm"
   RegsitrationType.create :name => "Inland Fisherman"
   RegsitrationType.create :name => "Inland Fisherwoman"
   RegsitrationType.create :name => "Inland Fishermen Society"
   RegsitrationType.create :name => "Inland Fisherwomen Society"
   RegsitrationType.create :name => "Marine Crew"
   RegsitrationType.create :name => "Marine Fishermen Society"
   RegsitrationType.create :name => "Marine Fisherwomen Society"
   RegsitrationType.create :name => "Marine Vessel Registration"


   User.create :aadhaar_no => "123456789871", :password => "admin", :role_id => 13,:mobile_no => "9985324862"
   User.create :aadhaar_no => "123456789872", :password => "fdo", :role_id => 2,:mobile_no => "9985324861"
   User.create :aadhaar_no => "123456789873", :password => "adf", :role_id => 3,:mobile_no => "9985324860"
   User.create :aadhaar_no => "123456789874", :password => "dd", :role_id => 4,:mobile_no => "9985324863"
   User.create :aadhaar_no => "123456789875", :password => "dfo", :role_id => 5,:mobile_no => "9985324864"
   User.create :aadhaar_no => "123456789876", :password => "add_drct", :role_id => 6,:mobile_no => "9985324865"
   User.create :aadhaar_no => "123456789877", :password => "commisioner", :role_id => 7,:mobile_no => "9985324866"
   User.create :aadhaar_no => "123456789878", :password => "MRO", :role_id => 8,:mobile_no => "9985324867"
   User.create :aadhaar_no => "123456789879", :password => "SVVU", :role_id => 9,:mobile_no => "9985324868"
   User.create :aadhaar_no => "123456789880", :password => "CIBA", :role_id => 10,:mobile_no => "9985324869"
   User.create :aadhaar_no => "123456789881", :password => "NaCSA", :role_id => 11,:mobile_no => "9985324870"
   User.create :aadhaar_no => "123456789882", :password => "SIFT", :role_id => 12,:mobile_no => "9985324871"
   User.create :aadhaar_no => "123456789883", :password => "man_user", :role_id => 13,:mobile_no => "9985324872"
   User.create :aadhaar_no => "123456789884", :password => "woman_user", :role_id => 14,:mobile_no => "9985324873"

   Role.create :role_name => "fdo", :role_description => "Fisheries Department "
   Role.create :role_name => "adf", :role_description => "Fisheries Department "
   Role.create :role_name => "dd", :role_description => "Fisheries Department "
   Role.create :role_name => "dfo", :role_description => "Fisheries Department"
   Role.create :role_name => "addt_director", :role_description => "Fisheries Department Officer"
   Role.create :role_name => "commissioner", :role_description => "Fisheries Department Officer"
   Role.create :role_name => "mro", :role_description => "Mandal Revenue Officer"
   Role.create :role_name => "svvu", :role_description => "Sri Venkateswara Veterinary University "
   Role.create :role_name => "ciba", :role_description => "Central Institute of Brackishwater Aquaculture"
   Role.create :role_name => "NaCSA", :role_description => "National Centre for Sustainable Aquaculture "
   Role.create :role_name => "SIFT", :role_description => "State Institute Of Fisheries Technology"
   Role.create :role_name => "man_user", :role_description => "Fisher Man"
   Role.create :role_name => "woman_user", :role_description => "Fisher Woman"
   Role.create :role_name => "FM", :role_description => ""
   Role.create :role_name => "AIF", :role_description => ""
   Role.create :role_name => "MPEAF", :role_description => ""
   
   Seasonality.create :seasonality_type => "SS"
   Seasonality.create :seasonality_type => "LS"

   WaterBodyType.create :type_of_water_body => "GP"
   WaterBodyType.create :type_of_water_body => "MI"
   WaterBodyType.create :type_of_water_body => "Reservoir"

   WaterBodyOwnership.create :type_of_ownership => "Lease"
   WaterBodyOwnership.create :type_of_ownership => "License"
   WaterBodyOwnership.create :type_of_ownership => "Auction"

puts "Migrating Seed data for Districts"
csv_text = File.read(Rails.public_path+'districts.csv')
csv = CSV.parse(csv_text, :headers => false)
csv.each do |row|
   District.create :district_code => row[0],:district_name => row[1]
   puts "District Name  " + row[1]
end

puts "District data is migrated successfully"

puts "Migrating Seed data for Mandals"
csv_text = File.read(Rails.public_path+'mandals.csv')
csv = CSV.parse(csv_text, :headers => false)
csv.each do |row|
   Mandal.create :district_id => row[0],:mandal_code => row[1], :mandal_name => row[2].humanize
   puts "Mandal Name  "  + row[2]
end

# # puts "Mandal data is migrated successfully"



puts "Migrating Seed data for Panchayats"
csv_text = File.read(Rails.public_path+'panchayats.csv')
csv = CSV.parse(csv_text, :headers => false)
csv.each do |row|
   Panchayat.create :mandal_id => row[0],:panchayat_code => row[1], :panchayat_name => row[2].humanize
   puts "Panchayat Name  " + row[2]
end


puts "Panchayat data is migrated successfully"

puts "Migrating Seed data for Villages"
csv_text = File.read(Rails.public_path+'villages.csv')
csv = CSV.parse(csv_text, :headers => false)
csv.each do |row|
   Village.create :mandal_id => row[0],:village_code => row[1], :village_name => row[2].humanize
   puts "Village Name  " + row[2]
end

# puts "Villages data is migrated successfully"


puts "Adding Water Body Clusters Data"

csv_text = File.read(Rails.public_path+'WaterBody_DB/WaterBodyDetails.csv')
csv = CSV.parse(csv_text, :headers => false)
csv.each do |row|
   usr = User.create :mobile_no => row[3],:role_id => row[4],:password => "default@123"
   UserDetail.create :user_id => usr.id,:user_name => row[2],:mobile_number => usr.mobile_no,:alternate_mobile_no => usr.mobile_no
   dist = District.where(:district_name => row[0]).first
   puts dist.id
   clstr = WaterBodyCluster.create :user_id => usr.id,:district_id => dist.id,:cluster_name => row[1]
   
end

puts "End of Cluster Creation"


# puts "Water Body Creation"




csv_text = File.read(Rails.public_path+'WaterBody_DB/WaterBodies.csv', :encoding => 'ISO-8859-1')
csv = CSV.parse(csv_text, :headers => false)
csv.each do |row|
   begin
       
       mandal = Mandal.where(:mandal_name => row[0].strip.humanize).first
       village = Village.where(:village_name => row[1].strip.humanize).first unless mandal.blank?
       panchayat = Panchayat.where(:panchayat_name => row[1].strip.humanize).first unless mandal.blank?
       seasonality = Seasonality.where(:seasonality_type => row[3].strip).first
       wtr_bdy_typ = WaterBodyType.where(:type_of_water_body => row[4].strip).first
       ownr_shp = WaterBodyOwnership.where(:type_of_ownership => row[5].strip).first

       wtr_bdy = WaterBody.new :district_id => mandal.district.id,:mandal_id => mandal.id,:water_body_name => row[2],:water_body_cluster_id => row[8].strip,:village_name => row[1]
       wtr_bdy.village_id = village.id unless village.blank?
       wtr_bdy.panchayat_id = panchayat.id unless panchayat.blank?
       wtr_bdy.save!
       puts "Water Body Name  " + wtr_bdy.water_body_name
       wtr_bdy_dtl = WaterBodyDetail.new :water_body_id => wtr_bdy.id,:seasonality_id => seasonality.id,:water_body_ownership_id => ownr_shp.id,:twsa => row[6].strip,:ewsa => row[7].strip,:required_fingarling => row[9],:water_body_type_id => wtr_bdy_typ.id
       wtr_bdy_dtl.save!
   rescue StandardError => e
      mandal = Mandal.where(:mandal_name => row[0].strip.humanize).first
       InvalidWaterBody.create :raised_exception => e.message,:data_of_invalid_water_body => row
puts "Invalid Water Body   " + row[2].to_s
   end
end

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
# # end


puts "FLC Creation"

csv_text = File.read(Rails.public_path+'FishLandingCenters/flc_data.csv', :encoding => 'ISO-8859-1')
csv = CSV.parse(csv_text, :headers => false)
csv.each do |row|
   begin
#        usr = User.new(:aadhaar_no => row[13],:password => "default@123",:mobile_no => row[14])
#        usr.save!
       flc = FishLandingCenter.new(:district_id => row[0],:mandal_id => row[1],:flc_name => row[2].humanize)
       flc.save!
       puts "FLC with Name " + row[3] + " Is Created"
   rescue StandardError => e
       puts e.message.inspect
       InvalidFlc.create :raised_exception => e.message,:data_of_invalid_flc => row
puts "Invalid FLC   " + row[2].to_s
   end
end

puts "Vessel Details Creation"

csv_text = File.read(Rails.public_path+'VesselInfo/latest_boat_owner_data.csv', :encoding => 'ISO-8859-1')
csv = CSV.parse(csv_text, :headers => false)
csv.each do |row|
   begin
       
       vsl_data = JSON.parse(row[5])
     
       fth_nm = vsl_data[0]["fatherName"]
      
       adhr_no = vsl_data[0]["aadharNumber"]
      
       mob_no = vsl_data[0]["mobileNumber"]
     
       rat_no = vsl_data[0]["rationCardNumber"]
      
       usr = User.new(:aadhaar_no => adhr_no,:password => "default@123",:mobile_no => mob_no)
       usr.save
       flc = FishLandingCenter.where(:flc_name => row[3].humanize).first
       vsl = VesselDetail.new :district_id => row[0],:mandal_id => row[1],:fish_landing_center_id => flc.id,:user_id => usr.id,
                               :owner_id => row[4],:owner_name => row[6],:boat_id => row[7],:boat_type => row[10],
                               :license_renewed_date => row[11],:license_valid_upto => row[12],:father_name => fth_nm,
                               :aadhaar_no => adhr_no,:mobile_number => mob_no,:bank_account_number => row[16],:ration_card_number => rat_no,:ifsc_code => row[18],:mfid_number => row[19],
                               :bank_details => row[20],:email_id => row[21],:deleted => row[22],:creation_level => row[25],:is_eligible => row[26],:rejection_reason_id => row[27],:comment => row[28]
       vsl.save!
       puts "Vessel with ID " + vsl.boat_id + " Is Created"
   rescue StandardError => e
       puts e.message.inspect
       InvalidVessel.create :raised_exception => e.message,:data_of_invalid_vessel => row
puts "Invalid Vessel   " + row[2].to_s
   end
end




# file = Rails.public_path+"invalid_water_body.csv"

# inva_bdys = InvalidWaterBody.all

# column_headers = ["Exception Reason", "Data"]

# CSV.open(file, 'w', write_headers: true, headers: column_headers) do |writer|
#  inva_bdys.each do |inv_bdy|
#    writer << [inv_bdy.raised_exception, inv_bdy.data_of_invalid_water_body]
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


# file = Rails.public_path+"invalid_viilages.csv"

# waterbodies = WaterBody.all

# column_headers = ["District Name","Mandal Name","Village Name"]

# CSV.open(file, 'w', write_headers: true, headers: column_headers) do |writer|
#   waterbodies.each do |wtr_bdy|
#     if(wtr_bdy.village_id == nil)
#     #    puts wtr_bdy.water_body_name.inspect
#           writer << [wtr_bdy.district.district_name,wtr_bdy.mandal.mandal_name,wtr_bdy.village_name,wtr_bdy.water_body_name]
#     end
#   end
# end


# csv_text = File.read(Rails.public_path+'users.csv')
# csv = CSV.parse(csv_text, :headers => false)
# csv.each do |row|
#    usr = User.create :mobile_no => row[1],:role_id => 1,:password => "default@123"
#   #  UserDetail.create :user_id => usr.id,:user_name => row[2],:mobile_number => usr.mobile_no,:alternate_mobile_no => usr.mobile_no
#   #  dist = District.where(:district_name => row[0]).first
#   #  puts dist.id
#   #  clstr = WaterBodyCluster.create :user_id => usr.id,:district_id => dist.id,:cluster_name => row[1]
   
# end