class Wrestler < ActiveRecord::Base
    
    validates_presence_of :name, :hails_from, :birthdate

    belongs_to :user 


end