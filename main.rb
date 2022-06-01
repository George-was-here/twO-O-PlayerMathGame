require 'pp'
require './game.rb'
require './player.rb'

p = Player.new('player1')
  puts p.name
  puts p.lives

  p = Player.new('player2')
  puts p.name
  puts p.lives



