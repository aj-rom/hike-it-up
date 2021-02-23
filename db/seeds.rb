user = {
  username: "ajrom",
  name: "A.J. Romaniello",
  password: "password",
  password_confirmation: "password"
}

User.create(user).save

trails = {
  'Enchanted Mesa Trailhead': {
    description: 'Hiking area in Boulder, CO',
    address: 'Enchanted Mesa Trail, Boulder, CO 80305',
    hours: 'Open 24 Hours'
  },
  'Chautauqua Trail Overlook': {
    description: 'A scenic trail overlooking boulder county.',
    address: '24 Chautauqua Trail, Boulder, CO 80302',
    hours: '5AM - 11PM'
  },
  'Kohler Mesa Trail': {
    description: '',
    address: 'Kohler Mesa Trail, Boulder, CO 80305',
    hours: 'Sunrise to Sunset'
  },
  'NCAR Table Mesa Trail': {
    description: 'Hiking area at the base of the Flatirons.',
    address: 'NCAR - Table Mesa Trail, Boulder, CO 80305',
    hours: 'Open 24 Hours'
  }
}

trails.each do |k, v|
  t = Trail.new
  t.name = k
  t.description = v[:description]
  t.address = v[:address]
  t.hours = v[:hours]

  t.save
end

trail_images = {
  '1': {
    trail_id: 1,
    caption: '',
    url: 'https://images.squarespace-cdn.com/content/v1/5373ca62e4b0875c414542a1/1402875669394-IT5E3EVRCT8P0N31WOM8/ke17ZwdGBToddI8pDm48kCHChmuivJZ1Va5ov3ZJeg17gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0ouw-8l5B_J38LMU7OZFvYcSGirBhY_3j1yQtntvGS73bypqQ-qjSV5umPUlGbQFAw/DSC_0095.jpg'
  },
  '2': {
    trail_id: 1,
    caption: 'Lush green grass, and a massive boulder!',
    url: 'https://images.squarespace-cdn.com/content/v1/5373ca62e4b0875c414542a1/1402875656198-CKT335GO423EQNXP55UJ/ke17ZwdGBToddI8pDm48kCHChmuivJZ1Va5ov3ZJeg17gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0ouw-8l5B_J38LMU7OZFvYcSGirBhY_3j1yQtntvGS73bypqQ-qjSV5umPUlGbQFAw/DSC_0085.jpg'
  },
  '3': {
    trail_id: 1,
    url: 'http://www.annabelleneedles.com/wp-content/uploads/2015/02/03-3750-post/BoulderHike2014_Needles-7_resize.jpg'
  },
  '4': {
    trail_id: 2,
    caption: 'A view from the start of the trail.',
    url: 'https://dayhikesneardenver.com/wp-content/uploads/2013/08/00-first-flatiron-hike-near-boulder-chautauqua-trail.jpg'
  },
  '5': {
    trail_id: 2,
    url: 'https://cdn-assets.alltrails.com/uploads/photo/image/20804604/large_0af750e4cf30cafc94ab631f3198bb21.jpg'
  },
  '6': {
    trail_id: 3,
    caption: '',
    url: 'https://lh3.googleusercontent.com/proxy/M7iuk-eNIUt3LV4FFsBxLANXttjDcCrmsdjmXcL85bB3-BAK84mp2z9aD9LKOpdb4KLjkFopm75gckENFRFmpGdFh1OB5B9f1LEsi1P3k0bjOL5UqEqSfnIlu-Z_nCpBZsGBJ8iQEKeCSUQ'
  }
}

trail_images.each do |k,v|
  TrailImage.create(v).save
end

reviews = {
  '0': {
    trail_id: 1,
    user_id: 1,
    rating: 5,
    description: 'A very good hike for beginners!'
  },
  '1': {
    trail_id: 2,
    user_id: 1,
    rating: 4,
    description: 'Beautiful sights and a decent mile and a half long hike!'
  },
  '2': {
    trail_id: 3,
    user_id: 1,
    rating: 4,
    description: 'Not to shabby...'
  }
}

reviews.each do |k,v|
  Review.create(v).save
end