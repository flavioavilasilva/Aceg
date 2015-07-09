# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format
# (all these examples are active by default):
# ActiveSupport::Inflector.inflections do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end
#
# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections do |inflect|
#   inflect.acronym 'RESTful'
# end

ActiveSupport::Inflector.inflections do |inflect|
    inflect.irregular 'home', 'home'
    inflect.irregular 'indicacao', 'indicacoes'
    inflect.irregular 'confirmacao', 'confirmacoes'
    inflect.irregular 'animal', 'animais'
    inflect.irregular 'cor', 'cores'
    inflect.irregular 'doacao', 'doacoes'
    inflect.irregular 'doador', 'doadores'
    inflect.irregular 'adocao', 'adocoes'
    inflect.irregular 'autenticacao', 'autenticacoes'
    inflect.irregular 'perfil', 'perfis'
    inflect.irregular 'oferta_voluntariado', 'oferta_voluntariado'
end



