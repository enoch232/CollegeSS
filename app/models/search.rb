class Search < ApplicationRecord
	def properties
		@properties ||= search_posts

	end

	private
	def search_posts
		posts = Post.all
		posts = posts.where(["title LIKE ?","%#{keyword}%"]) if keyword.present?
		posts = posts.where(["category = ?", category]) if category.present?
		posts = posts.where(["price >= ?", minprice]) if minprice.present?
		posts = posts.where(["price < ?", maxprice]) if maxprice.present?
		posts = posts.where(["state LIKE ?", state]) if state.present?
		posts = posts.where(["school LIKE ?", school]) if school.present?
		posts = posts.where(["condition = ?", condition]) if condition.present?
		posts = posts.where(["specific_category LIKE ?", specific_category]) if specific_category.present?
		posts
	end

end
