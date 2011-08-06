class AddComments < ActiveRecord::Migration
  def up
    Reply.create(:email=>'pmq2001@gmail.com',:username => 'pmq2001', :body=>'jkfdlsjfdsjfldskfskd',:note_id=>2)
        Reply.create(:email=>'pmq2001@gmail.com',:username => 'pmq2001', :body=>'jkfdlsjfdsjfldskfskd',:note_id=>2)
            Reply.create(:email=>'pmq2001@gmail.com',:username => 'pmq2001', :body=>'jkfdlsjfdsjfldskfskd',:note_id=>2)
                Reply.create(:email=>'pmq2001@gmail.com',:username => 'pmq2001', :body=>'jkfdlsjfdsjfldskfskd',:note_id => 1)
  end

  def down
  end
end
