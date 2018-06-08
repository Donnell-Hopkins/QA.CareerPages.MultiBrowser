class CMSOverviewPage
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
    @browser.navigate.to "https://career-sites.snagajob.com/overview"
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

  def headline
    @browser.find_element(class: 'headline')
  end

  def site_title
    @browser.find_element(class: 'site-detail-title')
  end

  def site_logo
    @browser.find_element(class: 'overview-detail-img-container')
  end

  def visit_but
    @browser.find_element(class: 'btn.btn-secondary')
  end

  def edit_but
    @browser.find_element(class: 'btn.btn-primary')
  end

  def click_edit
    @browser.find_element(class: 'btn.btn-primary').click
  end

end

