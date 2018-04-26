#include "preprocess_signals.hpp"



int main()
{

  // string data = "input_data";
  // string symbols[] = {"AAPL", "AMD", "TSLA", "NKE", "XLNX", "MSFT", "FB", "GOOGL", "TWTR", "SNE"};
  // string sym_dir[] = {"AAPL", "AMD", "TSLA", "NKE", "XLNX", "MSFT", "FB", "GOOGL", "TWTR", "SNE"};
  // string files[] = {"AAPL.txt", "AMD.txt", "TSLA.txt", "NKE.txt", "XLNX.txt",
  //                   "MSFT.txt", "FB.txt", "GOOGL.txt", "TWTR.txt", "SNE.txt"};

  // string highs[] = {"AAPL_high", "AMD_high", "TSLA_high", "NKE_high", "XLNX_high", "MSFT_high", "FB_high", "GOOGL_high", "TWTR_high", "SNE_high"};
  // string indicator_highs[] = {"AAPL_high_indicator", "AMD_high_indicator", "TSLA_high_indicator", "NKE_high_indicator", "XLNX_high_indicator", "MSFT_high_indicator",
  //                             "FB_high_indicator", "GOOGL_high_indicator", "TWTR_high_indicator", "SNE_high_indicator"};
  // string lows[] = {"AAPL_low", "AMD_low", "TSLA_low", "NKE_low", "XLNX_low", "MSFT_low", "FB_low", "GOOGL_low", "TWTR_low", "SNE_low"};
  // string indicator_lows[] = {"AAPL_low_indicator", "AMD_low_indicator", "TSLA_low_indicator", "NKE_low_indicator", "XLNX_low_indicator", "MSFT_low_indicator", "FB_low_indicator",
  //                             "GOOGL_low_indicator", "TWTR_low_indicator", "SNE_low_indicator"};
  // vector<vector<string>> signals;
  // vector<string> target_prices_high;
  // vector<string> target_prices_low;
  // vector<float> gain;
  // vector<float> loss;
  // //ifstream indicator(filename);
  // //Fetching data for each symbol
  
  // //system(("rm -R "+data).c_str());
  // //system(("mkdir "+data).c_str());
  // //for (int i =0; i < 10; i++)
  // //{
  //   //files[i] = data + "/" + s[i] + "/";
	 //  //cout << symbols[i] << endl;
  // //  system(("mkdir "+data+"/"+ symbols[i]+"/").c_str() );
  // //}


  // //for (int i=0; i < 10; i++)
  // //{
  //   //system(("net send "+hostname+" "+message).c_str());
  //   //system(("wget -nd https://stooq.com/q/d/l/?s="+symbols[i]+".US&i=d -q").c_str() );
  //   //system(("wget -nd https://api.iextrading.com/1.0/stock/"+symbols[i]+"/chart/5y?format=csv -O"+ data+"/"+symbols[i]+"/"+files[i]).c_str() );
  // //}
  // //Reading each file
  // for (int i= 0; i < 10; i++)
  // {
  //   string date, open, high, low, close, volume, unadjustedVolume, change, changePercent, vwap, label, changeOverTime;
  //   ifstream target(data+"/"+symbols[i]+"/"+files[i]);
  // 	string target_price;
  //   //target_prices_low.clear();
  //   //target_prices_high.clear();
  // 	if(!target.is_open()) std::cout << "ERROR : file open" <<"\n";
  // 	while (target.good())
  // 	{
  // 		getline(target, date, ',');
  //     getline(target, open, ',');
  //     getline(target, high, ',');
  //     getline(target, low, ',');
  //     getline(target, close, ',');
  //     getline(target, volume, ',');
  //     getline(target, unadjustedVolume, ',');
  //     getline(target, changePercent, ',');
  //     getline(target, vwap, ',');
  //     getline(target, label, ',');
  //     getline(target, changeOverTime, '\n');
  //     target_prices_high.push_back(high);
  //     target_prices_low.push_back(low);
  // 		//target_prices.push_back(strtof((target_price).c_str(),0));
  // 	}
  //     target_prices_high.erase(target_prices_high.begin(), target_prices_high.begin() + (target_prices_high.size() - 31));
  //     target_prices_low.erase(target_prices_low.begin(), target_prices_low.begin() + (target_prices_low.size() - 31));

  //     ofstream outputfiles_highs(data+"/"+symbols[i]+"/"+ highs[i]);
  //     ofstream outputfiles_lows(data+"/"+symbols[i]+"/"+lows[i]);
  //     ofstream outputfiles_highs_indicators(data+"/"+symbols[i] +"/"+ indicator_highs[i]);
  //     ofstream outputfiles_lows_indicators(data+"/"+symbols[i] +"/"+ indicator_lows[i]);
  //     for(auto &i : target_prices_high)
  //     {
  //       outputfiles_highs << i << endl;
  //       /* This is where the indicator computation comes in*/
  //       outputfiles_highs_indicators << 0.2 <<","<< 0.2 <<","<< 0.55 <<","<< 0.28 <<","<< 0.3 <<","<< 0.58 <<","<< i<< endl;
  //     }
  //     for(auto &i : target_prices_low)
  //     {
  //       outputfiles_lows << i << endl;
  //       /* This is where the indicator computation comes in*/
  //       outputfiles_lows_indicators << 0.2 <<","<< 0.2 <<","<< 0.55 <<","<< 0.28 <<","<< 0.3 <<","<< 0.58 <<","<< i<< endl;
  //     }
  //     //target.close();
  // }

  //Creating files
  string root= "FB_root"; 
  string sym = "FB";
  string file = "FB.txt"; 
  string sym_dir; 
  string full_path;
  
  process_data(root, sym, file);
  //system(("mkdir "  +root).c_str());
  //sym_dir = prepare_directories(root, sym);
  //system(("mkdir "  +sym_dir).c_str());
  //string full_path = prepare_directories(sym_dir, file);

  //download_data(root, sym, file);
  //cout << download_data(root, dir, file)<< endl;
  return 0;

}
