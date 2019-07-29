describe TreeBuilderChargebackRates do
  context "#x_get_tree_roots" do
    it "correctly renders storage and compute nodes when no rates are available" do
      tree = TreeBuilderChargebackRates.new("cb_rates_tree", {})
      keys = tree.tree_nodes.first[:nodes].collect { |x| x[:key] }
      titles = tree.tree_nodes.first[:nodes].collect { |x| x[:text] }
      rates = ChargebackRate.all

      expect(rates).to be_empty
      expect(keys).to match_array %w(xx-Compute xx-Storage)
      expect(titles).to match_array %w(Compute Storage)
    end
  end
end
