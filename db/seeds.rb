tree_list = [
  [ "Oak", "Quercus" ],
  [ "Pine", "Pinus" ],
  [ "Sycamore", "Platanus" ],
  [ "Alder", "Alnus" ],
  [ "Birch", "Betula"],
  [ "Cherry", "Prunus"]
]

tree_list.each do |common, latin|
  Tree.create( common_name: common, latin_name: latin )
end
