class ClientSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :total_memberships
  has_many :gyms
  has_many :memberships

  
  def total_memberships
    object.memberships.count
  end
end
