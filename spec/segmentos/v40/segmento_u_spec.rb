require 'spec_helper'

include Cnab240::V40

RSpec.describe Cnab240::V40::SegmentoU do
  it 'deve instanciar segmento' do
    segmento = Cnab240::V40::SegmentoU.new
    expect(segmento).to be_an_instance_of(Cnab240::V40::SegmentoU)
  end

  it 'deve conter campos' do
    segmento = Cnab240::V40::SegmentoU.new

    expect(segmento).to respond_to(:controle_banco)
    expect(segmento).to respond_to(:controle_lote)
    expect(segmento).to respond_to(:controle_registro)

    expect(segmento).to respond_to(:servico_numero_registro)
    expect(segmento).to respond_to(:servico_codigo_segmento)
    expect(segmento).to respond_to(:servico_codigo_movimento)
    expect(segmento).to respond_to(:servico_tipo_movimento)

    expect(segmento).to respond_to(:pagamento_valor_multa)
    expect(segmento).to respond_to(:pagamento_valor_desconto)
    expect(segmento).to respond_to(:pagamento_valor_abatimento)
    expect(segmento).to respond_to(:pagamento_valor_iof)
    expect(segmento).to respond_to(:pagamento_valor_pago)
    expect(segmento).to respond_to(:pagamento_valor_liquido)
    expect(segmento).to respond_to(:pagamento_valor_outras_despesas)
    expect(segmento).to respond_to(:pagamento_valor_outros_creditos)
    expect(segmento).to respond_to(:pagamento_data_efetivacao)
    expect(segmento).to respond_to(:pagamento_data_efetivacao)

    expect(segmento).to respond_to(:cnab_g004_1)
  end

  # it 'deve ter 240 caracteres' do
  #   segmento = Cnab240::V40::SegmentoU.new
  #   expect(segmento.linha.length).to be(240)
  # end

  it 'deve manter coesao' do
    c = Cnab240::V40::SegmentoU
    obj = c.new
    linha1 = obj.linha
    obj2 = c.read(linha1)
    linha2 = obj2.linha
    expect(linha1).to eq linha2
  end

  it 'deve abrir o arquivo de retorno' do
    arquivo = Cnab240::Arquivo::Arquivo.load_from_file "./spec/tmp/R1700009.RET"

		puts arquivo[0].lotes[0].segmentos[0].inspect
		puts "------------------------------------------------------"
	  puts arquivo[0].lotes[0].segmentos[1].inspect
		expect(arquivo).not_to be_nil
	end
end
