class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :PQ_worksheet_1
      t.string :PQ_worksheet_1_note
      t.string :invoice
      t.string :invoice_note
      t.string :scout_image_sent
      t.date :scout_image_sent_date
      t.string :prelims_sent 
      t.date :prelims_sent_date
      t.string :finals_delivered 
      t.date :finals_delivered_date 
      t.string :shoot_sheet_recv
      t.date :shoot_sheet_recv_date
      t.date :image_order
      t.string :image_order_notes 
      t.string :participant_info_name
      t.string :participant_info_notes
      t.string :other_notes
      
      t.timestamps
    end
  end
end
