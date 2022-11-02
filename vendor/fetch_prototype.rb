prototype_versions = {
	"https://ajax.googleapis.com/ajax/libs/prototype/1.7.3.0/prototype.js" => "1.7.3",
	"https://ajax.googleapis.com/ajax/libs/prototype/1.7.2.0/prototype.js" => "1.7.2",
	"https://ajax.googleapis.com/ajax/libs/prototype/1.7.1.0/prototype.js" => "1.7.1",
	"https://ajax.googleapis.com/ajax/libs/prototype/1.7.0.0/prototype.js" => "1.7",
	"http://prototypejs.org/assets/2009/8/31/prototype.js" => "1.6.1",
	"http://prototypejs.org/assets/2008/9/29/prototype-1.6.0.3.js" => "1.6.0.3",
	"http://prototypejs.org/assets/2008/1/25/prototype-1.6.0.2.js" => "1.6.0.2",
	"http://prototypejs.org/assets/2007/11/6/prototype.js" => "1.6",
	"http://prototypejs.org/assets/2008/1/25/prototype-1.5.1.2.js" => "1.5.1.2",
	"http://prototypejs.org/assets/2007/6/20/prototype.js" => "1.5.1.1",
	"http://prototypejs.org/assets/2007/5/1/prototype.js" => "1.5.1",
	"http://prototypejs.org/assets/2007/1/18/prototype.js" => "1.5.0",
}

prototype_versions.each do |url, version|
	puts "prototype-#{version}"
	`curl -o ./vendor/dist/prototype/prototype-#{version}.js #{url}`
end

scriptaculous_versions = %w[
	1.9.0
	1.8.3
	1.8.2
	1.8.1
]

scriptaculous_versions.each do |version|
	puts "scriptaculous-#{version}"
	`curl -o ./vendor/dist/prototype/scriptaculous-#{version}.js https://ajax.googleapis.com/ajax/libs/scriptaculous/#{version}/scriptaculous.js`
end

puts "scripty-2.0.0-b1
`curl -o ./vendor/dist/prototype/scripty-2.0.0-b1.zip http://scripty2.com/download/scripty2-2.0.0_b1.zip`
