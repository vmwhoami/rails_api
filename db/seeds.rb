firstname = ["Vitalie","Dima","Filip","Olea","Ina","Sergiu"]
lastname = ["Melnic","Vidrascu","Coleadov","Pirvu","Bogda"]

10.times do |u|
  Mailcontent.create!(
    name: " #{firstname.sample} #{lastname.sample}",
    email: "vmwhoami#{u}@gmail.com",
    phone: "+3736944247#{u}",
    content:" Lorem ipsum, dolor sit amet consectetur adipisicingu elit. Explicabo nulla voluptates obcaecati a minus ratione? Repudiandae provident voluptatem alias nisi."
  )
end

puts "---"*100