class Evidence < ActiveRecord::Base
  belongs_to :parent, polymorphic: :true
  has_many :arguments, as: :parent
  has_many :questions, as: :parent

  def path
    str = "Evidence/#{self.id}"
    obj = self
    trial_not_found = true
    while trial_not_found do
      if obj.parent.is_a? Trial
        trial_not_found = false 
      else
        str = "#{obj.parent.class}/#{obj.parent.id}/#{str}"
      end
      obj = obj.parent
    end
    str = "/trials/#{obj.id}/" + str.split('/')[2..-1].join('/')
    str
  end
end
