# frozen_string_literal: true

class Post < ActiveRecord::Base
  has_paper_trail class_name: 'PostVersion'
end
