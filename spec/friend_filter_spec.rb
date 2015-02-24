require "friend_filter"

describe FriendFilter do

  before do
    @friends = [
      {
        first_name: "Jordan",
        last_name: "Collier",
        status: "Married",
        birth_date: Date.new(1991, 3, 24),
      },
      {
        first_name: "Hayley",
        last_name: "Blackstock",
        status: "Single and ready to Mingle",
        birth_date: Date.new(1985, 9, 18),
      }
    ]
  end

  describe "#born_before_1988" do
    it "returns only friends that were born before 1988" do
      hayley = {
        first_name: "Hayley",
        last_name: "Blackstock",
        status: "Single and ready to Mingle",
        birth_date: Date.new(1985, 9, 18),
      }

      expect(FriendFilter.new(@friends).born_before_1988).to eq([hayley])
    end
  end

  describe "#grabbing_friends" do
    it "returns the friends with their status and birthdays" do
      friends_with_deets = [
        "Jordan Collier (Married) - 3/24/1991",
        "Hayley Blackstock (Single and ready to Mingle) - 9/18/1985"
      ]

      expect(FriendFilter.new(@friends).grabbing_friends).to eq(friends_with_deets)
    end
  end
end
