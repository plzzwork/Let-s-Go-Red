var distToPlayerX = Player.x - x;
var distToPlayerY = Player.y - y;
distToPlayer = sqrt(distToPlayerX*distToPlayerX + distToPlayerY*distToPlayerY);

show_debug_message(distToPlayer);