class AdministratorsMailer < ApplicationMailer

  def contact_us(message)
    @message = message
    @datetime = DateTime.now
    mail to: "daniel.ortiz@ieb-chile.cl",  subject: "BioModelos: Formulario de contacto"
  end

  def model_uploaded(user, publication)
    @user = user
    @publication = publication
    @datetime = DateTime.now
    mail to: "daniel.ortiz@ieb-chile.cl",  subject: "BioModelos: Nuevo modelo publicado por experto"
  end

  def group_suggested(user, new_group)
    @user = user
    @new_group = new_group
    @datetime = DateTime.now
    mail to: "daniel.ortiz@ieb-chile.cl",  subject: "BioModelos: Nueva sugerencia de grupo"
  end
end