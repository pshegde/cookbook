
class UserIntegrationTestTest < ActionDispatch::IntegrationTest
  fixtures :all
  test "the truth" do
    assert true
    visit "/"
  end
end