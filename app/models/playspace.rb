class Playspace < ActiveRecord::Base
  belongs_to :category

  has_many :reviews

  before_validation :format_values

  validates :name, presence: true
  validates :region, presence: true
  validates :district, presence: true
  validates :category, presence: true

  def format_values
    self[:name] = self[:name].downcase if self[:name].present?
    self[:region] = self[:region].downcase if self[:region].present?
    self[:district] = self[:district].downcase if self[:district].present?
    self[:category] = self[:category].downcase if self[:category].present?
  end

  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "DSC_0028.jpg"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/

end
