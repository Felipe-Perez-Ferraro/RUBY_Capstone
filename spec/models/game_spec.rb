require './classes/game'

describe Game do
  let(:game) { Game.new('9/12/2023', 'Yes', '26/10/2023', 888) }

  describe 'Create a new game' do
    it 'Should creates a new instance of Game' do
      expect(game).to be_a(Game)
    end

    it 'Should have a publish date / publisher & cover_state' do
      expect(game.publish_date).to eq('9/12/2023')
      expect(game.multiplayer).to eq('Yes')
      expect(game.last_played_at).to eq('26/10/2023')
    end
  end

  describe 'can_be_archived? method' do
    it 'Should return false' do
      expect(game.can_be_archived?).to eq(false)
    end
  end
end
