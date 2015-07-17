class String
  def words
    gsub(/[^\w\s]/, '').split.select { |w| w.size > 2 }
  end
end
