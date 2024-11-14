class User < ApplicationRecord
    validates :name, presence: true
    validates :surname, presence: true
    validates :portfolio_link, format: { with: URI::DEFAULT_PARSER.make_regexp(%w[http https]), message: 'must be a valid URL' }, allow_blank: true
    validates :company, length: { maximum: 255 }, allow_blank: true  
end
