module Enumerable
  def my_any?
    for i in 0...self.length
      if yield self[i]
        return true
      end
    end
    return false
  end

  def my_count
    unless block_given?
      return self.length
    end

    count = 0
    for i in 0...self.length
      if yield self[i]
        count += 1
      end
    end
    return count
  end

  def my_each_with_index
    for i in 0...self.length
      yield self[i], i
    end
    return self
  end

  def my_all?
    for i in 0...self.length
      unless yield self[i]
        return false
      end
    end
    return true
  end

  def my_none?
    for i in 0...self.length
      if yield self[i]
        return false
      end
    end
    return true
  end

  def my_map
    result = []
    for i in 0...self.length
      result << yield(self[i])
    end
    return result
  end

  def my_select
    result = []
    for i in 0...self.length
      if yield self[i]
        result << self[i]
      end
    end
    result
  end

  def my_inject(initial = nil)
    result = initial
    for i in 0...self.length
      result = yield result, self[i]
    end
    return result
  end
end

class Array
  def my_each
    for i in 0...self.length
      yield self[i]
    end
    return self
  end
end
