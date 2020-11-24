# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Child.destroy_all
Diaper.destroy_all
Feeding.destroy_all
Nap.destroy_all
JournalEntry.destroy_all


# users
User.create(name: "Mushfi", username: "mushmush", password: "abc123")

# children
Child.create(user_id: 1, name: "Sean", birthday: "2000-11-30", age: 18, password: "abc456")
Child.create(user_id: 1, name: "Hasibul", birthday: "1995-07-07", age: 25, password: "abc456")

# diapers
Diaper.create(child_id: 1, wet: true, solid: false, color: "brown")
Diaper.create(child_id: 1, wet: false, solid: true, color: "brown")
Diaper.create(child_id: 1, wet: false, solid: true, color: "brown")
Diaper.create(child_id: 1, wet: false, solid: true, color: "green")
Diaper.create(child_id: 1, wet: true, solid: false, color: "yellow")
Diaper.create(child_id: 1, wet: false, solid: true, color: "brown")
Diaper.create(child_id: 1, wet: true, solid: false, color: "brown")
Diaper.create(child_id: 1, wet: true, solid: false, color: "dark brown")
Diaper.create(child_id: 1, wet: true, solid: false, color: "brown")
Diaper.create(child_id: 1, wet: true, solid: false, color: "brown")
Diaper.create(child_id: 1, wet: false, solid: true, color: "yellow")
Diaper.create(child_id: 1, wet: false, solid: true, color: "brown")



# feedings
Feeding.create(child_id: 1, method: "breast", duration: "10 minutes", amount: 4)
Feeding.create(child_id: 1, method: "breast", duration: "4 minutes", amount: 7)
Feeding.create(child_id: 1, method: "formula", duration: "6 minutes", amount: 9)
Feeding.create(child_id: 1, method: "formula", duration: "8 minutes", amount: 3)

# naps
Nap.create(child_id: 1, duration: "30 minutes")
Nap.create(child_id: 1, duration: "2 hours")
Nap.create(child_id: 1, duration: "45 minutes")
Nap.create(child_id: 1, duration: "1 hour")


# journals
JournalEntry.create(user_id: User.first.id, image: "https://janaphotography.ca/wp-content/uploads/2017/09/Vancouver_Burnaby_100_days_old_photography_Caela-3.jpg", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tempus iaculis urna id volutpat lacus. Ultricies mi quis hendrerit dolor magna eget est. Ipsum dolor sit amet consectetur adipiscing elit duis tristique. Diam maecenas sed enim ut sem viverra aliquet eget sit. Ut diam quam nulla porttitor. Cursus risus at ultrices mi. Imperdiet sed euismod nisi porta lorem mollis. Quis blandit turpis cursus in hac habitasse platea dictumst. Leo in vitae turpis massa sed. Purus in mollis nunc sed id semper risus. Arcu odio ut sem nulla. Aliquam malesuada bibendum arcu vitae elementum curabitur vitae nunc sed.")
JournalEntry.create(user_id: User.first.id, image: "https://www.rachelyoonphotography.com/wp-content/uploads/2017/08/24-6143-post/baby_photography_vancouver_4%28pp_w768_h512%29.jpg", content: "Molestie nunc non blandit massa enim nec. Sapien faucibus et molestie ac. Elementum eu facilisis sed odio morbi quis. In mollis nunc sed id. Tortor at risus viverra adipiscing at in tellus integer feugiat. Convallis tellus id interdum velit laoreet id. Condimentum id venenatis a condimentum vitae sapien pellentesque. A pellentesque sit amet porttitor eget. Et molestie ac feugiat sed lectus vestibulum mattis ullamcorper velit. At ultrices mi tempus imperdiet nulla. Venenatis urna cursus eget nunc scelerisque viverra mauris. Nulla facilisi cras fermentum odio eu feugiat pretium nibh. Enim praesent elementum facilisis leo vel fringilla est ullamcorper eget. Luctus accumsan tortor posuere ac ut consequat semper viverra nam. Vulputate sapien nec sagittis aliquam malesuada.")
JournalEntry.create(user_id: User.first.id, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT040NgUF8lZ6E80jrRjwksmhhPxxZCgILuJw&usqp=CAU", content: "Integer malesuada nunc vel risus commodo viverra maecenas accumsan lacus. Velit ut tortor pretium viverra. Tincidunt lobortis feugiat vivamus at augue eget arcu dictum varius. Netus et malesuada fames ac turpis egestas sed. Laoreet sit amet cursus sit amet dictum sit amet. At tellus at urna condimentum mattis pellentesque id. Vulputate odio ut enim blandit volutpat. Purus semper eget duis at tellus at urna. Senectus et netus et malesuada fames ac turpis. Libero nunc consequat interdum varius sit. Ornare massa eget egestas purus viverra accumsan. Sagittis eu volutpat odio facilisis mauris sit amet massa.")
JournalEntry.create(user_id: User.first.id, image: "https://yougraphy-blog.canvera.com/wp-content/uploads/2018/07/29342586_1618598701528012_8470410239177392128_n.jpg", content: "Feugiat pretium nibh ipsum consequat nisl vel pretium. Diam sollicitudin tempor id eu nisl nunc mi. Sagittis aliquam malesuada bibendum arcu vitae. Tincidunt augue interdum velit euismod in pellentesque massa placerat. Mi quis hendrerit dolor magna eget est. Neque aliquam vestibulum morbi blandit cursus risus at ultrices mi. Tincidunt lobortis feugiat vivamus at augue eget arcu dictum varius. Tempor commodo ullamcorper a lacus vestibulum. Arcu ac tortor dignissim convallis aenean et tortor. Semper eget duis at tellus at urna condimentum. Nisi vitae suscipit tellus mauris. Fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Venenatis lectus magna fringilla urna porttitor rhoncus dolor purus non. Pellentesque pulvinar pellentesque habitant morbi tristique senectus et netus et. Donec ac odio tempor orci dapibus ultrices in iaculis nunc. Tristique magna sit amet purus gravida quis blandit. Integer vitae justo eget magna. Etiam dignissim diam quis enim lobortis scelerisque.")
JournalEntry.create(user_id: User.first.id, image: "https://tusay.in/uploads/66895545259db40ae85ff0.jpg", content: "Lectus sit amet est placerat in egestas erat imperdiet sed. Eget egestas purus viverra accumsan in nisl. Libero justo laoreet sit amet cursus sit amet dictum sit. Integer eget aliquet nibh praesent tristique magna sit amet. Quis commodo odio aenean sed adipiscing. Vestibulum lectus mauris ultrices eros in cursus turpis massa. Eget dolor morbi non arcu risus quis varius. Ut faucibus pulvinar elementum integer enim neque volutpat ac tincidunt. Euismod nisi porta lorem mollis aliquam ut porttitor. Dolor magna eget est lorem. A scelerisque purus semper eget. Massa tincidunt nunc pulvinar sapien et. Neque viverra justo nec ultrices dui sapien. Nec ullamcorper sit amet risus nullam. Pulvinar etiam non quam lacus. Interdum consectetur libero id faucibus nisl. Orci porta non pulvinar neque laoreet suspendisse interdum consectetur libero.")
JournalEntry.create(user_id: User.first.id, image: "https://d3btuubl2bvm9d.cloudfront.net/images/a918476260c811e4ae4c0e2f866a9102/1547651236159-web.jpg", content: "Purus in massa tempor nec. Quis viverra nibh cras pulvinar mattis nunc sed blandit. Accumsan sit amet nulla facilisi morbi. Rhoncus dolor purus non enim praesent elementum facilisis. Sit amet commodo nulla facilisi nullam. Facilisis magna etiam tempor orci. Odio ut sem nulla pharetra diam. Consequat ac felis donec et odio. Nec ultrices dui sapien eget. Integer malesuada nunc vel risus commodo viverra maecenas. Quam elementum pulvinar etiam non quam lacus. Venenatis urna cursus eget nunc. Mauris sit amet massa vitae tortor condimentum lacinia. Maecenas sed enim ut sem viverra. Et tortor consequat id porta nibh venenatis. Amet cursus sit amet dictum sit. Egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate.")
