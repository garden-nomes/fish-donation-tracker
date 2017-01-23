module DonationsHelper
  def group_collection_by_food(category_list)
    [["food", category_list.food], ["non-food", category_list.non_food]]
  end
end
