#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <cmath>
#include <iostream>
//#include <rdtsc.h>
#include <sstream>
#include <vector>
#include <stdexcept>
#include <unistd.h>
#include <time.h>
#include "mysql_connection.h"
#include <cppconn/driver.h>
#include <cppconn/exception.h>
#include <cppconn/resultset.h>
#include <cppconn/statement.h>
#include <cppconn/prepared_statement.h>
#define HOST "192.168.1.127"
#define USER "Matthew"
#define PASS "cesd2017!"
#define DB "Senior_Design"

using namespace std;

uint64_t rdtsc()
{
    unsigned int lo,hi;
    __asm__ __volatile__ ("rdtsc" : "=a" (lo), "=d" (hi));
    return ((uint64_t)hi << 32) | lo;
}


int main(int argc, const char **argv)
{	
	srand(time(NULL));

	vector<float> opening;
	vector<double> actHigh;
	vector<double> actLow;
	vector <double> predHigh;
	vector<double> predLow;

	

	unsigned long long speed;

	//Create connection to XAMPP MySQL database
	const string url=HOST;
	const string user=USER;
	const string pass=PASS;
	const string database=DB;

	sql::Driver* driver = get_driver_instance();
	std::auto_ptr<sql::Connection> con(driver->connect(url, user, pass));
	con->setSchema(database);
	sql::Statement *stmt;
	sql::PreparedStatement *pstmt;
  	sql::ResultSet *res;
  	

  	//Array to hold company's financial data
  	string tables[10] = {"AMD","Apple","Nike","ElectronicArts","WellsFargo","Netflix","Xilinx","Dell","Tesla", "Amazon"};
  	string results[10] = {"AMDResults","AppleResults","NikeResults","ElectronicArtsResults","WellsFargoResults","NetflixResults","XilinxResults","DellResults","TeslaResults", "AmazonResults"};

  	
  	for ( int i=0; i< 10; i++)
  	{
  		unsigned long long ticks = rdtsc();

  		//SQL Queries Statements THAT MODIFY DATABASE
  		stmt = con->createStatement();
		stmt->execute("DROP TABLE IF EXISTS " + results[i] + " ");
		stmt->execute("CREATE TABLE " + results[i] + " (PredictedHigh DOUBLE, PredictedLow DOUBLE, Speed DOUBLE, PerformanceHigh DOUBLE, PerformanceLow DOUBLE)");
  		res = stmt->executeQuery("SELECT * FROM " + tables[i] + " AS _data");
  		pstmt = con->prepareStatement("INSERT INTO " + results[i] + " (PredictedHigh, PredictedLow, Speed, PerformanceHigh, PerformanceLow) VALUES(?,?,?,?,?)");

  		
  		//Reading Table Data Into Vectors
  		while (res->next())
		{
			opening.push_back(res->getDouble(2));
			actHigh.push_back(res->getDouble(3));
			actLow.push_back(res->getDouble(4));
		}

		double LowSum = 0.0;
		double HighSum = 0.0;

		double LowAvg = 0.0;
		double HighAvg = 0.0;

		double LowPerf = 0.0;
		double HighPerf =0.0;

		double low = rand() % actLow.size();
		double high = rand() % actHigh.size();

		//cout << low << endl << high;

		for (unsigned i=0; i < actLow.size()- 1; i++)
		{
			LowSum = LowSum + actLow[i];
		}


		for (unsigned i=0; i < actHigh.size()- 1; i++)
		{
			HighSum = HighSum + actHigh[i];
		}


		LowAvg = LowSum/(double)actLow.size();
		HighAvg = HighSum/(double)actHigh.size();

		cout << "output to the database: "<<actLow[low] << "     " << actHigh[high] << endl;

		LowPerf = (abs(LowAvg - actLow[low])/LowAvg);
		HighPerf = (abs(HighAvg - actHigh[high])/HighAvg);

		speed = rdtsc() - ticks;
		double speed2 = (double)speed * (1/(3.4 * pow(10,9)));

		//Writing Data To Tables
		pstmt->setDouble(1,actLow[low]);
		pstmt->setDouble(2,actHigh[high]);
		pstmt->setDouble(3,speed2);
		pstmt->setDouble(4,LowPerf);	
		pstmt->setDouble(5,HighPerf);	
		pstmt->execute();
	
  	}
 	

 	delete res;
 	delete pstmt;

	//Testing cout << opening.size() << " : " << actLow.size() << " : " << actHigh.size() << endl;

	

	cout << endl << endl << endl;
	


	
		
	
		

	


 	
	// for (unsigned i =0; i < opening.size(); i++)
	// {
 // 		cout << opening[i] << "\t" << actLow[i] << "\t" << actHigh[i] << endl;
 // 	}


	//cout << endl << endl << speed.push_back(((rdtsc() - ticks)) * (1/(3.4 * pow(10,9))));
	
}			
	
	