ActiveRecord::Base.instance_eval do 
  def sortable_by(attr_name)
    eval <<-END
    def <=>(other)
      #{attr_name} <=> other.#{attr_name}
    end
    END
  end
end