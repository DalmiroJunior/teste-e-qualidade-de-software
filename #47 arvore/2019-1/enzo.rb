class Arvore
  attr_reader :idade, :altura, :frutas, :viva
  alias viva? viva

  def initialize
    @idade = 0
    @altura = 0.0
    @frutas = 0
    @viva = true
  end

  def passar_um_ano
    return unless @viva

    @frutas = 0
    gera_frutas
    @idade += 1
    @altura += 0.5

    morta if @idade == 100
  end

  def pegar_uma_fruta
    @frutas -= 1 unless @frutas.zero?
  end

  def gera_frutas
    @frutas += 10 if @viva && @idade >= 2
  end

  def morta
    @viva = false
    @frutas = 0
  end
end