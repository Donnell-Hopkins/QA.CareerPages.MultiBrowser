Given 'I am on the Career Pages site' do
  #@cp_page = ZinburgerPage.new(@browser)
  @cp_page = DemoPage.new(@browser)
  @cp_page.visit
end

When 'I page down through the sections' do
  expect(@cp_page.title)
  expect(@cp_page.on_page?).to eq true

end

Then 'I should be presented a Job Listings' do
  expect(@cp_page.search_section)


end

Then 'I click apply' do
  #@cp_page.click_apply
  @cp_page.click_job_title
  #@cp_resultspage = ZinJobResultsPage.new(@browser)
  #@cp_resultspage.visit
  #@cp_page.job_but
  #@cp_page.click_apply_but
end

Then 'I should be presented with the job results page' do
  @cp_resultspage = DemoJobResultsPage.new(@browser)
  @cp_resultspage.visit
  expect(@cp_resultspage.on_page?).to eq true
  expect(@cp_resultspage.back_but)
  expect(@cp_resultspage.job_detail_title)
  expect(@cp_resultspage.job_detail_posting)
  expect(@cp_resultspage.apply_but)
end

Then 'I click the Back button' do
  @cp_resultspage.click_back_but
  #@cp_page = ZinburgerPage.new(@browser)
  #@cp_page.visit
  #results_page = ZinJobResultsPage.new(@browser)
  #expect(@results_page.back_but)
  #expect(@results_page.click_back_but)

end

Then 'I should return to the initial Career Page' do
  @cp_page = DemoPage.new(@browser)
  @cp_page.visit
  expect(@cp_page.title)
  expect(@cp_page.on_page?).to eq true
  #expect(@cp_page.job_title)
  #expect(@cp_page.job_location)
  #expect(@cp_page.apply_but)
  expect(@cp_page.search_section)
  #expect(@cp_page.pagination)
  expect(@cp_page.footer)
end
