class String
  def words
    gsub(/[^\w\s]/, '').split
  end
end
