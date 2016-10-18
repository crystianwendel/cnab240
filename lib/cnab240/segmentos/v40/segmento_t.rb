module Cnab240::V40
  class SegmentoT < BinData::Record
    include Cnab240::DefaultMixin
    include Cnab240::SegmentoMixin

    lstring :controle_banco, length: 3, pad_byte: '0'
    lstring :controle_lote, length: 4, pad_byte: '0'
    string :controle_registro, length: 1, initial_value: '3', pad_byte: '0'

    lstring :servico_numero_registro, length: 5, pad_byte: '0'
    string :servico_codigo_segmento, length: 1, initial_value: 'T', pad_byte: ' '
    lstring :servico_cnab, length: 1, pad_byte: ' '
    lstring :servico_codigo_movimento, length: 2, pad_byte: '0'

    lstring :favorecido_agencia_codigo, length: 5, pad_byte: '0'
    string :favorecido_agencia_dv, length: 1, pad_byte: ' '
    lstring :favorecido_conta_numero, length: 12, pad_byte: '0'
    string :favorecido_conta_dv, length: 1, pad_byte: ' '
    string :favorecido_agencia_conta_dv, length: 1, pad_byte: ' '

    string :boleto_nosso_numero, length: 20, pad_byte: ' '
    string :boleto_carteira_cobranca, length: 1, pad_byte: '0'
    string :boleto_numero_documento, length: 15, pad_byte: ' '
    lstring :boleto_data_vencimento, length: 8, pad_byte: '0'
    lstring :boleto_valor_nominal, length: 15, pad_byte: '0'

    string :cedente_numero_banco, length: 3, pad_byte: '0'
    string :cedente_agencia_cobradora, length: 5, pad_byte: '0'
    string :cedente_agencia_dv, length: 1, pad_byte: ' '

    string :identificacao_titulo_empresa, length: 25, pad_byte: ' '
    string :codigo_moeda, length: 2, pad_byte: ' '
    lstring :sacado_inscricao_tipo, length: 1, pad_byte: '0'
    lstring :sacado_inscricao_numero, length: 15, pad_byte: '0'
    string :sacado_nome, length: 40, pad_byte: ' '

    lstring :numero_contrato, length: 10, pad_byte: '0'
    lstring :valor_tarifa_custas, length: 16, pad_byte: '0'
    string :motivo_ocorrencia, lenght: 9, pad_byte: ' '

    string :cnab_g004_1, length: 17, pad_byte: ' '
  end
end
