module PiecesHelper


  def highlight(piece)
    if current_page?(controller: 'pieces', action: 'edit', id: piece.id)
      'highlight'
    elsif current_page?(contoller: 'games', action: 'show', id: piece.game.id)
      ''
    else
      'inactive'
    end
  end
end

