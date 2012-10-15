require 'spec_helper'

describe ClassifiedAd do
  describe 'cost_per' do
    it "should default to 0" do
      expect(subject.cost_per).to eql(0)
    end

    context 'when total_cost is assigned' do
      before :each do
        subject.total_cost = 100
      end

      it 'should be 0 when quantity is 0' do
        subject.quantity = 0
        expect(subject.cost_per).to eql(0)
      end

      [nil, 0].each do |qty|
        it "should be 0 when quantity is  #{qty.inspect}" do
          subject.quantity = 0
          expect(subject.cost_per).to eql(0)
        end
      end

      [nil, 0].each do |cost|
        it "should be 0 when total_cost is #{cost.inspect}" do
          subject.total_cost = cost
          expect(subject.cost_per).to eql(0)
        end
      end

      it "should be recalculated when quantity changes" do
        subject.quantity = 4
        expect(subject.cost_per).to eql(25)
        expect{subject.quantity = 10}.to change{subject.cost_per}.to(10)
      end

      it "should be recalculated when total_cost changes" do
        subject.quantity = 4
        expect(subject.cost_per).to eql(25)
        expect{subject.total_cost = 200}.to change{subject.cost_per}.to(50)
      end
    end
  end
end
