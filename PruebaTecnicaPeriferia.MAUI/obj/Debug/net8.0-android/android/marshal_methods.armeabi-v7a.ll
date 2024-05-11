; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [332 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [664 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 26230656, ; 3: Microsoft.Extensions.DependencyModel => 0x1903f80 => 189
	i32 32687329, ; 4: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 252
	i32 34715100, ; 5: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 286
	i32 34839235, ; 6: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 38948123, ; 7: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 294
	i32 39109920, ; 8: Newtonsoft.Json.dll => 0x254c520 => 205
	i32 39485524, ; 9: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42244203, ; 10: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 303
	i32 42639949, ; 11: System.Threading.Thread => 0x28aa24d => 145
	i32 66541672, ; 12: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 13: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 327
	i32 68219467, ; 14: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 15: Microsoft.Maui.Graphics.dll => 0x44bb714 => 204
	i32 82292897, ; 16: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 83839681, ; 17: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 311
	i32 98325684, ; 18: Microsoft.Extensions.Diagnostics.Abstractions => 0x5dc54b4 => 191
	i32 101534019, ; 19: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 270
	i32 117431740, ; 20: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 21: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 270
	i32 122350210, ; 22: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 23: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 290
	i32 136584136, ; 24: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 326
	i32 140062828, ; 25: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 319
	i32 142721839, ; 26: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 27: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 28: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 29: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 226
	i32 176265551, ; 30: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 31: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 272
	i32 184328833, ; 32: System.ValueTuple.dll => 0xafca281 => 151
	i32 205061960, ; 33: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 34: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 224
	i32 220171995, ; 35: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 221958352, ; 36: Microsoft.Extensions.Diagnostics.dll => 0xd3ad0d0 => 190
	i32 230216969, ; 37: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 246
	i32 230752869, ; 38: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 39: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 40: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 41: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 261689757, ; 42: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 229
	i32 276479776, ; 43: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 44: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 248
	i32 280482487, ; 45: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 245
	i32 291076382, ; 46: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 291275502, ; 47: Microsoft.Extensions.Http.dll => 0x115c82ee => 192
	i32 298918909, ; 48: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 49: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 324
	i32 318968648, ; 50: Xamarin.AndroidX.Activity.dll => 0x13031348 => 215
	i32 321597661, ; 51: System.Numerics => 0x132b30dd => 83
	i32 321963286, ; 52: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 302
	i32 342366114, ; 53: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 247
	i32 347068432, ; 54: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 209
	i32 360082299, ; 55: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 56: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 57: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 58: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 59: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 60: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 61: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 62: _Microsoft.Android.Resource.Designer => 0x17969339 => 331
	i32 403441872, ; 63: WindowsBase => 0x180c08d0 => 165
	i32 409257351, ; 64: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 322
	i32 441335492, ; 65: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 230
	i32 442565967, ; 66: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 67: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 243
	i32 451504562, ; 68: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 69: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 70: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 71: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 72: System.dll => 0x1bff388e => 164
	i32 476646585, ; 73: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 245
	i32 486930444, ; 74: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 258
	i32 489220957, ; 75: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 300
	i32 498788369, ; 76: System.ObjectModel => 0x1dbae811 => 84
	i32 513247710, ; 77: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 198
	i32 526420162, ; 78: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 79: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 290
	i32 530143142, ; 80: PruebaTecnicaPeriferia.Entities.dll => 0x1f9957a6 => 329
	i32 530272170, ; 81: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 538707440, ; 82: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 321
	i32 539058512, ; 83: Microsoft.Extensions.Logging => 0x20216150 => 193
	i32 540030774, ; 84: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 85: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 86: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 87: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 88: Jsr305Binding => 0x213954e7 => 283
	i32 569601784, ; 89: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 281
	i32 577335427, ; 90: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 594429181, ; 91: PruebaTecnicaPeriferia.EFCore.dll => 0x236e44fd => 328
	i32 601371474, ; 92: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 93: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 94: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 95: Xamarin.AndroidX.CustomView => 0x2568904f => 235
	i32 627931235, ; 96: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 313
	i32 639843206, ; 97: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 241
	i32 643868501, ; 98: System.Net => 0x2660a755 => 81
	i32 662205335, ; 99: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 100: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 277
	i32 666292255, ; 101: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 222
	i32 672442732, ; 102: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 103: System.Net.Security => 0x28bdabca => 73
	i32 690569205, ; 104: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 105: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 292
	i32 693804605, ; 106: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 107: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 108: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 287
	i32 700358131, ; 109: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 720511267, ; 110: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 291
	i32 722857257, ; 111: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 731701662, ; 112: Microsoft.Extensions.Options.ConfigurationExtensions => 0x2b9ce19e => 197
	i32 735137430, ; 113: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 748832960, ; 114: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 207
	i32 752232764, ; 115: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 116: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 212
	i32 759454413, ; 117: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 118: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 119: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 120: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 319
	i32 789151979, ; 121: Microsoft.Extensions.Options => 0x2f0980eb => 196
	i32 790371945, ; 122: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 236
	i32 804715423, ; 123: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 124: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 250
	i32 823281589, ; 125: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 126: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 127: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 128: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 129: Xamarin.AndroidX.Print => 0x3246f6cd => 263
	i32 869139383, ; 130: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 304
	i32 873119928, ; 131: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 132: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 133: System.Net.Http.Json => 0x3463c971 => 63
	i32 880668424, ; 134: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 318
	i32 904024072, ; 135: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 136: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 918734561, ; 137: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 315
	i32 928116545, ; 138: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 286
	i32 952186615, ; 139: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 955402788, ; 140: Newtonsoft.Json => 0x38f24a24 => 205
	i32 956575887, ; 141: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 291
	i32 961460050, ; 142: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 308
	i32 966729478, ; 143: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 284
	i32 967690846, ; 144: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 247
	i32 975236339, ; 145: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 146: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 147: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 148: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 990727110, ; 149: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 317
	i32 992768348, ; 150: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 151: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 1001831731, ; 152: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 153: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 267
	i32 1019214401, ; 154: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 155: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 188
	i32 1031528504, ; 156: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 285
	i32 1035644815, ; 157: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 220
	i32 1036536393, ; 158: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1043950537, ; 159: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 298
	i32 1044663988, ; 160: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1048992957, ; 161: Microsoft.Extensions.Diagnostics.Abstractions.dll => 0x3e865cbd => 191
	i32 1052210849, ; 162: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 254
	i32 1067306892, ; 163: GoogleGson => 0x3f9dcf8c => 176
	i32 1082857460, ; 164: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 165: Xamarin.Kotlin.StdLib => 0x409e66d8 => 288
	i32 1098259244, ; 166: System => 0x41761b2c => 164
	i32 1108272742, ; 167: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 320
	i32 1117529484, ; 168: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 314
	i32 1118262833, ; 169: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 310
	i32 1121599056, ; 170: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 253
	i32 1127624469, ; 171: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 195
	i32 1149092582, ; 172: Xamarin.AndroidX.Window => 0x447dc2e6 => 280
	i32 1157931901, ; 173: Microsoft.EntityFrameworkCore.Abstractions => 0x4504a37d => 179
	i32 1168523401, ; 174: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 316
	i32 1170634674, ; 175: System.Web.dll => 0x45c677b2 => 153
	i32 1175144683, ; 176: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 276
	i32 1178241025, ; 177: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 261
	i32 1202000627, ; 178: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x47a512f3 => 179
	i32 1204270330, ; 179: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 222
	i32 1204575371, ; 180: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 183
	i32 1208641965, ; 181: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1214827643, ; 182: CommunityToolkit.Mvvm => 0x4868cc7b => 174
	i32 1219128291, ; 183: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1243150071, ; 184: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 281
	i32 1253011324, ; 185: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 186: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 296
	i32 1264511973, ; 187: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 271
	i32 1267360935, ; 188: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 275
	i32 1273260888, ; 189: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 227
	i32 1275534314, ; 190: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 292
	i32 1278448581, ; 191: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 219
	i32 1292207520, ; 192: SQLitePCLRaw.core.dll => 0x4d0585a0 => 208
	i32 1293217323, ; 193: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 238
	i32 1308624726, ; 194: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 305
	i32 1309188875, ; 195: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 196: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 280
	i32 1324164729, ; 197: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 198: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1336711579, ; 199: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 325
	i32 1364015309, ; 200: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 201: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 326
	i32 1376866003, ; 202: Xamarin.AndroidX.SavedState => 0x52114ed3 => 267
	i32 1379779777, ; 203: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 204: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 205: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 231
	i32 1408764838, ; 206: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 207: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 208: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 209: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 294
	i32 1434145427, ; 210: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 211: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 284
	i32 1439761251, ; 212: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 213: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 214: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 215: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 216: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461004990, ; 217: es\Microsoft.Maui.Controls.resources => 0x57152abe => 300
	i32 1461234159, ; 218: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 219: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 220: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 221: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 221
	i32 1470490898, ; 222: Microsoft.Extensions.Primitives => 0x57a5e912 => 198
	i32 1479771757, ; 223: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 224: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 225: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 226: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 268
	i32 1490351284, ; 227: Microsoft.Data.Sqlite.dll => 0x58d4f4b4 => 177
	i32 1505131794, ; 228: Microsoft.Extensions.Http => 0x59b67d12 => 192
	i32 1526286932, ; 229: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 324
	i32 1536373174, ; 230: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 231: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 232: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 233: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1565862583, ; 234: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 235: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 236: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 237: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582372066, ; 238: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 237
	i32 1592978981, ; 239: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 240: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 285
	i32 1601112923, ; 241: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 242: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 243: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 244: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 257
	i32 1622358360, ; 245: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 246: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 279
	i32 1635184631, ; 247: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 241
	i32 1636350590, ; 248: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 234
	i32 1639515021, ; 249: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 250: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 251: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 252: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 253: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 273
	i32 1658251792, ; 254: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 282
	i32 1670060433, ; 255: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 229
	i32 1675553242, ; 256: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 257: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 258: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 259: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1688112883, ; 260: Microsoft.Data.Sqlite => 0x649e8ef3 => 177
	i32 1689493916, ; 261: Microsoft.EntityFrameworkCore.dll => 0x64b3a19c => 178
	i32 1691477237, ; 262: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 263: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 264: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 289
	i32 1701541528, ; 265: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1711441057, ; 266: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 209
	i32 1720223769, ; 267: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 250
	i32 1726116996, ; 268: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 269: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 270: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 225
	i32 1743415430, ; 271: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 295
	i32 1744735666, ; 272: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 273: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 274: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 275: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 276: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 277: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 278: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 272
	i32 1770582343, ; 279: Microsoft.Extensions.Logging.dll => 0x6988f147 => 193
	i32 1776026572, ; 280: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 281: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 282: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 283: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 311
	i32 1788241197, ; 284: Xamarin.AndroidX.Fragment => 0x6a96652d => 243
	i32 1793755602, ; 285: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 303
	i32 1808609942, ; 286: Xamarin.AndroidX.Loader => 0x6bcd3296 => 257
	i32 1813058853, ; 287: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 288
	i32 1813201214, ; 288: Xamarin.Google.Android.Material => 0x6c13413e => 282
	i32 1818569960, ; 289: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 262
	i32 1818787751, ; 290: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 291: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 292: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 293: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 194
	i32 1847515442, ; 294: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 212
	i32 1853025655, ; 295: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 320
	i32 1858542181, ; 296: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 297: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1873859506, ; 298: PruebaTecnicaPeriferia.MAUI.dll => 0x6fb0d3b2 => 0
	i32 1875935024, ; 299: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 302
	i32 1879696579, ; 300: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 301: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 223
	i32 1886040351, ; 302: Microsoft.EntityFrameworkCore.Sqlite.dll => 0x706ab11f => 181
	i32 1888955245, ; 303: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 304: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1893218855, ; 305: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 296
	i32 1898237753, ; 306: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 307: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 308: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 309: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1953182387, ; 310: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 307
	i32 1956758971, ; 311: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 312: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 269
	i32 1968388702, ; 313: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 184
	i32 1983156543, ; 314: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 289
	i32 1985761444, ; 315: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 214
	i32 2003115576, ; 316: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 299
	i32 2011961780, ; 317: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2014489277, ; 318: Microsoft.EntityFrameworkCore.Sqlite => 0x7812aabd => 181
	i32 2019465201, ; 319: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 254
	i32 2026446805, ; 320: PruebaTecnicaPeriferia.Http.Service.dll => 0x78c91fd5 => 330
	i32 2031763787, ; 321: Xamarin.Android.Glide => 0x791a414b => 211
	i32 2045470958, ; 322: System.Private.Xml => 0x79eb68ee => 88
	i32 2048278909, ; 323: Microsoft.Extensions.Configuration.Binder.dll => 0x7a16417d => 186
	i32 2055257422, ; 324: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 249
	i32 2060060697, ; 325: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 326: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 298
	i32 2070888862, ; 327: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 328: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 329: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2103459038, ; 330: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 210
	i32 2127167465, ; 331: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 332: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 333: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 334: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 335: Microsoft.Maui => 0x80bd55ad => 202
	i32 2169148018, ; 336: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 306
	i32 2181898931, ; 337: Microsoft.Extensions.Options.dll => 0x820d22b3 => 196
	i32 2192057212, ; 338: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 194
	i32 2193016926, ; 339: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2197979891, ; 340: Microsoft.Extensions.DependencyModel.dll => 0x830282f3 => 189
	i32 2201107256, ; 341: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 293
	i32 2201231467, ; 342: System.Net.Http => 0x8334206b => 64
	i32 2207618523, ; 343: it\Microsoft.Maui.Controls.resources => 0x839595db => 308
	i32 2217644978, ; 344: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 276
	i32 2222056684, ; 345: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2244775296, ; 346: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 258
	i32 2252106437, ; 347: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2252897993, ; 348: Microsoft.EntityFrameworkCore => 0x86487ec9 => 178
	i32 2256313426, ; 349: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 350: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 351: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 185
	i32 2267999099, ; 352: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 213
	i32 2279755925, ; 353: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 265
	i32 2293034957, ; 354: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 355: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 356: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 357: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 312
	i32 2305521784, ; 358: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 359: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 217
	i32 2320631194, ; 360: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 361: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 362: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 363: System.Net.Primitives => 0x8c40e0db => 70
	i32 2366048013, ; 364: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 306
	i32 2368005991, ; 365: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2371007202, ; 366: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 184
	i32 2378619854, ; 367: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 368: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 369: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 307
	i32 2401565422, ; 370: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 371: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 240
	i32 2421380589, ; 372: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 373: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 227
	i32 2427813419, ; 374: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 304
	i32 2435356389, ; 375: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 376: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 377: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 378: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 379: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465273461, ; 380: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 207
	i32 2465532216, ; 381: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 230
	i32 2471841756, ; 382: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 383: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 384: Microsoft.Maui.Controls => 0x93dba8a1 => 200
	i32 2483903535, ; 385: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 386: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 387: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 388: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2503351294, ; 389: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 310
	i32 2505896520, ; 390: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 252
	i32 2522472828, ; 391: Xamarin.Android.Glide.dll => 0x9659e17c => 211
	i32 2538310050, ; 392: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 393: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 305
	i32 2562349572, ; 394: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2563143864, ; 395: AndHUD.dll => 0x98c678b8 => 173
	i32 2570120770, ; 396: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2576534780, ; 397: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 309
	i32 2581783588, ; 398: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 253
	i32 2581819634, ; 399: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 275
	i32 2585220780, ; 400: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 401: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 402: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2593496499, ; 403: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 314
	i32 2605712449, ; 404: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 293
	i32 2615233544, ; 405: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 244
	i32 2616218305, ; 406: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 195
	i32 2617129537, ; 407: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 408: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 409: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 234
	i32 2624644809, ; 410: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 239
	i32 2626831493, ; 411: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 309
	i32 2627185994, ; 412: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 413: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 414: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 248
	i32 2634653062, ; 415: Microsoft.EntityFrameworkCore.Relational.dll => 0x9d099d86 => 180
	i32 2663391936, ; 416: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 213
	i32 2663698177, ; 417: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 418: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 419: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 420: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 421: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 422: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 423: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 273
	i32 2715334215, ; 424: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 425: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 426: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 427: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 428: Xamarin.AndroidX.Activity => 0xa2e0939b => 215
	i32 2735172069, ; 429: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 430: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 221
	i32 2740698338, ; 431: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 295
	i32 2740948882, ; 432: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 433: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 434: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 315
	i32 2758225723, ; 435: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 201
	i32 2764765095, ; 436: Microsoft.Maui.dll => 0xa4caf7a7 => 202
	i32 2765824710, ; 437: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 438: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 287
	i32 2778768386, ; 439: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 278
	i32 2779977773, ; 440: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 266
	i32 2785988530, ; 441: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 321
	i32 2788224221, ; 442: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 244
	i32 2801831435, ; 443: Microsoft.Maui.Graphics => 0xa7008e0b => 204
	i32 2803228030, ; 444: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2810250172, ; 445: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 231
	i32 2819470561, ; 446: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 447: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 448: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 266
	i32 2824502124, ; 449: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2833906405, ; 450: Controls.UserDialogs.Maui => 0xa8e9fae5 => 175
	i32 2838993487, ; 451: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 255
	i32 2847789619, ; 452: Microsoft.EntityFrameworkCore.Relational => 0xa9bdd233 => 180
	i32 2849599387, ; 453: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 454: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 278
	i32 2855708567, ; 455: Xamarin.AndroidX.Transition => 0xaa36a797 => 274
	i32 2861098320, ; 456: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 457: Microsoft.Maui.Essentials => 0xaa8a4878 => 203
	i32 2870099610, ; 458: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 216
	i32 2875164099, ; 459: Jsr305Binding.dll => 0xab5f85c3 => 283
	i32 2875220617, ; 460: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 461: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 242
	i32 2887636118, ; 462: System.Net.dll => 0xac1dd496 => 81
	i32 2899753641, ; 463: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 464: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 465: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 466: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 467: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2916838712, ; 468: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 279
	i32 2919462931, ; 469: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 470: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 218
	i32 2936416060, ; 471: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 472: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 473: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 474: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 475: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2971004615, ; 476: Microsoft.Extensions.Options.ConfigurationExtensions.dll => 0xb115eec7 => 197
	i32 2972252294, ; 477: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 478: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 238
	i32 2987532451, ; 479: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 269
	i32 2996846495, ; 480: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 251
	i32 3016983068, ; 481: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 271
	i32 3020703001, ; 482: Microsoft.Extensions.Diagnostics => 0xb40c4519 => 190
	i32 3023353419, ; 483: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 484: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 246
	i32 3038032645, ; 485: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 331
	i32 3053864966, ; 486: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 301
	i32 3056245963, ; 487: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 268
	i32 3057625584, ; 488: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 259
	i32 3059408633, ; 489: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 490: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3069363400, ; 491: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 182
	i32 3075834255, ; 492: System.Threading.Tasks => 0xb755818f => 144
	i32 3090735792, ; 493: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 494: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 495: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 496: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 497: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 498: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 499: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 500: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 501: GoogleGson.dll => 0xbba64c02 => 176
	i32 3159123045, ; 502: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 503: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 504: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 260
	i32 3192346100, ; 505: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 506: System.Web => 0xbe592c0c => 153
	i32 3195844289, ; 507: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 182
	i32 3204380047, ; 508: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 509: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 510: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 237
	i32 3220365878, ; 511: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 512: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3249260365, ; 513: RestSharp.dll => 0xc1abc74d => 206
	i32 3251039220, ; 514: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 515: Xamarin.AndroidX.CardView => 0xc235e84d => 225
	i32 3265493905, ; 516: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 517: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 518: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 519: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 520: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 521: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3297717902, ; 522: Controls.UserDialogs.Maui.dll => 0xc48f2e8e => 175
	i32 3299363146, ; 523: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 524: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 525: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 301
	i32 3316684772, ; 526: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 527: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 235
	i32 3317144872, ; 528: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 529: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 223
	i32 3345895724, ; 530: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 264
	i32 3346324047, ; 531: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 261
	i32 3357674450, ; 532: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 318
	i32 3358260929, ; 533: System.Text.Json => 0xc82afec1 => 137
	i32 3360279109, ; 534: SQLitePCLRaw.core => 0xc849ca45 => 208
	i32 3362336904, ; 535: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 216
	i32 3362522851, ; 536: Xamarin.AndroidX.Core => 0xc86c06e3 => 232
	i32 3366347497, ; 537: Java.Interop => 0xc8a662e9 => 168
	i32 3374999561, ; 538: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 265
	i32 3381016424, ; 539: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 297
	i32 3395150330, ; 540: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 541: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 542: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 236
	i32 3417389873, ; 543: PruebaTecnicaPeriferia.MAUI => 0xcbb13b31 => 0
	i32 3421170118, ; 544: Microsoft.Extensions.Configuration.Binder => 0xcbeae9c6 => 186
	i32 3428513518, ; 545: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 187
	i32 3429136800, ; 546: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 547: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 548: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 239
	i32 3442543374, ; 549: AndHUD => 0xcd310b0e => 173
	i32 3445260447, ; 550: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 551: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 199
	i32 3458724246, ; 552: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 316
	i32 3468102982, ; 553: PruebaTecnicaPeriferia.EFCore => 0xceb70d46 => 328
	i32 3471940407, ; 554: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 555: Mono.Android => 0xcf3163e6 => 171
	i32 3484440000, ; 556: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 317
	i32 3485117614, ; 557: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 558: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 559: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 228
	i32 3509114376, ; 560: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 561: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 562: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 563: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3560100363, ; 564: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 565: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3580758918, ; 566: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 325
	i32 3592228221, ; 567: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 327
	i32 3597029428, ; 568: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 214
	i32 3598340787, ; 569: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 570: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 571: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 572: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 263
	i32 3633644679, ; 573: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 218
	i32 3638274909, ; 574: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 575: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 249
	i32 3643446276, ; 576: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 322
	i32 3643854240, ; 577: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 260
	i32 3645089577, ; 578: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 579: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 185
	i32 3660523487, ; 580: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 581: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 582: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 224
	i32 3684561358, ; 583: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 228
	i32 3700866549, ; 584: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 585: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 233
	i32 3716563718, ; 586: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 587: Xamarin.AndroidX.Annotation => 0xdda814c6 => 217
	i32 3724971120, ; 588: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 259
	i32 3732100267, ; 589: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 590: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 591: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 592: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3751619990, ; 593: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 297
	i32 3754567612, ; 594: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 210
	i32 3786282454, ; 595: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 226
	i32 3792276235, ; 596: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 597: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 199
	i32 3802395368, ; 598: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3816437471, ; 599: RestSharp => 0xe37a36df => 206
	i32 3819260425, ; 600: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 601: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 602: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 603: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 188
	i32 3844307129, ; 604: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 605: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 606: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 607: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 608: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 609: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 610: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 274
	i32 3888767677, ; 611: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 264
	i32 3896106733, ; 612: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 613: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 232
	i32 3901907137, ; 614: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920221145, ; 615: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 313
	i32 3920810846, ; 616: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 617: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 277
	i32 3928044579, ; 618: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 619: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 620: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 262
	i32 3945713374, ; 621: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 622: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 623: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 220
	i32 3959773229, ; 624: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 251
	i32 4003436829, ; 625: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 626: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 219
	i32 4025784931, ; 627: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 628: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 201
	i32 4054681211, ; 629: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 630: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 631: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4091086043, ; 632: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 299
	i32 4094352644, ; 633: Microsoft.Maui.Essentials.dll => 0xf40add04 => 203
	i32 4099507663, ; 634: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 635: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 636: Xamarin.AndroidX.Emoji2 => 0xf479582c => 240
	i32 4101842092, ; 637: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 183
	i32 4103439459, ; 638: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 323
	i32 4126470640, ; 639: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 187
	i32 4127667938, ; 640: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 641: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 642: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 643: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 323
	i32 4151237749, ; 644: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 645: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 646: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 647: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4167493482, ; 648: PruebaTecnicaPeriferia.Http.Service => 0xf866e76a => 330
	i32 4181436372, ; 649: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 650: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 256
	i32 4185676441, ; 651: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 652: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 653: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4249188766, ; 654: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 312
	i32 4256097574, ; 655: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 233
	i32 4258378803, ; 656: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 255
	i32 4260525087, ; 657: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 658: Microsoft.Maui.Controls.dll => 0xfea12dee => 200
	i32 4274623895, ; 659: CommunityToolkit.Mvvm.dll => 0xfec99597 => 174
	i32 4274976490, ; 660: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4283188801, ; 661: PruebaTecnicaPeriferia.Entities => 0xff4c4641 => 329
	i32 4292120959, ; 662: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 256
	i32 4294763496 ; 663: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 242
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [664 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 189, ; 3
	i32 252, ; 4
	i32 286, ; 5
	i32 48, ; 6
	i32 294, ; 7
	i32 205, ; 8
	i32 80, ; 9
	i32 303, ; 10
	i32 145, ; 11
	i32 30, ; 12
	i32 327, ; 13
	i32 124, ; 14
	i32 204, ; 15
	i32 102, ; 16
	i32 311, ; 17
	i32 191, ; 18
	i32 270, ; 19
	i32 107, ; 20
	i32 270, ; 21
	i32 139, ; 22
	i32 290, ; 23
	i32 326, ; 24
	i32 319, ; 25
	i32 77, ; 26
	i32 124, ; 27
	i32 13, ; 28
	i32 226, ; 29
	i32 132, ; 30
	i32 272, ; 31
	i32 151, ; 32
	i32 18, ; 33
	i32 224, ; 34
	i32 26, ; 35
	i32 190, ; 36
	i32 246, ; 37
	i32 1, ; 38
	i32 59, ; 39
	i32 42, ; 40
	i32 91, ; 41
	i32 229, ; 42
	i32 147, ; 43
	i32 248, ; 44
	i32 245, ; 45
	i32 54, ; 46
	i32 192, ; 47
	i32 69, ; 48
	i32 324, ; 49
	i32 215, ; 50
	i32 83, ; 51
	i32 302, ; 52
	i32 247, ; 53
	i32 209, ; 54
	i32 131, ; 55
	i32 55, ; 56
	i32 149, ; 57
	i32 74, ; 58
	i32 145, ; 59
	i32 62, ; 60
	i32 146, ; 61
	i32 331, ; 62
	i32 165, ; 63
	i32 322, ; 64
	i32 230, ; 65
	i32 12, ; 66
	i32 243, ; 67
	i32 125, ; 68
	i32 152, ; 69
	i32 113, ; 70
	i32 166, ; 71
	i32 164, ; 72
	i32 245, ; 73
	i32 258, ; 74
	i32 300, ; 75
	i32 84, ; 76
	i32 198, ; 77
	i32 150, ; 78
	i32 290, ; 79
	i32 329, ; 80
	i32 60, ; 81
	i32 321, ; 82
	i32 193, ; 83
	i32 51, ; 84
	i32 103, ; 85
	i32 114, ; 86
	i32 40, ; 87
	i32 283, ; 88
	i32 281, ; 89
	i32 120, ; 90
	i32 328, ; 91
	i32 52, ; 92
	i32 44, ; 93
	i32 119, ; 94
	i32 235, ; 95
	i32 313, ; 96
	i32 241, ; 97
	i32 81, ; 98
	i32 136, ; 99
	i32 277, ; 100
	i32 222, ; 101
	i32 8, ; 102
	i32 73, ; 103
	i32 155, ; 104
	i32 292, ; 105
	i32 154, ; 106
	i32 92, ; 107
	i32 287, ; 108
	i32 45, ; 109
	i32 291, ; 110
	i32 109, ; 111
	i32 197, ; 112
	i32 129, ; 113
	i32 207, ; 114
	i32 25, ; 115
	i32 212, ; 116
	i32 72, ; 117
	i32 55, ; 118
	i32 46, ; 119
	i32 319, ; 120
	i32 196, ; 121
	i32 236, ; 122
	i32 22, ; 123
	i32 250, ; 124
	i32 86, ; 125
	i32 43, ; 126
	i32 160, ; 127
	i32 71, ; 128
	i32 263, ; 129
	i32 304, ; 130
	i32 3, ; 131
	i32 42, ; 132
	i32 63, ; 133
	i32 318, ; 134
	i32 16, ; 135
	i32 53, ; 136
	i32 315, ; 137
	i32 286, ; 138
	i32 105, ; 139
	i32 205, ; 140
	i32 291, ; 141
	i32 308, ; 142
	i32 284, ; 143
	i32 247, ; 144
	i32 34, ; 145
	i32 158, ; 146
	i32 85, ; 147
	i32 32, ; 148
	i32 317, ; 149
	i32 12, ; 150
	i32 51, ; 151
	i32 56, ; 152
	i32 267, ; 153
	i32 36, ; 154
	i32 188, ; 155
	i32 285, ; 156
	i32 220, ; 157
	i32 35, ; 158
	i32 298, ; 159
	i32 58, ; 160
	i32 191, ; 161
	i32 254, ; 162
	i32 176, ; 163
	i32 17, ; 164
	i32 288, ; 165
	i32 164, ; 166
	i32 320, ; 167
	i32 314, ; 168
	i32 310, ; 169
	i32 253, ; 170
	i32 195, ; 171
	i32 280, ; 172
	i32 179, ; 173
	i32 316, ; 174
	i32 153, ; 175
	i32 276, ; 176
	i32 261, ; 177
	i32 179, ; 178
	i32 222, ; 179
	i32 183, ; 180
	i32 29, ; 181
	i32 174, ; 182
	i32 52, ; 183
	i32 281, ; 184
	i32 5, ; 185
	i32 296, ; 186
	i32 271, ; 187
	i32 275, ; 188
	i32 227, ; 189
	i32 292, ; 190
	i32 219, ; 191
	i32 208, ; 192
	i32 238, ; 193
	i32 305, ; 194
	i32 85, ; 195
	i32 280, ; 196
	i32 61, ; 197
	i32 112, ; 198
	i32 325, ; 199
	i32 57, ; 200
	i32 326, ; 201
	i32 267, ; 202
	i32 99, ; 203
	i32 19, ; 204
	i32 231, ; 205
	i32 111, ; 206
	i32 101, ; 207
	i32 102, ; 208
	i32 294, ; 209
	i32 104, ; 210
	i32 284, ; 211
	i32 71, ; 212
	i32 38, ; 213
	i32 32, ; 214
	i32 103, ; 215
	i32 73, ; 216
	i32 300, ; 217
	i32 9, ; 218
	i32 123, ; 219
	i32 46, ; 220
	i32 221, ; 221
	i32 198, ; 222
	i32 9, ; 223
	i32 43, ; 224
	i32 4, ; 225
	i32 268, ; 226
	i32 177, ; 227
	i32 192, ; 228
	i32 324, ; 229
	i32 31, ; 230
	i32 138, ; 231
	i32 92, ; 232
	i32 93, ; 233
	i32 49, ; 234
	i32 141, ; 235
	i32 112, ; 236
	i32 140, ; 237
	i32 237, ; 238
	i32 115, ; 239
	i32 285, ; 240
	i32 157, ; 241
	i32 76, ; 242
	i32 79, ; 243
	i32 257, ; 244
	i32 37, ; 245
	i32 279, ; 246
	i32 241, ; 247
	i32 234, ; 248
	i32 64, ; 249
	i32 138, ; 250
	i32 15, ; 251
	i32 116, ; 252
	i32 273, ; 253
	i32 282, ; 254
	i32 229, ; 255
	i32 48, ; 256
	i32 70, ; 257
	i32 80, ; 258
	i32 126, ; 259
	i32 177, ; 260
	i32 178, ; 261
	i32 94, ; 262
	i32 121, ; 263
	i32 289, ; 264
	i32 26, ; 265
	i32 209, ; 266
	i32 250, ; 267
	i32 97, ; 268
	i32 28, ; 269
	i32 225, ; 270
	i32 295, ; 271
	i32 149, ; 272
	i32 169, ; 273
	i32 4, ; 274
	i32 98, ; 275
	i32 33, ; 276
	i32 93, ; 277
	i32 272, ; 278
	i32 193, ; 279
	i32 21, ; 280
	i32 41, ; 281
	i32 170, ; 282
	i32 311, ; 283
	i32 243, ; 284
	i32 303, ; 285
	i32 257, ; 286
	i32 288, ; 287
	i32 282, ; 288
	i32 262, ; 289
	i32 2, ; 290
	i32 134, ; 291
	i32 111, ; 292
	i32 194, ; 293
	i32 212, ; 294
	i32 320, ; 295
	i32 58, ; 296
	i32 95, ; 297
	i32 0, ; 298
	i32 302, ; 299
	i32 39, ; 300
	i32 223, ; 301
	i32 181, ; 302
	i32 25, ; 303
	i32 94, ; 304
	i32 296, ; 305
	i32 89, ; 306
	i32 99, ; 307
	i32 10, ; 308
	i32 87, ; 309
	i32 307, ; 310
	i32 100, ; 311
	i32 269, ; 312
	i32 184, ; 313
	i32 289, ; 314
	i32 214, ; 315
	i32 299, ; 316
	i32 7, ; 317
	i32 181, ; 318
	i32 254, ; 319
	i32 330, ; 320
	i32 211, ; 321
	i32 88, ; 322
	i32 186, ; 323
	i32 249, ; 324
	i32 154, ; 325
	i32 298, ; 326
	i32 33, ; 327
	i32 116, ; 328
	i32 82, ; 329
	i32 210, ; 330
	i32 20, ; 331
	i32 11, ; 332
	i32 162, ; 333
	i32 3, ; 334
	i32 202, ; 335
	i32 306, ; 336
	i32 196, ; 337
	i32 194, ; 338
	i32 84, ; 339
	i32 189, ; 340
	i32 293, ; 341
	i32 64, ; 342
	i32 308, ; 343
	i32 276, ; 344
	i32 143, ; 345
	i32 258, ; 346
	i32 157, ; 347
	i32 178, ; 348
	i32 41, ; 349
	i32 117, ; 350
	i32 185, ; 351
	i32 213, ; 352
	i32 265, ; 353
	i32 131, ; 354
	i32 75, ; 355
	i32 66, ; 356
	i32 312, ; 357
	i32 172, ; 358
	i32 217, ; 359
	i32 143, ; 360
	i32 106, ; 361
	i32 151, ; 362
	i32 70, ; 363
	i32 306, ; 364
	i32 156, ; 365
	i32 184, ; 366
	i32 121, ; 367
	i32 127, ; 368
	i32 307, ; 369
	i32 152, ; 370
	i32 240, ; 371
	i32 141, ; 372
	i32 227, ; 373
	i32 304, ; 374
	i32 20, ; 375
	i32 14, ; 376
	i32 135, ; 377
	i32 75, ; 378
	i32 59, ; 379
	i32 207, ; 380
	i32 230, ; 381
	i32 167, ; 382
	i32 168, ; 383
	i32 200, ; 384
	i32 15, ; 385
	i32 74, ; 386
	i32 6, ; 387
	i32 23, ; 388
	i32 310, ; 389
	i32 252, ; 390
	i32 211, ; 391
	i32 91, ; 392
	i32 305, ; 393
	i32 1, ; 394
	i32 173, ; 395
	i32 136, ; 396
	i32 309, ; 397
	i32 253, ; 398
	i32 275, ; 399
	i32 134, ; 400
	i32 69, ; 401
	i32 146, ; 402
	i32 314, ; 403
	i32 293, ; 404
	i32 244, ; 405
	i32 195, ; 406
	i32 88, ; 407
	i32 96, ; 408
	i32 234, ; 409
	i32 239, ; 410
	i32 309, ; 411
	i32 31, ; 412
	i32 45, ; 413
	i32 248, ; 414
	i32 180, ; 415
	i32 213, ; 416
	i32 109, ; 417
	i32 158, ; 418
	i32 35, ; 419
	i32 22, ; 420
	i32 114, ; 421
	i32 57, ; 422
	i32 273, ; 423
	i32 144, ; 424
	i32 118, ; 425
	i32 120, ; 426
	i32 110, ; 427
	i32 215, ; 428
	i32 139, ; 429
	i32 221, ; 430
	i32 295, ; 431
	i32 54, ; 432
	i32 105, ; 433
	i32 315, ; 434
	i32 201, ; 435
	i32 202, ; 436
	i32 133, ; 437
	i32 287, ; 438
	i32 278, ; 439
	i32 266, ; 440
	i32 321, ; 441
	i32 244, ; 442
	i32 204, ; 443
	i32 159, ; 444
	i32 231, ; 445
	i32 163, ; 446
	i32 132, ; 447
	i32 266, ; 448
	i32 161, ; 449
	i32 175, ; 450
	i32 255, ; 451
	i32 180, ; 452
	i32 140, ; 453
	i32 278, ; 454
	i32 274, ; 455
	i32 169, ; 456
	i32 203, ; 457
	i32 216, ; 458
	i32 283, ; 459
	i32 40, ; 460
	i32 242, ; 461
	i32 81, ; 462
	i32 56, ; 463
	i32 37, ; 464
	i32 97, ; 465
	i32 166, ; 466
	i32 172, ; 467
	i32 279, ; 468
	i32 82, ; 469
	i32 218, ; 470
	i32 98, ; 471
	i32 30, ; 472
	i32 159, ; 473
	i32 18, ; 474
	i32 127, ; 475
	i32 197, ; 476
	i32 119, ; 477
	i32 238, ; 478
	i32 269, ; 479
	i32 251, ; 480
	i32 271, ; 481
	i32 190, ; 482
	i32 165, ; 483
	i32 246, ; 484
	i32 331, ; 485
	i32 301, ; 486
	i32 268, ; 487
	i32 259, ; 488
	i32 170, ; 489
	i32 16, ; 490
	i32 182, ; 491
	i32 144, ; 492
	i32 125, ; 493
	i32 118, ; 494
	i32 38, ; 495
	i32 115, ; 496
	i32 47, ; 497
	i32 142, ; 498
	i32 117, ; 499
	i32 34, ; 500
	i32 176, ; 501
	i32 95, ; 502
	i32 53, ; 503
	i32 260, ; 504
	i32 129, ; 505
	i32 153, ; 506
	i32 182, ; 507
	i32 24, ; 508
	i32 161, ; 509
	i32 237, ; 510
	i32 148, ; 511
	i32 104, ; 512
	i32 206, ; 513
	i32 89, ; 514
	i32 225, ; 515
	i32 60, ; 516
	i32 142, ; 517
	i32 100, ; 518
	i32 5, ; 519
	i32 13, ; 520
	i32 122, ; 521
	i32 175, ; 522
	i32 135, ; 523
	i32 28, ; 524
	i32 301, ; 525
	i32 72, ; 526
	i32 235, ; 527
	i32 24, ; 528
	i32 223, ; 529
	i32 264, ; 530
	i32 261, ; 531
	i32 318, ; 532
	i32 137, ; 533
	i32 208, ; 534
	i32 216, ; 535
	i32 232, ; 536
	i32 168, ; 537
	i32 265, ; 538
	i32 297, ; 539
	i32 101, ; 540
	i32 123, ; 541
	i32 236, ; 542
	i32 0, ; 543
	i32 186, ; 544
	i32 187, ; 545
	i32 163, ; 546
	i32 167, ; 547
	i32 239, ; 548
	i32 173, ; 549
	i32 39, ; 550
	i32 199, ; 551
	i32 316, ; 552
	i32 328, ; 553
	i32 17, ; 554
	i32 171, ; 555
	i32 317, ; 556
	i32 137, ; 557
	i32 150, ; 558
	i32 228, ; 559
	i32 155, ; 560
	i32 130, ; 561
	i32 19, ; 562
	i32 65, ; 563
	i32 147, ; 564
	i32 47, ; 565
	i32 325, ; 566
	i32 327, ; 567
	i32 214, ; 568
	i32 79, ; 569
	i32 61, ; 570
	i32 106, ; 571
	i32 263, ; 572
	i32 218, ; 573
	i32 49, ; 574
	i32 249, ; 575
	i32 322, ; 576
	i32 260, ; 577
	i32 14, ; 578
	i32 185, ; 579
	i32 68, ; 580
	i32 171, ; 581
	i32 224, ; 582
	i32 228, ; 583
	i32 78, ; 584
	i32 233, ; 585
	i32 108, ; 586
	i32 217, ; 587
	i32 259, ; 588
	i32 67, ; 589
	i32 63, ; 590
	i32 27, ; 591
	i32 160, ; 592
	i32 297, ; 593
	i32 210, ; 594
	i32 226, ; 595
	i32 10, ; 596
	i32 199, ; 597
	i32 11, ; 598
	i32 206, ; 599
	i32 78, ; 600
	i32 126, ; 601
	i32 83, ; 602
	i32 188, ; 603
	i32 66, ; 604
	i32 107, ; 605
	i32 65, ; 606
	i32 128, ; 607
	i32 122, ; 608
	i32 77, ; 609
	i32 274, ; 610
	i32 264, ; 611
	i32 8, ; 612
	i32 232, ; 613
	i32 2, ; 614
	i32 313, ; 615
	i32 44, ; 616
	i32 277, ; 617
	i32 156, ; 618
	i32 128, ; 619
	i32 262, ; 620
	i32 23, ; 621
	i32 133, ; 622
	i32 220, ; 623
	i32 251, ; 624
	i32 29, ; 625
	i32 219, ; 626
	i32 62, ; 627
	i32 201, ; 628
	i32 90, ; 629
	i32 87, ; 630
	i32 148, ; 631
	i32 299, ; 632
	i32 203, ; 633
	i32 36, ; 634
	i32 86, ; 635
	i32 240, ; 636
	i32 183, ; 637
	i32 323, ; 638
	i32 187, ; 639
	i32 50, ; 640
	i32 6, ; 641
	i32 90, ; 642
	i32 323, ; 643
	i32 21, ; 644
	i32 162, ; 645
	i32 96, ; 646
	i32 50, ; 647
	i32 330, ; 648
	i32 113, ; 649
	i32 256, ; 650
	i32 130, ; 651
	i32 76, ; 652
	i32 27, ; 653
	i32 312, ; 654
	i32 233, ; 655
	i32 255, ; 656
	i32 7, ; 657
	i32 200, ; 658
	i32 174, ; 659
	i32 110, ; 660
	i32 329, ; 661
	i32 256, ; 662
	i32 242 ; 663
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ af27162bee43b7fecdca59b4f67aa8c175cbc875"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
