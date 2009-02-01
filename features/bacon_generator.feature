Feature: shoulda generator
  In order to start a new gem
  A user should be able to
  generate a project setup for bacon

  Scenario: generating a gem with bacon tests
    Given a working directory
    And I configure my email address as 'bar@example.com'
    And I configure my name as 'foo'
    And I configure my github username as 'technicalpickles'
    And I configure my github token as 'zomgtoken'
    And I decide to call the project 'the-perfect-gem'
    And I decide to summarize the project as 'zomg, so good'
    And intentions to make a gem being tested by bacon

    When I generate a project

    Then a directory named 'the-perfect-gem' is created
    And a directory named 'the-perfect-gem/lib' is created
    And a directory named 'the-perfect-gem/spec' is created

    And a file named 'the-perfect-gem/LICENSE' is created
    And a file named 'the-perfect-gem/README' is created
    And a file named 'the-perfect-gem/lib/the_perfect_gem.rb' is created
    And a file named 'the-perfect-gem/spec/spec_helper.rb' is created
    And a file named 'the-perfect-gem/spec/the_perfect_gem_spec.rb' is created
    And a file named 'the-perfect-gem/.gitignore' is created

    And 'coverage' is ignored by git
    And '*.sw?' is ignored by git
    And '.DS_Store' is ignored by git

    And Rakefile has 'the-perfect-gem' as the gem name
    And Rakefile has 'bar@example.com' as the gem email
    And Rakefile has 'zomg, so good' as the gem summary
    And Rakefile has 'http://github.com/technicalpickles/the-perfect-gem' as the gem homepage
    And Rakefile has 'spec/**/*_spec.rb' in the Rake::TestTask pattern
    And Rakefile has 'spec/**/*_spec.rb' in the Rcov::RcovTask test_pattern
    And Rakefile has 'spec' in the Rcov::RcovTask libs

    And LICENSE has the copyright as belonging to 'foo'
    And LICENSE has the copyright as being in 2008

    And 'spec/the_perfect_gem_spec.rb' should describe 'ThePerfectGem'

    And git repository has 'origin' remote
    And git repository 'origin' remote should be 'git@github.com:technicalpickles/the-perfect-gem.git'

    And a commit with the message 'Initial commit to the-perfect-gem.' is made
    And 'README' was checked in
    And 'Rakefile' was checked in
    And 'LICENSE' was checked in
    And 'lib/the_perfect_gem.rb' was checked in
    And 'spec/spec_helper.rb' was checked in
    And 'spec/the_perfect_gem_spec.rb' was checked in
    And '.gitignore' was checked in
    And no files are untracked
    And no files are changed
    And no files are added
    And no files are deleted
    
