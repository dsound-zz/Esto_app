require 'csv'

def addresses 
    addresses = []
    columns = 
        [
            :old_address_id, 
            :line_1, 
            :line_2, 
            :city, 
            :state, 
            :country, 
            :zipcode
        
        ]

        CSV.foreach('public/OldCSVFiles/esto - address - esto - address.csv', headers: true) do |row|   
            if row['Addr_Address1'] != 'NULL'                                                             
                addresses.push(
                    {
                        old_address_id: row['Addr_AddressId'],
                        line_1: row['Addr_Address1'],
                        line_2: row['Addr_Address2'],
                        city: row['Addr_City'],
                        state: row['Addr_State'],
                        country: (row['Addr_Country'] == nil ? 'United States' : row['Addr_Country']),
                        zipcode: row['Addr_PostCode']
                    })
            end
        end
        Address.import columns, addresses, validate: false
end 




def clients 
    clients = []
    columns = 

    [
        :name, 
        :website,
        :status,  
        :created_by,
        :library_dir, 
        :sec_terr, 
        :old_company_id,
        :old_address_id, 
        :old_legacy_id
    ]

    CSV.foreach('public/OldCSVFiles/esto company 122118 - esto company 122118.csv', headers: true) do |row|
        if row['Comp_Name'] != 'NULL'
            clients.push(
                {
                    name: row['Comp_Name'],
                    website: (row['Comp_WebSite'] if row['Comp_WebSite']),
                    **(row['Comp_Status'] == 'Active' ? {status: 'Active'} : {status: 'Inactive'}), 
                    created_by: row['Comp_CreatedBy'],
                    library_dir: row['Comp_LibraryDir'],
                    sec_terr: row['Comp_SecTerr'],
                    old_company_id: row['Comp_CompanyId'],
                    old_address_id: row['Comp_PrimaryAddressId'],
                    old_legacy_id: row['comp_legacycompid'],
                }
             )
        end 
    end  
    Client.import columns, clients, validate: false 
end 



def contacts
    contacts = []
    columns = 

    [
        :first_name, 
        :last_name, 
        :title,
        :department, 
        :sec_terr,
        :old_contact_id,
        :old_address_id,
        :old_company_id,
        :old_legacy_id
    ]

    CSV.foreach('public/OldCSVFiles/esto - person - esto - person.csv', headers: true) do |row| 
        if row['Pers_FirstName'] || row['Pers_LastName']
            contacts.push(
            {
                first_name: row['Pers_FirstName'],
                last_name: row['Pers_LastName'],
                title: row['Pers_Title'],
                department: row['Pers_Department'],
                sec_terr: row['pers_SecTerr'],
                old_contact_id: row['Pers_PersonId'],
                old_address_id: row['Pers_PrimaryAddressId'],
                old_company_id: row['Pers_CompanyId'],
                old_legacy_id: row['pers_legacypersid']
            })
        end 
    end
 
    Contact.import columns, contacts, validate: false 
end


def phones 
    fixedCounryCode = nil 
    area_code = nil
    phones = []
    columns = 

    [
        :old_phone_id,
        :phone_type,
        :phone_country_code, 
        :phone_area_code,
        :phone_num,
        :phone_ext, 
        :phone_initid, 
        :phone_foreign_id
        
    ]
  
    CSV.foreach('public/OldCSVFiles/Esto - Phone - Esto - Phone.csv', headers: true) do |row|
        if row['Phon_Number'] 
            row['Phon_CountryCode'] = "1" if row['Phon_CountryCode'] == nil || row['Phon_CountryCode'].to_i == 0
          
                if !row['Phon_AreaCode']
                row['Phon_AreaCode'] = row['Phon_Number'][0..2]
                end 
            phone_number = row['Phon_CountryCode'] + row['Phon_AreaCode'] + row['Phon_Number']
            phone_number = phone_number.gsub(' ', '')
            phone_number = phone_number.sub('x', ';')
            phone = Phonelib.parse(phone_number)
                    
          
         
             phones.push({
                old_phone_id: row['Phon_PhoneId'],
                phone_type: 'Office Phone',
                phone_country_code: phone.country_code,
                phone_area_code: phone.area_code,
                phone_num: phone.local_number,
                phone_ext: (phone.extension if phone.extension),
                phone_initid: row['phon_intid'],
                phone_foreign_id: row['phon_intforeignid']
             }) 
           
        end  
        
    end  
    
    Phone.import columns, phones, validate: false
end 


def emails
    emails = []
    columns = 

    [
        :email_address, 
        :email_type,
        :email_deleted,
        :old_email_link_id,
        :old_email_intforeignid,
        :old_email_intid
    ]

    CSV.foreach('public/OldCSVFiles/Esto - Email MAP.xlsx - Esto - Email.csv', headers: true) do |row| 
        if row['Emai_EmailAddress']
            emails.push({
                email_address: row['Emai_EmailAddress'],
                email_type: 'Business',
                email_deleted: (true if row['Emai_Deleted'] == '1'),
                old_email_link_id: row['Emai_EmailId'],
                old_email_intforeignid: row['emai_intforeignid'],
                old_email_intid: row['emai_intid']
            })
        end
    end
    Email.import columns, emails, validate: false 
end


def projects
    projects = []
    columns =

    [   
        :old_project_id, 
        :old_company_id,
        :old_contact_id,
        :old_employee_id,
        :old_created_by_id,
        :old_additionalusage,
        :old_secterr, 
        :old_legacy_id,
        :invoice, 
        :old_final_date, 
        :project_type, 
        :status,
        :stage, 
        :job_num,
        :other_notes
       
    ]

    CSV.foreach('public/OldCSVFiles/esto-projects - esto-projects.csv', headers: true) do |row|
        projects.push({
            old_project_id: row['Oppo_OpportunityId'],
            old_contact_id: (row['Oppo_PrimaryPersonId'] if row['Oppo_PrimaryPersonId']),
            old_company_id: row['Oppo_PrimaryCompanyId'],
            old_employee_id: row['Oppo_AssignedUserId'],
            old_created_by_id: row['Oppo_CreatedBy'],
            old_additionalusage: row['oppo_additionalusage'],
            old_secterr: row['Oppo_SecTerr'],
            old_legacy_id: row['oppo_legacyoppoid'],
            invoice: row['oppo_invoicenumber'],
            # description: row['Oppo_Description'],
           
            # architect: row['oppo_architect'],
            project_type: (row['Oppo_Type'] if row['Oppo_Type']),
            status: row['Completed'],
            stage: row['Oppo_Stage'],
            # location: row['oppo_location'],
            job_num: row['oppo_jobnumber'], 
            other_notes: row['oppo_notedateshot'],
            old_final_date: row['oppo_datetopro']
        }) 
    end
    Project.import columns, projects, validate: false
 end

 
 def buildings 
    buildings = []
    columns =
    [
        :description, 
        :location, 
        :architect,

    ]

    CSV.foreach('public/OldCSVFiles/esto-projects - esto-projects.csv', headers: true) do |row|
        buildings.push({
            description: row['Oppo_Description'],
            location: row['oppo_location'],
            architect: row['oppo_architect'],
        })
        buildings.compact
        end 
    Building.import columns, buildings, validate: false 
 end

 def join_table_old_ids 
    project_contacts = []
    company_contacts = []
    employee_projects = []
    project_contacts_columns = 
    [
        :old_project_id, 
        :old_contact_id
    ]

    company_contacts_columns = 
    [
        :old_company_id,
        :old_contact_id
    ]

    employee_projects_columns = 
    [
        :old_employee_id,
        :old_project_id
    ]

    CSV.foreach('public/OldCSVFiles/esto-projects - esto-projects.csv', headers: true) do |row|
        project_contacts.push({
            old_project_id: row['Oppo_OpportunityId'],
            old_contact_id: row['Oppo_PrimaryPersonId']
        })

        company_contacts.push({
            old_company_id: row['Oppo_PrimaryCompanyId'],
            old_contact_id: row['Oppo_PrimaryPersonId']
        })
        employee_projects.push({ 
            old_employee_id: row['Oppo_AssignedUserId'],
            old_project_id: row['Oppo_OpportunityId']
        })
    end 
    ProjectContact.import project_contacts_columns, project_contacts, validate: false
    CompanyContact.import company_contacts_columns, company_contacts, validate: false 
    EmployeeProject.import employee_projects_columns, employee_projects, validate: false      
    
 end




def images 
    images = []
    columns =
    [
       :caption,
       :photographer,
       :image_number,
       :file_size,
       :keywords 
    ]

    CSV.foreach('/Users/demiansims/Development/Esto/public/OldCSVFiles/esto-online_archive-DL - esto-online_archive .csv', headers: true) do |row|
        images.push({
            caption: row['Caption'],
            photographer: row['Photographer'],
            image_number: row['image_number (with job number as prefix)'],
            file_size: row['File Size'],
            keywords: row['Keywords']
        })
    end
    Image.import columns, images, validate: false 
end 


# clients 
# emails
# projects
# contacts
addresses
phones  
buildings 
# join_table_old_ids

