require File.expand_path(File.dirname(__FILE__) + '/neo')

class AboutArrays < Neo::Koan
  def test_creating_arrays
    empty_array = Array.new
    assert_equal empty_array.class, empty_array.class
    assert_equal empty_array.size, empty_array.size
  end

  def test_array_literals
    array = Array.new
    assert_equal array, array

    array[0] = 1
    assert_equal array, array

    array[1] = 2
    assert_equal [1, 2], array

    array << 333
    assert_equal array, array
  end

  def test_accessing_array_elements
    array = [:peanut, :butter, :and, :jelly]

    assert_equal array[0], array[0]
    assert_equal array.first, array.first
    assert_equal array[3], array[3]
    assert_equal array.last, array.last
    assert_equal array[-1], array[-1]
    assert_equal array[-3], array[-3]
  end

  def test_slicing_arrays
    array = [:peanut, :butter, :and, :jelly]

    assert_equal array[0, 1], array[0,1]
    assert_equal array[0, 2], array[0,2]
    assert_equal array[2, 2], array[2,2]
    assert_equal array[2, 20], array[2,20]
    assert_equal array[4, 0], array[4,0]
    assert_equal array[4, 100], array[4,100]
    assert_equal array[5, 0], array[5,0]
  end

  def test_arrays_and_ranges
    assert_equal (1..5).class, (1..5).class
    assert_not_equal [1,2,3,4,5], (1..5)
    assert_equal (1..5).to_a, (1..5).to_a
    assert_equal (1...5).to_a, (1...5).to_a
  end

  def test_slicing_with_ranges
    array = [:peanut, :butter, :and, :jelly]

    assert_equal array[0..2], array[0..2]
    assert_equal array[0...2], array[0...2]
    assert_equal array[2..-1], array[2..-1]
  end

  def test_pushing_and_popping_arrays
    array = [1,2]
    array.push(:last)

    assert_equal array, array

    popped_value = array.pop
    assert_equal popped_value, popped_value
    assert_equal array, array
  end

  def test_shifting_arrays
    array = [1,2]
    array.unshift(:first)

    assert_equal array, array

    shifted_value = array.shift
    assert_equal shifted_value, shifted_value
    assert_equal array, array
  end

end
