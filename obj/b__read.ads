pragma Warnings (Off);
pragma Ada_95;
with System;
with System.Parameters;
with System.Secondary_Stack;
package ada_main is

   gnat_argc : Integer;
   gnat_argv : System.Address;
   gnat_envp : System.Address;

   pragma Import (C, gnat_argc);
   pragma Import (C, gnat_argv);
   pragma Import (C, gnat_envp);

   gnat_exit_status : Integer;
   pragma Import (C, gnat_exit_status);

   GNAT_Version : constant String :=
                    "GNAT Version: 8.3.0" & ASCII.NUL;
   pragma Export (C, GNAT_Version, "__gnat_version");

   Ada_Main_Program_Name : constant String := "_ada_read" & ASCII.NUL;
   pragma Export (C, Ada_Main_Program_Name, "__gnat_ada_main_program_name");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer;
   pragma Export (C, main, "main");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#423ec671#;
   pragma Export (C, u00001, "readB");
   u00002 : constant Version_32 := 16#050ff2f0#;
   pragma Export (C, u00002, "system__standard_libraryB");
   u00003 : constant Version_32 := 16#70c0456d#;
   pragma Export (C, u00003, "system__standard_libraryS");
   u00004 : constant Version_32 := 16#76789da1#;
   pragma Export (C, u00004, "adaS");
   u00005 : constant Version_32 := 16#f64b89a4#;
   pragma Export (C, u00005, "ada__integer_text_ioB");
   u00006 : constant Version_32 := 16#082ea75f#;
   pragma Export (C, u00006, "ada__integer_text_ioS");
   u00007 : constant Version_32 := 16#c4fd498c#;
   pragma Export (C, u00007, "ada__exceptionsB");
   u00008 : constant Version_32 := 16#d9f7df5a#;
   pragma Export (C, u00008, "ada__exceptionsS");
   u00009 : constant Version_32 := 16#5726abed#;
   pragma Export (C, u00009, "ada__exceptions__last_chance_handlerB");
   u00010 : constant Version_32 := 16#41e5552e#;
   pragma Export (C, u00010, "ada__exceptions__last_chance_handlerS");
   u00011 : constant Version_32 := 16#77e65b42#;
   pragma Export (C, u00011, "systemS");
   u00012 : constant Version_32 := 16#ae860117#;
   pragma Export (C, u00012, "system__soft_linksB");
   u00013 : constant Version_32 := 16#8a19ca81#;
   pragma Export (C, u00013, "system__soft_linksS");
   u00014 : constant Version_32 := 16#20d205ed#;
   pragma Export (C, u00014, "system__secondary_stackB");
   u00015 : constant Version_32 := 16#8a8e392e#;
   pragma Export (C, u00015, "system__secondary_stackS");
   u00016 : constant Version_32 := 16#36a16434#;
   pragma Export (C, u00016, "system__parametersB");
   u00017 : constant Version_32 := 16#8f709f1e#;
   pragma Export (C, u00017, "system__parametersS");
   u00018 : constant Version_32 := 16#ced09590#;
   pragma Export (C, u00018, "system__storage_elementsB");
   u00019 : constant Version_32 := 16#5a251146#;
   pragma Export (C, u00019, "system__storage_elementsS");
   u00020 : constant Version_32 := 16#7d395b5e#;
   pragma Export (C, u00020, "system__soft_links__initializeB");
   u00021 : constant Version_32 := 16#5697fc2b#;
   pragma Export (C, u00021, "system__soft_links__initializeS");
   u00022 : constant Version_32 := 16#41837d1e#;
   pragma Export (C, u00022, "system__stack_checkingB");
   u00023 : constant Version_32 := 16#f95930aa#;
   pragma Export (C, u00023, "system__stack_checkingS");
   u00024 : constant Version_32 := 16#34742901#;
   pragma Export (C, u00024, "system__exception_tableB");
   u00025 : constant Version_32 := 16#2a483200#;
   pragma Export (C, u00025, "system__exception_tableS");
   u00026 : constant Version_32 := 16#ce4af020#;
   pragma Export (C, u00026, "system__exceptionsB");
   u00027 : constant Version_32 := 16#1f8536b4#;
   pragma Export (C, u00027, "system__exceptionsS");
   u00028 : constant Version_32 := 16#056e902a#;
   pragma Export (C, u00028, "system__exceptions__machineB");
   u00029 : constant Version_32 := 16#a4c69443#;
   pragma Export (C, u00029, "system__exceptions__machineS");
   u00030 : constant Version_32 := 16#aa0563fc#;
   pragma Export (C, u00030, "system__exceptions_debugB");
   u00031 : constant Version_32 := 16#096ca286#;
   pragma Export (C, u00031, "system__exceptions_debugS");
   u00032 : constant Version_32 := 16#6c2f8802#;
   pragma Export (C, u00032, "system__img_intB");
   u00033 : constant Version_32 := 16#753dbb80#;
   pragma Export (C, u00033, "system__img_intS");
   u00034 : constant Version_32 := 16#39df8c17#;
   pragma Export (C, u00034, "system__tracebackB");
   u00035 : constant Version_32 := 16#29c48586#;
   pragma Export (C, u00035, "system__tracebackS");
   u00036 : constant Version_32 := 16#9ed49525#;
   pragma Export (C, u00036, "system__traceback_entriesB");
   u00037 : constant Version_32 := 16#77bdad32#;
   pragma Export (C, u00037, "system__traceback_entriesS");
   u00038 : constant Version_32 := 16#bb296fbb#;
   pragma Export (C, u00038, "system__traceback__symbolicB");
   u00039 : constant Version_32 := 16#c84061d1#;
   pragma Export (C, u00039, "system__traceback__symbolicS");
   u00040 : constant Version_32 := 16#701f9d88#;
   pragma Export (C, u00040, "ada__exceptions__tracebackB");
   u00041 : constant Version_32 := 16#20245e75#;
   pragma Export (C, u00041, "ada__exceptions__tracebackS");
   u00042 : constant Version_32 := 16#a0d3d22b#;
   pragma Export (C, u00042, "system__address_imageB");
   u00043 : constant Version_32 := 16#d60ac678#;
   pragma Export (C, u00043, "system__address_imageS");
   u00044 : constant Version_32 := 16#8c33a517#;
   pragma Export (C, u00044, "system__wch_conB");
   u00045 : constant Version_32 := 16#6c9b7990#;
   pragma Export (C, u00045, "system__wch_conS");
   u00046 : constant Version_32 := 16#9721e840#;
   pragma Export (C, u00046, "system__wch_stwB");
   u00047 : constant Version_32 := 16#418a5591#;
   pragma Export (C, u00047, "system__wch_stwS");
   u00048 : constant Version_32 := 16#a831679c#;
   pragma Export (C, u00048, "system__wch_cnvB");
   u00049 : constant Version_32 := 16#632cc363#;
   pragma Export (C, u00049, "system__wch_cnvS");
   u00050 : constant Version_32 := 16#5ab55268#;
   pragma Export (C, u00050, "interfacesS");
   u00051 : constant Version_32 := 16#ece6fdb6#;
   pragma Export (C, u00051, "system__wch_jisB");
   u00052 : constant Version_32 := 16#e35cda42#;
   pragma Export (C, u00052, "system__wch_jisS");
   u00053 : constant Version_32 := 16#927a893f#;
   pragma Export (C, u00053, "ada__text_ioB");
   u00054 : constant Version_32 := 16#60478258#;
   pragma Export (C, u00054, "ada__text_ioS");
   u00055 : constant Version_32 := 16#10558b11#;
   pragma Export (C, u00055, "ada__streamsB");
   u00056 : constant Version_32 := 16#67e31212#;
   pragma Export (C, u00056, "ada__streamsS");
   u00057 : constant Version_32 := 16#92d882c5#;
   pragma Export (C, u00057, "ada__io_exceptionsS");
   u00058 : constant Version_32 := 16#d398a95f#;
   pragma Export (C, u00058, "ada__tagsB");
   u00059 : constant Version_32 := 16#12a0afb8#;
   pragma Export (C, u00059, "ada__tagsS");
   u00060 : constant Version_32 := 16#796f31f1#;
   pragma Export (C, u00060, "system__htableB");
   u00061 : constant Version_32 := 16#f324e8a8#;
   pragma Export (C, u00061, "system__htableS");
   u00062 : constant Version_32 := 16#089f5cd0#;
   pragma Export (C, u00062, "system__string_hashB");
   u00063 : constant Version_32 := 16#517a83d6#;
   pragma Export (C, u00063, "system__string_hashS");
   u00064 : constant Version_32 := 16#436027c1#;
   pragma Export (C, u00064, "system__unsigned_typesS");
   u00065 : constant Version_32 := 16#1d9142a4#;
   pragma Export (C, u00065, "system__val_unsB");
   u00066 : constant Version_32 := 16#53c8cafa#;
   pragma Export (C, u00066, "system__val_unsS");
   u00067 : constant Version_32 := 16#27b600b2#;
   pragma Export (C, u00067, "system__val_utilB");
   u00068 : constant Version_32 := 16#db46edbc#;
   pragma Export (C, u00068, "system__val_utilS");
   u00069 : constant Version_32 := 16#d1060688#;
   pragma Export (C, u00069, "system__case_utilB");
   u00070 : constant Version_32 := 16#53ef3295#;
   pragma Export (C, u00070, "system__case_utilS");
   u00071 : constant Version_32 := 16#73d2d764#;
   pragma Export (C, u00071, "interfaces__c_streamsB");
   u00072 : constant Version_32 := 16#b1330297#;
   pragma Export (C, u00072, "interfaces__c_streamsS");
   u00073 : constant Version_32 := 16#81cb446f#;
   pragma Export (C, u00073, "system__crtlS");
   u00074 : constant Version_32 := 16#6a70d424#;
   pragma Export (C, u00074, "system__file_ioB");
   u00075 : constant Version_32 := 16#d097ba27#;
   pragma Export (C, u00075, "system__file_ioS");
   u00076 : constant Version_32 := 16#86c56e5a#;
   pragma Export (C, u00076, "ada__finalizationS");
   u00077 : constant Version_32 := 16#95817ed8#;
   pragma Export (C, u00077, "system__finalization_rootB");
   u00078 : constant Version_32 := 16#381428d2#;
   pragma Export (C, u00078, "system__finalization_rootS");
   u00079 : constant Version_32 := 16#59f5cdac#;
   pragma Export (C, u00079, "system__os_libB");
   u00080 : constant Version_32 := 16#4542b55d#;
   pragma Export (C, u00080, "system__os_libS");
   u00081 : constant Version_32 := 16#2a8e89ad#;
   pragma Export (C, u00081, "system__stringsB");
   u00082 : constant Version_32 := 16#17f077d7#;
   pragma Export (C, u00082, "system__stringsS");
   u00083 : constant Version_32 := 16#8a79c1ea#;
   pragma Export (C, u00083, "system__file_control_blockS");
   u00084 : constant Version_32 := 16#f6fdca1c#;
   pragma Export (C, u00084, "ada__text_io__integer_auxB");
   u00085 : constant Version_32 := 16#09097bbe#;
   pragma Export (C, u00085, "ada__text_io__integer_auxS");
   u00086 : constant Version_32 := 16#181dc502#;
   pragma Export (C, u00086, "ada__text_io__generic_auxB");
   u00087 : constant Version_32 := 16#16b3615d#;
   pragma Export (C, u00087, "ada__text_io__generic_auxS");
   u00088 : constant Version_32 := 16#b10ba0c7#;
   pragma Export (C, u00088, "system__img_biuB");
   u00089 : constant Version_32 := 16#8542af8c#;
   pragma Export (C, u00089, "system__img_biuS");
   u00090 : constant Version_32 := 16#4e06ab0c#;
   pragma Export (C, u00090, "system__img_llbB");
   u00091 : constant Version_32 := 16#c485bf72#;
   pragma Export (C, u00091, "system__img_llbS");
   u00092 : constant Version_32 := 16#9dca6636#;
   pragma Export (C, u00092, "system__img_lliB");
   u00093 : constant Version_32 := 16#66a90e93#;
   pragma Export (C, u00093, "system__img_lliS");
   u00094 : constant Version_32 := 16#a756d097#;
   pragma Export (C, u00094, "system__img_llwB");
   u00095 : constant Version_32 := 16#6de99ce4#;
   pragma Export (C, u00095, "system__img_llwS");
   u00096 : constant Version_32 := 16#eb55dfbb#;
   pragma Export (C, u00096, "system__img_wiuB");
   u00097 : constant Version_32 := 16#eb03281e#;
   pragma Export (C, u00097, "system__img_wiuS");
   u00098 : constant Version_32 := 16#d763507a#;
   pragma Export (C, u00098, "system__val_intB");
   u00099 : constant Version_32 := 16#3f43717d#;
   pragma Export (C, u00099, "system__val_intS");
   u00100 : constant Version_32 := 16#1a74a354#;
   pragma Export (C, u00100, "system__val_lliB");
   u00101 : constant Version_32 := 16#edc2bde2#;
   pragma Export (C, u00101, "system__val_lliS");
   u00102 : constant Version_32 := 16#afdbf393#;
   pragma Export (C, u00102, "system__val_lluB");
   u00103 : constant Version_32 := 16#399270b3#;
   pragma Export (C, u00103, "system__val_lluS");
   u00104 : constant Version_32 := 16#478fcb92#;
   pragma Export (C, u00104, "i2cB");
   u00105 : constant Version_32 := 16#3d5b4ab1#;
   pragma Export (C, u00105, "i2cS");
   u00106 : constant Version_32 := 16#b8041258#;
   pragma Export (C, u00106, "ada__calendar__delaysB");
   u00107 : constant Version_32 := 16#b27fb9e9#;
   pragma Export (C, u00107, "ada__calendar__delaysS");
   u00108 : constant Version_32 := 16#32ac7bbb#;
   pragma Export (C, u00108, "ada__calendarB");
   u00109 : constant Version_32 := 16#5b279c75#;
   pragma Export (C, u00109, "ada__calendarS");
   u00110 : constant Version_32 := 16#769e25e6#;
   pragma Export (C, u00110, "interfaces__cB");
   u00111 : constant Version_32 := 16#f60287af#;
   pragma Export (C, u00111, "interfaces__cS");
   u00112 : constant Version_32 := 16#d083f760#;
   pragma Export (C, u00112, "system__os_primitivesB");
   u00113 : constant Version_32 := 16#fd694a34#;
   pragma Export (C, u00113, "system__os_primitivesS");
   u00114 : constant Version_32 := 16#e6d4fa36#;
   pragma Export (C, u00114, "ada__stringsS");
   u00115 : constant Version_32 := 16#adb6d201#;
   pragma Export (C, u00115, "ada__strings__fixedB");
   u00116 : constant Version_32 := 16#a86b22b3#;
   pragma Export (C, u00116, "ada__strings__fixedS");
   u00117 : constant Version_32 := 16#96df1a3f#;
   pragma Export (C, u00117, "ada__strings__mapsB");
   u00118 : constant Version_32 := 16#1e526bec#;
   pragma Export (C, u00118, "ada__strings__mapsS");
   u00119 : constant Version_32 := 16#e75c0fb7#;
   pragma Export (C, u00119, "system__bit_opsB");
   u00120 : constant Version_32 := 16#0765e3a3#;
   pragma Export (C, u00120, "system__bit_opsS");
   u00121 : constant Version_32 := 16#5b4659fa#;
   pragma Export (C, u00121, "ada__charactersS");
   u00122 : constant Version_32 := 16#4b7bb96a#;
   pragma Export (C, u00122, "ada__characters__latin_1S");
   u00123 : constant Version_32 := 16#5109bed4#;
   pragma Export (C, u00123, "ada__strings__searchB");
   u00124 : constant Version_32 := 16#c1ab8667#;
   pragma Export (C, u00124, "ada__strings__searchS");
   u00125 : constant Version_32 := 16#2938d8f7#;
   pragma Export (C, u00125, "ada__strings__unboundedB");
   u00126 : constant Version_32 := 16#9fdb1809#;
   pragma Export (C, u00126, "ada__strings__unboundedS");
   u00127 : constant Version_32 := 16#acee74ad#;
   pragma Export (C, u00127, "system__compare_array_unsigned_8B");
   u00128 : constant Version_32 := 16#dee52acf#;
   pragma Export (C, u00128, "system__compare_array_unsigned_8S");
   u00129 : constant Version_32 := 16#a8025f3c#;
   pragma Export (C, u00129, "system__address_operationsB");
   u00130 : constant Version_32 := 16#64eae571#;
   pragma Export (C, u00130, "system__address_operationsS");
   u00131 : constant Version_32 := 16#2e260032#;
   pragma Export (C, u00131, "system__storage_pools__subpoolsB");
   u00132 : constant Version_32 := 16#cc5a1856#;
   pragma Export (C, u00132, "system__storage_pools__subpoolsS");
   u00133 : constant Version_32 := 16#d96e3c40#;
   pragma Export (C, u00133, "system__finalization_mastersB");
   u00134 : constant Version_32 := 16#2c1a6288#;
   pragma Export (C, u00134, "system__finalization_mastersS");
   u00135 : constant Version_32 := 16#7268f812#;
   pragma Export (C, u00135, "system__img_boolB");
   u00136 : constant Version_32 := 16#823f2aa9#;
   pragma Export (C, u00136, "system__img_boolS");
   u00137 : constant Version_32 := 16#d7aac20c#;
   pragma Export (C, u00137, "system__ioB");
   u00138 : constant Version_32 := 16#e9a4ac0d#;
   pragma Export (C, u00138, "system__ioS");
   u00139 : constant Version_32 := 16#6d4d969a#;
   pragma Export (C, u00139, "system__storage_poolsB");
   u00140 : constant Version_32 := 16#540bc5ef#;
   pragma Export (C, u00140, "system__storage_poolsS");
   u00141 : constant Version_32 := 16#84042202#;
   pragma Export (C, u00141, "system__storage_pools__subpools__finalizationB");
   u00142 : constant Version_32 := 16#fe2f4b3a#;
   pragma Export (C, u00142, "system__storage_pools__subpools__finalizationS");
   u00143 : constant Version_32 := 16#020a3f4d#;
   pragma Export (C, u00143, "system__atomic_countersB");
   u00144 : constant Version_32 := 16#c3ba76cf#;
   pragma Export (C, u00144, "system__atomic_countersS");
   u00145 : constant Version_32 := 16#039168f8#;
   pragma Export (C, u00145, "system__stream_attributesB");
   u00146 : constant Version_32 := 16#8bc30a4e#;
   pragma Export (C, u00146, "system__stream_attributesS");
   u00147 : constant Version_32 := 16#378692ce#;
   pragma Export (C, u00147, "ada__text_io__unbounded_ioS");
   u00148 : constant Version_32 := 16#27d2953a#;
   pragma Export (C, u00148, "ada__strings__unbounded__text_ioB");
   u00149 : constant Version_32 := 16#421af9c2#;
   pragma Export (C, u00149, "ada__strings__unbounded__text_ioS");
   u00150 : constant Version_32 := 16#fd2ad2f1#;
   pragma Export (C, u00150, "gnatS");
   u00151 : constant Version_32 := 16#1c97964e#;
   pragma Export (C, u00151, "gnat__expectB");
   u00152 : constant Version_32 := 16#b3495ef3#;
   pragma Export (C, u00152, "gnat__expectS");
   u00153 : constant Version_32 := 16#b48102f5#;
   pragma Export (C, u00153, "gnat__ioB");
   u00154 : constant Version_32 := 16#6227e843#;
   pragma Export (C, u00154, "gnat__ioS");
   u00155 : constant Version_32 := 16#3a3a6d38#;
   pragma Export (C, u00155, "gnat__os_libS");
   u00156 : constant Version_32 := 16#c72dc161#;
   pragma Export (C, u00156, "gnat__regpatS");
   u00157 : constant Version_32 := 16#863444e5#;
   pragma Export (C, u00157, "system__regpatB");
   u00158 : constant Version_32 := 16#f5bcc03d#;
   pragma Export (C, u00158, "system__regpatS");
   u00159 : constant Version_32 := 16#8f637df8#;
   pragma Export (C, u00159, "ada__characters__handlingB");
   u00160 : constant Version_32 := 16#3b3f6154#;
   pragma Export (C, u00160, "ada__characters__handlingS");
   u00161 : constant Version_32 := 16#92f05f13#;
   pragma Export (C, u00161, "ada__strings__maps__constantsS");
   u00162 : constant Version_32 := 16#2b93a046#;
   pragma Export (C, u00162, "system__img_charB");
   u00163 : constant Version_32 := 16#ebd203a5#;
   pragma Export (C, u00163, "system__img_charS");
   u00164 : constant Version_32 := 16#23ed7195#;
   pragma Export (C, u00164, "system__os_constantsS");
   u00165 : constant Version_32 := 16#5a895de2#;
   pragma Export (C, u00165, "system__pool_globalB");
   u00166 : constant Version_32 := 16#7141203e#;
   pragma Export (C, u00166, "system__pool_globalS");
   u00167 : constant Version_32 := 16#935938d8#;
   pragma Export (C, u00167, "system__memoryB");
   u00168 : constant Version_32 := 16#2e9b3d76#;
   pragma Export (C, u00168, "system__memoryS");
   u00169 : constant Version_32 := 16#a9af7bc2#;
   pragma Export (C, u00169, "text_ioS");

   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  ada.characters%s
   --  ada.characters.latin_1%s
   --  gnat%s
   --  gnat.io%s
   --  gnat.io%b
   --  interfaces%s
   --  system%s
   --  system.address_operations%s
   --  system.address_operations%b
   --  system.atomic_counters%s
   --  system.atomic_counters%b
   --  system.case_util%s
   --  system.case_util%b
   --  system.img_bool%s
   --  system.img_bool%b
   --  system.img_char%s
   --  system.img_char%b
   --  system.img_int%s
   --  system.img_int%b
   --  system.img_lli%s
   --  system.img_lli%b
   --  system.io%s
   --  system.io%b
   --  system.os_primitives%s
   --  system.os_primitives%b
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  interfaces.c_streams%s
   --  interfaces.c_streams%b
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.string_hash%s
   --  system.string_hash%b
   --  system.htable%s
   --  system.htable%b
   --  system.strings%s
   --  system.strings%b
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  system.unsigned_types%s
   --  system.img_biu%s
   --  system.img_biu%b
   --  system.img_llb%s
   --  system.img_llb%b
   --  system.img_llw%s
   --  system.img_llw%b
   --  system.img_wiu%s
   --  system.img_wiu%b
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%s
   --  system.wch_cnv%b
   --  system.compare_array_unsigned_8%s
   --  system.compare_array_unsigned_8%b
   --  system.traceback%s
   --  system.traceback%b
   --  system.secondary_stack%s
   --  system.standard_library%s
   --  system.exceptions_debug%s
   --  system.exceptions_debug%b
   --  ada.exceptions%s
   --  system.wch_stw%s
   --  ada.exceptions.traceback%s
   --  ada.exceptions.traceback%b
   --  system.soft_links%s
   --  system.exception_table%s
   --  system.exception_table%b
   --  system.exceptions%s
   --  system.exceptions%b
   --  system.soft_links.initialize%s
   --  system.soft_links.initialize%b
   --  system.soft_links%b
   --  system.secondary_stack%b
   --  system.address_image%s
   --  ada.exceptions.last_chance_handler%s
   --  system.memory%s
   --  system.memory%b
   --  system.wch_stw%b
   --  system.traceback.symbolic%s
   --  system.traceback.symbolic%b
   --  system.exceptions.machine%s
   --  system.exceptions.machine%b
   --  system.address_image%b
   --  ada.exceptions.last_chance_handler%b
   --  system.standard_library%b
   --  ada.exceptions%b
   --  ada.io_exceptions%s
   --  ada.strings%s
   --  interfaces.c%s
   --  interfaces.c%b
   --  system.os_constants%s
   --  system.os_lib%s
   --  system.os_lib%b
   --  gnat.os_lib%s
   --  system.val_util%s
   --  system.val_util%b
   --  system.val_llu%s
   --  system.val_llu%b
   --  system.val_lli%s
   --  system.val_lli%b
   --  system.val_uns%s
   --  system.val_uns%b
   --  ada.tags%s
   --  ada.tags%b
   --  ada.streams%s
   --  ada.streams%b
   --  system.file_control_block%s
   --  system.finalization_root%s
   --  system.finalization_root%b
   --  ada.finalization%s
   --  system.file_io%s
   --  system.file_io%b
   --  system.storage_pools%s
   --  system.storage_pools%b
   --  system.finalization_masters%s
   --  system.finalization_masters%b
   --  system.storage_pools.subpools%s
   --  system.storage_pools.subpools.finalization%s
   --  system.storage_pools.subpools%b
   --  system.storage_pools.subpools.finalization%b
   --  system.stream_attributes%s
   --  system.stream_attributes%b
   --  system.val_int%s
   --  system.val_int%b
   --  ada.calendar%s
   --  ada.calendar%b
   --  ada.calendar.delays%s
   --  ada.calendar.delays%b
   --  ada.text_io%s
   --  ada.text_io%b
   --  ada.text_io.generic_aux%s
   --  ada.text_io.generic_aux%b
   --  ada.text_io.integer_aux%s
   --  ada.text_io.integer_aux%b
   --  ada.integer_text_io%s
   --  ada.integer_text_io%b
   --  system.bit_ops%s
   --  system.bit_ops%b
   --  ada.strings.maps%s
   --  ada.strings.maps%b
   --  ada.strings.maps.constants%s
   --  ada.characters.handling%s
   --  ada.characters.handling%b
   --  ada.strings.search%s
   --  ada.strings.search%b
   --  ada.strings.fixed%s
   --  ada.strings.fixed%b
   --  ada.strings.unbounded%s
   --  ada.strings.unbounded%b
   --  system.regpat%s
   --  system.regpat%b
   --  gnat.regpat%s
   --  ada.strings.unbounded.text_io%s
   --  ada.strings.unbounded.text_io%b
   --  ada.text_io.unbounded_io%s
   --  system.pool_global%s
   --  system.pool_global%b
   --  gnat.expect%s
   --  gnat.expect%b
   --  text_io%s
   --  i2c%s
   --  i2c%b
   --  read%b
   --  END ELABORATION ORDER

end ada_main;
