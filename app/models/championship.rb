class Championship < ApplicationRecord
  has_many :matches
  enum modality: [:rolling_points, :phases]

  accepts_nested_attributes_for :matches

  def modality_type
    if self.modality == 'rolling_points'
      'Pontos Corridos'
    else
      'Mata Mata'
    end
  end
end
