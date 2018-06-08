class ZinburgerPage
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
=end

  def visit
    #@browser.navigate.to "http://career-pages.snagqa.corp/zinburger/"
    @browser.navigate.to "https://nowhiring.com/zinburger/"
    #@browser.navigate.to "http://careerpages.snagprod.com/zinburger/"
  end

  def title
    @browser.title
  end

  def on_page?
    @browser.title == "Apply Online to Zinburger Jobs"
  end

  def home_but
    #@browser.find_element(class: 'btn btn-secondary-dark')
    @browser.find_element(tag_name: 'button')
  end

  def custom_video
    @browser.find_element(tag_name: 'customer-site-column-video')
  end

  def geo_but
    @browser.find_element(class: 'input-group-addon geolocation hidden-xs hidden-sm ng-star-inserted')
  end

  def job_title
    @browser.find_element(class: 'job-title')
  end

  def job_location
    @browser.find_element(class: 'location')
  end

  def search_section
    @browser.find_element(id: 'search-results-header')
  end

  def job_but
    @browser.find_element(class: 'job-title').click
  end

  def apply_but
    @browser.find_element(tag_name: 'apply-button')
    #@browser.find_element(class: 'btn').text == "Apply"
  end

  def click_apply
    @browser.find_element(tag_name: 'apply-button').click
    #@browser.find_element(class: 'btn').text == "Apply"
  end

  def pagination
    @browser.find_element(tag_name: 'pagination-controls')
  end


end
