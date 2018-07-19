@success = true

def run_tests(platform, browser, version, junit_dir)
  sh("platform=\"#{platform}\" browserName=\"#{browser}\" version=\"#{version}\" parallel_cucumber features --group-by scenarios -o \"--format junit --out #{junit_dir} --format pretty\" -n 20") do | success, _exit_code |
    @success &= success
  end
end

task :default => [:test_quality]


=begin

task :windows_10_edge do
  run_tests('Windows 10', 'edge', '16', 'junit_reports/windows_10_edge_16')
  run_tests('Windows 10', 'edge', '15', 'junit_reports/windows_10_edge_15')
  run_tests('Windows 10', 'edge', '14', 'junit_reports/windows_10_edge_14')
  run_tests('Windows 10', 'edge', '13', 'junit_reports/windows_10_edge_13')
end

task :windows_8_edge do
  run_tests('Windows 8.1', 'internet_explorer', '11.0', 'junit_reports/windows_81_ie_11')
  run_tests('Windows 8', 'internet_explorer', '10.0', 'junit_reports/windows_8_ie_10')
end

task :windows_7_edge do
  run_tests('Windows 7', 'internet_explorer', '11.0', 'junit_reports/windows_7_ie_11')
  run_tests('Windows 7', 'internet_explorer', '10.0', 'junit_reports/windows_7_ie_10')
  run_tests('Windows 7', 'internet_explorer', '9.0', 'junit_reports/windows_7_ie_9')
  run_tests('Windows 7', 'internet_explorer', '8.0', 'junit_reports/windows_7_ie_8')
end

task :os_x_safari do
  run_tests('OS X 10.13', 'safari', '11.0', 'junit_reports/os_x_10_13_safari_11')
  run_tests('OS X 10.12', 'safari', '11.0', 'junit_reports/os_x_10_12_safari_11')
  run_tests('OS X 10.12', 'safari', '10.0', 'junit_reports/os_x_10_12_safari_10')
  run_tests('OS X 10.11', 'safari', '10.0', 'junit_reports/os_x_10_11_safari_10')
  run_tests('OS X 10.11', 'safari', '9.0', 'junit_reports/os_x_10_11_safari_9')
  run_tests('OS X 10.10', 'safari', '8.0', 'junit_reports/os_x_10_10_safari_8')
  run_tests('OS X 10.9', 'safari', '7.0', 'junit_reports/os_x_10_9_safari_7')
end
=end

#WINDOWS_EDGE
task :windows_10_edge_17 do
  run_tests('Windows 10', 'edge', '17', 'junit_reports/windows_10_edge_17')
end

task :windows_10_edge_16 do
  run_tests('Windows 10', 'edge', '16', 'junit_reports/windows_10_edge_16')
end

task :windows_10_edge_15 do
  run_tests('Windows 10', 'edge', '15', 'junit_reports/windows_10_edge_15')
end

task :windows_10_edge_14 do
  run_tests('Windows 10', 'edge', '14', 'junit_reports/windows_10_edge_14')
end

task :windows_10_edge_13 do
  run_tests('Windows 10', 'edge', '13', 'junit_reports/windows_10_edge_13')
end

# task :windows_81_edge_11 do
#   run_tests('Windows 8.1', 'internet_explorer', '11.0', 'junit_reports/windows_81_ie_11')
# end

task :windows_8_edge_10 do
  run_tests('Windows 8', 'edge', '10.0', 'junit_reports/windows_8_edge_10')
end

task :windows_7_edge_11 do
  run_tests('Windows 7', 'edge', '11.0', 'junit_reports/windows_7_edge_11')
end

task :windows_7_edge_10 do
  run_tests('Windows 7', 'edge', '10.0', 'junit_reports/windows_7_edge_10')
end

task :windows_7_edge_9 do
  run_tests('Windows 7', 'edge', '9.0', 'junit_reports/windows_7_edge_9')
end

task :windows_7_edge_8 do
  run_tests('Windows 7', 'edge', '8.0', 'junit_reports/windows_7_edge_8')
end

#WINDOWS_IE
task :windows_7_ie_11 do
  run_tests('Windows 7', 'internet_explorer', '11.0', 'junit_reports/windows_7_ie_11')
end

task :windows_7_ie_10 do
  run_tests('Windows 7', 'internet_explorer', '10.0', 'junit_reports/windows_7_ie_10')
end

#WINDOWS_FIREFOX
task :windows_10_firefox_61 do
  run_tests('Windows 10', 'firefox', '61.0', 'junit_reports/windows_10_firefox_61')
end

task :windows_10_firefox_60 do
  run_tests('Windows 10', 'firefox', '60.0', 'junit_reports/windows_10_firefox_60')
end

task :windows_10_firefox_59 do
  run_tests('Windows 10', 'firefox', '59.0', 'junit_reports/windows_10_firefox_59')
end

#WINDOWS_CHROME
task :windows_10_chrome_67 do
  run_tests('Windows 10', 'chrome', '67.0', 'junit_reports/windows_10_chrome_67')
end

task :windows_10_chrome_66 do
  run_tests('Windows 10', 'chrome', '66.0', 'junit_reports/windows_10_chrome_66')
end

task :windows_10_chrome_65 do
  run_tests('Windows 10', 'chrome', '65.0', 'junit_reports/windows_10_chrome_65')
end

#MAC_SAFARI
task :os_x_10_13_safari_11 do
  run_tests('OS X 10.13', 'safari', '11.0', 'junit_reports/os_x_10_13_safari_11')
end

task :os_x_10_13_safari_10 do
  run_tests('OS X 10.13', 'safari', '10.0', 'junit_reports/os_x_10_13_safari_10')
end

task :os_x_10_12_safari_11 do
  run_tests('OS X 10.12', 'safari', '11.0', 'junit_reports/os_x_10_12_safari_11')
end

task :os_x_10_12_safari_10 do
  run_tests('OS X 10.12', 'safari', '10.0', 'junit_reports/os_x_10_12_safari_10')
end

task :os_x_10_12_safari_9 do
  run_tests('OS X 10.12', 'safari', '9.0', 'junit_reports/os_x_10_12_safari_9')
end

task :os_x_10_11_safari_10 do
  run_tests('OS X 10.11', 'safari', '10.0', 'junit_reports/os_x_10_11_safari_10')
end

task :os_x_10_11_safari_9 do
  run_tests('OS X 10.11', 'safari', '9.0', 'junit_reports/os_x_10_11_safari_9')
end

task :os_x_10_10_safari_8 do
  run_tests('OS X 10.10', 'safari', '8.0', 'junit_reports/os_x_10_10_safari_8')
end

task :os_x_10_9_safari_7 do
  run_tests('OS X 10.9', 'safari', '7.0', 'junit_reports/os_x_10_9_safari_7')
end

task :os_x_10_13_firefox_61 do
  run_tests('OS X 10.13', 'firefox', '61.0', 'junit_reports/os_x_10_13_firefox_61')
end

task :os_x_10_13_firefox_60 do
  run_tests('OS X 10.13', 'firefox', '60.0', 'junit_reports/os_x_10_13_firefox_60')
end

task :os_x_10_13_firefox_59 do
  run_tests('OS X 10.13', 'firefox', '59.0', 'junit_reports/os_x_10_13_firefox_59')
end

task :os_x_10_13_firefox_58 do
  run_tests('OS X 10.13', 'firefox', '58.0', 'junit_reports/os_x_10_13_firefox_58')
end

task :os_x_10_13_firefox_57 do
  run_tests('OS X 10.13', 'firefox', '57.0', 'junit_reports/os_x_10_13_firefox_57')
end

task :os_x_10_10_chrome_54 do
  run_tests('OS X 10.10', 'chrome', '54.0', 'junit_reports/os_x_10_10_chrome_54')
end

task :os_x_10_13_chrome_67 do
  run_tests('OS X 10.13', 'chrome', '67.0', 'junit_reports/os_x_10_13_chrome_67')
end

task :os_x_10_13_chrome_66 do
  run_tests('OS X 10.13', 'chrome', '66.0', 'junit_reports/os_x_10_13_chrome_66')
end

task :os_x_10_13_chrome_65 do
  run_tests('OS X 10.13', 'chrome', '65.0', 'junit_reports/os_x_10_13_chrome_65')
end

task :os_x_10_13_chrome_64 do
  run_tests('OS X 10.13', 'chrome', '64.0', 'junit_reports/os_x_10_13_chrome_64')
end

task :os_x_10_13_chrome_63 do
  run_tests('OS X 10.13', 'chrome', '63.0', 'junit_reports/os_x_10_13_chrome_63')
end



multitask :test_quality => [

    #WINDOWS
    #Edge
    :windows_10_edge_17,
    :windows_10_edge_16,
    # :windows_10_edge_15,
    # :windows_10_edge_14,
    #IE
    #:windows_7_ie_11,
    #:windows_7_ie_10

    #MAC
    #Safari
    #:os_x_10_13_safari_11,
    #:os_x_10_13_safari_10,
    :os_x_10_12_safari_11,
   # :os_x_10_12_safari_10,
    # :os_x_10_12_safari_10,
    # :os_x_10_12_safari_9,
    #Chrome
    #:os_x_10_13_chrome_67,
    :os_x_10_13_chrome_66,
    # :os_x_10_13_chrome_65,
    # :os_x_10_13_chrome_64,
    #Firefox
    #:os_x_10_13_firefox_61,
    :os_x_10_13_firefox_60
    # :os_x_10_13_firefox_59,
    # :os_x_10_13_firefox_58
  ] do
    raise StandardError, "Tests failed!" unless @success
  end
