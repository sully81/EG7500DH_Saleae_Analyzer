#ifndef MYSERIAL_ANALYZER_SETTINGS
#define MYSERIAL_ANALYZER_SETTINGS

#include <AnalyzerSettings.h>
#include <AnalyzerTypes.h>

class MySerialAnalyzerSettings : public AnalyzerSettings
{
public:
	MySerialAnalyzerSettings();
	virtual ~MySerialAnalyzerSettings();

	virtual bool SetSettingsFromInterfaces();
	void UpdateInterfacesFromSettings();
	virtual void LoadSettings( const char* settings );
	virtual const char* SaveSettings();

	
	Channel mInputChannel;
	U32 mBitRate;

protected:
	AnalyzerSettingInterfaceChannel	mInputChannelInterface;
	AnalyzerSettingInterfaceInteger	mBitRateInterface;
};

#endif //MYSERIAL_ANALYZER_SETTINGS
