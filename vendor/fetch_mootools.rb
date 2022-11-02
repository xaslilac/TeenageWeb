mootools_versions = %w[
	1.6.0
	1.5.2
	1.5.1
	1.5.0
	1.4.5
	1.4.4
	1.4.3
	1.4.2
	1.4.1
	1.4.0
	1.3.2
	1.3.1
	1.3.0
	1.2.5
	1.2.4
	1.2.3
	1.2.2
	1.2.1
	1.1.2
	1.1.1
]

mootools_versions.each do |version|
	puts "mootools-#{version}"
	`curl -o ./vendor/dist/mootools/mootools-#{version}.js https://ajax.googleapis.com/ajax/libs/mootools/#{version}/mootools.js`
	puts "mootools-#{version}.min"
	minified_file_name = (version == "1.6.0" || version == "1.5.2") ? "mootools.min.js" : "mootools-yui-compressed.js"
	`curl -o ./vendor/dist/mootools/mootools-#{version}.min.js https://ajax.googleapis.com/ajax/libs/mootools/#{version}/#{minified_file_name}`
end
