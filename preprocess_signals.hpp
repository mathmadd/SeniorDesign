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

// float compute_average_gain(vector<float>& gains)
// {
//   float sum = 0;
//   for(auto &i : gains)
//   {
//     sum += i;
//   }
//   return (sum / (float)gains.size());
// }
// float compute_average_loss(vector<float>& loss)
// {
//   float sum = 0;
//   for(auto &i : loss)
//   {
//     sum += i;
//   }
//   return (sum / (float)loss.size());
// }
// float rsi(vector<float> &gains, vector<float> &loss)
// {
//   //float average_loss = compute_average_loss(loss);
//   //float average_gain = compute_average_gain(gains);
//   return (100 - (100 / (1 + (compute_average_loss(gains)/compute_average_gain(loss)))));
// }

string prepare_directories(string root_dir, string symbol)
{

  return (root_dir + "/" + symbol);
}

string create_files(string root, string sym_dir, string filename)
{
  return (prepare_directories(prepare_directories(root, sym_dir), filename));
}

void download_data(string root_dir, string& sym, string& filename)
{
  system(("mkdir "  +root_dir).c_str());
  string sym_dir = prepare_directories(root_dir, sym);
  system(("mkdir "  +sym_dir).c_str());
  string full_path = prepare_directories(sym_dir, filename);
  system(("wget -nd https://api.iextrading.com/1.0/stock/"+sym+"/chart/5y?format=csv -O"+full_path).c_str() );
}
/****************************************************** RSI ***********************************************************************/
 /*********************************************************************************************************************************/

void calcRSI(vector<double> &close,vector<double> &RSI)
{

  int count = 1;
  double change;
  double current, previous;
  double avg_gain = 0.0;
  double avg_loss = 0.0;
  double up=0.0, down = 0.0;
  double RS;
  double RSI_num;
  int i = 0;

  vector<double> changes_high, changes_low;


  //Writing stock closing price into vector(latest first) 
  // while(count != 16)
  // {
  //   RSI.push_back(close[count]);
  //   count++;
  // }
  i = close.size() - 1;
  //cout << "close vector size: " << i << "\n";
  int x = 0;
  

  while(i != 0)
  {
    //Sum of the average gains and average losses over a 14-day period
    avg_gain = 0.0;
    avg_loss=0.0;
    RS = 0.0;

    for (int j=i; j > (i - 14); j--)
    {
      current = close[j];          //RSI[count - 1];
      previous = close[j-1];       //RSI[count - 2];
         
      if(current > previous)
      {
        up = current - previous;
        down = 0.0;    
      }
      else 
      {
        up = 0.0;
        down = previous - current;
      }

      avg_gain = avg_gain + abs(up); 
      avg_loss = avg_loss + abs(down);
    }

    avg_gain = avg_gain/14.0;
    avg_loss = avg_loss/14.0;
    RS = avg_gain / (avg_loss + avg_gain);

      //100.0 - (100.0 / (1.0 + RS));
    RSI_num = 100 * RS;

    RSI.push_back(RSI_num);
    i--;      
  }

     //cout << "RSI Vector Size: " << RSI.size() << "\n";

  reverse(RSI.begin(), RSI.end());
  RSI.erase(RSI.begin(), RSI.begin()+ 25);
     
     //for (auto i = RSI.begin(); i != RSI.end(); ++i)
       //   std::cout << *i << "\n";
}

/****************************************************** STOCHASTIC OSCILLATOR ***************************************************************/
 /*******************************************************************************************************************************************/


void calcStocOs(vector<double> &close, vector<double> &StocOs, int lower_bound, int upper_bound)
{
  int count = 0;
  double K;
  double lowest;
  double highest;

 
  //Size of the closing cost vector minus the latest price
  int i = 1;
  //cout << close.size() << "\n\n";

  //Writing stock closing price into vector(latest first) 14-day period
  for (i=0; i < 31; i++)
  {

    int j = i + 11;
    int k = 31 - i; 

    lowest = 0.0;
    lowest = *min_element(close.begin() + j, close.end() - k);

    highest = 0.0;
    highest = *max_element(close.begin() + j, close.end() - k);

    K = abs(((close[26+i] - lowest) / (highest - lowest)) * 100);

    //cout << "CLOSE: " << close[26+i] << "\t\t" << "Lowest(14-day period): " << lowest << "\t\t" << "Highest(14-day period):  " << highest << "\t\t" << "Stochastic Oscillator: " << K << endl;
    StocOs.push_back(K);  


  }



}
/************************************************************* SMA ***************************************************************/
/************************************************ used in MACD calculation *******************************************************/


double calcSMA(vector<double> &close, double SMA, int day_period)
{
  SMA = 0.0;
  double runningTotal = 0.0;
  int windowSize = day_period;
  int length = static_cast<int>(close.size());

  for (int i=0; i <= length; i++)
  {
    runningTotal+= close[i];
    
    if (i >= windowSize)
      runningTotal -= close[i - windowSize];
    if (i >= (windowSize - 1))
      SMA = runningTotal/(double)windowSize;
    if (i == 25)
      return SMA;
  }
  
  cout << "\n";

}

/****************************************************** MACD ************************************************************************/
/************************************************************************************************************************************/


void calcMACD(vector<double> &close, vector<double> &EMA12, vector<double> &EMA26, double firstVal12, double firstVal26, vector <double> &MACD)
{
  double multiplier12 = 2.0 / (12.0 + 1.0);
  double multiplier26 = 2.0 / (26.0 + 1.0); 
  double EMA12_num = 0.0;
  double EMA26_num = 0.0;
  double MACD_num = 0.0;


  // cout << "Initial EMA (12-day period): "<< firstVal12 << "\n";
  // cout << "CLOSE: "<< close[25] << "\n";
  // cout << "multiplier12: "<< multiplier12 << "\n";

  // EMA12_num = (close[25] - firstVal12) * multiplier12 + firstVal12;
  // cout << EMA12_num << "\n\n";


  // cout << "Initial EMA (26-day period): "<< firstVal26 << "\n";
  // cout << "CLOSE: "<< close[25] << "\n";
  // cout << "multiplier12: "<< multiplier26 << "\n";

  // EMA26_num = (close[25] - firstVal26) * multiplier26 + firstVal26;
  // cout << EMA26_num << "\n\n";

  for(int count = 0; count < 32; count++)
  {
      if (count == 0)
      {
        EMA12_num = (close[count + 26] - firstVal12) * multiplier12 + firstVal12;
        EMA12.push_back(EMA12_num);

        EMA26_num = (close[count + 26] - firstVal26) * multiplier26 + firstVal26;
        EMA26.push_back(EMA26_num);

        MACD_num = EMA12_num - EMA26_num;
        MACD.push_back(MACD_num);

        //cout << "CLOSE: " << close[count + 25] << "\t" << "EMA12: " << EMA12[count] << "\t" << "EMA26: " << EMA26[count] << "\t" << "MACD: " << MACD_num << "\n";  
      }
      else
      {
        EMA12_num = (close[count + 26] - EMA12[count - 1]) * multiplier12 + EMA12[count - 1];
        EMA12.push_back(EMA12_num);

        EMA26_num = (close[count + 26] - EMA26[count - 1]) * multiplier26 + EMA26[count - 1];
        EMA26.push_back(EMA26_num);

        MACD_num = EMA12_num - EMA26_num;
        MACD.push_back(MACD_num);

        //cout << "CLOSE: " << close[count + 25] << "\t" << "EMA12: " << EMA12[count] << "\t" << "EMA26: " << EMA26[count] << "\t" << "MACD: " << MACD_num <<"\n";          
      }
  }

   MACD.erase(MACD.begin());

  //cout << "MACD Vector Size: " << MACD.size() << "\n";

   //for (auto i = MACD.begin(); i != MACD.end(); ++i)
     //  std::cout << *i << "\n";
}

/****************************************************** BOLLINGER BANDS ***************************************************************/
/**************************************************************************************************************************************/


void calcBB(vector<double> &close, vector<double> &BB)
{
  double SMA_20 = 0.0;
  double runningTotal = 0.0;

  double sd =0.0;
  double sd_sum = 0.0;
  double variance = 0.0;
  vector <double> std_dev; 

  int windowSize = 20;
  int length = static_cast<int>(close.size());
  //cout << close.size() << "\n\n";

  for (int i=0; i < length; i++)
  {
    runningTotal+= close[i];
    
    if (i >= windowSize)
      runningTotal -= close[i - windowSize];
    if (i >= (windowSize - 1))
    {
      SMA_20 = runningTotal/(double)windowSize;
      BB.push_back(SMA_20);
    }
  }

  //BB.erase(BB.begin() + 26, BB.begin() + 32);

  //cout << BB.size() << "\n";

  for (int i=0; i < BB.size(); i++)
  {
    for(int j=0; j < 19; j++)
    {
      variance = pow((close[i+j] - BB[i]), 2.0);
      sd_sum += variance;
    }

    sd = sqrt((sd_sum / 20));
    //cout << "CLOSE: " << close[i+19] << "\t" << "Standard Diviation: " << sd << "\t" << "Lower Band: " << BB[i]-(sd*2) << "\t" << "Median Band: " << BB[i] << "\t"<< "Upper Band: " << BB[i]+(sd*2) << "\n";
    variance = 0.0;
    sd_sum = 0.0;
    sd = 0.0;
  }

  BB.erase(BB.begin(), BB.begin() + 7);
  //cout << "BB Vector Size: " << BB.size() << "\n";

  // for (auto i = BB.begin(); i != BB.end(); ++i)
  //     std::cout << *i << "\n";
}


void process_data(string root_dir, string& sym, string& filename)
{
    //Reading each file
  // for (int i= 0; i < 10; i++)
  // {
    string date, open, high, low, close, volume, unadjustedVolume, change, changePercent, vwap, label, changeOverTime, highs = sym+"_high", lows=sym+"_low", closes=sym+"_close",
	  indicator_lows = sym+"_indicator_lows", indicator_highs = sym+"_indicator_highs"; //GFood
    ifstream target(root_dir+"/"+sym+"/"+filename); 
    string target_price;
    vector<string> target_prices_high;
    vector<string> target_prices_low;
    vector<double> target_close;
    vector<double> RSI_vals;
    vector<double> StocOs_vals;
    vector<double> EMA12_vals;
    vector<double> EMA26_vals;
    vector<double> MACD_vals;
    vector<double> BB_vals;
    double SMA_val;
    double SMA_12;
    double SMA_26;
    vector<double> close_type_cast;
    vector<int> a;
    target_prices_low.clear();
    target_prices_high.clear();
    target_close.clear();


   if(!(target.is_open()) ) std::cout << "ERROR : file open" <<"\n";
   while (target.good())
   {
      getline(target, date, ',');
      getline(target, open, ',');
      getline(target, high, ',');
      getline(target, low, ',');
      getline(target, close, ',');
      getline(target, volume, ',');
      getline(target, unadjustedVolume, ',');
      getline(target, changePercent, ',');
      getline(target, vwap, ',');
      getline(target, label, ',');
      getline(target, changeOverTime, '\n');
      target_prices_high.push_back(high);
      target_prices_low.push_back(low);
      double temp = atof(close.c_str());
      target_close.push_back(temp);
      //target_close.push_back(close);
     //target_prices.push_back(strtof((target_price).c_str(),0));
   }
      target_prices_high.erase(target_prices_high.begin(), target_prices_high.begin() + (target_prices_high.size() - 57));
      target_prices_low.erase(target_prices_low.begin(), target_prices_low.begin() + (target_prices_low.size() - 57));

      target_prices_high.erase(target_prices_high.begin(), target_prices_high.begin()+ 25);
      target_prices_low.erase(target_prices_low.begin(), target_prices_low.begin()+ 25);

      // cout << "Vector target_prices_high size: " << target_prices_high.size() << "\n";
      // cout << "Vector target_prices_low size: " << target_prices_low.size() << "\n\n";

      target_close.erase(target_close.begin(), target_close.begin() + (target_close.size() - 58));
      target_close.erase(target_close.begin() + 57);
      target_close.resize(57);

      ofstream outputfiles_highs(root_dir+"/"+sym+"/"+ highs);
      ofstream outputfiles_lows(root_dir+"/"+sym+"/"+lows);
      ofstream outputfiles_closes(root_dir+"/"+sym+"/"+closes);
      ofstream outputfiles_highs_indicators(root_dir+"/"+sym +"/"+ indicator_highs);
      ofstream outputfiles_lows_indicators(root_dir+"/"+sym +"/"+ indicator_lows);

      //THIS WORKS - Calculate the RSI and loads into a vector
      calcRSI(target_close,RSI_vals);

      //THIS WORKS - Calculate the Stochastic Oscillator and loads into a vector
      calcStocOs(target_close, StocOs_vals, 0, 0);

      //THESE WORKS - Calculate the Simple Moving Average (12-day and 26-day period); used in the MACD
      //calculation 
      SMA_12 = calcSMA(target_close, SMA_val, 12);

      SMA_26 = calcSMA(target_close, SMA_val, 26);

      //THIS WORKS - Calculate the MACD and loads into a vector
      calcMACD(target_close, EMA12_vals, EMA26_vals, SMA_12, SMA_26, MACD_vals);

      //THIS WORKS - Calculate the Bollinger Band(s) and loads into a vector(s)
      calcBB(target_close, BB_vals);

      //Print out the size of the indicator vectors to ensure uniform size
      cout << "RSI vector size: " << "\t\t\t"<<RSI_vals.size() << "\n";
      cout << "StocOs vector size: " << "\t\t\t"<< StocOs_vals.size() << "\n";
      cout << "MACD vector size: " << "\t\t\t"<< MACD_vals.size() << "\n";
      cout << "BB vector size: " << "\t\t\t"<< BB_vals.size() << "\n";
      cout << "target_prices_high vector size: " << "\t" << target_prices_high.size() <<  "\n";
      cout << "target_prices_low vector size : " << "\t" << target_prices_low.size() << "\n";

      //Now that indicators have been calculated, reduce the size of the closing price array (31 elements) for processing
      //by the neural network
      target_close.erase(target_close.begin(), target_close.begin()+ 26);
      cout << "target_close vector size: " << "\t\t" << target_close.size() << "\n\n";


       //for (auto i = target_close.begin(); i != target_close.end(); ++i)
       //  std::cout << *i << "\n"; 

       //Iterate through indicator vectors and write them to file
       for(int z=0; z <= 30; z++)
        a.push_back(z);

       for(auto &i : a)
       {

        outputfiles_highs_indicators << RSI_vals[i] <<","<< StocOs_vals[i] <<","<< MACD_vals[i] <<","<< BB_vals[i] <<"," << target_prices_high[i] << "," << target_close[i] << endl;
        outputfiles_lows_indicators << RSI_vals[i] <<","<< StocOs_vals[i] <<","<< MACD_vals[i] <<","<< BB_vals[i] <<","  << target_prices_low[i] << ","<< target_close[i] << endl;

       }
      
      

      
      //cout << target_close.size() << endl;
      //for(auto &i : target_close)
      // for(int i=0; i<30; i++)
      // {
      //    outputfiles_highs_indicators << RSI[i] <<"," <<Stocks_vals[i]<<endl;
      // }


	    //RSI_vals.push_back(calcRSI(target_close, i, i+13));	
 //      }
      //for(auto &i : a)
      //{
	     //out << i << endl;
	     //   /*outputfiles_closes*/cout << target_prices_high[i] <<"  " << target_prices_low[i] <<"  "<< target_close[i] << endl;
     // }
      //target.close();
  
}
