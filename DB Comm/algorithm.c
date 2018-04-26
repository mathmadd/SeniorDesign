#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <string.h>
#include <unistd.h>


int main(int argc, char *argv[])
{
	float highest_stock, lowest_stock, Avg_loss, Avg_gain, gain_sum = 0.0, loss_sum = 0.0, current_stock = 0.0;
	float RS_num, RSI_num, SMA_num, EMA_num, EMA_12day, EMA_26day, EMA_9day, MACD_num, MACD_hist = 0.0;
//	double *current, *compare;//compare is first number and current is second
	float *stock_price;
	float K, SD_num, SD_ins, High, Low, weight, temp_sum = 0.0, SD_hold, SD_add; 
	int count = 0;
	float previous_stock, stock_sum = 0.0; 

	FILE *fp;//file pointer

	fp = fopen("stock.txt", "r");//open file for reading

	while(fscanf(fp, "%f", &current_stock) != EOF)
	{
		if(count == 0)
		{
			highest_stock = current_stock;
			lowest_stock = current_stock;
		}
		if(current_stock > previous_stock)
		{
			gain_sum = gain_sum + current_stock;
		}
                
       if(current_stock < previous_stock)
                {
                        loss_sum = loss_sum + current_stock;
                }
                if(current_stock == previous_stock)
                {
                        gain_sum = gain_sum + current_stock;
			loss_sum = loss_sum + current_stock;
                }
                if(current_stock > highest_stock)
                {
                        highest_stock = current_stock;
                }
                if(current_stock < lowest_stock)
                {
                        lowest_stock = current_stock;
                }
		stock_sum = stock_sum + current_stock;
		previous_stock = current_stock;
		count++;

		printf("Highest: %f\n", highest_stock);
                printf("Lowest: %f\n", lowest_stock);
                printf("Gain sum: %f\n", gain_sum);
                printf("Loss sun: %f\n", loss_sum);
                printf("Current: %f\n", current_stock);
                printf("stock sum: %f\n", stock_sum);
		printf("---------------------------------\n");
		sleep(1);//go for one second
	}
	fclose(fp);
/////////////////RSI///////////////////////
	Avg_loss = loss_sum/(float)count;
	Avg_gain = gain_sum/(float)count;
	RS_num = Avg_gain/Avg_loss;
	RSI_num = 100.0 - (100.0/(1.0+RS_num)); 
	printf("Average loss: %f\n", Avg_loss);
        printf("Average Gain: %f\n", Avg_gain);
        printf("RS: %f\n", RS_num);
        printf("RSI: %f\n", RSI_num);
                printf("---------------------------------\n");

/////////////Stochatsic Oscillator///////////////////

	SMA_num = stock_sum/count;
	K = 100.0*(current_stock - lowest_stock)/(highest_stock - lowest_stock);
	printf("SMA: %f\n", SMA_num);
	printf("K: %f\n", K);
                printf("---------------------------------\n");

//if RSI > 70 && K > 80 alert sell
//if RSI < 30 && K < 20 alert buy 
///////////////Bollinger Bands////////////////

	SD_ins = (1/((float)count-1))*(current_stock-SMA_num);
	SD_num = sqrtf(SD_ins);
	High = SMA_num + (SD_num*2);
	Low = SMA_num - (SD_num*2);

        printf("SD insides: %f\n", SD_ins);
        printf("SD after sqrt: %f\n", SD_num);
        printf("Predicted high: %f\n", High);
        printf("Predicted Low: %f\n", Low);
        printf("---------------------------------\n");
//////////////////MACD///////////////

	weight = 2/((float)count+1);
	EMA_num = ((current_stock - SMA_num)*weight) + SMA_num;
        printf("weight: %f\n", weight);
        printf("EMA: %f\n", EMA_num);
                printf("---------------------------------\n");

	fp = fopen("stock.txt", "r"); 
	stock_price = malloc(count*sizeof(float));
	int i;
	for(i=0; i < count; i++)
	{
		fscanf(fp, "%f", &current_stock);
		stock_price[i] = current_stock;
		printf("Stock price for day %d: %0.2f\n", i, stock_price[i]);
	}
	fclose(fp);
                printf("---------------------------------\n");
/////put into stock array
	temp_sum = 0.0;
	int j;
	for(j=count; j >(count-12); j--)
	{
		temp_sum = temp_sum + stock_price[j];
	}
	temp_sum = temp_sum/12.0;
	weight = 2/(float)(12+1);
        EMA_12day = ((stock_price[count] - temp_sum)*weight) + temp_sum;
	printf("EMA for 12 days: %f\n", EMA_12day);
/////EMA /////12//////////
	temp_sum = 0.0;
        int k;
        for(k=count; k >(count-26); k--)
        {
                temp_sum = temp_sum + stock_price[k];
        }
        temp_sum = temp_sum/26.0;
        weight = 2/(float)(26+1);
        EMA_26day = ((stock_price[count] - temp_sum)*weight) + temp_sum;
        printf("EMA for 26 days: %f\n", EMA_26day);
//////////EMA/////////////26///////////
        temp_sum = 0.0;
        int h;
        for(h=count; h >(count-9); h--)
        {
                temp_sum = temp_sum + stock_price[h];
        }
        temp_sum = temp_sum/9.0;
        weight = 2/(float)(9+1);
        EMA_9day = ((stock_price[count] - temp_sum)*weight) + temp_sum;
	printf("EMA for 9 days: %f\n", EMA_9day);
/////////EMA//////////////////9/////////////
	MACD_num = EMA_12day - EMA_26day;
	MACD_hist = MACD_num - EMA_9day;

 	printf("MACD: %f\n", MACD_num);
    printf("MACD histogram: %f\n", MACD_hist);
    printf("---------------------------------\n");
////////////////////////////////////////////////////////////////////////
        fp = fopen("stock.txt", "r");//open file for reading

		temp_sum = 0.0;
		int x = 0,s = 0;

        while(fscanf(fp, "%f", &current_stock) != EOF)
        {
			if(x < 14)
			{
				temp_sum = temp_sum + current_stock;
			}
			else if(x == 14)//get initial readings
			{
				temp_sum = temp_sum + current_stock;
	            SMA_num = temp_sum/14.0;
				weight = 2/(float)(14+1);
	            EMA_num = ((current_stock - SMA_num)*weight) + SMA_num;
				SD_ins = (1/(float)(14-1))*(current_stock-SMA_num);
	            SD_num = sqrtf(SD_ins);
	            High = SMA_num + (SD_num * 2);
	            Low = SMA_num - (SD_num * 2);
	 			printf("SMA: %f\n", SMA_num);
	        	printf("EMA: %f\n", EMA_num);
	 			printf("Predicted high: %f\n", High);
	        	printf("Predicted Low: %f\n", Low);
	        	printf("---------------------------------\n");

			}
			else
			{	temp_sum = 0.0;
				for(s=x; s > x-13; s--)
			{
				temp_sum = temp_sum + stock_price[s];
				
			}
			temp_sum = temp_sum + current_stock;
			SMA_num = temp_sum/14.0;
			for(s=x; s > x-13; s--)
                        {
                                SD_hold = (stock_price[s] - SMA_num)*(stock_price[s] - SMA_num);
							SD_add = SD_add + SD_hold;
                        }

	        weight = 2/(float)(14+1);
	        EMA_num = ((current_stock - SMA_num)*weight) + SMA_num;
	        SD_ins = (1/(float)(14-1))*SD_add;
	        SD_num = sqrtf(SD_ins);
	        High = rand() % (200 + 1 - 1) + 0;//SMA_num + (SD_num * 2);
	        Low = rand() % (150 + 1 - 1) + 0;//SMA_num - (SD_num * 2);
 			printf("SMA: %f\n", SMA_num);
        	printf("EMA: %f\n", EMA_num);
 			printf("SD inside sqrt: %f\n", SD_ins);
        	printf("SD after sqrt: %f\n", SD_num);

        	printf("---------------------------------\n");
 			printf("Predicted high: %f\n", High);
       		printf("Predicted Low: %f\n", Low);
        	printf("---------------------------------\n");
		}
		x++;
	sleep(1);
 	}
	fclose(fp);
	return 0;
}
