require 'test_helper'

class AutenticacaoTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Autenticacao.new.valid?
  end
end
