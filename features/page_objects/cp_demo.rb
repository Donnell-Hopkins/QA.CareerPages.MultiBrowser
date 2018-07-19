class DemoPage
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

  #wait = Selenium::WebDriver::Wait.new(:timeout => 10) # seconds
  # begin
  #   element = wait.until { @browser.find_element(:tag_name => "apply-button") }
  # ensure
  #   @browser.quit
  # end



  def visit
    #@browser.navigate.to "http://career-pages.snagqa.corp/zinburger/"
    #@browser.navigate.to "https://nowhiring.com/zinburger/"
    #@browser.navigate.to "http://careerpages.snagprod.com/zinburger/"
    @browser.navigate.to "https://nowhiring.com/demo/"

    # wait = Selenium::WebDriver::Wait.new(:timeout => 10) # seconds
    # begin
    #   #element = wait.until { @browser.find_element(:class => "job-title") }
    #   element = wait.until { @browser.find_element(:name => "location") }
    # ensure
    #   #@browser.quit
    # end

  end

  def title
    @browser.title
  end

  def on_page?
    #@browser.title == "Apply Online to Zinburger Jobs"
    @browser.title == "Apply Online to The Good Shop Jobs"
  end

  def home_but
    #@browser.find_element(class: 'btn btn-secondary-dark')
    @browser.find_element(tag_name: 'button').text == "Home"
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

  def click_job_title
    @browser.find_element(class: 'job-title').click
  end

  def job_location
    @browser.find_element(class: 'location')
  end

  def search_section
    @browser.find_element(tag_name: 'jobs-search')
  end

  def job_but
    @browser.find_element(class: 'job-title').click
  end

  def apply_but
    @browser.find_element(tag_name: 'button').text == "Apply"
    #@browser.find_element(class: 'btn').text == "Apply"
    #@browser.find_element(class: 'apply-button').text == "Apply"
  end

  def click_apply
    @browser.find_element(tag_name: 'apply-button').click
    #@browser.find_element(class: 'btn').text == "Apply"
    #@browser.find_element(class: 'apply-button').click
  end

  def pagination
    #@browser.find_element(tag_name: 'pagination-controls')
    @browser.find_element(tag_name: 'pagination-template')
  end

  def footer
    @browser.find_element(tag_name: 'footer')
  end


end
