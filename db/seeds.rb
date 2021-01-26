firstname = ["Vitalie","Dima","Filip","Olea","Ina","Sergiu"]
lastname = ["Melnic","Vidrascu","Coleadov","Pirvu","Bogda"]

10.times do |u|
  Mailcontent.create!(
    name: "User#{@lastname.sample}",
    email: "User Family_#{@lastname.sample}",
    coverimage: @cover_image.sample,
    photo: @photos.sample
  )
end