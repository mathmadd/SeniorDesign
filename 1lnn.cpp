#include <iostream>
#include <fstream>
#include <string>
#include <stdio.h>
#include <stdint.h>
#include <vector>
#include <map>
#include <random>
#include <algorithm>


using namespace std;
typedef struct Cell Cell;
typedef struct Layer Layer;
const float LEARNING_RATE = 0.005;
const float NUM_OF_DAYS = 50;


struct Cell{
	float weight_prices; //
	float weight_0; //
	float weight_1; //
	float weight_2; //
	float weight_3; //
	float weight_4; //
	float prices; 	//
	float indicator_0; //
	float indicator_1; //
	float indicator_2; //
	float indicator_3; //
	float indicator_4; //
	float output; 		//
};

struct Layer{
	std::vector<Cell> cells;
};

float sigmoid(float output)
{
	//return (1/ (1 + exp(-output)));
	return 0.0;
}

void set_Neurons(Cell &cell, string &filename)
{
	Cell thiscell;
	ifstream indicator(filename);
	string indicator0, indicator1, indicator2, indicator3, indicator4, price;
	vector<string> indicator_0;
	vector<string> indicator_1;
	vector<string> indicator_2;
	vector<string> indicator_3;
	vector<string> indicator_4;
	vector<string> prices;
	float test_in0;
	if(!indicator.is_open()) std::cout << "ERROR : file open" <<"\n";
	while (indicator.good())
	{
		getline(indicator,indicator0, ',');
		getline(indicator,indicator1, ',');
		getline(indicator,indicator2, ',');
		getline(indicator,indicator3, ',');
		getline(indicator,indicator4, ',');
		getline(indicator,price, '\n');
		cell.indicator_0 = strtof((indicator0).c_str(),0);
		cell.indicator_1 = strtof((indicator1).c_str(),0);
		cell.indicator_2 = strtof((indicator2).c_str(),0);
		cell.indicator_3 = strtof((indicator3).c_str(),0);
		cell.indicator_4 = strtof((indicator4).c_str(),0);
		cell.prices = strtof((price).c_str(),0);
		//cell.push_back(thiscell);
	}
	//for (auto &partial_cell : cell)
		cell.weight_prices = static_cast <float> (rand()) / static_cast <float> (RAND_MAX);
		cell.weight_0	= static_cast <float> (rand()) / static_cast <float> (RAND_MAX);
		cell.weight_1	= static_cast <float> (rand()) / static_cast <float> (RAND_MAX);
		cell.weight_2	= static_cast <float> (rand()) / static_cast <float> (RAND_MAX);
		cell.weight_3	= static_cast <float> (rand()) / static_cast <float> (RAND_MAX);
		cell.weight_4	= static_cast <float> (rand()) / static_cast <float> (RAND_MAX);
		//cell.push_back(thiscell);

}

float get_error(Cell &neuron, float actual_price)
{
	return (actual_price - neuron.output);
}

void updateCellWeights(Cell &neuron, float err)
{
	neuron.weight_prices += LEARNING_RATE * neuron.prices * err;
	neuron.weight_0 += LEARNING_RATE * neuron.indicator_4 * err;
	neuron.weight_1 += LEARNING_RATE * neuron.indicator_4 * err;
	neuron.weight_2 += LEARNING_RATE * neuron.indicator_4 * err;
	neuron.weight_3 += LEARNING_RATE * neuron.indicator_4 * err;
	neuron.weight_4 += LEARNING_RATE * neuron.indicator_4 * err;
}

void cal_cell_output(Cell &neuron)
{
	neuron.output = (neuron.prices * neuron.weight_prices) + (neuron.indicator_0 * neuron.weight_0) + (neuron.indicator_1 * neuron.weight_1) +
	(neuron.indicator_2 * neuron.weight_2) + (neuron.indicator_3 * neuron.weight_3) + (neuron.indicator_4 * neuron.weight_4);
}


void test_Neurons(Cell  &neuron)
{
	//ofstream outputstream("test_output");
		cout << neuron.indicator_0 <<" | "<<neuron.weight_0<< " | " << neuron.indicator_1 << " | " <<neuron.weight_1<< " | " << neuron.indicator_2 <<" | "<<neuron.weight_2<< " | " <<
						neuron.indicator_3 <<" | "<<neuron.weight_3<< " | " << neuron.indicator_4 << " | " << neuron.weight_4<<" | " << neuron.prices      <<" | " <<neuron.output<< endl;
		//outputstream << "*************************************************************************************************************************************************************************" << endl;
}


void set_target_size(std::vector<float> &target_prices, int size)
{
	target_prices.resize(size);
}


void set_target(std::vector<float> &target_prices, string target_file)
{
	ifstream target(target_file);
	string target_price;
	if(!target.is_open()) std::cout << "ERROR : file open" <<"\n";
	while (target.good())
	{
		getline(target, target_price, '\n');
		target_prices.push_back(strtof((target_price).c_str(),0));
	}
	//for(auto &price : target_prices)


}


void trainCells(Cell &neuron, std::vector<float> target_prices, string &indicator_file, string &outfile)
{
	int i =0;

	set_Neurons(neuron, indicator_file);
	ofstream outputfile(outfile);
	outputfile << "***********************************************************************************************************************************************************************************\n"<< endl;
	outputfile << neuron.weight_prices << " " << neuron.weight_0 << " " << neuron.weight_1 << " " << neuron.weight_2 << " " << neuron.weight_3 << " "<< neuron.weight_4 << " "<< neuron.output << endl;
	for (auto target : target_prices)
	{
		cal_cell_output(neuron);
		auto error = get_error(neuron, target);
		updateCellWeights(neuron, error);
		outputfile << neuron.weight_prices << "  " << neuron.weight_0 << "  "<< neuron.weight_1 << "  " << neuron.weight_2 << "  " << neuron.weight_3 << "  "<< neuron.weight_4 << "  "
				<< neuron.output<<endl;
		outputfile << "***********************************************************************************************************************************************************************************\n"<< endl;
		i++;
	}
	test_Neurons(neuron);

}


void testCells(std::vector<Cell> &neurons)
{
	;;
}


int main()
{
	string targets[] = { 	"AAPL_high", 	"AMD_high", "FB_high", 	"GOOGL_high", "MSFT_high", "NKE_high", "SNE_high", 	"TSLA_high", 	"TWTR_high", 	"XLNX_high",
	 											"AAPL_low", 	"AMD_low", 	"FB_low", 	"GOOGL_low", 	"MSFT_low", 	"NKE_low", "SNE_low", 	"TSLA_low", 	"TWTR_low", 	"XLNX_low"};


	string indicators[] = {
							"AAPL_high_indicator", 	"AMD_high_indicator", 	"FB_high_indicator", 	"GOOGL_high_indicator", "MSFT_high_indicator", "NKE_high_indicator", "SNE_high",	"TSLA_high_indicator",
							"TWTR_high_indicator", 		"XLNX_high_indicator", "AAPL_low_indicator", 	"AMD_low_indicator", "FB_low_indicator", 	"GOOGL_low_indicator",
							"MSFT_low_indicator", 	"NKE_low_indicator", 		"SNE_low_indicator", 	"TSLA_low_indicator", "TWTR_low_indicator", 		"XLNX_low_indicator"
												};
	string outputfile("test_output");

  	std::vector<float> target_prices;
	//std::vector<Cell> testneurons;
	Cell testneurons;
	testneurons.resize(20);

	//for (int i = 0; i < 20; i++)
//	{
			//cout << "It works\n" << endl;
	string FB_indicator_low = "FB_indicator_low";
	target_prices.resize(0);
			//string indicator_file(indicator_highs[i]);
			//ifstream indicator(indicator_file);
	set_target(target_prices, targets[i]);

	trainCells(testneurons, target_prices, FB_indicator_low, outputfile);

	cout << "***********************************************************************************************" << endl;
			//cout << " After Training Cells" << endl;

//	cout << target_prices.size() << endl;
	return 0;
	//test_Neurons(testNeurons);
}