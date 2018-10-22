class Championship < ApplicationRecord
  enum modality: [:rolling_points, :phases]
def modality_type
  if self.modality == 'rolling_points'
    'Pontos Corridos'
  else
    'Mata Mata'
  end
end
end
