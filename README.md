# mecab-modern

Modernize mecab-ruby

## Requirements
* Ruby 1.9.x
* kconv lib

## Installation

Add this line to your application's Gemfile:

    gem 'mecab-modern'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mecab-modern

## Usage

	require "MeCab"
	require "mecab-modern"
	
	mecab = MeCab::Tagger.new
	nodes = mecab.parseToNode("本日は晴天なり")
	nodes.each do |node|
		puts node.surface.encoding #=> UTF-8
		puts node.feature
	end

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
