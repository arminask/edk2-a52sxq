[Defines]
  VENDOR_NAME                    = SHIFT
  PLATFORM_NAME                  = axolotl
  PLATFORM_GUID                  = 28f1a3bf-193a-47e3-a7b9-5a435eaab2ee
  PLATFORM_VERSION               = 0.1
  DSC_SPECIFICATION              = 0x00010019
  OUTPUT_DIRECTORY               = Build/$(PLATFORM_NAME)
  SUPPORTED_ARCHITECTURES        = AARCH64
  BUILD_TARGETS                  = DEBUG|RELEASE
  SKUID_IDENTIFIER               = DEFAULT
  FLASH_DEFINITION               = Platform/Qualcomm/sdm845/sdm845.fdf
  DEVICE_DXE_FV_COMPONENTS       = Platform/SHIFT/sdm845/axolotl.fdf.inc

  # Enable A/B Slot Environment
  AB_SLOTS_SUPPORT               = TRUE

!include Platform/Qualcomm/sdm845/sdm845.dsc

[BuildOptions.common]
  GCC:*_*_AARCH64_CC_FLAGS = -DAB_SLOTS_SUPPORT=1 -DENABLE_SIMPLE_INIT -DENABLE_LINUX_SIMPLE_MASS_STORAGE

[PcdsFixedAtBuild.common]

  gQcomTokenSpaceGuid.PcdMipiFrameBufferWidth|1080
  gQcomTokenSpaceGuid.PcdMipiFrameBufferHeight|2160

  # Simple Init
  gSimpleInitTokenSpaceGuid.PcdGuiDefaultDPI|402

  gRenegadePkgTokenSpaceGuid.PcdDeviceVendor|"SHIFT"
  gRenegadePkgTokenSpaceGuid.PcdDeviceProduct|"SHIFT6mq"
  gRenegadePkgTokenSpaceGuid.PcdDeviceCodeName|"axolotl"
