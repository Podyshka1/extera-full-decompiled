.class public Landroidx/camera/core/impl/utils/ExifData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/utils/ExifData$Builder;,
        Landroidx/camera/core/impl/utils/ExifData$WhiteBalanceMode;
    }
.end annotation


# static fields
.field private static final COMPONENTS_CONFIGURATION_YCBCR:Ljava/lang/String;

.field static final EXIF_POINTER_TAGS:[Landroidx/camera/core/impl/utils/ExifTag;

.field static final EXIF_TAGS:[[Landroidx/camera/core/impl/utils/ExifTag;

.field private static final IFD_EXIF_TAGS:[Landroidx/camera/core/impl/utils/ExifTag;

.field static final IFD_FORMAT_NAMES:[Ljava/lang/String;

.field private static final IFD_GPS_TAGS:[Landroidx/camera/core/impl/utils/ExifTag;

.field private static final IFD_INTEROPERABILITY_TAGS:[Landroidx/camera/core/impl/utils/ExifTag;

.field private static final IFD_TIFF_TAGS:[Landroidx/camera/core/impl/utils/ExifTag;

.field static final sTagSetForCompatibility:Ljava/util/HashSet;


# instance fields
.field private final mAttributes:Ljava/util/List;

.field private final mByteOrder:Ljava/nio/ByteOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 62

    .line 164
    const-string v12, "DOUBLE"

    const-string v13, "IFD"

    const-string v0, ""

    const-string v1, "BYTE"

    const-string v2, "STRING"

    const-string v3, "USHORT"

    const-string v4, "ULONG"

    const-string v5, "URATIONAL"

    const-string v6, "SBYTE"

    const-string v7, "UNDEFINED"

    const-string v8, "SSHORT"

    const-string v9, "SLONG"

    const-string v10, "SRATIONAL"

    const-string v11, "SINGLE"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/utils/ExifData;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    .line 182
    new-instance v0, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v1, "ImageWidth"

    const/16 v2, 0x100

    const/4 v3, 0x3

    const/4 v4, 0x4

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;III)V

    new-instance v1, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v2, "ImageLength"

    const/16 v5, 0x101

    invoke-direct {v1, v2, v5, v3, v4}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;III)V

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v5, "Make"

    const/16 v6, 0x10f

    const/4 v7, 0x2

    invoke-direct {v2, v5, v6, v7}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v6, "Model"

    const/16 v8, 0x110

    invoke-direct {v5, v6, v8, v7}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v6, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v8, "Orientation"

    const/16 v9, 0x112

    invoke-direct {v6, v8, v9, v3}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v9, "XResolution"

    const/16 v10, 0x11a

    const/4 v11, 0x5

    invoke-direct {v8, v9, v10, v11}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v9, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v10, "YResolution"

    const/16 v12, 0x11b

    invoke-direct {v9, v10, v12, v11}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v10, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v12, "ResolutionUnit"

    const/16 v13, 0x128

    invoke-direct {v10, v12, v13, v3}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v12, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v13, "Software"

    const/16 v14, 0x131

    invoke-direct {v12, v13, v14, v7}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v13, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v14, "DateTime"

    const/16 v15, 0x132

    invoke-direct {v13, v14, v15, v7}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v14, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v15, "YCbCrPositioning"

    move/from16 v16, v7

    const/16 v7, 0x213

    invoke-direct {v14, v15, v7, v3}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v15, "SubIFDPointer"

    move/from16 v17, v3

    const/16 v3, 0x14a

    invoke-direct {v7, v15, v3, v4}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v3, Landroidx/camera/core/impl/utils/ExifTag;

    move/from16 v18, v11

    const-string v11, "ExifIFDPointer"

    move-object/from16 v19, v0

    const v0, 0x8769

    invoke-direct {v3, v11, v0, v4}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/camera/core/impl/utils/ExifTag;

    move-object/from16 v20, v1

    const-string v1, "GPSInfoIFDPointer"

    move-object/from16 v21, v2

    const v2, 0x8825

    invoke-direct {v0, v1, v2, v4}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0xe

    move/from16 v22, v4

    new-array v4, v2, [Landroidx/camera/core/impl/utils/ExifTag;

    move/from16 v23, v2

    const/4 v2, 0x0

    aput-object v19, v4, v2

    move/from16 v19, v2

    const/4 v2, 0x1

    aput-object v20, v4, v2

    aput-object v21, v4, v16

    aput-object v5, v4, v17

    aput-object v6, v4, v22

    aput-object v8, v4, v18

    const/4 v5, 0x6

    aput-object v9, v4, v5

    const/4 v6, 0x7

    aput-object v10, v4, v6

    const/16 v8, 0x8

    aput-object v12, v4, v8

    const/16 v9, 0x9

    aput-object v13, v4, v9

    const/16 v10, 0xa

    aput-object v14, v4, v10

    const/16 v12, 0xb

    aput-object v7, v4, v12

    const/16 v7, 0xc

    aput-object v3, v4, v7

    const/16 v3, 0xd

    aput-object v0, v4, v3

    sput-object v4, Landroidx/camera/core/impl/utils/ExifData;->IFD_TIFF_TAGS:[Landroidx/camera/core/impl/utils/ExifTag;

    .line 202
    new-instance v0, Landroidx/camera/core/impl/utils/ExifTag;

    const v13, 0x829a

    const-string v14, "ExposureTime"

    move/from16 v20, v8

    move/from16 v8, v18

    invoke-direct {v0, v14, v13, v8}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v13, Landroidx/camera/core/impl/utils/ExifTag;

    move/from16 v21, v9

    const v9, 0x829d

    move/from16 v24, v12

    const-string v12, "FNumber"

    invoke-direct {v13, v12, v9, v8}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v9, "ExposureProgram"

    move/from16 v25, v3

    const v3, 0x8822

    move/from16 v26, v7

    move/from16 v7, v17

    invoke-direct {v8, v9, v3, v7}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v3, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v9, "PhotographicSensitivity"

    move/from16 v27, v5

    const v5, 0x8827

    invoke-direct {v3, v9, v5, v7}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v9, "SensitivityType"

    move/from16 v28, v2

    const v2, 0x8830

    invoke-direct {v5, v9, v2, v7}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v7, "ExifVersion"

    const v9, 0x9000

    move/from16 v10, v16

    invoke-direct {v2, v7, v9, v10}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v9, "DateTimeOriginal"

    const v6, 0x9003

    invoke-direct {v7, v9, v6, v10}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v6, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v9, "DateTimeDigitized"

    move-object/from16 v31, v0

    const v0, 0x9004

    invoke-direct {v6, v9, v0, v10}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v9, "ComponentsConfiguration"

    const v10, 0x9101

    move-object/from16 v32, v2

    const/4 v2, 0x7

    invoke-direct {v0, v9, v10, v2}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v9, "ShutterSpeedValue"

    const v10, 0x9201

    move-object/from16 v33, v0

    const/16 v0, 0xa

    invoke-direct {v2, v9, v10, v0}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v9, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v10, "ApertureValue"

    const v0, 0x9202

    move-object/from16 v34, v2

    const/4 v2, 0x5

    invoke-direct {v9, v10, v0, v2}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v2, "BrightnessValue"

    const v10, 0x9203

    move-object/from16 v35, v3

    const/16 v3, 0xa

    invoke-direct {v0, v2, v10, v3}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v10, "ExposureBiasValue"

    move-object/from16 v36, v0

    const v0, 0x9204

    invoke-direct {v2, v10, v0, v3}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "MaxApertureValue"

    const v10, 0x9205

    move-object/from16 v37, v2

    const/4 v2, 0x5

    invoke-direct {v0, v3, v10, v2}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "MeteringMode"

    const v10, 0x9207

    move-object/from16 v38, v0

    const/4 v0, 0x3

    invoke-direct {v2, v3, v10, v0}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v3, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v10, "LightSource"

    move-object/from16 v39, v2

    const v2, 0x9208

    invoke-direct {v3, v10, v2, v0}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v10, "Flash"

    move-object/from16 v40, v3

    const v3, 0x9209

    invoke-direct {v2, v10, v3, v0}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "FocalLength"

    const v10, 0x920a

    move-object/from16 v41, v2

    const/4 v2, 0x5

    invoke-direct {v0, v3, v10, v2}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "SubSecTime"

    const v10, 0x9290

    move-object/from16 v42, v0

    const/4 v0, 0x2

    invoke-direct {v2, v3, v10, v0}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v3, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v10, "SubSecTimeOriginal"

    move-object/from16 v43, v2

    const v2, 0x9291

    invoke-direct {v3, v10, v2, v0}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v10, "SubSecTimeDigitized"

    move-object/from16 v44, v3

    const v3, 0x9292

    invoke-direct {v2, v10, v3, v0}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "FlashpixVersion"

    const v10, 0xa000

    move-object/from16 v45, v2

    const/4 v2, 0x7

    invoke-direct {v0, v3, v10, v2}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "ColorSpace"

    const v10, 0xa001

    move-object/from16 v46, v0

    const/4 v0, 0x3

    invoke-direct {v2, v3, v10, v0}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v3, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v10, "PixelXDimension"

    move-object/from16 v47, v2

    const v2, 0xa002

    move-object/from16 v48, v4

    move/from16 v4, v22

    invoke-direct {v3, v10, v2, v0, v4}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;III)V

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v10, "PixelYDimension"

    move-object/from16 v49, v3

    const v3, 0xa003

    invoke-direct {v2, v10, v3, v0, v4}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;III)V

    new-instance v3, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v10, "InteroperabilityIFDPointer"

    const v0, 0xa005

    invoke-direct {v3, v10, v0, v4}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v4, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v0, "FocalPlaneResolutionUnit"

    move-object/from16 v50, v2

    const v2, 0xa210

    move-object/from16 v51, v3

    const/4 v3, 0x3

    invoke-direct {v4, v0, v2, v3}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v2, "SensingMethod"

    move-object/from16 v52, v4

    const v4, 0xa217

    invoke-direct {v0, v2, v4, v3}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "FileSource"

    const v4, 0xa300

    move-object/from16 v53, v0

    const/4 v0, 0x7

    invoke-direct {v2, v3, v4, v0}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v3, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v4, "SceneType"

    move-object/from16 v54, v2

    const v2, 0xa301

    invoke-direct {v3, v4, v2, v0}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v2, "CustomRendered"

    const v4, 0xa401

    move-object/from16 v55, v3

    const/4 v3, 0x3

    invoke-direct {v0, v2, v4, v3}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v4, "ExposureMode"

    move-object/from16 v56, v0

    const v0, 0xa402

    invoke-direct {v2, v4, v0, v3}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v4, "WhiteBalance"

    move-object/from16 v57, v2

    const v2, 0xa403

    invoke-direct {v0, v4, v2, v3}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v4, "SceneCaptureType"

    move-object/from16 v58, v0

    const v0, 0xa406

    invoke-direct {v2, v4, v0, v3}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v4, "Contrast"

    move-object/from16 v59, v2

    const v2, 0xa408

    invoke-direct {v0, v4, v2, v3}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v4, "Saturation"

    move-object/from16 v60, v0

    const v0, 0xa409

    invoke-direct {v2, v4, v0, v3}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v4, "Sharpness"

    move-object/from16 v61, v2

    const v2, 0xa40a

    invoke-direct {v0, v4, v2, v3}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0x25

    new-array v2, v2, [Landroidx/camera/core/impl/utils/ExifTag;

    aput-object v31, v2, v19

    aput-object v13, v2, v28

    const/16 v16, 0x2

    aput-object v8, v2, v16

    aput-object v35, v2, v3

    const/16 v22, 0x4

    aput-object v5, v2, v22

    const/16 v18, 0x5

    aput-object v32, v2, v18

    aput-object v7, v2, v27

    const/16 v30, 0x7

    aput-object v6, v2, v30

    aput-object v33, v2, v20

    aput-object v34, v2, v21

    const/16 v29, 0xa

    aput-object v9, v2, v29

    aput-object v36, v2, v24

    aput-object v37, v2, v26

    aput-object v38, v2, v25

    aput-object v39, v2, v23

    const/16 v3, 0xf

    aput-object v40, v2, v3

    const/16 v3, 0x10

    aput-object v41, v2, v3

    const/16 v4, 0x11

    aput-object v42, v2, v4

    const/16 v4, 0x12

    aput-object v43, v2, v4

    const/16 v4, 0x13

    aput-object v44, v2, v4

    const/16 v4, 0x14

    aput-object v45, v2, v4

    const/16 v4, 0x15

    aput-object v46, v2, v4

    const/16 v4, 0x16

    aput-object v47, v2, v4

    const/16 v4, 0x17

    aput-object v49, v2, v4

    const/16 v5, 0x18

    aput-object v50, v2, v5

    const/16 v5, 0x19

    aput-object v51, v2, v5

    const/16 v6, 0x1a

    aput-object v52, v2, v6

    const/16 v6, 0x1b

    aput-object v53, v2, v6

    const/16 v6, 0x1c

    aput-object v54, v2, v6

    const/16 v6, 0x1d

    aput-object v55, v2, v6

    const/16 v6, 0x1e

    aput-object v56, v2, v6

    const/16 v6, 0x1f

    aput-object v57, v2, v6

    const/16 v6, 0x20

    aput-object v58, v2, v6

    const/16 v6, 0x21

    aput-object v59, v2, v6

    const/16 v6, 0x22

    aput-object v60, v2, v6

    const/16 v6, 0x23

    aput-object v61, v2, v6

    const/16 v6, 0x24

    aput-object v0, v2, v6

    sput-object v2, Landroidx/camera/core/impl/utils/ExifData;->IFD_EXIF_TAGS:[Landroidx/camera/core/impl/utils/ExifTag;

    .line 244
    new-instance v0, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v6, "GPSVersionID"

    move/from16 v7, v19

    move/from16 v8, v28

    invoke-direct {v0, v6, v7, v8}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v6, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v7, "GPSLatitudeRef"

    const/4 v9, 0x2

    invoke-direct {v6, v7, v8, v9}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v8, "GPSLatitude"

    const/16 v5, 0xa

    const/4 v13, 0x5

    invoke-direct {v7, v8, v9, v13, v5}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;III)V

    new-instance v8, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v4, "GPSLongitudeRef"

    const/4 v3, 0x3

    invoke-direct {v8, v4, v3, v9}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v3, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v4, "GPSLongitude"

    const/4 v9, 0x4

    invoke-direct {v3, v4, v9, v13, v5}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;III)V

    new-instance v4, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v5, "GPSAltitudeRef"

    const/4 v9, 0x1

    invoke-direct {v4, v5, v13, v9}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v9, "GPSAltitude"

    move-object/from16 v34, v0

    move/from16 v0, v27

    invoke-direct {v5, v9, v0, v13}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v9, "GPSTimeStamp"

    move-object/from16 v35, v2

    const/4 v2, 0x7

    invoke-direct {v0, v9, v2, v13}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v13, "GPSSpeedRef"

    move-object/from16 v36, v0

    move-object/from16 v37, v3

    move/from16 v3, v26

    const/4 v0, 0x2

    invoke-direct {v2, v13, v3, v0}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v3, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v13, "GPSTrackRef"

    move-object/from16 v38, v2

    move/from16 v2, v23

    invoke-direct {v3, v13, v2, v0}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v13, "GPSImgDirectionRef"

    move-object/from16 v23, v3

    const/16 v3, 0x10

    invoke-direct {v2, v13, v3, v0}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v3, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v13, "GPSDestBearingRef"

    move-object/from16 v33, v2

    const/16 v2, 0x17

    invoke-direct {v3, v13, v2, v0}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v13, "GPSDestDistanceRef"

    move-object/from16 v32, v3

    const/16 v3, 0x19

    invoke-direct {v2, v13, v3, v0}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    move/from16 v3, v25

    new-array v3, v3, [Landroidx/camera/core/impl/utils/ExifTag;

    const/16 v19, 0x0

    aput-object v34, v3, v19

    const/16 v28, 0x1

    aput-object v6, v3, v28

    aput-object v7, v3, v0

    const/16 v17, 0x3

    aput-object v8, v3, v17

    const/4 v0, 0x4

    aput-object v37, v3, v0

    const/16 v18, 0x5

    aput-object v4, v3, v18

    const/16 v27, 0x6

    aput-object v5, v3, v27

    const/16 v30, 0x7

    aput-object v36, v3, v30

    aput-object v38, v3, v20

    aput-object v23, v3, v21

    const/16 v29, 0xa

    aput-object v33, v3, v29

    aput-object v32, v3, v24

    const/16 v26, 0xc

    aput-object v2, v3, v26

    sput-object v3, Landroidx/camera/core/impl/utils/ExifData;->IFD_GPS_TAGS:[Landroidx/camera/core/impl/utils/ExifTag;

    .line 263
    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const/16 v4, 0x14a

    invoke-direct {v2, v15, v4, v0}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v4, Landroidx/camera/core/impl/utils/ExifTag;

    const v5, 0x8769

    invoke-direct {v4, v11, v5, v0}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/camera/core/impl/utils/ExifTag;

    const v6, 0x8825

    invoke-direct {v5, v1, v6, v0}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/camera/core/impl/utils/ExifTag;

    const v6, 0xa005

    invoke-direct {v1, v10, v6, v0}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-array v6, v0, [Landroidx/camera/core/impl/utils/ExifTag;

    const/16 v19, 0x0

    aput-object v2, v6, v19

    const/4 v8, 0x1

    aput-object v4, v6, v8

    const/4 v0, 0x2

    aput-object v5, v6, v0

    const/16 v17, 0x3

    aput-object v1, v6, v17

    sput-object v6, Landroidx/camera/core/impl/utils/ExifData;->EXIF_POINTER_TAGS:[Landroidx/camera/core/impl/utils/ExifTag;

    .line 271
    new-instance v1, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v2, "InteroperabilityIndex"

    invoke-direct {v1, v2, v8, v0}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    new-array v2, v8, [Landroidx/camera/core/impl/utils/ExifTag;

    aput-object v1, v2, v19

    sput-object v2, Landroidx/camera/core/impl/utils/ExifData;->IFD_INTEROPERABILITY_TAGS:[Landroidx/camera/core/impl/utils/ExifTag;

    const/4 v4, 0x4

    .line 276
    new-array v1, v4, [[Landroidx/camera/core/impl/utils/ExifTag;

    aput-object v48, v1, v19

    aput-object v35, v1, v8

    aput-object v3, v1, v0

    const/16 v17, 0x3

    aput-object v2, v1, v17

    sput-object v1, Landroidx/camera/core/impl/utils/ExifData;->EXIF_TAGS:[[Landroidx/camera/core/impl/utils/ExifTag;

    .line 287
    new-instance v0, Ljava/util/HashSet;

    filled-new-array {v12, v14, v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroidx/camera/core/impl/utils/ExifData;->sTagSetForCompatibility:Ljava/util/HashSet;

    .line 291
    new-instance v0, Ljava/lang/String;

    const/4 v4, 0x4

    new-array v1, v4, [B

    fill-array-data v1, :array_0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sput-object v0, Landroidx/camera/core/impl/utils/ExifData;->COMPONENTS_CONFIGURATION_YCBCR:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x0t
    .end array-data
.end method

.method constructor <init>(Ljava/nio/ByteOrder;Ljava/util/List;)V
    .locals 2

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    sget-object v1, Landroidx/camera/core/impl/utils/ExifData;->EXIF_TAGS:[[Landroidx/camera/core/impl/utils/ExifTag;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Malformed attributes list. Number of IFDs mismatch."

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 300
    iput-object p1, p0, Landroidx/camera/core/impl/utils/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    .line 301
    iput-object p2, p0, Landroidx/camera/core/impl/utils/ExifData;->mAttributes:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 149
    sget-object v0, Landroidx/camera/core/impl/utils/ExifData;->COMPONENTS_CONFIGURATION_YCBCR:Ljava/lang/String;

    return-object v0
.end method

.method public static builderForDevice()Landroidx/camera/core/impl/utils/ExifData$Builder;
    .locals 4

    .line 411
    new-instance v0, Landroidx/camera/core/impl/utils/ExifData$Builder;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Landroidx/camera/core/impl/utils/ExifData$Builder;-><init>(Ljava/nio/ByteOrder;)V

    const/4 v1, 0x1

    .line 412
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Orientation"

    invoke-virtual {v0, v3, v2}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifData$Builder;

    move-result-object v0

    .line 413
    const-string v2, "XResolution"

    const-string v3, "72/1"

    invoke-virtual {v0, v2, v3}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifData$Builder;

    move-result-object v0

    const-string v2, "YResolution"

    .line 414
    invoke-virtual {v0, v2, v3}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifData$Builder;

    move-result-object v0

    const/4 v2, 0x2

    .line 415
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ResolutionUnit"

    invoke-virtual {v0, v3, v2}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifData$Builder;

    move-result-object v0

    const-string v2, "YCbCrPositioning"

    .line 417
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 416
    invoke-virtual {v0, v2, v1}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifData$Builder;

    move-result-object v0

    const-string v1, "Make"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 419
    invoke-virtual {v0, v1, v2}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifData$Builder;

    move-result-object v0

    const-string v1, "Model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 420
    invoke-virtual {v0, v1, v2}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroidx/camera/core/ImageProxy;I)Landroidx/camera/core/impl/utils/ExifData;
    .locals 2

    .line 311
    invoke-static {}, Landroidx/camera/core/impl/utils/ExifData;->builderForDevice()Landroidx/camera/core/impl/utils/ExifData$Builder;

    move-result-object v0

    .line 312
    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 313
    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object v1

    invoke-interface {v1, v0}, Landroidx/camera/core/ImageInfo;->populateExifData(Landroidx/camera/core/impl/utils/ExifData$Builder;)V

    .line 319
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setOrientationDegrees(I)Landroidx/camera/core/impl/utils/ExifData$Builder;

    .line 321
    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getWidth()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setImageWidth(I)Landroidx/camera/core/impl/utils/ExifData$Builder;

    move-result-object p1

    .line 322
    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getHeight()I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setImageHeight(I)Landroidx/camera/core/impl/utils/ExifData$Builder;

    move-result-object p0

    .line 323
    invoke-virtual {p0}, Landroidx/camera/core/impl/utils/ExifData$Builder;->build()Landroidx/camera/core/impl/utils/ExifData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method getAttributes(I)Ljava/util/Map;
    .locals 3

    .line 334
    sget-object v0, Landroidx/camera/core/impl/utils/ExifData;->EXIF_TAGS:[[Landroidx/camera/core/impl/utils/ExifTag;

    array-length v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid IFD index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Index should be between [0, EXIF_TAGS.length] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Landroidx/core/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 337
    iget-object v0, p0, Landroidx/camera/core/impl/utils/ExifData;->mAttributes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    .line 330
    iget-object v0, p0, Landroidx/camera/core/impl/utils/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    return-object v0
.end method
