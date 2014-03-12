Tree = Struct.new(:name, :left, :right) do
  
  def preorder
    ([name.to_s, left ? left.preorder : nil, right ? right.preorder : nil]).compact
  end

  def inorder
    ([left ? left.inorder : nil, name.to_s, right ? right.inorder : nil]).compact
  end

  def postorder
    ([left ? left.postorder : nil, right ? right.postorder : nil, name.to_s]).compact
  end
end

peter = Tree.new("Peter")
andrea = Tree.new("Andrea")
katie = Tree.new("Katie", peter, andrea)
jony = Tree.new("Jony", Tree.new("Dan"), katie)
phil = Tree.new("Phil", Tree.new("Craig"), Tree.new("Eddie"))
apple = Tree.new("Tim", jony, phil)

puts "Preorder:"
puts apple.preorder
puts "++++++++++================+++++++++++"

puts "Inorder:"
puts apple.inorder
puts "++++++++++================+++++++++++"

puts "Postorder:"
puts apple.postorder
puts "++++++++++================+++++++++++"
