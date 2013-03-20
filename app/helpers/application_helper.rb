module ApplicationHelper

  def unique_hash_creator
    uniq_array = ('a'..'z').to_a + ('A'..'Z').to_a + (1..9).to_a
    hash = []
    5.times { hash << uniq_array[rand(0..60)] }
    hash.join
  end
  
end
