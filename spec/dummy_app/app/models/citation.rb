# frozen_string_literal: true

class Citation < ActiveRecord::Base
  belongs_to :quotation

  has_paper_trail
end
