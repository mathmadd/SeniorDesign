
	for(unsigned i =0; i<opening.size(); i++)
    {

		if(x < 14)
		{
			temp_sum = temp_sum + opening[i];
		}
		cout << temp_sum << endl;

		

	x++;
	//sleep(1);
 	}



else
		{	temp_sum = 0.0;

			for(s=x; s > x-13; s--)
			{
				temp_sum = temp_sum + stock_price[s];	
			}

			temp_sum = temp_sum + opening[i];
			SMA_num = temp_sum/14.0;

			for(s=x; s > x-13; s--)
            {
                SD_hold = (stock_price[s] - SMA_num)*(stock_price[s] - SMA_num);
				SD_add = SD_add + SD_hold;
            }

	        weight = 2/(float)(14+1);
	        EMA_num = ((opening[i] - SMA_num)*weight) + SMA_num;
	        SD_ins = (1/(float)(14-1))*SD_add;
	        SD_num = sqrtf(SD_ins);

	        High = rand() % (200 + 1 - 1) + 0;//SMA_num + (SD_num * 2);
	        predHigh.push_back(High);
	        pstmt->setDouble(4, High);
    		pstmt->execute();

    		predLow.push_back(Low);
	        Low = rand() % (150 + 1 - 1) + 0;//SMA_num - (SD_num * 2);
	        pstmt->setDouble(5, Low);
    		pstmt->execute();

 			printf("SMA: %f\n", SMA_num);
        	printf("EMA: %f\n", EMA_num);
 			printf("SD inside sqrt: %f\n", SD_ins);
        	printf("SD after sqrt: %f\n", SD_num);
        	printf("---------------------------------\n");
 			printf("Predicted high: %f\n", High);
       		printf("Predicted Low: %f\n", Low);
        	printf("---------------------------------\n");
		}

				else if(x == 14)//get initial readings
		{
			temp_sum = temp_sum + opening[i];
		    SMA_num = temp_sum/14.0;
			weight = 2/(float)(14+1);
		    EMA_num = ((opening[i] - SMA_num)*weight) + SMA_num;
			SD_ins = (1/(float)(14-1))*(opening[i]-SMA_num);
		    SD_num = sqrtf(SD_ins);
		    High = SMA_num + (SD_num * 2);
		    Low = SMA_num - (SD_num * 2);

		 	printf("SMA: %f\n", SMA_num);
		    printf("EMA: %f\n", EMA_num);
		 	printf("Predicted high: %f\n", High);
		    printf("Predicted Low: %f\n", Low);
		    printf("---------------------------------\n");

		}