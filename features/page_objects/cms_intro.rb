class CMSIntroPage
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
    @browser.navigate.to "https://career-sites.snagqa.com/intro"
  end

  def title
    @browser.title
  end

  def on_page?
    @browser.title == "Snagajob Career Page Management"
  end

  def topnav
    @browser.find_element(class: 'nav-desktop')
  end

  def snag_logo
    @browser.find_element(id: 'nav')
  end

  def impersonateback_btn
    @browser.find_element(class: 'btn')
  end

  def intro_top
    @browser.find_element(class: 'intro-top')
  end

  def intro_bottom
    @browser.find_element(class: 'intro-bottom')
  end




end
