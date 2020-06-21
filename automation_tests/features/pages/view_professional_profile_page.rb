# frozen_string_literal: true

class AuxiliarPage < SitePrism::Page
  element :useremail, '#login-form-email'
  element :userpassword, '#login-form-password'
  element :btn_login, '.medium-size-button'
  element :link_specialists, ':nth-child(3) > .nav-page-link > span'
  element :btn_view_more, ':nth-child(1) > app-professional-search > .container > .row > .professional-link > .btn'
  element :chat_specialist, '#show-chat-with-professional'
  element :calendar, '> div > div > div.col-12.col-lg-5.position-relative > div'

  def login
    useremail.set('qachallenge@zenklub.com')
    userpassword.set('qachallenge')
    btn_login.click
  end

  def sessions_validate
    page.assert_text('Você ainda não fez nenhuma sessão. Encontre o profissional perfeito para você ainda hoje')
    page.has_text?('AGENDAR SESSÃO')
  end

  def access_professionals_page
    link_specialists.click
    page.assert_text('Encontre seu especialista')
  end

  def view_professional_profile
    sleep(3)
    btn_view_more.click
    page.assert_text('EXPERIÊNCIA')
    page.assert_text('DESCRIÇÃO PESSOAL')
    page.assert_text('POLÍTICA DE REMARCAÇÃO')
    page.assert_text('Minhas Avaliações')
    page.has_selector?('calendar')
    page.has_selector?('chat_specialist')
  end
end
