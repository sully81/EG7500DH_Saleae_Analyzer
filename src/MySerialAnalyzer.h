#ifndef MYSERIAL_ANALYZER_H
#define MYSERIAL_ANALYZER_H

#include <Analyzer.h>
#include "MySerialAnalyzerSettings.h"
#include "MySerialAnalyzerResults.h"
#include "MySerialSimulationDataGenerator.h"
#include <memory>

class ANALYZER_EXPORT MySerialAnalyzer : public Analyzer2
{
public:
	MySerialAnalyzer();
	virtual ~MySerialAnalyzer();

	virtual void SetupResults();
	virtual void WorkerThread();

	virtual U32 GenerateSimulationData( U64 newest_sample_requested, U32 sample_rate, SimulationChannelDescriptor** simulation_channels );
	virtual U32 GetMinimumSampleRateHz();

	virtual const char* GetAnalyzerName() const;
	virtual bool NeedsRerun();

protected: //vars
	MySerialAnalyzerSettings mSettings;
	std::unique_ptr<MySerialAnalyzerResults> mResults;
	AnalyzerChannelData* mSerial;

	MySerialSimulationDataGenerator mSimulationDataGenerator;
	bool mSimulationInitilized;

	//Serial analysis vars:
	U32 mSampleRateHz;
	U32 mStartOfStopBitOffset;
	U32 mEndOfStopBitOffset;
};

extern "C" ANALYZER_EXPORT const char* __cdecl GetAnalyzerName();
extern "C" ANALYZER_EXPORT Analyzer* __cdecl CreateAnalyzer( );
extern "C" ANALYZER_EXPORT void __cdecl DestroyAnalyzer( Analyzer* analyzer );

#endif //MYSERIAL_ANALYZER_H
