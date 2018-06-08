class CMSEditorPage
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

  # CMS TOP NAV ELEMENTS

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
    @browser.find_element(id: 'logo')
  end

  def cancel_btn
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

  def preview_but
    @browser.find_element(class: 'btn.btn-secondary')
    #@browser.find_element(class: 'btn').text == "Preview"
  end

  def publish_but
    @browser.find_element(class: 'btn.btn-primary')
    #@browser.find_element(class: 'btn').text == "Publish"
  end

  def click_edit
    @browser.find_element(class: 'btn.btn-primary').click
  end

  # CMS SECTION ELEMENTS

  def section_intro_section
    @browser.find_element(class: 'customer-site-intro-section')
  end

  def section_intro_header
    @browser.find_element(tag_name: 'header')
  end

  def section_customer_section
    @browser.find_element(tag_name: 'customer-site-section')
  end

  def section_add_section
    @browser.find_element(id: 'site-section-create-btn')
  end

  def section_footer_section
    @browser.find_element(tag_name: 'footer')
  end

  def section_footer_socialmedia
    @browser.find_element(id: 'social-media-container')
  end

  def section_footer_contact1
    @browser.find_element(class: 'customer-site-footer-contact-info1')
  end

  def section_footer_contact2
    @browser.find_element(class: 'customer-site-footer-contact-info2')
  end

  # CMS FORM ELEMENTS

  def theme_color_title
    @browser.find_element(class: 'color-picker-title')
  end

  def theme_color_pick
    @browser.find_element(class: 'color-picker-select')
  end

  def theme_header_font
    @browser.find_element(id: 'header-font')
  end

  def theme_body_font
    @browser.find_element(id: 'body-font')
  end

  def settings_home_link
    @browser.find_element(id: 'homepage-link')
  end

  def settings_site_url
    @browser.find_element(id: 'site-url')
  end

  def settings_edit_url_but
    @browser.find_element(class: 'btn').text == "Edit url"
  end

  def settings_sms_title
    @browser.find_element(id: 'sbt-handle')
  end

  def settings_sms_code
    @browser.find_element(id: 'sbt-code')
  end

  def settings_unpublish_but
    @browser.find_element(class: 'btn').text == "Unpublish site"
  end

  def settings_delete_but
    @browser.find_element(class: 'btn').text == "Delete site"
  end

end
