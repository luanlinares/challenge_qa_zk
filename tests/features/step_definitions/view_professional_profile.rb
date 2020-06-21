# frozen_string_literal: true

page = AuxiliarPage.new

Dado('que realizo o login no zenklub') do
  page.login
end

Quando('acesso as a tela de perfil do profissional') do
  page.sessions_validate
  page.access_professionals_page
end

Então('devo visualizar as informações detalhadas do perfil do profissional selecionado.') do
  page.view_professional_profile
end
