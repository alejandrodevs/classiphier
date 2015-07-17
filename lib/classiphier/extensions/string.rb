class String
  def words
    result = downcase.gsub(/[^\w\s]/, '').split
    result.delete_if { |w| w.size <= 2 }
    result.map(&:stem)
  end
end
