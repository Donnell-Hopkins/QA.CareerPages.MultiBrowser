class DemoJobResultsPage
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
    @browser.navigate.to "https://nowhiring.com/demo/job-details/54247882"
    #@browser.navigate.to "http://careerpages.snagprod.com/zinburger/job-details/33346962"
  end

  def title
    @browser.title
  end

  def on_page?
    @browser.title == "Pizza Hut Part-Time Delivery Driver Job in Henrico, VA | The Good Shop"
    #@browser.title == "Zinburger Wine & Burger Bar Prep Cook Job in Palm Beach, FL | Zinburger"
  end

  def job_detail_title
    @browser.find_element(class: 'detail-title')
  end

  def job_detail_posting
    @browser.find_element(class: 'detail-posting')
  end

  def apply_but
    @browser.find_element(tag_name: 'apply-button')
    #@browser.find_element(class: 'btn').text == "Apply via Snagajob"
  end

  def back_but
    @browser.find_element(tag_name: 'button').text == "Back"
    #@browser.find_element(class: 'button.btn btn-secondary-dark').text == "Back"
  end

  def click_back_but
    @browser.find_element(tag_name: 'button').click
    #@browser.find_element(class: 'button.btn btn-secondary-dark').click
  end

end