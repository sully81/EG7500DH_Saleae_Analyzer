#ifndef MYSERIAL_SIMULATION_DATA_GENERATOR
#define MYSERIAL_SIMULATION_DATA_GENERATOR

#include <SimulationChannelDescriptor.h>
#include <string>
class MySerialAnalyzerSettings;

class MySerialSimulationDataGenerator
{
public:
	MySerialSimulationDataGenerator();
	~MySerialSimulationDataGenerator();

	void Initialize( U32 simulation_sample_rate, MySerialAnalyzerSettings* settings );
	U32 GenerateSimulationData( U64 newest_sample_requested, U32 sample_rate, SimulationChannelDescriptor** simulation_channel );

protected:
	MySerialAnalyzerSettings* mSettings;
	U32 mSimulationSampleRateHz;

protected:
	void CreateSerialByte();
	std::string mSerialText;
	U32 mStringIndex;

	SimulationChannelDescriptor mSerialSimulationData;

};
#endif //MYSERIAL_SIMULATION_DATA_GENERATOR