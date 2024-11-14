class AddPortfolioLinkAndCompanyToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :portfolio_link, :string
    add_column :users, :company, :string
  end
end
