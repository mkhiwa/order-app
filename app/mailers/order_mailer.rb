class OrderMailer < ApplicationMailer
	default from: 'test@dynamic.sz'

  def order_email(product)
    #@user = user
    @product = product
    mail(to: "ricardom@nnss.co.sz", subject: 'Order')
  end
 end