#include "MySerialAnalyzer.h"
#include "MySerialAnalyzerSettings.h"
#include <AnalyzerChannelData.h>

MySerialAnalyzer::MySerialAnalyzer()
:	Analyzer2(),  
	mSettings(),
	mSimulationInitilized( false )
{
	SetAnalyzerSettings( &mSettings );
}

MySerialAnalyzer::~MySerialAnalyzer()
{
	KillThread();
}

void MySerialAnalyzer::SetupResults()
{
	// SetupResults is called each time the analyzer is run. Because the same instance can be used for multiple runs, we need to clear the results each time.
	mResults.reset(new MySerialAnalyzerResults( this, &mSettings ));
	SetAnalyzerResults( mResults.get() );
	mResults->AddChannelBubblesWillAppearOn( mSettings.mInputChannel );
}

void MySerialAnalyzer::WorkerThread()
{
	mSampleRateHz = GetSampleRate();

	mSerial = GetAnalyzerChannelData( mSettings.mInputChannel );

	// if( mSerial->GetBitState() == BIT_LOW )
	// 	mSerial->AdvanceToNextEdge();

	U32 samples_per_bit = mSampleRateHz / mSettings.mBitRate;
	// U32 samples_per_bit = mSampleRateHz / 727;
	U32 samples_to_first_center_of_first_data_bit = U32( 0.5 * double( mSampleRateHz ) / double( mSettings.mBitRate ) );

	for( ; ; )
	{
		U32 data = 0;
		U32 mask = 1 << 31;

		if( mSerial->GetBitState() == BIT_LOW )
			mSerial->AdvanceToNextEdge();

		for( ; ; )  // loop until finding pulse greater than 2ms (typ 2.5ms)
		{
			// mSerial->AdvanceToNextEdge(); //falling edge -- beginning of the start bit

			U64 rise_edge_sample_1 = mSerial->GetSampleNumber();  // rising edge

			mSerial->AdvanceToNextEdge();

			U64 rise_edge_sample_2 = mSerial->GetSampleNumber();  // falling edge

			if (rise_edge_sample_2 - rise_edge_sample_1 > 0.002 * mSampleRateHz)
				break;

			mSerial->AdvanceToNextEdge();
		}
		
		
		
		// mSerial->AdvanceToNextEdge(); //falling edge -- beginning of the start bit

		U64 starting_sample = mSerial->GetSampleNumber();

		//mSerial->AdvanceToNextEdge(); 

		mSerial->Advance( samples_to_first_center_of_first_data_bit );

		for( U32 i=0; i<33; i++ )
		{
			//let's put a dot exactly where we sample this bit:
			mResults->AddMarker( mSerial->GetSampleNumber(), AnalyzerResults::Dot, mSettings.mInputChannel );

			if( mSerial->GetBitState() == BIT_HIGH )
				data |= mask;

			mSerial->Advance( samples_per_bit );

			mask = mask >> 1;
		}


		//we have a byte to save. 
		Frame frame;
		frame.mData1 = data;
		frame.mFlags = 0;
		frame.mStartingSampleInclusive = starting_sample;
		frame.mEndingSampleInclusive = mSerial->GetSampleNumber();

		mResults->AddFrame( frame );
		mResults->CommitResults();
		ReportProgress( frame.mEndingSampleInclusive );
	}
}

bool MySerialAnalyzer::NeedsRerun()
{
	return false;
}

U32 MySerialAnalyzer::GenerateSimulationData( U64 minimum_sample_index, U32 device_sample_rate, SimulationChannelDescriptor** simulation_channels )
{
	if( mSimulationInitilized == false )
	{
		mSimulationDataGenerator.Initialize( GetSimulationSampleRate(), &mSettings );
		mSimulationInitilized = true;
	}

	return mSimulationDataGenerator.GenerateSimulationData( minimum_sample_index, device_sample_rate, simulation_channels );
}

U32 MySerialAnalyzer::GetMinimumSampleRateHz()
{
	return mSettings.mBitRate * 4;
}

const char* MySerialAnalyzer::GetAnalyzerName() const
{
	return "My Serial";
}

const char* GetAnalyzerName()
{
	return "My Serial";
}

Analyzer* CreateAnalyzer()
{
	return new MySerialAnalyzer();
}

void DestroyAnalyzer( Analyzer* analyzer )
{
	delete analyzer;
}