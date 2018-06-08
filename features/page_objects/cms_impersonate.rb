class CMSImpersonatePage
  def initialize(browser)
    @browser = browser
  end

=begin
  FINDERS EXAMPLES=
      {
          :class             => 'ClassName',
          :class_name        => 'ClassName',
          :css               => 'CssSelector',
          :id                => 'Id',
          :link              => 'LinkText',
          :link_text         => 'LinkText',
          :name              => 'Name',
          :partial_link_text => 'PartialLinkText',
          :tag_name          => 'TagName',
          :xpath             => 'Xpath',
      }

  domain : "nowhiring.com/donnytest"
  id : "5aa1406284b382001c061a16"
  billingAccountId : "325968"
  brandTemplateId : "169628"
  ownerid : "donnytest"
  type : "go-customer"

=end

  def visit
    #@browser.navigate.to "http://career-pages.snagqa.corp/zinburger/"
    @browser.navigate.to "https://career-sites.snagajob.com/impersonate"
  end

  def title
    @browser.title
  end

  def on_page?
    @browser.title == "Snagajob Career Page Management"
  end

  def uname_frm
    @browser.find_element(id: 'username')
  end

  def username_frm
    @browser.find_element(id: 'username').send_keys("donnell.hopkins")
  end

  def pword_frm
    @browser.find_element(id: 'password')
  end

  def password_frm
    @browser.find_element(id: 'password').send_keys("donnell.hopkins")
  end

  def ownid_frm
    @browser.find_element(id: 'ownerId')
  end

  def ownerid_frm
    @browser.find_element(id: 'ownerId').send_keys("donnytest")
  end

=begin
  def owntype_go
    @browser.find_element(id: 'ownerId')
  end

  def owntype_tms
    @browser.find_element(id: 'ownerId')
  end

  def owntype_snagrec
    @browser.find_element(id: 'ownerId')
  end
=end

  def billacctid_frm
    @browser.find_element(id: 'bAId')
  end

  def billingaccountid_frm
    @browser.find_element(id: 'bAId').send_keys("325968")
  end

  def brandtempid_frm
    @browser.find_element(id: 'brandTemplateId')
  end

  def brandtemplateid_frm
    @browser.find_element(id: 'brandTemplateId').send_keys("169628")
  end

  def signin_but
    @browser.find_element(class: 'btn')
  end



end
