.class public Landroidx/exifinterface/media/ExifInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/exifinterface/media/ExifInterface$ExifTag;,
        Landroidx/exifinterface/media/ExifInterface$ExifAttribute;,
        Landroidx/exifinterface/media/ExifInterface$Rational;,
        Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;,
        Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;,
        Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;
    }
.end annotation


# static fields
.field private static final ASCII:Ljava/nio/charset/Charset;

.field public static final BITS_PER_SAMPLE_GREYSCALE_1:[I

.field public static final BITS_PER_SAMPLE_GREYSCALE_2:[I

.field public static final BITS_PER_SAMPLE_RGB:[I

.field private static final DATETIME_PRIMARY_FORMAT_PATTERN:Ljava/util/regex/Pattern;

.field private static final DATETIME_SECONDARY_FORMAT_PATTERN:Ljava/util/regex/Pattern;

.field private static final DEBUG:Z

.field private static final EXIF_ASCII_PREFIX:[B

.field private static final EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field static final EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final FLIPPED_ROTATION_ORDER:Ljava/util/List;

.field private static final GPS_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

.field private static final HEIF_BRAND_AVIF:[B

.field private static final HEIF_BRAND_AVIS:[B

.field private static final HEIF_BRAND_HEIC:[B

.field private static final HEIF_BRAND_MIF1:[B

.field private static final HEIF_TYPE_FTYP:[B

.field static final IDENTIFIER_EXIF_APP1:[B

.field private static final IDENTIFIER_XMP_APP1:[B

.field private static final IFD_EXIF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final IFD_FORMAT_BYTES_PER_FORMAT:[I

.field private static final IFD_FORMAT_NAMES:[Ljava/lang/String;

.field private static final IFD_GPS_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final IFD_INTEROPERABILITY_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final IFD_THUMBNAIL_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final IFD_TIFF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field static final JPEG_SIGNATURE:[B

.field private static final NON_ZERO_TIME_PATTERN:Ljava/util/regex/Pattern;

.field private static final ORF_CAMERA_SETTINGS_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final ORF_IMAGE_PROCESSING_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final ORF_MAKER_NOTE_HEADER_1:[B

.field private static final ORF_MAKER_NOTE_HEADER_2:[B

.field private static final ORF_MAKER_NOTE_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final PEF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field static final PNG_ITXT_XMP_KEYWORD:[B

.field private static final PNG_SIGNATURE:[B

.field private static final RATIONAL_TAGS_HANDLED_AS_DECIMALS_FOR_COMPATIBILITY:Ljava/util/Set;

.field private static final ROTATION_ORDER:Ljava/util/List;

.field private static final TAG_RAF_IMAGE_SIZE:Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final WEBP_CHUNK_TYPE_ANIM:[B

.field private static final WEBP_CHUNK_TYPE_ANMF:[B

.field private static final WEBP_CHUNK_TYPE_EXIF:[B

.field private static final WEBP_CHUNK_TYPE_VP8:[B

.field private static final WEBP_CHUNK_TYPE_VP8L:[B

.field private static final WEBP_CHUNK_TYPE_VP8X:[B

.field private static final WEBP_SIGNATURE_1:[B

.field private static final WEBP_SIGNATURE_2:[B

.field private static final WEBP_VP8_SIGNATURE:[B

.field private static final sExifPointerTagMap:Ljava/util/HashMap;

.field private static final sExifTagMapsForReading:[Ljava/util/HashMap;

.field private static final sExifTagMapsForWriting:[Ljava/util/HashMap;

.field private static final sFormatterPrimary:Ljava/text/SimpleDateFormat;

.field private static final sFormatterSecondary:Ljava/text/SimpleDateFormat;


# instance fields
.field private mAreThumbnailStripsConsecutive:Z

.field private mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

.field private final mAttributes:[Ljava/util/HashMap;

.field private mAttributesOffsets:Ljava/util/Set;

.field private mExifByteOrder:Ljava/nio/ByteOrder;

.field private mFileOnDiskContainsSeparateXmpMarker:Z

.field private mFilename:Ljava/lang/String;

.field private mHasThumbnail:Z

.field private mHasThumbnailStrips:Z

.field private mIsExifDataOnly:Z

.field private mMimeType:I

.field private mModified:Z

.field private mOffsetToExifData:I

.field private mOrfMakerNoteOffset:I

.field private mOrfThumbnailLength:I

.field private mOrfThumbnailOffset:I

.field private mSeekableFileDescriptor:Ljava/io/FileDescriptor;

.field private mThumbnailBytes:[B

.field private mThumbnailCompression:I

.field private mThumbnailLength:I

.field private mThumbnailOffset:I

.field private mXmpFromSeparateMarker:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;


# direct methods
.method static constructor <clinit>()V
    .locals 112

    const/4 v0, 0x3

    .line 2333
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 133
    const-string v2, "ExifInterface"

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    sput-boolean v2, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    const/4 v2, 0x1

    .line 2332
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x6

    .line 2333
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x4

    new-array v9, v8, [Ljava/lang/Integer;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    aput-object v5, v9, v2

    const/4 v5, 0x2

    aput-object v1, v9, v5

    aput-object v7, v9, v0

    .line 2332
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    sput-object v9, Landroidx/exifinterface/media/ExifInterface;->ROTATION_ORDER:Ljava/util/List;

    .line 2335
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x5

    .line 2336
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move/from16 v16, v10

    new-array v10, v8, [Ljava/lang/Integer;

    aput-object v9, v10, v16

    aput-object v12, v10, v2

    aput-object v13, v10, v5

    aput-object v15, v10, v0

    .line 2334
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->FLIPPED_ROTATION_ORDER:Ljava/util/List;

    .line 2977
    filled-new-array {v6, v6, v6}, [I

    move-result-object v10

    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    .line 2982
    filled-new-array {v8}, [I

    move-result-object v10

    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_1:[I

    .line 2987
    filled-new-array {v6}, [I

    move-result-object v10

    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    .line 3068
    new-array v10, v0, [B

    fill-array-data v10, :array_0

    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->JPEG_SIGNATURE:[B

    .line 3072
    new-array v10, v8, [B

    fill-array-data v10, :array_1

    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->HEIF_TYPE_FTYP:[B

    .line 3073
    new-array v10, v8, [B

    fill-array-data v10, :array_2

    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->HEIF_BRAND_MIF1:[B

    .line 3074
    new-array v10, v8, [B

    fill-array-data v10, :array_3

    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->HEIF_BRAND_HEIC:[B

    .line 3075
    new-array v10, v8, [B

    fill-array-data v10, :array_4

    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->HEIF_BRAND_AVIF:[B

    .line 3076
    new-array v10, v8, [B

    fill-array-data v10, :array_5

    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->HEIF_BRAND_AVIS:[B

    .line 3084
    new-array v10, v4, [B

    fill-array-data v10, :array_6

    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    const/16 v10, 0xa

    .line 3086
    new-array v13, v10, [B

    fill-array-data v13, :array_7

    sput-object v13, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    .line 3102
    new-array v13, v6, [B

    fill-array-data v13, :array_8

    sput-object v13, Landroidx/exifinterface/media/ExifInterface;->PNG_SIGNATURE:[B

    .line 3115
    const-string v13, "XML:com.adobe.xmp\u0000\u0000\u0000\u0000\u0000"

    move/from16 v17, v10

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v13, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->PNG_ITXT_XMP_KEYWORD:[B

    .line 3118
    new-array v10, v8, [B

    fill-array-data v10, :array_9

    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    .line 3119
    new-array v10, v8, [B

    fill-array-data v10, :array_a

    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    .line 3121
    new-array v10, v8, [B

    fill-array-data v10, :array_b

    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_EXIF:[B

    .line 3123
    new-array v10, v0, [B

    fill-array-data v10, :array_c

    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->WEBP_VP8_SIGNATURE:[B

    .line 3126
    const-string v10, "VP8X"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8X:[B

    .line 3127
    const-string v10, "VP8L"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    .line 3128
    const-string v10, "VP8 "

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8:[B

    .line 3129
    const-string v10, "ANIM"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_ANIM:[B

    .line 3130
    const-string v10, "ANMF"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_ANMF:[B

    .line 3170
    const-string v30, "DOUBLE"

    const-string v31, "IFD"

    const-string v18, ""

    const-string v19, "BYTE"

    const-string v20, "STRING"

    const-string v21, "USHORT"

    const-string v22, "ULONG"

    const-string v23, "URATIONAL"

    const-string v24, "SBYTE"

    const-string v25, "UNDEFINED"

    const-string v26, "SSHORT"

    const-string v27, "SLONG"

    const-string v28, "SRATIONAL"

    const-string v29, "SINGLE"

    filled-new-array/range {v18 .. v31}, [Ljava/lang/String;

    move-result-object v10

    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    const/16 v10, 0xe

    .line 3175
    new-array v13, v10, [I

    fill-array-data v13, :array_d

    sput-object v13, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    .line 3179
    new-array v13, v6, [B

    fill-array-data v13, :array_e

    sput-object v13, Landroidx/exifinterface/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    .line 3648
    new-instance v13, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    move/from16 v18, v10

    const-string v10, "NewSubfileType"

    move/from16 v19, v6

    const/16 v6, 0xfe

    invoke-direct {v13, v10, v6, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "SubfileType"

    const/16 v2, 0xff

    invoke-direct {v6, v10, v2, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "ImageWidth"

    const/16 v11, 0x100

    invoke-direct {v2, v10, v11, v0, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "ImageLength"

    const/16 v4, 0x101

    invoke-direct {v10, v11, v4, v0, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v4, "BitsPerSample"

    const/16 v14, 0x102

    invoke-direct {v11, v4, v14, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "Compression"

    const/16 v8, 0x103

    invoke-direct {v4, v14, v8, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "PhotometricInterpretation"

    const/16 v5, 0x106

    invoke-direct {v8, v14, v5, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "ImageDescription"

    const/16 v0, 0x10e

    move-object/from16 v30, v2

    const/4 v2, 0x2

    invoke-direct {v5, v14, v0, v2}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "Make"

    move-object/from16 v31, v4

    const/16 v4, 0x10f

    invoke-direct {v0, v14, v4, v2}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "Model"

    move-object/from16 v32, v0

    const/16 v0, 0x110

    invoke-direct {v4, v14, v0, v2}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v2, "StripOffsets"

    const/16 v14, 0x111

    move-object/from16 v33, v4

    move-object/from16 v34, v5

    const/4 v4, 0x3

    const/4 v5, 0x4

    invoke-direct {v0, v2, v14, v4, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "Orientation"

    move-object/from16 v35, v0

    const/16 v0, 0x112

    invoke-direct {v5, v14, v0, v4}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "SamplesPerPixel"

    move-object/from16 v36, v5

    const/16 v5, 0x115

    invoke-direct {v0, v14, v5, v4}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "RowsPerStrip"

    move-object/from16 v37, v0

    const/16 v0, 0x116

    move-object/from16 v38, v6

    const/4 v6, 0x4

    invoke-direct {v5, v14, v0, v4, v6}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "StripByteCounts"

    move-object/from16 v39, v5

    const/16 v5, 0x117

    invoke-direct {v0, v14, v5, v4, v6}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v5, "XResolution"

    const/16 v6, 0x11a

    const/4 v14, 0x5

    invoke-direct {v4, v5, v6, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "YResolution"

    move-object/from16 v40, v0

    const/16 v0, 0x11b

    invoke-direct {v5, v6, v0, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "PlanarConfiguration"

    const/16 v14, 0x11c

    move-object/from16 v41, v4

    const/4 v4, 0x3

    invoke-direct {v0, v6, v14, v4}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "ResolutionUnit"

    move-object/from16 v42, v0

    const/16 v0, 0x128

    invoke-direct {v6, v14, v0, v4}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "TransferFunction"

    move-object/from16 v43, v5

    const/16 v5, 0x12d

    invoke-direct {v0, v14, v5, v4}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v5, "Software"

    const/16 v14, 0x131

    move-object/from16 v44, v0

    const/4 v0, 0x2

    invoke-direct {v4, v5, v14, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "DateTime"

    move-object/from16 v45, v4

    const/16 v4, 0x132

    invoke-direct {v5, v14, v4, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "Artist"

    move-object/from16 v46, v5

    const/16 v5, 0x13b

    invoke-direct {v4, v14, v5, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v5, "WhitePoint"

    const/16 v14, 0x13e

    move-object/from16 v47, v4

    const/4 v4, 0x5

    invoke-direct {v0, v5, v14, v4}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "PrimaryChromaticities"

    move-object/from16 v48, v0

    const/16 v0, 0x13f

    invoke-direct {v5, v14, v0, v4}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v4, "SubIFDPointer"

    const/16 v14, 0x14a

    move-object/from16 v49, v5

    const/4 v5, 0x4

    invoke-direct {v0, v4, v14, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    move-object/from16 v50, v0

    const-string v0, "JPEGInterchangeFormat"

    move-object/from16 v51, v6

    const/16 v6, 0x201

    invoke-direct {v14, v0, v6, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "JPEGInterchangeFormatLength"

    move-object/from16 v52, v8

    const/16 v8, 0x202

    invoke-direct {v0, v6, v8, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "YCbCrCoefficients"

    const/16 v8, 0x211

    move-object/from16 v53, v0

    const/4 v0, 0x5

    invoke-direct {v5, v6, v8, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "YCbCrSubSampling"

    const/16 v8, 0x212

    move-object/from16 v54, v5

    const/4 v5, 0x3

    invoke-direct {v0, v6, v8, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "YCbCrPositioning"

    move-object/from16 v55, v0

    const/16 v0, 0x213

    invoke-direct {v6, v8, v0, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v5, "ReferenceBlackWhite"

    const/16 v8, 0x214

    move-object/from16 v56, v6

    const/4 v6, 0x5

    invoke-direct {v0, v5, v8, v6}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "Copyright"

    const v8, 0x8298

    move-object/from16 v57, v0

    const/4 v0, 0x2

    invoke-direct {v5, v6, v8, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ExifIFDPointer"

    const v8, 0x8769

    move-object/from16 v58, v5

    const/4 v5, 0x4

    invoke-direct {v0, v6, v8, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    move-object/from16 v59, v0

    const-string v0, "GPSInfoIFDPointer"

    move-object/from16 v60, v10

    const v10, 0x8825

    invoke-direct {v8, v0, v10, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "SensorTopBorder"

    invoke-direct {v0, v10, v5, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    move-object/from16 v61, v0

    const-string v0, "SensorLeftBorder"

    move-object/from16 v62, v8

    const/4 v8, 0x5

    invoke-direct {v10, v0, v8, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "SensorBottomBorder"

    move-object/from16 v63, v10

    const/4 v10, 0x6

    invoke-direct {v0, v8, v10, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "SensorRightBorder"

    move-object/from16 v64, v0

    const/4 v0, 0x7

    invoke-direct {v8, v10, v0, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "ISO"

    const/16 v0, 0x17

    move-object/from16 v65, v8

    const/4 v8, 0x3

    invoke-direct {v5, v10, v0, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "JpgFromRaw"

    move/from16 v66, v0

    const/16 v0, 0x2e

    move-object/from16 v67, v5

    const/4 v5, 0x7

    invoke-direct {v8, v10, v0, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v5, "Xmp"

    const/16 v10, 0x2bc

    move-object/from16 v68, v8

    const/4 v8, 0x1

    invoke-direct {v0, v5, v10, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x2a

    new-array v5, v5, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aput-object v13, v5, v16

    aput-object v38, v5, v8

    const/16 v28, 0x2

    aput-object v30, v5, v28

    const/16 v29, 0x3

    aput-object v60, v5, v29

    const/16 v27, 0x4

    aput-object v11, v5, v27

    const/16 v25, 0x5

    aput-object v31, v5, v25

    const/16 v23, 0x6

    aput-object v52, v5, v23

    const/16 v21, 0x7

    aput-object v34, v5, v21

    aput-object v32, v5, v19

    const/16 v8, 0x9

    aput-object v33, v5, v8

    aput-object v35, v5, v17

    const/16 v10, 0xb

    aput-object v36, v5, v10

    const/16 v11, 0xc

    aput-object v37, v5, v11

    const/16 v13, 0xd

    aput-object v39, v5, v13

    aput-object v40, v5, v18

    move/from16 v30, v13

    const/16 v13, 0xf

    aput-object v41, v5, v13

    move/from16 v31, v13

    const/16 v13, 0x10

    aput-object v43, v5, v13

    move/from16 v32, v13

    const/16 v13, 0x11

    aput-object v42, v5, v13

    move/from16 v33, v13

    const/16 v13, 0x12

    aput-object v51, v5, v13

    const/16 v34, 0x13

    aput-object v44, v5, v34

    const/16 v34, 0x14

    aput-object v45, v5, v34

    const/16 v34, 0x15

    aput-object v46, v5, v34

    const/16 v34, 0x16

    aput-object v47, v5, v34

    aput-object v48, v5, v66

    const/16 v34, 0x18

    aput-object v49, v5, v34

    const/16 v34, 0x19

    aput-object v50, v5, v34

    move/from16 v34, v13

    const/16 v13, 0x1a

    aput-object v14, v5, v13

    const/16 v14, 0x1b

    aput-object v53, v5, v14

    const/16 v14, 0x1c

    aput-object v54, v5, v14

    const/16 v14, 0x1d

    aput-object v55, v5, v14

    const/16 v14, 0x1e

    aput-object v56, v5, v14

    const/16 v14, 0x1f

    aput-object v57, v5, v14

    const/16 v14, 0x20

    aput-object v58, v5, v14

    const/16 v14, 0x21

    aput-object v59, v5, v14

    const/16 v14, 0x22

    aput-object v62, v5, v14

    const/16 v14, 0x23

    aput-object v61, v5, v14

    const/16 v14, 0x24

    aput-object v63, v5, v14

    const/16 v14, 0x25

    aput-object v64, v5, v14

    const/16 v14, 0x26

    aput-object v65, v5, v14

    const/16 v14, 0x27

    aput-object v67, v5, v14

    const/16 v14, 0x28

    aput-object v68, v5, v14

    const/16 v14, 0x29

    aput-object v0, v5, v14

    sput-object v5, Landroidx/exifinterface/media/ExifInterface;->IFD_TIFF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3698
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "ExposureTime"

    move/from16 v35, v13

    const v13, 0x829a

    move/from16 v36, v11

    const/4 v11, 0x5

    invoke-direct {v0, v14, v13, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v13, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "FNumber"

    move/from16 v37, v10

    const v10, 0x829d

    invoke-direct {v13, v14, v10, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "ExposureProgram"

    const v14, 0x8822

    move/from16 v38, v8

    const/4 v8, 0x3

    invoke-direct {v10, v11, v14, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "SpectralSensitivity"

    const v8, 0x8824

    move-object/from16 v39, v0

    const/4 v0, 0x2

    invoke-direct {v11, v14, v8, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "PhotographicSensitivity"

    const v14, 0x8827

    move-object/from16 v40, v5

    const/4 v5, 0x3

    invoke-direct {v0, v8, v14, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "OECF"

    const v5, 0x8828

    move-object/from16 v41, v0

    const/4 v0, 0x7

    invoke-direct {v8, v14, v5, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v5, "SensitivityType"

    const v14, 0x8830

    move-object/from16 v42, v8

    const/4 v8, 0x3

    invoke-direct {v0, v5, v14, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "StandardOutputSensitivity"

    const v14, 0x8831

    move-object/from16 v43, v0

    const/4 v0, 0x4

    invoke-direct {v5, v8, v14, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "RecommendedExposureIndex"

    move-object/from16 v44, v5

    const v5, 0x8832

    invoke-direct {v8, v14, v5, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "ISOSpeed"

    move-object/from16 v45, v8

    const v8, 0x8833

    invoke-direct {v5, v14, v8, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "ISOSpeedLatitudeyyy"

    move-object/from16 v46, v5

    const v5, 0x8834

    invoke-direct {v8, v14, v5, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "ISOSpeedLatitudezzz"

    move-object/from16 v47, v8

    const v8, 0x8835

    invoke-direct {v5, v14, v8, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "ExifVersion"

    const v14, 0x9000

    move-object/from16 v48, v5

    const/4 v5, 0x2

    invoke-direct {v0, v8, v14, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "DateTimeOriginal"

    move-object/from16 v49, v0

    const v0, 0x9003

    invoke-direct {v8, v14, v0, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "DateTimeDigitized"

    move-object/from16 v50, v8

    const v8, 0x9004

    invoke-direct {v0, v14, v8, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "OffsetTime"

    move-object/from16 v51, v0

    const v0, 0x9010

    invoke-direct {v8, v14, v0, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "OffsetTimeOriginal"

    move-object/from16 v52, v8

    const v8, 0x9011

    invoke-direct {v0, v14, v8, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "OffsetTimeDigitized"

    move-object/from16 v53, v0

    const v0, 0x9012

    invoke-direct {v8, v14, v0, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v5, "ComponentsConfiguration"

    const v14, 0x9101

    move-object/from16 v54, v8

    const/4 v8, 0x7

    invoke-direct {v0, v5, v14, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "CompressedBitsPerPixel"

    const v14, 0x9102

    move-object/from16 v55, v0

    const/4 v0, 0x5

    invoke-direct {v5, v8, v14, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "ShutterSpeedValue"

    const v0, 0x9201

    move-object/from16 v56, v5

    move/from16 v5, v17

    invoke-direct {v8, v14, v0, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "ApertureValue"

    const v5, 0x9202

    move-object/from16 v57, v8

    const/4 v8, 0x5

    invoke-direct {v0, v14, v5, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "BrightnessValue"

    const v14, 0x9203

    move-object/from16 v58, v0

    const/16 v0, 0xa

    invoke-direct {v5, v8, v14, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "ExposureBiasValue"

    move-object/from16 v59, v5

    const v5, 0x9204

    invoke-direct {v8, v14, v5, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v5, "MaxApertureValue"

    const v14, 0x9205

    move-object/from16 v60, v8

    const/4 v8, 0x5

    invoke-direct {v0, v5, v14, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "SubjectDistance"

    move-object/from16 v61, v0

    const v0, 0x9206

    invoke-direct {v5, v14, v0, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "MeteringMode"

    const v14, 0x9207

    move-object/from16 v62, v5

    const/4 v5, 0x3

    invoke-direct {v0, v8, v14, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "LightSource"

    move-object/from16 v63, v0

    const v0, 0x9208

    invoke-direct {v8, v14, v0, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "Flash"

    move-object/from16 v64, v8

    const v8, 0x9209

    invoke-direct {v0, v14, v8, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "FocalLength"

    const v5, 0x920a

    move-object/from16 v65, v0

    const/4 v0, 0x5

    invoke-direct {v8, v14, v5, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v5, "SubjectArea"

    const v14, 0x9214

    move-object/from16 v67, v8

    const/4 v8, 0x3

    invoke-direct {v0, v5, v14, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "MakerNote"

    const v14, 0x927c

    move-object/from16 v68, v0

    const/4 v0, 0x7

    invoke-direct {v5, v8, v14, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "UserComment"

    move-object/from16 v69, v5

    const v5, 0x9286

    invoke-direct {v8, v14, v5, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v5, "SubSecTime"

    const v14, 0x9290

    move-object/from16 v70, v8

    const/4 v8, 0x2

    invoke-direct {v0, v5, v14, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "SubSecTimeOriginal"

    move-object/from16 v71, v0

    const v0, 0x9291

    invoke-direct {v5, v14, v0, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "SubSecTimeDigitized"

    move-object/from16 v72, v5

    const v5, 0x9292

    invoke-direct {v0, v14, v5, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "FlashpixVersion"

    const v14, 0xa000

    move-object/from16 v73, v0

    const/4 v0, 0x7

    invoke-direct {v5, v8, v14, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "ColorSpace"

    const v14, 0xa001

    move-object/from16 v74, v5

    const/4 v5, 0x3

    invoke-direct {v0, v8, v14, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "PixelXDimension"

    move-object/from16 v75, v0

    const v0, 0xa002

    move-object/from16 v76, v10

    const/4 v10, 0x4

    invoke-direct {v8, v14, v0, v5, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "PixelYDimension"

    move-object/from16 v77, v8

    const v8, 0xa003

    invoke-direct {v0, v14, v8, v5, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "RelatedSoundFile"

    const v14, 0xa004

    const/4 v10, 0x2

    invoke-direct {v5, v8, v14, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "InteroperabilityIFDPointer"

    const v14, 0xa005

    move-object/from16 v78, v0

    const/4 v0, 0x4

    invoke-direct {v8, v10, v14, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "FlashEnergy"

    const v14, 0xa20b

    move-object/from16 v79, v5

    const/4 v5, 0x5

    invoke-direct {v0, v10, v14, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "SpatialFrequencyResponse"

    const v5, 0xa20c

    move-object/from16 v80, v0

    const/4 v0, 0x7

    invoke-direct {v10, v14, v5, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v5, "FocalPlaneXResolution"

    const v14, 0xa20e

    move-object/from16 v81, v8

    const/4 v8, 0x5

    invoke-direct {v0, v5, v14, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "FocalPlaneYResolution"

    move-object/from16 v82, v0

    const v0, 0xa20f

    invoke-direct {v5, v14, v0, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "FocalPlaneResolutionUnit"

    const v14, 0xa210

    move-object/from16 v83, v5

    const/4 v5, 0x3

    invoke-direct {v0, v8, v14, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "SubjectLocation"

    move-object/from16 v84, v0

    const v0, 0xa214

    invoke-direct {v8, v14, v0, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "ExposureIndex"

    const v5, 0xa215

    move-object/from16 v85, v8

    const/4 v8, 0x5

    invoke-direct {v0, v14, v5, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "SensingMethod"

    const v14, 0xa217

    move-object/from16 v86, v0

    const/4 v0, 0x3

    invoke-direct {v5, v8, v14, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "FileSource"

    const v14, 0xa300

    move-object/from16 v87, v5

    const/4 v5, 0x7

    invoke-direct {v0, v8, v14, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "SceneType"

    move-object/from16 v88, v0

    const v0, 0xa301

    invoke-direct {v8, v14, v0, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "CFAPattern"

    move-object/from16 v89, v8

    const v8, 0xa302

    invoke-direct {v0, v14, v8, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "CustomRendered"

    const v14, 0xa401

    move-object/from16 v90, v0

    const/4 v0, 0x3

    invoke-direct {v5, v8, v14, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "ExposureMode"

    move-object/from16 v91, v5

    const v5, 0xa402

    invoke-direct {v8, v14, v5, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "WhiteBalance"

    move-object/from16 v92, v8

    const v8, 0xa403

    invoke-direct {v5, v14, v8, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "DigitalZoomRatio"

    const v0, 0xa404

    move-object/from16 v93, v5

    const/4 v5, 0x5

    invoke-direct {v8, v14, v0, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v5, "FocalLengthIn35mmFilm"

    const v14, 0xa405

    move-object/from16 v94, v8

    const/4 v8, 0x3

    invoke-direct {v0, v5, v14, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "SceneCaptureType"

    move-object/from16 v95, v0

    const v0, 0xa406

    invoke-direct {v5, v14, v0, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "GainControl"

    move-object/from16 v96, v5

    const v5, 0xa407

    invoke-direct {v0, v14, v5, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "Contrast"

    move-object/from16 v97, v0

    const v0, 0xa408

    invoke-direct {v5, v14, v0, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "Saturation"

    move-object/from16 v98, v5

    const v5, 0xa409

    invoke-direct {v0, v14, v5, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "Sharpness"

    move-object/from16 v99, v0

    const v0, 0xa40a

    invoke-direct {v5, v14, v0, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "DeviceSettingDescription"

    const v8, 0xa40b

    move-object/from16 v100, v5

    const/4 v5, 0x7

    invoke-direct {v0, v14, v8, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "SubjectDistanceRange"

    const v14, 0xa40c

    move-object/from16 v101, v0

    const/4 v0, 0x3

    invoke-direct {v5, v8, v14, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "ImageUniqueID"

    const v14, 0xa420

    move-object/from16 v102, v5

    const/4 v5, 0x2

    invoke-direct {v0, v8, v14, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "CameraOwnerName"

    move-object/from16 v103, v0

    const v0, 0xa430

    invoke-direct {v8, v14, v0, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "BodySerialNumber"

    move-object/from16 v104, v8

    const v8, 0xa431

    invoke-direct {v0, v14, v8, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "LensSpecification"

    const v5, 0xa432

    move-object/from16 v105, v0

    const/4 v0, 0x5

    invoke-direct {v8, v14, v5, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v5, "LensMake"

    const v14, 0xa433

    move-object/from16 v106, v8

    const/4 v8, 0x2

    invoke-direct {v0, v5, v14, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "LensModel"

    move-object/from16 v107, v0

    const v0, 0xa434

    invoke-direct {v5, v14, v0, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "Gamma"

    const v14, 0xa500

    move-object/from16 v108, v5

    const/4 v5, 0x5

    invoke-direct {v0, v8, v14, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "DNGVersion"

    const v14, 0xc612

    move-object/from16 v109, v0

    const/4 v0, 0x1

    invoke-direct {v5, v8, v14, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "DefaultCropSize"

    move/from16 v20, v0

    const v0, 0xc620

    move-object/from16 v110, v5

    move-object/from16 v111, v10

    const/4 v5, 0x3

    const/4 v10, 0x4

    invoke-direct {v8, v14, v0, v5, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v0, 0x4a

    new-array v0, v0, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aput-object v39, v0, v16

    aput-object v13, v0, v20

    const/16 v28, 0x2

    aput-object v76, v0, v28

    aput-object v11, v0, v5

    aput-object v41, v0, v10

    const/16 v25, 0x5

    aput-object v42, v0, v25

    const/16 v23, 0x6

    aput-object v43, v0, v23

    const/16 v21, 0x7

    aput-object v44, v0, v21

    aput-object v45, v0, v19

    aput-object v46, v0, v38

    const/16 v17, 0xa

    aput-object v47, v0, v17

    aput-object v48, v0, v37

    aput-object v49, v0, v36

    aput-object v50, v0, v30

    aput-object v51, v0, v18

    aput-object v52, v0, v31

    aput-object v53, v0, v32

    aput-object v54, v0, v33

    aput-object v55, v0, v34

    const/16 v5, 0x13

    aput-object v56, v0, v5

    const/16 v5, 0x14

    aput-object v57, v0, v5

    const/16 v5, 0x15

    aput-object v58, v0, v5

    const/16 v5, 0x16

    aput-object v59, v0, v5

    aput-object v60, v0, v66

    const/16 v5, 0x18

    aput-object v61, v0, v5

    const/16 v5, 0x19

    aput-object v62, v0, v5

    aput-object v63, v0, v35

    const/16 v5, 0x1b

    aput-object v64, v0, v5

    const/16 v5, 0x1c

    aput-object v65, v0, v5

    const/16 v5, 0x1d

    aput-object v67, v0, v5

    const/16 v5, 0x1e

    aput-object v68, v0, v5

    const/16 v5, 0x1f

    aput-object v69, v0, v5

    const/16 v5, 0x20

    aput-object v70, v0, v5

    const/16 v5, 0x21

    aput-object v71, v0, v5

    const/16 v5, 0x22

    aput-object v72, v0, v5

    const/16 v5, 0x23

    aput-object v73, v0, v5

    const/16 v5, 0x24

    aput-object v74, v0, v5

    const/16 v5, 0x25

    aput-object v75, v0, v5

    const/16 v5, 0x26

    aput-object v77, v0, v5

    const/16 v5, 0x27

    aput-object v78, v0, v5

    const/16 v5, 0x28

    aput-object v79, v0, v5

    const/16 v5, 0x29

    aput-object v81, v0, v5

    const/16 v5, 0x2a

    aput-object v80, v0, v5

    const/16 v5, 0x2b

    aput-object v111, v0, v5

    const/16 v5, 0x2c

    aput-object v82, v0, v5

    const/16 v5, 0x2d

    aput-object v83, v0, v5

    const/16 v5, 0x2e

    aput-object v84, v0, v5

    const/16 v5, 0x2f

    aput-object v85, v0, v5

    const/16 v5, 0x30

    aput-object v86, v0, v5

    const/16 v5, 0x31

    aput-object v87, v0, v5

    const/16 v5, 0x32

    aput-object v88, v0, v5

    const/16 v5, 0x33

    aput-object v89, v0, v5

    const/16 v5, 0x34

    aput-object v90, v0, v5

    const/16 v5, 0x35

    aput-object v91, v0, v5

    const/16 v5, 0x36

    aput-object v92, v0, v5

    const/16 v5, 0x37

    aput-object v93, v0, v5

    const/16 v5, 0x38

    aput-object v94, v0, v5

    const/16 v5, 0x39

    aput-object v95, v0, v5

    const/16 v5, 0x3a

    aput-object v96, v0, v5

    const/16 v5, 0x3b

    aput-object v97, v0, v5

    const/16 v5, 0x3c

    aput-object v98, v0, v5

    const/16 v5, 0x3d

    aput-object v99, v0, v5

    const/16 v5, 0x3e

    aput-object v100, v0, v5

    const/16 v5, 0x3f

    aput-object v101, v0, v5

    const/16 v5, 0x40

    aput-object v102, v0, v5

    const/16 v5, 0x41

    aput-object v103, v0, v5

    const/16 v5, 0x42

    aput-object v104, v0, v5

    const/16 v5, 0x43

    aput-object v105, v0, v5

    const/16 v5, 0x44

    aput-object v106, v0, v5

    const/16 v5, 0x45

    aput-object v107, v0, v5

    const/16 v5, 0x46

    aput-object v108, v0, v5

    const/16 v5, 0x47

    aput-object v109, v0, v5

    const/16 v5, 0x48

    aput-object v110, v0, v5

    const/16 v5, 0x49

    aput-object v8, v0, v5

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_EXIF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3776
    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "GPSVersionID"

    move/from16 v11, v16

    const/4 v10, 0x1

    invoke-direct {v5, v8, v11, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "GPSLatitudeRef"

    const/4 v13, 0x2

    invoke-direct {v8, v11, v10, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "GPSLatitude"

    move-object/from16 v39, v0

    const/4 v14, 0x5

    const/16 v0, 0xa

    invoke-direct {v10, v11, v13, v14, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v0, "GPSLongitudeRef"

    const/4 v14, 0x3

    invoke-direct {v11, v0, v14, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v13, "GPSLongitude"

    move-object/from16 v41, v5

    move-object/from16 v42, v8

    const/4 v5, 0x5

    const/16 v8, 0xa

    const/4 v14, 0x4

    invoke-direct {v0, v13, v14, v5, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v13, "GPSAltitudeRef"

    const/4 v14, 0x1

    invoke-direct {v8, v13, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v13, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "GPSAltitude"

    move-object/from16 v43, v0

    const/4 v0, 0x6

    invoke-direct {v13, v14, v0, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "GPSTimeStamp"

    move-object/from16 v44, v8

    const/4 v8, 0x7

    invoke-direct {v0, v14, v8, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "GPSSatellites"

    move-object/from16 v45, v0

    move/from16 v14, v19

    const/4 v0, 0x2

    invoke-direct {v5, v8, v14, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "GPSStatus"

    move-object/from16 v46, v5

    move/from16 v5, v38

    invoke-direct {v8, v14, v5, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "GPSMeasureMode"

    move-object/from16 v47, v8

    const/16 v8, 0xa

    invoke-direct {v5, v14, v8, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "GPSDOP"

    move-object/from16 v48, v5

    move/from16 v5, v37

    const/4 v0, 0x5

    invoke-direct {v8, v14, v5, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "GPSSpeedRef"

    move-object/from16 v49, v8

    move/from16 v8, v36

    const/4 v0, 0x2

    invoke-direct {v5, v14, v8, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "GPSSpeed"

    move-object/from16 v50, v5

    move/from16 v5, v30

    const/4 v0, 0x5

    invoke-direct {v8, v14, v5, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "GPSTrackRef"

    move-object/from16 v51, v8

    move/from16 v8, v18

    const/4 v0, 0x2

    invoke-direct {v5, v14, v8, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "GPSTrack"

    move-object/from16 v52, v5

    move/from16 v5, v31

    const/4 v0, 0x5

    invoke-direct {v8, v14, v5, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "GPSImgDirectionRef"

    move-object/from16 v53, v8

    move/from16 v8, v32

    const/4 v0, 0x2

    invoke-direct {v5, v14, v8, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "GPSImgDirection"

    move-object/from16 v54, v5

    move/from16 v5, v33

    const/4 v0, 0x5

    invoke-direct {v8, v14, v5, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "GPSMapDatum"

    move-object/from16 v55, v8

    move/from16 v8, v34

    const/4 v0, 0x2

    invoke-direct {v5, v14, v8, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestLatitudeRef"

    move-object/from16 v56, v5

    const/16 v5, 0x13

    invoke-direct {v8, v14, v5, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestLatitude"

    const/16 v0, 0x14

    move-object/from16 v57, v8

    const/4 v8, 0x5

    invoke-direct {v5, v14, v0, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestLongitudeRef"

    const/16 v8, 0x15

    move-object/from16 v58, v5

    const/4 v5, 0x2

    invoke-direct {v0, v14, v8, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestLongitude"

    const/16 v5, 0x16

    move-object/from16 v59, v0

    const/4 v0, 0x5

    invoke-direct {v8, v14, v5, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestBearingRef"

    move-object/from16 v60, v8

    move/from16 v8, v66

    const/4 v0, 0x2

    invoke-direct {v5, v14, v8, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestBearing"

    const/16 v0, 0x18

    move-object/from16 v61, v5

    const/4 v5, 0x5

    invoke-direct {v8, v14, v0, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestDistanceRef"

    const/16 v5, 0x19

    move-object/from16 v62, v8

    const/4 v8, 0x2

    invoke-direct {v0, v14, v5, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "GPSDestDistance"

    move-object/from16 v63, v0

    move/from16 v0, v35

    const/4 v14, 0x5

    invoke-direct {v5, v8, v0, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "GPSProcessingMethod"

    const/16 v14, 0x1b

    move-object/from16 v64, v5

    const/4 v5, 0x7

    invoke-direct {v0, v8, v14, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "GPSAreaInformation"

    move-object/from16 v65, v0

    const/16 v0, 0x1c

    invoke-direct {v8, v14, v0, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v5, "GPSDateStamp"

    const/16 v14, 0x1d

    move-object/from16 v67, v8

    const/4 v8, 0x2

    invoke-direct {v0, v5, v14, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "GPSDifferential"

    const/16 v14, 0x1e

    move-object/from16 v68, v0

    const/4 v0, 0x3

    invoke-direct {v5, v8, v14, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "GPSHPositioningError"

    move/from16 v29, v0

    const/16 v0, 0x1f

    move-object/from16 v69, v5

    const/4 v5, 0x5

    invoke-direct {v8, v14, v0, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v0, 0x20

    new-array v0, v0, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const/16 v16, 0x0

    aput-object v41, v0, v16

    const/16 v20, 0x1

    aput-object v42, v0, v20

    const/16 v28, 0x2

    aput-object v10, v0, v28

    aput-object v11, v0, v29

    const/16 v27, 0x4

    aput-object v43, v0, v27

    aput-object v44, v0, v5

    const/16 v23, 0x6

    aput-object v13, v0, v23

    const/16 v21, 0x7

    aput-object v45, v0, v21

    const/16 v19, 0x8

    aput-object v46, v0, v19

    const/16 v38, 0x9

    aput-object v47, v0, v38

    const/16 v17, 0xa

    aput-object v48, v0, v17

    const/16 v37, 0xb

    aput-object v49, v0, v37

    const/16 v36, 0xc

    aput-object v50, v0, v36

    const/16 v30, 0xd

    aput-object v51, v0, v30

    const/16 v18, 0xe

    aput-object v52, v0, v18

    const/16 v31, 0xf

    aput-object v53, v0, v31

    const/16 v32, 0x10

    aput-object v54, v0, v32

    const/16 v33, 0x11

    aput-object v55, v0, v33

    const/16 v34, 0x12

    aput-object v56, v0, v34

    const/16 v5, 0x13

    aput-object v57, v0, v5

    const/16 v5, 0x14

    aput-object v58, v0, v5

    const/16 v5, 0x15

    aput-object v59, v0, v5

    const/16 v5, 0x16

    aput-object v60, v0, v5

    const/16 v66, 0x17

    aput-object v61, v0, v66

    const/16 v5, 0x18

    aput-object v62, v0, v5

    const/16 v5, 0x19

    aput-object v63, v0, v5

    const/16 v35, 0x1a

    aput-object v64, v0, v35

    const/16 v5, 0x1b

    aput-object v65, v0, v5

    const/16 v5, 0x1c

    aput-object v67, v0, v5

    const/16 v5, 0x1d

    aput-object v68, v0, v5

    const/16 v5, 0x1e

    aput-object v69, v0, v5

    const/16 v5, 0x1f

    aput-object v8, v0, v5

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_GPS_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3813
    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "InteroperabilityIndex"

    const/4 v10, 0x1

    const/4 v13, 0x2

    invoke-direct {v5, v8, v10, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-array v8, v10, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const/16 v16, 0x0

    aput-object v5, v8, v16

    sput-object v8, Landroidx/exifinterface/media/ExifInterface;->IFD_INTEROPERABILITY_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3817
    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "NewSubfileType"

    const/16 v11, 0xfe

    const/4 v14, 0x4

    invoke-direct {v5, v10, v11, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "SubfileType"

    const/16 v13, 0xff

    invoke-direct {v10, v11, v13, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v13, "ThumbnailImageWidth"

    move-object/from16 v41, v0

    move-object/from16 v42, v5

    const/4 v0, 0x3

    const/16 v5, 0x100

    invoke-direct {v11, v13, v5, v0, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v13, "ThumbnailImageLength"

    move-object/from16 v43, v8

    const/16 v8, 0x101

    invoke-direct {v5, v13, v8, v0, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v13, "BitsPerSample"

    const/16 v14, 0x102

    invoke-direct {v8, v13, v14, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v13, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "Compression"

    move-object/from16 v44, v5

    const/16 v5, 0x103

    invoke-direct {v13, v14, v5, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "PhotometricInterpretation"

    move-object/from16 v45, v8

    const/16 v8, 0x106

    invoke-direct {v5, v14, v8, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "ImageDescription"

    const/16 v14, 0x10e

    move-object/from16 v46, v5

    const/4 v5, 0x2

    invoke-direct {v0, v8, v14, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "Make"

    move-object/from16 v47, v0

    const/16 v0, 0x10f

    invoke-direct {v8, v14, v0, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "Model"

    move-object/from16 v48, v8

    const/16 v8, 0x110

    invoke-direct {v0, v14, v8, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    move-object/from16 v49, v0

    const/16 v0, 0x111

    const/4 v8, 0x3

    const/4 v14, 0x4

    invoke-direct {v5, v2, v0, v8, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "ThumbnailOrientation"

    move-object/from16 v50, v5

    const/16 v5, 0x112

    invoke-direct {v0, v14, v5, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "SamplesPerPixel"

    move-object/from16 v51, v0

    const/16 v0, 0x115

    invoke-direct {v5, v14, v0, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "RowsPerStrip"

    move-object/from16 v52, v5

    const/16 v5, 0x116

    move-object/from16 v53, v10

    const/4 v10, 0x4

    invoke-direct {v0, v14, v5, v8, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "StripByteCounts"

    move-object/from16 v54, v0

    const/16 v0, 0x117

    invoke-direct {v5, v14, v0, v8, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "XResolution"

    const/16 v10, 0x11a

    const/4 v14, 0x5

    invoke-direct {v0, v8, v10, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "YResolution"

    move-object/from16 v55, v0

    const/16 v0, 0x11b

    invoke-direct {v8, v10, v0, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "PlanarConfiguration"

    const/16 v14, 0x11c

    move-object/from16 v56, v5

    const/4 v5, 0x3

    invoke-direct {v0, v10, v14, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "ResolutionUnit"

    move-object/from16 v57, v0

    const/16 v0, 0x128

    invoke-direct {v10, v14, v0, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "TransferFunction"

    move-object/from16 v58, v8

    const/16 v8, 0x12d

    invoke-direct {v0, v14, v8, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "Software"

    const/16 v14, 0x131

    move-object/from16 v59, v0

    const/4 v0, 0x2

    invoke-direct {v5, v8, v14, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "DateTime"

    move-object/from16 v60, v5

    const/16 v5, 0x132

    invoke-direct {v8, v14, v5, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "Artist"

    move-object/from16 v61, v8

    const/16 v8, 0x13b

    invoke-direct {v5, v14, v8, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "WhitePoint"

    const/16 v14, 0x13e

    move-object/from16 v62, v5

    const/4 v5, 0x5

    invoke-direct {v0, v8, v14, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "PrimaryChromaticities"

    move-object/from16 v63, v0

    const/16 v0, 0x13f

    invoke-direct {v8, v14, v0, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const/4 v5, 0x4

    const/16 v14, 0x14a

    invoke-direct {v0, v4, v14, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    move-object/from16 v64, v0

    const-string v0, "JPEGInterchangeFormat"

    move-object/from16 v65, v8

    const/16 v8, 0x201

    invoke-direct {v14, v0, v8, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "JPEGInterchangeFormatLength"

    move-object/from16 v67, v10

    const/16 v10, 0x202

    invoke-direct {v0, v8, v10, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "YCbCrCoefficients"

    const/16 v10, 0x211

    move-object/from16 v68, v0

    const/4 v0, 0x5

    invoke-direct {v5, v8, v10, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "YCbCrSubSampling"

    const/16 v10, 0x212

    move-object/from16 v69, v5

    const/4 v5, 0x3

    invoke-direct {v0, v8, v10, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "YCbCrPositioning"

    move-object/from16 v70, v0

    const/16 v0, 0x213

    invoke-direct {v8, v10, v0, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v5, "ReferenceBlackWhite"

    const/16 v10, 0x214

    move-object/from16 v71, v8

    const/4 v8, 0x5

    invoke-direct {v0, v5, v10, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "Copyright"

    const v10, 0x8298

    move-object/from16 v72, v0

    const/4 v0, 0x2

    invoke-direct {v5, v8, v10, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const v8, 0x8769

    const/4 v10, 0x4

    invoke-direct {v0, v6, v8, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    move-object/from16 v73, v0

    const-string v0, "GPSInfoIFDPointer"

    move-object/from16 v74, v5

    const v5, 0x8825

    invoke-direct {v8, v0, v5, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v5, "DNGVersion"

    const v10, 0xc612

    move-object/from16 v75, v8

    const/4 v8, 0x1

    invoke-direct {v0, v5, v10, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "DefaultCropSize"

    move/from16 v20, v8

    const v8, 0xc620

    move-object/from16 v76, v0

    move-object/from16 v27, v11

    const/4 v0, 0x3

    const/4 v11, 0x4

    invoke-direct {v5, v10, v8, v0, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v8, 0x25

    new-array v8, v8, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const/16 v16, 0x0

    aput-object v42, v8, v16

    aput-object v53, v8, v20

    const/16 v28, 0x2

    aput-object v27, v8, v28

    aput-object v44, v8, v0

    aput-object v45, v8, v11

    const/16 v25, 0x5

    aput-object v13, v8, v25

    const/16 v23, 0x6

    aput-object v46, v8, v23

    const/16 v21, 0x7

    aput-object v47, v8, v21

    const/16 v19, 0x8

    aput-object v48, v8, v19

    const/16 v38, 0x9

    aput-object v49, v8, v38

    const/16 v17, 0xa

    aput-object v50, v8, v17

    const/16 v37, 0xb

    aput-object v51, v8, v37

    const/16 v36, 0xc

    aput-object v52, v8, v36

    const/16 v30, 0xd

    aput-object v54, v8, v30

    const/16 v18, 0xe

    aput-object v56, v8, v18

    const/16 v31, 0xf

    aput-object v55, v8, v31

    const/16 v32, 0x10

    aput-object v58, v8, v32

    const/16 v33, 0x11

    aput-object v57, v8, v33

    const/16 v34, 0x12

    aput-object v67, v8, v34

    const/16 v0, 0x13

    aput-object v59, v8, v0

    const/16 v0, 0x14

    aput-object v60, v8, v0

    const/16 v0, 0x15

    aput-object v61, v8, v0

    const/16 v0, 0x16

    aput-object v62, v8, v0

    const/16 v66, 0x17

    aput-object v63, v8, v66

    const/16 v0, 0x18

    aput-object v65, v8, v0

    const/16 v0, 0x19

    aput-object v64, v8, v0

    const/16 v35, 0x1a

    aput-object v14, v8, v35

    const/16 v0, 0x1b

    aput-object v68, v8, v0

    const/16 v0, 0x1c

    aput-object v69, v8, v0

    const/16 v0, 0x1d

    aput-object v70, v8, v0

    const/16 v0, 0x1e

    aput-object v71, v8, v0

    const/16 v0, 0x1f

    aput-object v72, v8, v0

    const/16 v0, 0x20

    aput-object v74, v8, v0

    const/16 v0, 0x21

    aput-object v73, v8, v0

    const/16 v0, 0x22

    aput-object v75, v8, v0

    const/16 v0, 0x23

    aput-object v76, v8, v0

    const/16 v0, 0x24

    aput-object v5, v8, v0

    sput-object v8, Landroidx/exifinterface/media/ExifInterface;->IFD_THUMBNAIL_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3860
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const/4 v5, 0x3

    const/16 v10, 0x111

    invoke-direct {v0, v2, v10, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->TAG_RAF_IMAGE_SIZE:Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3864
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v2, "ThumbnailImage"

    const/4 v5, 0x7

    const/16 v10, 0x100

    invoke-direct {v0, v2, v10, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v5, "CameraSettingsIFDPointer"

    const/16 v10, 0x2020

    const/4 v14, 0x4

    invoke-direct {v2, v5, v10, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "ImageProcessingIFDPointer"

    const/16 v11, 0x2040

    invoke-direct {v5, v10, v11, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v10, 0x3

    new-array v11, v10, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const/16 v16, 0x0

    aput-object v0, v11, v16

    const/4 v10, 0x1

    aput-object v2, v11, v10

    const/4 v0, 0x2

    aput-object v5, v11, v0

    sput-object v11, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3869
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v5, "PreviewImageStart"

    const/16 v13, 0x101

    invoke-direct {v2, v5, v13, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v13, "PreviewImageLength"

    move/from16 v20, v10

    const/16 v10, 0x102

    invoke-direct {v5, v13, v10, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-array v10, v0, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aput-object v2, v10, v16

    aput-object v5, v10, v20

    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->ORF_CAMERA_SETTINGS_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3873
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v2, "AspectFrame"

    const/16 v5, 0x1113

    const/4 v14, 0x3

    invoke-direct {v0, v2, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    move/from16 v2, v20

    new-array v5, v2, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aput-object v0, v5, v16

    sput-object v5, Landroidx/exifinterface/media/ExifInterface;->ORF_IMAGE_PROCESSING_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3877
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v13, "ColorSpace"

    move-object/from16 v18, v5

    const/16 v5, 0x37

    invoke-direct {v0, v13, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-array v5, v2, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aput-object v0, v5, v16

    sput-object v5, Landroidx/exifinterface/media/ExifInterface;->PEF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const/16 v0, 0xa

    .line 3904
    new-array v0, v0, [[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aput-object v40, v0, v16

    aput-object v39, v0, v2

    const/16 v28, 0x2

    aput-object v41, v0, v28

    aput-object v43, v0, v14

    const/4 v14, 0x4

    aput-object v8, v0, v14

    const/16 v25, 0x5

    aput-object v40, v0, v25

    const/16 v23, 0x6

    aput-object v11, v0, v23

    const/16 v21, 0x7

    aput-object v10, v0, v21

    const/16 v19, 0x8

    aput-object v18, v0, v19

    const/16 v38, 0x9

    aput-object v5, v0, v38

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3911
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const/16 v5, 0x14a

    invoke-direct {v2, v4, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const v8, 0x8769

    invoke-direct {v4, v6, v8, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSInfoIFDPointer"

    const v8, 0x8825

    invoke-direct {v5, v6, v8, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "InteroperabilityIFDPointer"

    const v10, 0xa005

    invoke-direct {v6, v8, v10, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "CameraSettingsIFDPointer"

    const/16 v11, 0x2020

    const/4 v14, 0x1

    invoke-direct {v8, v10, v11, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "ImageProcessingIFDPointer"

    const/16 v13, 0x2040

    invoke-direct {v10, v11, v13, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v11, 0x6

    new-array v11, v11, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const/16 v16, 0x0

    aput-object v2, v11, v16

    aput-object v4, v11, v14

    const/16 v28, 0x2

    aput-object v5, v11, v28

    const/16 v29, 0x3

    aput-object v6, v11, v29

    const/16 v27, 0x4

    aput-object v8, v11, v27

    const/16 v25, 0x5

    aput-object v10, v11, v25

    sput-object v11, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3922
    array-length v2, v0

    new-array v2, v2, [Ljava/util/HashMap;

    sput-object v2, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    .line 3926
    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    .line 3943
    new-instance v0, Ljava/util/HashSet;

    const-string v2, "ExposureTime"

    const-string v4, "SubjectDistance"

    const-string v5, "FNumber"

    const-string v6, "DigitalZoomRatio"

    filled-new-array {v5, v6, v2, v4}, [Ljava/lang/String;

    move-result-object v2

    .line 3946
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3944
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->RATIONAL_TAGS_HANDLED_AS_DECIMALS_FOR_COMPATIBILITY:Ljava/util/Set;

    .line 3953
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    .line 3959
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    .line 3961
    const-string v2, "Exif\u0000\u0000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    sput-object v2, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    .line 3963
    const-string v2, "http://ns.adobe.com/xap/1.0/\u0000"

    .line 3964
    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_XMP_APP1:[B

    .line 4002
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v4, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->sFormatterPrimary:Ljava/text/SimpleDateFormat;

    .line 4003
    const-string v4, "UTC"

    invoke-static {v4}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4004
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v4, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->sFormatterSecondary:Ljava/text/SimpleDateFormat;

    .line 4005
    const-string v2, "UTC"

    invoke-static {v2}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v11, 0x0

    .line 4008
    :goto_0
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v2, v0

    if-ge v11, v2, :cond_1

    .line 4009
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    aput-object v4, v2, v11

    .line 4010
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    aput-object v4, v2, v11

    .line 4011
    aget-object v0, v0, v11

    array-length v2, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_0

    aget-object v5, v0, v4

    .line 4012
    sget-object v6, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    aget-object v6, v6, v11

    iget v8, v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4013
    sget-object v6, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v6, v6, v11

    iget-object v8, v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v6, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 4018
    :cond_1
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const/16 v16, 0x0

    aget-object v4, v2, v16

    iget v4, v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v20, 0x1

    .line 4019
    aget-object v4, v2, v20

    iget v4, v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v28, 0x2

    .line 4020
    aget-object v3, v2, v28

    iget v3, v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v29, 0x3

    .line 4021
    aget-object v3, v2, v29

    iget v3, v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v27, 0x4

    .line 4022
    aget-object v1, v2, v27

    iget v1, v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v25, 0x5

    .line 4023
    aget-object v1, v2, v25

    iget v1, v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4071
    const-string v0, ".*[1-9].*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->NON_ZERO_TIME_PATTERN:Ljava/util/regex/Pattern;

    .line 4073
    const-string v0, "^(\\d{2}):(\\d{2}):(\\d{2})$"

    .line 4074
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->GPS_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

    .line 4076
    const-string v0, "^(\\d{4}):(\\d{2}):(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$"

    .line 4077
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->DATETIME_PRIMARY_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    .line 4079
    const-string v0, "^(\\d{4})-(\\d{2})-(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$"

    .line 4080
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->DATETIME_SECONDARY_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    :array_1
    .array-data 1
        0x66t
        0x74t
        0x79t
        0x70t
    .end array-data

    :array_2
    .array-data 1
        0x6dt
        0x69t
        0x66t
        0x31t
    .end array-data

    :array_3
    .array-data 1
        0x68t
        0x65t
        0x69t
        0x63t
    .end array-data

    :array_4
    .array-data 1
        0x61t
        0x76t
        0x69t
        0x66t
    .end array-data

    :array_5
    .array-data 1
        0x61t
        0x76t
        0x69t
        0x73t
    .end array-data

    :array_6
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x0t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x55t
        0x53t
        0x0t
        0x49t
        0x49t
    .end array-data

    nop

    :array_8
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    :array_9
    .array-data 1
        0x52t
        0x49t
        0x46t
        0x46t
    .end array-data

    :array_a
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x50t
    .end array-data

    :array_b
    .array-data 1
        0x45t
        0x58t
        0x49t
        0x46t
    .end array-data

    :array_c
    .array-data 1
        -0x63t
        0x1t
        0x2at
    .end array-data

    :array_d
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
        0x1
    .end array-data

    :array_e
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .line 4091
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4031
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 4033
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    .line 4034
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    if-eqz p1, :cond_0

    .line 4095
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->initForFilename(Ljava/lang/String;)V

    return-void

    .line 4093
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "file cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 4166
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2

    .line 4182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4031
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 4033
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    .line 4034
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    .line 4186
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4188
    :goto_0
    iput-boolean v1, p0, Landroidx/exifinterface/media/ExifInterface;->mIsExifDataOnly:Z

    if-eqz v1, :cond_1

    .line 4190
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 4191
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_1

    .line 4193
    :cond_1
    instance-of p2, p1, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz p2, :cond_2

    .line 4194
    move-object p2, p1

    check-cast p2, Landroid/content/res/AssetManager$AssetInputStream;

    iput-object p2, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 4195
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_1

    .line 4196
    :cond_2
    instance-of p2, p1, Ljava/io/FileInputStream;

    if-eqz p2, :cond_3

    move-object p2, p1

    check-cast p2, Ljava/io/FileInputStream;

    .line 4197
    invoke-virtual {p2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4198
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 4199
    invoke-virtual {p2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p2

    iput-object p2, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_1

    .line 4201
    :cond_3
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 4202
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 4205
    :goto_1
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V

    return-void

    .line 4184
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "inputStream cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 4106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4031
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 4033
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    .line 4034
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    if-eqz p1, :cond_0

    .line 4110
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->initForFilename(Ljava/lang/String;)V

    return-void

    .line 4108
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "filename cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000()[I
    .locals 1

    .line 131
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    return-object v0
.end method

.method static synthetic access$100()Ljava/nio/charset/Charset;
    .locals 1

    .line 131
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .line 131
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()[B
    .locals 1

    .line 131
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    return-object v0
.end method

.method private addDefaultValuesForCompatibility()V
    .locals 6

    .line 7012
    const-string v0, "DateTimeOriginal"

    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7013
    const-string v2, "DateTime"

    invoke-virtual {p0, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 7014
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v1

    .line 7015
    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 7014
    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7019
    :cond_0
    const-string v0, "ImageWidth"

    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_1

    .line 7020
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7021
    invoke-static {v3, v4, v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v5

    .line 7020
    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7023
    :cond_1
    const-string v0, "ImageLength"

    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 7024
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7025
    invoke-static {v3, v4, v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v5

    .line 7024
    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7027
    :cond_2
    const-string v0, "Orientation"

    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 7028
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v2, v1

    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7029
    invoke-static {v3, v4, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v2

    .line 7028
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7031
    :cond_3
    const-string v0, "LightSource"

    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 7032
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7033
    invoke-static {v3, v4, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v2

    .line 7032
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method private static convertRationalLatLonToDouble(Ljava/lang/String;Ljava/lang/String;)D
    .locals 11

    .line 5484
    const-string v0, "/"

    :try_start_0
    const-string v1, ","

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 5487
    aget-object v3, p0, v1

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 5488
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const/4 v6, 0x1

    aget-object v3, v3, v6

    .line 5489
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    div-double/2addr v4, v7

    .line 5491
    aget-object v3, p0, v6

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 5492
    aget-object v7, v3, v1

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    aget-object v3, v3, v6

    .line 5493
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    div-double/2addr v7, v9

    const/4 v3, 0x2

    .line 5495
    aget-object p0, p0, v3

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 5496
    aget-object v0, p0, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    aget-object p0, p0, v6

    .line 5497
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    div-double/2addr v7, v2

    add-double/2addr v4, v7

    const-wide v2, 0x40ac200000000000L    # 3600.0

    div-double/2addr v0, v2

    add-double/2addr v4, v0

    .line 5500
    const-string p0, "S"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "W"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    .line 5502
    :cond_0
    const-string p0, "N"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "E"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 5506
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-wide v4

    :cond_3
    :goto_1
    neg-double p0, v4

    return-wide p0

    :catch_0
    move-exception p0

    .line 5510
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private copyChunksUpToGivenChunkType(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;[B[B)V
    .locals 2

    :cond_0
    const/4 v0, 0x4

    .line 6979
    new-array v0, v0, [B

    .line 6980
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 6981
    invoke-direct {p0, p1, p2, v0}, Landroidx/exifinterface/media/ExifInterface;->copyWebPChunk(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;[B)V

    .line 6982
    invoke-static {v0, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p4, :cond_0

    .line 6983
    invoke-static {v0, p4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method

.method private copyWebPChunk(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;[B)V
    .locals 2

    .line 6991
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    .line 6992
    invoke-virtual {p2, p3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 6993
    invoke-virtual {p2, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 6995
    rem-int/lit8 p3, v0, 0x2

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    invoke-static {p1, p2, v0}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    return-void
.end method

.method private getExifAttribute(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .locals 3

    if-eqz p1, :cond_6

    .line 4252
    const-string v0, "ISOSpeedRatings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4253
    sget-boolean p1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 4254
    const-string p1, "ExifInterface"

    const-string v0, "getExifAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4257
    :cond_0
    const-string p1, "PhotographicSensitivity"

    .line 4259
    :cond_1
    const-string v0, "Xmp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 4260
    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterface;->getXmpHandlingForImageType(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mXmpFromSeparateMarker:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    const/4 v1, 0x0

    .line 4266
    :goto_0
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 4267
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v2, :cond_3

    return-object v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4272
    :cond_4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mXmpFromSeparateMarker:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_5

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1

    .line 4249
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "tag shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getHeifAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V
    .locals 13

    .line 6007
    const-string/jumbo v0, "yes"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_f

    const/16 v2, 0xf

    const/16 v3, 0x1f

    if-ne p2, v2, :cond_1

    if-lt v1, v3, :cond_0

    goto :goto_0

    .line 6009
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Reading EXIF from AVIF files is supported from SDK 31 and above"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6012
    :cond_1
    :goto_0
    new-instance p2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {p2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 6014
    :try_start_0
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$1;

    invoke-direct {v1, p0, p1}, Landroidx/exifinterface/media/ExifInterface$1;-><init>(Landroidx/exifinterface/media/ExifInterface;Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    invoke-static {p2, v1}, Landroidx/exifinterface/media/ExifInterfaceUtils$Api23Impl;->setDataSource(Landroid/media/MediaMetadataRetriever;Landroid/media/MediaDataSource;)V

    const/16 v1, 0x21

    .line 6067
    invoke-virtual {p2, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x22

    .line 6069
    invoke-virtual {p2, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x1a

    .line 6071
    invoke-virtual {p2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x11

    .line 6073
    invoke-virtual {p2, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    .line 6083
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v0, 0x1d

    .line 6084
    invoke-virtual {p2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x1e

    .line 6086
    invoke-virtual {p2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    .line 6088
    invoke-virtual {p2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_4

    .line 6090
    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x12

    .line 6091
    invoke-virtual {p2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x13

    .line 6093
    invoke-virtual {p2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0x18

    .line 6095
    invoke-virtual {p2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    move-object v3, v0

    move-object v4, v3

    :goto_1
    const/4 v5, 0x0

    if-eqz v0, :cond_4

    .line 6100
    iget-object v6, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v5

    const-string v7, "ImageWidth"

    .line 6101
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iget-object v9, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v8, v9}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v8

    .line 6100
    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz v4, :cond_5

    .line 6105
    iget-object v6, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v5

    const-string v7, "ImageLength"

    .line 6106
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iget-object v9, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v8, v9}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v8

    .line 6105
    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const/4 v6, 0x1

    const/4 v7, 0x6

    if-eqz v3, :cond_9

    .line 6113
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0x5a

    if-eq v8, v9, :cond_8

    const/16 v9, 0xb4

    if-eq v8, v9, :cond_7

    const/16 v9, 0x10e

    if-eq v8, v9, :cond_6

    move v8, v6

    goto :goto_2

    :cond_6
    const/16 v8, 0x8

    goto :goto_2

    :cond_7
    const/4 v8, 0x3

    goto :goto_2

    :cond_8
    move v8, v7

    .line 6125
    :goto_2
    iget-object v9, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, v5

    const-string v10, "Orientation"

    iget-object v11, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6126
    invoke-static {v8, v11}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v8

    .line 6125
    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    if-eqz v1, :cond_c

    if-eqz v2, :cond_c

    .line 6130
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 6131
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-le v2, v7, :cond_b

    int-to-long v8, v1

    .line 6135
    invoke-virtual {p1, v8, v9}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 6136
    new-array v8, v7, [B

    .line 6137
    invoke-virtual {p1, v8}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    add-int/2addr v1, v7

    add-int/lit8 v2, v2, -0x6

    .line 6140
    sget-object v7, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v8, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 6145
    new-array v2, v2, [B

    .line 6146
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 6148
    iput v1, p0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    .line 6149
    invoke-direct {p0, v2, v5}, Landroidx/exifinterface/media/ExifInterface;->readExifSegment([BI)V

    goto :goto_3

    .line 6141
    :cond_a
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid identifier"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6133
    :cond_b
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid exif length"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    :goto_3
    const/16 v1, 0x29

    .line 6152
    invoke-virtual {p2, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2a

    .line 6154
    invoke-virtual {p2, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_d

    if-eqz v2, :cond_d

    .line 6157
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 6158
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v10, v1

    .line 6159
    invoke-virtual {p1, v10, v11}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 6160
    new-array v12, v9, [B

    .line 6161
    invoke-virtual {p1, v12}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 6162
    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    const/4 v8, 0x1

    invoke-direct/range {v7 .. v12}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(IIJ[B)V

    iput-object v7, p0, Landroidx/exifinterface/media/ExifInterface;->mXmpFromSeparateMarker:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 6164
    iput-boolean v6, p0, Landroidx/exifinterface/media/ExifInterface;->mFileOnDiskContainsSeparateXmpMarker:Z

    .line 6167
    :cond_d
    sget-boolean p1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_e

    .line 6168
    const-string p1, "ExifInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Heif meta: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "x"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", rotation "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6175
    :cond_e
    :try_start_1
    invoke-virtual {p2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void

    .line 6171
    :goto_4
    :try_start_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Failed to read EXIF from HEIF file. Given stream is either malformed or unsupported."

    invoke-direct {v0, v1, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6175
    :goto_5
    :try_start_3
    invoke-virtual {p2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 6179
    :catch_2
    throw p1

    .line 6181
    :cond_f
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Reading EXIF from HEIC files is supported from SDK 28 and above"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 5767
    sget-boolean v3, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    const-string v4, "ExifInterface"

    if-eqz v3, :cond_0

    .line 5768
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getJpegAttributes starting with: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5771
    :cond_0
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 5776
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v3

    const-string v5, "Invalid marker: "

    const/4 v6, -0x1

    if-ne v3, v6, :cond_11

    .line 5780
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v7

    const/16 v8, -0x28

    if-ne v7, v8, :cond_10

    const/4 v3, 0x2

    .line 5785
    :goto_0
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v5

    if-ne v5, v6, :cond_f

    :goto_1
    add-int/lit8 v5, v3, 0x1

    .line 5793
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v7

    if-eq v7, v6, :cond_e

    .line 5796
    sget-boolean v5, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 5797
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found JPEG segment indicator: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v9, v7, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v8, -0x27

    if-eq v7, v8, :cond_d

    const/16 v8, -0x26

    if-ne v7, v8, :cond_2

    goto/16 :goto_7

    .line 5806
    :cond_2
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v8

    add-int/lit8 v9, v8, -0x2

    add-int/lit8 v3, v3, 0x4

    if-eqz v5, :cond_3

    .line 5809
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "JPEG segment: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v10, v7, 0xff

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " (length: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5812
    :cond_3
    const-string v5, "Invalid length"

    if-ltz v9, :cond_c

    const/16 v10, -0x1f

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v7, v10, :cond_8

    const/4 v10, -0x2

    if-eq v7, v10, :cond_6

    packed-switch v7, :pswitch_data_0

    packed-switch v7, :pswitch_data_1

    packed-switch v7, :pswitch_data_2

    packed-switch v7, :pswitch_data_3

    goto/16 :goto_6

    .line 5869
    :pswitch_0
    invoke-virtual {v1, v12}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 5870
    iget-object v7, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v2

    const/4 v9, 0x4

    if-eq v2, v9, :cond_4

    .line 5871
    const-string v10, "ImageLength"

    goto :goto_2

    :cond_4
    const-string v10, "ThumbnailImageLength"

    .line 5872
    :goto_2
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v11

    int-to-long v11, v11

    iget-object v13, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v11, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v11

    .line 5870
    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5873
    iget-object v7, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v2

    if-eq v2, v9, :cond_5

    .line 5874
    const-string v9, "ImageWidth"

    goto :goto_3

    :cond_5
    const-string v9, "ThumbnailImageWidth"

    .line 5875
    :goto_3
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v10

    int-to-long v10, v10

    iget-object v12, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v10, v11, v12}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v10

    .line 5873
    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v8, -0x7

    goto :goto_6

    .line 5846
    :cond_6
    new-array v7, v9, [B

    .line 5847
    invoke-virtual {v1, v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 5849
    const-string v8, "UserComment"

    invoke-virtual {v0, v8}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_7

    .line 5850
    iget-object v9, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, v12

    new-instance v10, Ljava/lang/String;

    sget-object v12, Landroidx/exifinterface/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v10, v7, v12}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v10}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v7

    invoke-virtual {v9, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_4
    move v9, v11

    goto :goto_6

    .line 5818
    :cond_8
    new-array v7, v9, [B

    .line 5819
    invoke-virtual {v1, v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    add-int v8, v3, v9

    .line 5823
    sget-object v10, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v7, v10}, Landroidx/exifinterface/media/ExifInterfaceUtils;->startsWith([B[B)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 5824
    array-length v12, v10

    invoke-static {v7, v12, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    add-int v3, p2, v3

    .line 5827
    array-length v9, v10

    add-int/2addr v3, v9

    iput v3, v0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    .line 5830
    invoke-direct {v0, v7, v2}, Landroidx/exifinterface/media/ExifInterface;->readExifSegment([BI)V

    .line 5832
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v3, v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    invoke-direct {v0, v3}, Landroidx/exifinterface/media/ExifInterface;->setThumbnailData(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_5

    .line 5833
    :cond_9
    sget-object v10, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_XMP_APP1:[B

    invoke-static {v7, v10}, Landroidx/exifinterface/media/ExifInterfaceUtils;->startsWith([B[B)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 5835
    array-length v13, v10

    add-int/2addr v3, v13

    .line 5836
    array-length v10, v10

    invoke-static {v7, v10, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    .line 5838
    new-instance v13, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length v15, v7

    int-to-long v9, v3

    const/4 v14, 0x1

    move-object/from16 v18, v7

    move-wide/from16 v16, v9

    invoke-direct/range {v13 .. v18}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(IIJ[B)V

    iput-object v13, v0, Landroidx/exifinterface/media/ExifInterface;->mXmpFromSeparateMarker:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 5840
    iput-boolean v12, v0, Landroidx/exifinterface/media/ExifInterface;->mFileOnDiskContainsSeparateXmpMarker:Z

    :cond_a
    :goto_5
    move v3, v8

    goto :goto_4

    :goto_6
    if-ltz v9, :cond_b

    .line 5887
    invoke-virtual {v1, v9}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    add-int/2addr v3, v9

    goto/16 :goto_0

    .line 5885
    :cond_b
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5813
    :cond_c
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5891
    :cond_d
    :goto_7
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void

    :cond_e
    move v3, v5

    goto/16 :goto_1

    .line 5787
    :cond_f
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid marker:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v3, v5, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5781
    :cond_10
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5777
    :cond_11
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch -0x40
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x37
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch -0x33
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getMimeType(Ljava/io/BufferedInputStream;)I
    .locals 1

    const/16 v0, 0x1388

    .line 5523
    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 5524
    new-array v0, v0, [B

    .line 5525
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 5526
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->reset()V

    .line 5527
    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterface;->isJpegFormat([B)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    return p1

    .line 5530
    :cond_0
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->isRafFormat([B)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x9

    return p1

    .line 5533
    :cond_1
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->isHeicOrAvifFormat([B)I

    move-result p1

    if-eqz p1, :cond_2

    return p1

    .line 5537
    :cond_2
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->isOrfFormat([B)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x7

    return p1

    .line 5540
    :cond_3
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->isRw2Format([B)Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0xa

    return p1

    .line 5543
    :cond_4
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->isPngFormat([B)Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0xd

    return p1

    .line 5546
    :cond_5
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->isWebpFormat([B)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 p1, 0xe

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method private getOrfAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V
    .locals 5

    .line 6216
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getRawAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    .line 6221
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    const-string v1, "MakerNote"

    .line 6222
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_6

    .line 6225
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;

    iget-object p1, p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v1, p1}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;-><init>([B)V

    .line 6227
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 6231
    sget-object p1, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    array-length v2, p1

    new-array v2, v2, [B

    .line 6232
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    const-wide/16 v3, 0x0

    .line 6233
    invoke-virtual {v1, v3, v4}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 6234
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    array-length v4, v3

    new-array v4, v4, [B

    .line 6235
    invoke-virtual {v1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 6237
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x8

    .line 6238
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    goto :goto_0

    .line 6239
    :cond_0
    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v2, 0xc

    .line 6240
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    :cond_1
    :goto_0
    const/4 p1, 0x6

    .line 6244
    invoke-direct {p0, v1, p1}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 6247
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x7

    aget-object p1, p1, v1

    const-string v2, "PreviewImageStart"

    .line 6248
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 6249
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v2, v1

    const-string v2, "PreviewImageLength"

    .line 6250
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    .line 6253
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const-string v4, "JPEGInterchangeFormat"

    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6255
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, p1, v3

    const-string v2, "JPEGInterchangeFormatLength"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6262
    :cond_2
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/16 v1, 0x8

    aget-object p1, p1, v1

    const-string v1, "AspectFrame"

    .line 6263
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_6

    .line 6265
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_5

    .line 6266
    array-length v1, p1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    .line 6271
    aget v1, p1, v1

    const/4 v2, 0x0

    aget v3, p1, v2

    if-le v1, v3, :cond_6

    const/4 v4, 0x3

    aget v4, p1, v4

    aget p1, p1, v0

    if-le v4, p1, :cond_6

    sub-int/2addr v1, v3

    add-int/2addr v1, v0

    sub-int/2addr v4, p1

    add-int/2addr v4, v0

    if-ge v1, v4, :cond_4

    add-int/2addr v1, v4

    sub-int v4, v1, v4

    sub-int/2addr v1, v4

    .line 6281
    :cond_4
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6282
    invoke-static {v1, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object p1

    .line 6283
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6284
    invoke-static {v4, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 6286
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v2

    const-string v3, "ImageWidth"

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6287
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, p1, v2

    const-string v1, "ImageLength"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 6267
    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid aspect frame values. frame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6268
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6267
    const-string v0, "ExifInterface"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method private getPngAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 6326
    sget-boolean v2, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 6327
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPngAttributes starting with: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ExifInterface"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6332
    :cond_0
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 6334
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->position()I

    move-result v2

    .line 6337
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->PNG_SIGNATURE:[B

    array-length v3, v3

    invoke-virtual {v0, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-eqz v4, :cond_1

    if-nez v5, :cond_4

    .line 6353
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v6

    .line 6354
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v7

    .line 6355
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->position()I

    move-result v8

    add-int/2addr v8, v6

    add-int/lit8 v8, v8, 0x4

    .line 6358
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->position()I

    move-result v9

    sub-int/2addr v9, v2

    const/16 v10, 0x10

    if-ne v9, v10, :cond_3

    const v9, 0x49484452

    if-ne v7, v9, :cond_2

    goto :goto_1

    .line 6359
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Encountered invalid PNG file--IHDR chunk should appear as the first chunk"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_3
    :goto_1
    const v9, 0x49454e44    # 808164.25f

    if-ne v7, v9, :cond_5

    .line 6415
    :cond_4
    iput-boolean v5, v1, Landroidx/exifinterface/media/ExifInterface;->mFileOnDiskContainsSeparateXmpMarker:Z

    return-void

    :cond_5
    const v9, 0x65584966

    const/4 v10, 0x1

    if-ne v7, v9, :cond_7

    if-nez v4, :cond_7

    .line 6369
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->position()I

    move-result v4

    sub-int/2addr v4, v2

    iput v4, v1, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    .line 6372
    new-array v4, v6, [B

    .line 6373
    invoke-virtual {v0, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 6376
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v6

    .line 6378
    new-instance v9, Ljava/util/zip/CRC32;

    invoke-direct {v9}, Ljava/util/zip/CRC32;-><init>()V

    .line 6379
    invoke-static {v9, v7}, Landroidx/exifinterface/media/ExifInterface;->updateCrcWithInt(Ljava/util/zip/CRC32;I)V

    .line 6380
    invoke-virtual {v9, v4}, Ljava/util/zip/CRC32;->update([B)V

    .line 6381
    invoke-virtual {v9}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v11

    long-to-int v7, v11

    if-ne v7, v6, :cond_6

    .line 6390
    invoke-direct {v1, v4, v3}, Landroidx/exifinterface/media/ExifInterface;->readExifSegment([BI)V

    .line 6391
    invoke-direct {v1}, Landroidx/exifinterface/media/ExifInterface;->validateImages()V

    .line 6393
    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v6, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    invoke-direct {v1, v6}, Landroidx/exifinterface/media/ExifInterface;->setThumbnailData(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    move v4, v10

    goto :goto_2

    .line 6382
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", calculated CRC value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6388
    invoke-virtual {v9}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const v9, 0x69545874

    if-ne v7, v9, :cond_8

    if-nez v5, :cond_8

    .line 6395
    sget-object v7, Landroidx/exifinterface/media/ExifInterface;->PNG_ITXT_XMP_KEYWORD:[B

    array-length v9, v7

    if-lt v6, v9, :cond_8

    .line 6399
    array-length v9, v7

    new-array v11, v9, [B

    .line 6400
    invoke-virtual {v0, v11}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 6401
    invoke-static {v11, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 6402
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->position()I

    move-result v5

    sub-int/2addr v5, v2

    sub-int v13, v6, v9

    .line 6404
    new-array v6, v13, [B

    .line 6405
    invoke-virtual {v0, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 6406
    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    const/4 v12, 0x1

    int-to-long v14, v5

    move-object/from16 v16, v6

    invoke-direct/range {v11 .. v16}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(IIJ[B)V

    iput-object v11, v1, Landroidx/exifinterface/media/ExifInterface;->mXmpFromSeparateMarker:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move v5, v10

    .line 6413
    :cond_8
    :goto_2
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->position()I

    move-result v6

    sub-int/2addr v8, v6

    invoke-virtual {v0, v8}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 6419
    :goto_3
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Encountered corrupt PNG file."

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getRafAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 7

    .line 5946
    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    const-string v1, "ExifInterface"

    if-eqz v0, :cond_0

    .line 5947
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRafAttributes starting with: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v2, 0x54

    .line 5950
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    const/4 v2, 0x4

    .line 5951
    new-array v3, v2, [B

    .line 5952
    new-array v4, v2, [B

    .line 5953
    new-array v2, v2, [B

    .line 5954
    invoke-virtual {p1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 5955
    invoke-virtual {p1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 5956
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 5957
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 5958
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 5959
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 5961
    new-array v4, v4, [B

    .line 5962
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->position()I

    move-result v5

    sub-int v5, v3, v5

    invoke-virtual {p1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 5963
    invoke-virtual {p1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 5966
    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v5, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    const/4 v4, 0x5

    .line 5967
    invoke-direct {p0, v5, v3, v4}, Landroidx/exifinterface/media/ExifInterface;->getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 5970
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->position()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 5973
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 5974
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    if-eqz v0, :cond_1

    .line 5976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "numberOfDirectoryEntry: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 5982
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v4

    .line 5983
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v5

    .line 5984
    sget-object v6, Landroidx/exifinterface/media/ExifInterface;->TAG_RAF_IMAGE_SIZE:Landroidx/exifinterface/media/ExifInterface$ExifTag;

    iget v6, v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    if-ne v4, v6, :cond_2

    .line 5985
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v2

    .line 5986
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result p1

    .line 5987
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5988
    invoke-static {v2, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v3

    .line 5989
    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5990
    invoke-static {p1, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 5991
    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, v0

    const-string v6, "ImageLength"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5992
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v3, v0

    const-string v3, "ImageWidth"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5993
    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 5994
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated to length: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", width: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5998
    :cond_2
    invoke-virtual {p1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private getRawAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V
    .locals 3

    .line 5896
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->parseTiffHeaders(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    const/4 v0, 0x0

    .line 5899
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 5902
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->updateImageSizeValues(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    const/4 v0, 0x5

    .line 5903
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->updateImageSizeValues(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    const/4 v0, 0x4

    .line 5904
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->updateImageSizeValues(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 5907
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->validateImages()V

    .line 5909
    iget p1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 5912
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    const-string v1, "MakerNote"

    .line 5913
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_0

    .line 5916
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;

    iget-object p1, p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v1, p1}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;-><init>([B)V

    .line 5918
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    const/4 p1, 0x6

    .line 5921
    invoke-virtual {v1, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    const/16 p1, 0x9

    .line 5924
    invoke-direct {p0, v1, p1}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 5927
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, v1, p1

    .line 5928
    const-string v1, "ColorSpace"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_0

    .line 5930
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v2, v0

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private getRw2Attributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V
    .locals 4

    .line 6297
    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 6298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRw2Attributes starting with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6301
    :cond_0
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getRawAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    .line 6304
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    const-string v1, "JpgFromRaw"

    .line 6305
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_1

    .line 6307
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    iget-object v2, p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 6309
    iget-wide v2, p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytesOffset:J

    long-to-int p1, v2

    const/4 v2, 0x5

    invoke-direct {p0, v1, p1, v2}, Landroidx/exifinterface/media/ExifInterface;->getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 6314
    :cond_1
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, p1, v0

    const-string v0, "ISO"

    .line 6315
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 6316
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 6317
    const-string v2, "PhotographicSensitivity"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    .line 6320
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private getStandaloneAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)Z
    .locals 3

    .line 6189
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    array-length v1, v0

    new-array v1, v1, [B

    .line 6190
    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 6191
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 6192
    const-string p1, "ExifInterface"

    const-string v0, "Given data is not EXIF-only."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6196
    :cond_0
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readToEnd()[B

    move-result-object p1

    .line 6198
    array-length v0, v0

    iput v0, p0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    .line 6199
    invoke-direct {p0, p1, v2}, Landroidx/exifinterface/media/ExifInterface;->readExifSegment([BI)V

    const/4 p1, 0x1

    return p1
.end method

.method private getWebpAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 5

    .line 6434
    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 6435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWebpAttributes starting with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6439
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 6441
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 6444
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    .line 6447
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    array-length v2, v1

    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 6448
    array-length v1, v1

    add-int/lit8 v1, v1, 0x8

    :goto_0
    const/4 v2, 0x4

    .line 6462
    :try_start_0
    new-array v2, v2, [B

    .line 6463
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 6466
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v3

    add-int/lit8 v1, v1, 0x8

    .line 6469
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_EXIF:[B

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6471
    new-array v0, v3, [B

    .line 6472
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 6477
    sget-object p1, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v0, p1}, Landroidx/exifinterface/media/ExifInterfaceUtils;->startsWith([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6478
    array-length p1, p1

    .line 6479
    invoke-static {v0, p1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    .line 6484
    :cond_1
    :goto_1
    iput v1, p0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    const/4 p1, 0x0

    .line 6485
    invoke-direct {p0, v0, p1}, Landroidx/exifinterface/media/ExifInterface;->readExifSegment([BI)V

    .line 6487
    new-instance p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->setThumbnailData(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    return-void

    .line 6491
    :cond_2
    rem-int/lit8 v2, v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    add-int/2addr v1, v3

    if-ne v1, v0, :cond_4

    return-void

    :cond_4
    if-gt v1, v0, :cond_5

    .line 6502
    invoke-virtual {p1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    goto :goto_0

    .line 6498
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Encountered WebP file with invalid chunk size"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6509
    :goto_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Encountered corrupt WebP file."

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static getXmpHandlingForImageType(I)I
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xf

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x3

    return p0
.end method

.method private static guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;
    .locals 13

    const/4 v0, 0x4

    .line 7967
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x5

    .line 7957
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    .line 7931
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 7913
    const-string v7, ","

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v8, :cond_9

    .line 7914
    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 7915
    aget-object v0, p0, v9

    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 7916
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_0

    return-object v0

    .line 7919
    :cond_0
    :goto_0
    array-length v1, p0

    if-ge v10, v1, :cond_8

    .line 7920
    aget-object v1, p0, v10

    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 7922
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 7923
    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v5

    goto :goto_2

    .line 7924
    :cond_2
    :goto_1
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 7926
    :goto_2
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v5, :cond_4

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    iget-object v7, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v3, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 7927
    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7928
    :cond_3
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_3

    :cond_4
    move v1, v5

    :goto_3
    if-ne v2, v5, :cond_5

    if-ne v1, v5, :cond_5

    .line 7931
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_5
    if-ne v2, v5, :cond_6

    .line 7934
    new-instance v0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    if-ne v1, v5, :cond_7

    .line 7938
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_8
    return-object v0

    .line 7945
    :cond_9
    const-string v7, "/"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    const-wide/16 v11, 0x0

    if-eqz v8, :cond_f

    .line 7946
    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 7947
    array-length v0, p0

    if-ne v0, v3, :cond_e

    .line 7949
    :try_start_0
    aget-object v0, p0, v9

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-long v7, v7

    .line 7950
    aget-object p0, p0, v10

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    double-to-long v9, v9

    cmp-long p0, v7, v11

    if-ltz p0, :cond_d

    cmp-long p0, v9, v11

    if-gez p0, :cond_a

    goto :goto_6

    :cond_a
    const-wide/32 v11, 0x7fffffff

    cmp-long p0, v7, v11

    if-gtz p0, :cond_c

    cmp-long p0, v9, v11

    if-lez p0, :cond_b

    goto :goto_5

    .line 7957
    :cond_b
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 7955
    :cond_c
    :goto_5
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v1, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 7952
    :cond_d
    :goto_6
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v2, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 7962
    :catch_0
    :cond_e
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 7965
    :cond_f
    :try_start_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    cmp-long v3, v1, v11

    if-ltz v3, :cond_10

    const-wide/32 v7, 0xffff

    cmp-long v1, v1, v7

    if-gtz v1, :cond_10

    .line 7967
    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_10
    if-gez v3, :cond_11

    .line 7970
    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 7972
    :cond_11
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 7977
    :catch_1
    :try_start_2
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 7978
    new-instance p0, Landroid/util/Pair;

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    .line 7982
    :catch_2
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private handleThumbnailFromJfif(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .locals 3

    .line 7377
    const-string v0, "JPEGInterchangeFormat"

    .line 7378
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7379
    const-string v1, "JPEGInterchangeFormatLength"

    .line 7380
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 7383
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 7384
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p2

    .line 7386
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 7388
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mOrfMakerNoteOffset:I

    add-int/2addr v0, v1

    :cond_0
    if-lez v0, :cond_2

    if-lez p2, :cond_2

    const/4 v1, 0x1

    .line 7392
    iput-boolean v1, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    .line 7393
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-nez v1, :cond_1

    .line 7397
    new-array v1, p2, [B

    .line 7398
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 7399
    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 7400
    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    .line 7402
    :cond_1
    iput v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailOffset:I

    .line 7403
    iput p2, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    .line 7405
    :cond_2
    sget-boolean p1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_3

    .line 7406
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting thumbnail attributes with offset: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", length: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ExifInterface"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private handleThumbnailFromStrips(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 7415
    const-string v3, " bytes."

    const-string v4, "StripOffsets"

    .line 7416
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7417
    const-string v5, "StripByteCounts"

    .line 7418
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v4, :cond_a

    if-eqz v2, :cond_a

    .line 7421
    iget-object v5, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7422
    invoke-virtual {v4, v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroidx/exifinterface/media/ExifInterfaceUtils;->convertToLongArray(Ljava/lang/Object;)[J

    move-result-object v4

    .line 7423
    iget-object v5, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7424
    invoke-virtual {v2, v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterfaceUtils;->convertToLongArray(Ljava/lang/Object;)[J

    move-result-object v2

    .line 7426
    const-string v5, "ExifInterface"

    if-eqz v4, :cond_9

    array-length v6, v4

    if-nez v6, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz v2, :cond_8

    .line 7430
    array-length v6, v2

    if-nez v6, :cond_1

    goto/16 :goto_3

    .line 7434
    :cond_1
    array-length v6, v4

    array-length v7, v2

    if-eq v6, v7, :cond_2

    .line 7435
    const-string/jumbo v1, "stripOffsets and stripByteCounts should have same length."

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7440
    :cond_2
    array-length v6, v2

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move v10, v7

    :goto_0
    if-ge v10, v6, :cond_3

    aget-wide v11, v2, v10

    add-long/2addr v8, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_3
    long-to-int v6, v8

    .line 7446
    new-array v8, v6, [B

    const/4 v9, 0x1

    .line 7450
    iput-boolean v9, v0, Landroidx/exifinterface/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    iput-boolean v9, v0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnailStrips:Z

    iput-boolean v9, v0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    move v10, v7

    move v11, v10

    move v12, v11

    .line 7451
    :goto_1
    array-length v13, v4

    if-ge v10, v13, :cond_7

    .line 7452
    aget-wide v13, v4, v10

    long-to-int v13, v13

    .line 7453
    aget-wide v14, v2, v10

    long-to-int v14, v14

    .line 7457
    array-length v15, v4

    sub-int/2addr v15, v9

    if-ge v10, v15, :cond_4

    add-int v15, v13, v14

    move/from16 v16, v10

    int-to-long v9, v15

    add-int/lit8 v15, v16, 0x1

    aget-wide v17, v4, v15

    cmp-long v9, v9, v17

    if-eqz v9, :cond_5

    .line 7459
    iput-boolean v7, v0, Landroidx/exifinterface/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    goto :goto_2

    :cond_4
    move/from16 v16, v10

    :cond_5
    :goto_2
    sub-int/2addr v13, v11

    if-gez v13, :cond_6

    .line 7465
    const-string v1, "Invalid strip offset value"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7469
    :cond_6
    :try_start_0
    invoke-virtual {v1, v13}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/2addr v11, v13

    .line 7476
    new-array v9, v14, [B

    .line 7478
    :try_start_1
    invoke-virtual {v1, v9}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/2addr v11, v14

    .line 7486
    invoke-static {v9, v7, v8, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v12, v14

    add-int/lit8 v10, v16, 0x1

    const/4 v9, 0x1

    goto :goto_1

    .line 7480
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7471
    :catch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to skip "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7490
    :cond_7
    iput-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    .line 7492
    iget-boolean v1, v0, Landroidx/exifinterface/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    if-eqz v1, :cond_a

    .line 7493
    aget-wide v1, v4, v7

    long-to-int v1, v1

    iput v1, v0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailOffset:I

    .line 7494
    iput v6, v0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    return-void

    .line 7431
    :cond_8
    :goto_3
    const-string/jumbo v1, "stripByteCounts should not be null or have zero length."

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7427
    :cond_9
    :goto_4
    const-string/jumbo v1, "stripOffsets should not be null or have zero length."

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void
.end method

.method private initForFilename(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 5467
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 5468
    iput-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 5470
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5471
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-static {p1}, Landroidx/exifinterface/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5472
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    .line 5474
    :cond_0
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 5476
    :goto_0
    invoke-direct {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5478
    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_1
    move-exception p1

    :goto_1
    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 5479
    throw p1

    .line 5464
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "filename cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private isHeicOrAvifFormat([B)I
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5585
    :try_start_0
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v2, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5587
    :try_start_1
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v1

    int-to-long v3, v1

    const/4 v1, 0x4

    .line 5588
    new-array v5, v1, [B

    .line 5589
    invoke-virtual {v2, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 5591
    sget-object v6, Landroidx/exifinterface/media/ExifInterface;->HEIF_TYPE_FTYP:[B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_0

    .line 5656
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return v0

    :cond_0
    const-wide/16 v5, 0x1

    cmp-long v7, v3, v5

    const-wide/16 v8, 0x8

    if-nez v7, :cond_1

    .line 5599
    :try_start_2
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readLong()J

    move-result-wide v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v10, 0x10

    cmp-long v7, v3, v10

    if-gez v7, :cond_2

    .line 5656
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return v0

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto/16 :goto_5

    :catch_0
    move-exception p1

    move-object v1, v2

    goto/16 :goto_3

    :cond_1
    move-wide v10, v8

    .line 5608
    :cond_2
    :try_start_3
    array-length v7, p1

    int-to-long v12, v7

    cmp-long v7, v3, v12

    if-lez v7, :cond_3

    .line 5609
    array-length p1, p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    int-to-long v3, p1

    :cond_3
    sub-long/2addr v3, v10

    cmp-long p1, v3, v8

    if-gez p1, :cond_4

    .line 5656
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return v0

    .line 5620
    :cond_4
    :try_start_4
    new-array p1, v1, [B

    const-wide/16 v7, 0x0

    move v1, v0

    move v9, v1

    move v10, v9

    :goto_0
    const-wide/16 v11, 0x4

    .line 5624
    div-long v11, v3, v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    cmp-long v11, v7, v11

    if-gez v11, :cond_c

    .line 5626
    :try_start_5
    invoke-virtual {v2, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    cmp-long v11, v7, v5

    if-nez v11, :cond_5

    goto :goto_2

    .line 5634
    :cond_5
    :try_start_6
    sget-object v11, Landroidx/exifinterface/media/ExifInterface;->HEIF_BRAND_MIF1:[B

    invoke-static {p1, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_6

    move v1, v12

    goto :goto_1

    .line 5636
    :cond_6
    sget-object v11, Landroidx/exifinterface/media/ExifInterface;->HEIF_BRAND_HEIC:[B

    invoke-static {p1, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_7

    move v9, v12

    goto :goto_1

    .line 5638
    :cond_7
    sget-object v11, Landroidx/exifinterface/media/ExifInterface;->HEIF_BRAND_AVIF:[B

    invoke-static {p1, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-nez v11, :cond_8

    sget-object v11, Landroidx/exifinterface/media/ExifInterface;->HEIF_BRAND_AVIS:[B

    .line 5639
    invoke-static {p1, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v11, :cond_9

    :cond_8
    move v10, v12

    :cond_9
    :goto_1
    if-eqz v1, :cond_b

    if-eqz v9, :cond_a

    .line 5656
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    const/16 p1, 0xc

    return p1

    :cond_a
    if-eqz v10, :cond_b

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    const/16 p1, 0xf

    return p1

    :cond_b
    :goto_2
    add-long/2addr v7, v5

    goto :goto_0

    :catch_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return v0

    :cond_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception p1

    .line 5651
    :goto_3
    :try_start_7
    sget-boolean v2, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v2, :cond_d

    .line 5652
    const-string v2, "ExifInterface"

    const-string v3, "Exception parsing HEIF file type box."

    invoke-static {v2, v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_d
    if-eqz v1, :cond_e

    .line 5656
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_e
    :goto_4
    return v0

    :goto_5
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 5659
    :cond_f
    throw p1
.end method

.method private static isJpegFormat([B)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 5558
    :goto_0
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->JPEG_SIGNATURE:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 5559
    aget-byte v3, p0, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isOrfFormat([B)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5675
    :try_start_0
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v2, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5678
    :try_start_1
    invoke-direct {p0, v2}, Landroidx/exifinterface/media/ExifInterface;->readByteOrder(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object p1

    iput-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5680
    invoke-virtual {v2, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 5682
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v1, 0x4f52

    if-eq p1, v1, :cond_0

    const/16 v1, 0x5352

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 5688
    :cond_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return v0

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 5690
    :cond_2
    throw p1

    :catch_1
    :goto_1
    if-eqz v1, :cond_3

    .line 5688
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_3
    return v0
.end method

.method private isPngFormat([B)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 5726
    :goto_0
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->PNG_SIGNATURE:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 5727
    aget-byte v3, p1, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private isRafFormat([B)Z
    .locals 5

    .line 5573
    const-string v0, "FUJIFILMCCD-RAW"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 5574
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 5575
    aget-byte v3, p1, v2

    aget-byte v4, v0, v2

    if-eq v3, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private isRw2Format([B)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5702
    :try_start_0
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v2, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5705
    :try_start_1
    invoke-direct {p0, v2}, Landroidx/exifinterface/media/ExifInterface;->readByteOrder(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object p1

    iput-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5707
    invoke-virtual {v2, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 5709
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v1, 0x55

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    .line 5715
    :cond_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return v0

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 5717
    :cond_1
    throw p1

    :catch_1
    :goto_1
    if-eqz v1, :cond_2

    .line 5715
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_2
    return v0
.end method

.method private static isSeekableFD(Ljava/io/FileDescriptor;)Z
    .locals 3

    .line 4841
    :try_start_0
    sget v0, Landroid/system/OsConstants;->SEEK_CUR:I

    const-wide/16 v1, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    .line 4844
    :catch_0
    sget-boolean p0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 4845
    const-string p0, "ExifInterface"

    const-string v0, "The file descriptor for the given input is not seekable"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isSupportedDataType(Ljava/util/HashMap;)Z
    .locals 5

    .line 7501
    const-string v0, "BitsPerSample"

    .line 7502
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_3

    .line 7504
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 7506
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    .line 7511
    :cond_0
    iget v2, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    .line 7512
    const-string v2, "PhotometricInterpretation"

    .line 7513
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_3

    .line 7515
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7516
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p1

    if-ne p1, v3, :cond_1

    .line 7517
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    .line 7518
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/4 v2, 0x6

    if-ne p1, v2, :cond_3

    .line 7520
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    return v3

    .line 7528
    :cond_3
    sget-boolean p1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_4

    .line 7529
    const-string p1, "ExifInterface"

    const-string v0, "Unsupported data type value"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private static isSupportedFormatForSavingAttributes(I)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private isThumbnail(Ljava/util/HashMap;)Z
    .locals 2

    .line 7537
    const-string v0, "ImageLength"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7538
    const-string v1, "ImageWidth"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 7541
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 7542
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p1

    const/16 v1, 0x200

    if-gt v0, v1, :cond_0

    if-gt p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isWebpFormat([B)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 5740
    :goto_0
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 5741
    aget-byte v3, p1, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 5745
    :goto_1
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 5746
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    array-length v3, v3

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x4

    aget-byte v3, p1, v3

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private loadAttributes(Ljava/io/InputStream;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 4778
    :goto_0
    :try_start_0
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 4779
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :catch_1
    move-exception p1

    goto/16 :goto_4

    .line 4783
    :cond_0
    iget-boolean v1, p0, Landroidx/exifinterface/media/ExifInterface;->mIsExifDataOnly:Z

    if-nez v1, :cond_1

    .line 4784
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x1388

    invoke-direct {v1, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 4785
    invoke-direct {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->getMimeType(Ljava/io/BufferedInputStream;)I

    move-result p1

    iput p1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    move-object p1, v1

    .line 4788
    :cond_1
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterface;->shouldSupportSeek(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4789
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4791
    iget-boolean p1, p0, Landroidx/exifinterface/media/ExifInterface;->mIsExifDataOnly:Z

    if-eqz p1, :cond_2

    .line 4792
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getStandaloneAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_7

    .line 4831
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 4833
    sget-boolean p1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_e

    .line 4834
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->printAttributes()V

    return-void

    .line 4796
    :cond_2
    :try_start_1
    iget p1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/16 v1, 0xc

    if-eq p1, v1, :cond_6

    const/16 v1, 0xf

    if-ne p1, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x7

    if-ne p1, v1, :cond_4

    .line 4799
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getOrfAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    goto :goto_2

    :cond_4
    const/16 v1, 0xa

    if-ne p1, v1, :cond_5

    .line 4801
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getRw2Attributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    goto :goto_2

    .line 4803
    :cond_5
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getRawAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    goto :goto_2

    .line 4797
    :cond_6
    :goto_1
    invoke-direct {p0, v0, p1}, Landroidx/exifinterface/media/ExifInterface;->getHeifAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 4807
    :cond_7
    :goto_2
    iget p1, p0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 4808
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->setThumbnailData(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_3

    .line 4810
    :cond_8
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v1, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4811
    iget p1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/4 v2, 0x4

    if-ne p1, v2, :cond_9

    .line 4812
    invoke-direct {p0, v1, v0, v0}, Landroidx/exifinterface/media/ExifInterface;->getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V

    goto :goto_3

    :cond_9
    const/16 v0, 0xd

    if-ne p1, v0, :cond_a

    .line 4815
    invoke-direct {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->getPngAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_3

    :cond_a
    const/16 v0, 0x9

    if-ne p1, v0, :cond_b

    .line 4817
    invoke-direct {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->getRafAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_3

    :cond_b
    const/16 v0, 0xe

    if-ne p1, v0, :cond_c

    .line 4819
    invoke-direct {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->getWebpAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4831
    :cond_c
    :goto_3
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 4833
    sget-boolean p1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_e

    .line 4834
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->printAttributes()V

    return-void

    .line 4825
    :goto_4
    :try_start_2
    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_d

    .line 4826
    const-string v1, "ExifInterface"

    const-string v2, "Invalid image: ExifInterface got an unsupported image format file (ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface."

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4831
    :cond_d
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->addDefaultValuesForCompatibility()V

    if-eqz v0, :cond_e

    .line 4834
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->printAttributes()V

    :cond_e
    return-void

    .line 4831
    :goto_5
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 4833
    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 4834
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->printAttributes()V

    .line 4836
    :cond_f
    throw p1
.end method

.method private parseTiffHeaders(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 3

    .line 7059
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->readByteOrder(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7061
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 7064
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v0

    .line 7065
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 7066
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid start code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7070
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_3

    add-int/lit8 v0, v0, -0x8

    if-lez v0, :cond_2

    .line 7076
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    :cond_2
    return-void

    .line 7072
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid first Ifd offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private printAttributes()V
    .locals 7

    const/4 v0, 0x0

    .line 4853
    :goto_0
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 4854
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The size of tag group["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExifInterface"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4855
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4856
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 4857
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tagName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", tagType: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", tagValue: \'"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4858
    invoke-virtual {v4, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4857
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method private readByteOrder(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;
    .locals 3

    .line 7040
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result p1

    const/16 v0, 0x4949

    .line 7041
    const-string v1, "ExifInterface"

    if-eq p1, v0, :cond_2

    const/16 v0, 0x4d4d

    if-ne p1, v0, :cond_1

    .line 7048
    sget-boolean p1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 7049
    const-string/jumbo p1, "readExifSegment: Byte Align MM"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7051
    :cond_0
    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object p1

    .line 7053
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid byte order: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7043
    :cond_2
    sget-boolean p1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_3

    .line 7044
    const-string/jumbo p1, "readExifSegment: Byte Align II"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7046
    :cond_3
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    return-object p1
.end method

.method private readExifSegment([BI)V
    .locals 1

    .line 7000
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;-><init>([B)V

    .line 7004
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->parseTiffHeaders(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 7007
    invoke-direct {p0, v0, p2}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    return-void
.end method

.method private readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 7084
    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->position()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7087
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v3

    .line 7088
    sget-boolean v4, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    const-string v5, "ExifInterface"

    if-eqz v4, :cond_0

    .line 7089
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "numberOfDirectoryEntry: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-gtz v3, :cond_1

    goto/16 :goto_10

    :cond_1
    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x5

    if-ge v6, v3, :cond_25

    .line 7098
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v12

    .line 7099
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v13

    .line 7100
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v14

    .line 7102
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->position()I

    move-result v15

    const-wide/16 v16, 0x0

    int-to-long v9, v15

    const-wide/16 v18, 0x4

    add-long v9, v9, v18

    .line 7105
    sget-object v15, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    aget-object v15, v15, v2

    const/16 v20, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 7107
    sget-boolean v15, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    const/16 v21, 0x1

    const/16 v22, 0x2

    const/4 v8, 0x3

    if-eqz v15, :cond_3

    .line 7109
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x4

    if-eqz v4, :cond_2

    .line 7110
    iget-object v11, v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    :goto_1
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v23, v7, v20

    aput-object v24, v7, v21

    aput-object v11, v7, v22

    aput-object v26, v7, v8

    aput-object v27, v7, v25

    .line 7108
    const-string v11, "ifdType: %d, tagNumber: %d, tagName: %s, dataFormat: %d, numberOfComponents: %d"

    invoke-static {v11, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    const/16 v25, 0x4

    :goto_2
    const/4 v7, 0x7

    if-nez v4, :cond_5

    if-eqz v15, :cond_4

    .line 7117
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skip the tag entry since tag number is not defined: "

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    move/from16 v24, v6

    goto/16 :goto_7

    :cond_5
    if-lez v13, :cond_6

    .line 7119
    sget-object v8, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    array-length v11, v8

    if-lt v13, v11, :cond_7

    :cond_6
    move/from16 v24, v6

    goto :goto_6

    .line 7123
    :cond_7
    invoke-virtual {v4, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;->isFormatCompatible(I)Z

    move-result v11

    if-nez v11, :cond_8

    if-eqz v15, :cond_4

    .line 7125
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skip the tag entry since data format ("

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    aget-object v11, v11, v13

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ") is unexpected for tag: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    if-ne v13, v7, :cond_9

    .line 7131
    iget v13, v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    :cond_9
    move-object/from16 v24, v8

    int-to-long v7, v14

    .line 7133
    aget v11, v24, v13

    move/from16 v24, v6

    move-wide/from16 v27, v7

    int-to-long v6, v11

    mul-long v7, v27, v6

    cmp-long v6, v7, v16

    if-ltz v6, :cond_b

    const-wide/32 v27, 0x7fffffff

    cmp-long v6, v7, v27

    if-lez v6, :cond_a

    goto :goto_4

    :cond_a
    move/from16 v6, v21

    goto :goto_8

    :cond_b
    :goto_4
    if-eqz v15, :cond_c

    .line 7136
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skip the tag entry since the number of components is invalid: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_5
    move/from16 v6, v20

    goto :goto_8

    :goto_6
    if-eqz v15, :cond_d

    .line 7121
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skip the tag entry since data format is invalid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_7
    move-wide/from16 v7, v16

    goto :goto_5

    :goto_8
    if-nez v6, :cond_e

    .line 7144
    invoke-virtual {v1, v9, v10}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    move/from16 v27, v3

    goto/16 :goto_f

    :cond_e
    cmp-long v6, v7, v18

    .line 7150
    const-string v11, "Compression"

    if-lez v6, :cond_12

    .line 7151
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v6

    move/from16 v27, v3

    if-eqz v15, :cond_f

    .line 7153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v12

    const-string/jumbo v12, "seek to data offset: "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_f
    move/from16 v18, v12

    .line 7155
    :goto_9
    iget v3, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/4 v12, 0x7

    if-ne v3, v12, :cond_10

    .line 7156
    const-string v3, "MakerNote"

    iget-object v12, v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 7158
    iput v6, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfMakerNoteOffset:I

    :cond_10
    move/from16 v19, v14

    move/from16 v26, v15

    goto :goto_a

    :cond_11
    const/4 v3, 0x6

    if-ne v2, v3, :cond_10

    .line 7159
    const-string v12, "ThumbnailImage"

    iget-object v3, v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 7160
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 7162
    iput v6, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfThumbnailOffset:I

    .line 7163
    iput v14, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfThumbnailLength:I

    .line 7165
    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    const/4 v12, 0x6

    .line 7166
    invoke-static {v12, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v3

    .line 7167
    iget v12, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfThumbnailOffset:I

    move/from16 v19, v14

    move/from16 v26, v15

    int-to-long v14, v12

    iget-object v12, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7168
    invoke-static {v14, v15, v12}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v12

    .line 7169
    iget v14, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfThumbnailLength:I

    int-to-long v14, v14

    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7170
    invoke-static {v14, v15, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v2

    .line 7172
    iget-object v14, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v14, v14, v25

    invoke-virtual {v14, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7173
    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v25

    const-string v14, "JPEGInterchangeFormat"

    invoke-virtual {v3, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7175
    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v25

    const-string v12, "JPEGInterchangeFormatLength"

    invoke-virtual {v3, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a
    int-to-long v2, v6

    .line 7179
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    goto :goto_b

    :cond_12
    move/from16 v27, v3

    move/from16 v18, v12

    move/from16 v19, v14

    move/from16 v26, v15

    .line 7183
    :goto_b
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v26, :cond_13

    .line 7185
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "nextIfdType: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " byteCount: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    const/16 v3, 0x8

    if-eqz v2, :cond_1e

    const/4 v6, 0x3

    if-eq v13, v6, :cond_17

    move/from16 v6, v25

    if-eq v13, v6, :cond_16

    if-eq v13, v3, :cond_15

    const/16 v3, 0x9

    if-eq v13, v3, :cond_14

    const/16 v3, 0xd

    if-eq v13, v3, :cond_14

    const-wide/16 v6, -0x1

    goto :goto_d

    .line 7206
    :cond_14
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v3

    :goto_c
    int-to-long v6, v3

    goto :goto_d

    .line 7197
    :cond_15
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v3

    goto :goto_c

    .line 7201
    :cond_16
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v6

    goto :goto_d

    .line 7193
    :cond_17
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v3

    goto :goto_c

    :goto_d
    if-eqz v26, :cond_18

    .line 7215
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move/from16 v8, v22

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v20

    aput-object v4, v8, v21

    const-string v3, "Offset: %d, tagName: %s"

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    cmp-long v3, v6, v16

    .line 7221
    const-string v4, ")"

    const/4 v8, -0x1

    if-lez v3, :cond_1b

    .line 7222
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->length()I

    move-result v3

    if-eq v3, v8, :cond_19

    .line 7223
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->length()I

    move-result v3

    int-to-long v11, v3

    cmp-long v3, v6, v11

    if-gez v3, :cond_1b

    .line 7224
    :cond_19
    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    long-to-int v8, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 7225
    invoke-virtual {v1, v6, v7}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 7226
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    goto :goto_e

    :cond_1a
    if-eqz v26, :cond_1d

    .line 7229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skip jump into the IFD since it has already been read: IfdType "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (at "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_1b
    if-eqz v26, :cond_1d

    .line 7235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip jump into the IFD since its offset is invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7237
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->length()I

    move-result v3

    if-eq v3, v8, :cond_1c

    .line 7238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (total length: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->length()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7240
    :cond_1c
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7244
    :cond_1d
    :goto_e
    invoke-virtual {v1, v9, v10}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    goto/16 :goto_f

    .line 7248
    :cond_1e
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->position()I

    move-result v2

    iget v6, v0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    add-int/2addr v2, v6

    long-to-int v6, v7

    .line 7249
    new-array v6, v6, [B

    .line 7250
    invoke-virtual {v1, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 7251
    new-instance v14, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    int-to-long v7, v2

    move-wide/from16 v17, v7

    move v15, v13

    move/from16 v16, v19

    move-object/from16 v19, v6

    invoke-direct/range {v14 .. v19}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(IIJ[B)V

    .line 7253
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    iget-object v6, v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v2, v6, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7258
    const-string v2, "DNGVersion"

    iget-object v6, v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v6, 0x3

    .line 7259
    iput v6, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 7265
    :cond_1f
    const-string v2, "Make"

    iget-object v6, v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "Model"

    iget-object v6, v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    :cond_20
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7266
    invoke-virtual {v14, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "PENTAX"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    :cond_21
    iget-object v2, v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 7267
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7268
    invoke-virtual {v14, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    const v4, 0xffff

    if-ne v2, v4, :cond_23

    .line 7269
    :cond_22
    iput v3, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 7273
    :cond_23
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->position()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v2, v9

    if-eqz v2, :cond_24

    .line 7274
    invoke-virtual {v1, v9, v10}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    :cond_24
    :goto_f
    add-int/lit8 v6, v24, 0x1

    int-to-short v6, v6

    move/from16 v2, p2

    move/from16 v3, v27

    goto/16 :goto_0

    :cond_25
    const-wide/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    .line 7278
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    .line 7279
    sget-boolean v3, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v3, :cond_26

    .line 7280
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move/from16 v6, v21

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v20

    const-string/jumbo v4, "nextIfdOffset: %d"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    int-to-long v8, v2

    cmp-long v4, v8, v16

    if-lez v4, :cond_29

    .line 7286
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 7287
    invoke-virtual {v1, v8, v9}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 7288
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v6, 0x4

    aget-object v2, v2, v6

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 7290
    invoke-direct {v0, v1, v6}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    return-void

    .line 7291
    :cond_27
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 7292
    invoke-direct {v0, v1, v7}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    return-void

    :cond_28
    if-eqz v3, :cond_2a

    .line 7296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop reading file since re-reading an IFD may cause an infinite loop: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_29
    if-eqz v3, :cond_2a

    .line 7302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop reading file since a wrong offset may cause an infinite loop: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    :goto_10
    return-void
.end method

.method private removeAttribute(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 4766
    :goto_0
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 4767
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 8403
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8404
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8405
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    .line 8406
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 8405
    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8407
    iget-object p3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, p3, p1

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private retrieveJpegImageSize(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V
    .locals 4

    .line 7317
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "ImageLength"

    .line 7318
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7319
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "ImageWidth"

    .line 7320
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 7324
    :cond_0
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "JPEGInterchangeFormat"

    .line 7325
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7326
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "JPEGInterchangeFormatLength"

    .line 7327
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 7330
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7331
    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 7332
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7333
    invoke-virtual {v0, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    int-to-long v2, v1

    .line 7336
    invoke-virtual {p1, v2, v3}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 7337
    new-array v0, v0, [B

    .line 7338
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 7339
    new-instance p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    invoke-direct {p0, p1, v1, p2}, Landroidx/exifinterface/media/ExifInterface;->getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V

    :cond_1
    return-void
.end method

.method private saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 12

    .line 6517
    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 6518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "saveJpegAttributes starting with (inputStream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outputStream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6521
    :cond_0
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 6522
    new-instance p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p1, p2, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 6524
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result p2

    const-string v1, "Invalid marker"

    const/4 v2, -0x1

    if-ne p2, v2, :cond_f

    .line 6527
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 6528
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result p2

    const/16 v3, -0x28

    if-ne p2, v3, :cond_e

    .line 6531
    invoke-virtual {p1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 6534
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    const/16 p2, -0x1f

    .line 6535
    invoke-virtual {p1, p2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 6536
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->writeExifSegment(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;)I

    move-result v3

    iput v3, p0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    .line 6538
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mXmpFromSeparateMarker:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v3, :cond_1

    .line 6541
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 6542
    invoke-virtual {p1, p2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 6543
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_XMP_APP1:[B

    array-length v4, v3

    add-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mXmpFromSeparateMarker:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    iget-object v5, v5, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v5, v5

    add-int/2addr v4, v5

    .line 6544
    invoke-virtual {p1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 6545
    invoke-virtual {p1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 6546
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mXmpFromSeparateMarker:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    iget-object v3, v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-virtual {p1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    const/4 v3, 0x1

    .line 6547
    iput-boolean v3, p0, Landroidx/exifinterface/media/ExifInterface;->mFileOnDiskContainsSeparateXmpMarker:Z

    :cond_1
    const/16 v3, 0x1000

    .line 6550
    new-array v4, v3, [B

    .line 6553
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v5

    if-ne v5, v2, :cond_d

    .line 6559
    :cond_3
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v5

    if-eq v5, v2, :cond_3

    const/16 v6, -0x27

    if-eq v5, v6, :cond_c

    const/16 v6, -0x26

    if-eq v5, v6, :cond_c

    .line 6561
    const-string v6, "Invalid length"

    const/4 v7, 0x0

    if-eq v5, p2, :cond_5

    .line 6612
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 6613
    invoke-virtual {p1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 6614
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v5

    .line 6615
    invoke-virtual {p1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    add-int/lit8 v5, v5, -0x2

    if-ltz v5, :cond_4

    :goto_1
    if-lez v5, :cond_2

    .line 6622
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 6621
    invoke-virtual {v0, v4, v7, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([BII)I

    move-result v6

    if-ltz v6, :cond_2

    .line 6623
    invoke-virtual {p1, v4, v7, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    sub-int/2addr v5, v6

    goto :goto_1

    .line 6618
    :cond_4
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6563
    :cond_5
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v8

    add-int/lit8 v9, v8, -0x2

    if-ltz v9, :cond_b

    .line 6570
    sget-object v6, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_XMP_APP1:[B

    array-length v10, v6

    if-lt v9, v10, :cond_6

    .line 6571
    array-length v10, v6

    new-array v10, v10, [B

    goto :goto_2

    .line 6572
    :cond_6
    sget-object v10, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    array-length v11, v10

    if-lt v9, v11, :cond_7

    .line 6573
    array-length v10, v10

    new-array v10, v10, [B

    goto :goto_2

    :cond_7
    const/4 v10, 0x0

    :goto_2
    if-eqz v10, :cond_9

    .line 6578
    invoke-virtual {v0, v10}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 6579
    sget-object v11, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v10, v11}, Landroidx/exifinterface/media/ExifInterfaceUtils;->startsWith([B[B)Z

    move-result v11

    if-nez v11, :cond_8

    .line 6580
    invoke-static {v10, v6}, Landroidx/exifinterface/media/ExifInterfaceUtils;->startsWith([B[B)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 6582
    :cond_8
    array-length v5, v10

    sub-int/2addr v9, v5

    invoke-virtual {v0, v9}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    goto :goto_0

    .line 6587
    :cond_9
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 6588
    invoke-virtual {p1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 6589
    invoke-virtual {p1, v8}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    if-eqz v10, :cond_a

    .line 6591
    array-length v5, v10

    sub-int/2addr v9, v5

    .line 6592
    invoke-virtual {p1, v10}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    :cond_a
    :goto_3
    if-lez v9, :cond_2

    .line 6596
    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 6595
    invoke-virtual {v0, v4, v7, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([BII)I

    move-result v5

    if-ltz v5, :cond_2

    .line 6597
    invoke-virtual {p1, v4, v7, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    sub-int/2addr v9, v5

    goto :goto_3

    .line 6565
    :cond_b
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6604
    :cond_c
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 6605
    invoke-virtual {p1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 6607
    invoke-static {v0, p1}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    return-void

    .line 6555
    :cond_d
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6529
    :cond_e
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6525
    :cond_f
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private savePngAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 8

    .line 6634
    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 6635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "savePngAttributes starting with (inputStream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outputStream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6638
    :cond_0
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 6639
    new-instance p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p1, p2, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 6643
    sget-object p2, Landroidx/exifinterface/media/ExifInterface;->PNG_SIGNATURE:[B

    array-length p2, p2

    invoke-static {v0, p1, p2}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 6648
    iget-object p2, p0, Landroidx/exifinterface/media/ExifInterface;->mXmpFromSeparateMarker:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_1

    iget-boolean p2, p0, Landroidx/exifinterface/media/ExifInterface;->mFileOnDiskContainsSeparateXmpMarker:Z

    if-eqz p2, :cond_6

    :cond_1
    move p2, v1

    :cond_2
    :goto_0
    if-nez v1, :cond_4

    if-eqz p2, :cond_3

    goto :goto_1

    .line 6700
    :cond_3
    invoke-static {v0, p1}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    return-void

    .line 6651
    :cond_4
    :goto_1
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v3

    .line 6652
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v4

    const v5, 0x49484452

    if-ne v4, v5, :cond_7

    .line 6654
    invoke-virtual {p1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 6655
    invoke-virtual {p1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    add-int/lit8 v3, v3, 0x4

    .line 6656
    invoke-static {v0, p1, v3}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 6657
    iget v3, p0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    if-nez v3, :cond_5

    .line 6660
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->writePngExifChunk(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;)V

    move v1, v2

    .line 6663
    :cond_5
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mXmpFromSeparateMarker:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroidx/exifinterface/media/ExifInterface;->mFileOnDiskContainsSeparateXmpMarker:Z

    if-nez v3, :cond_2

    .line 6664
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->writePngXmpItxtChunk(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;)V

    :cond_6
    :goto_2
    move p2, v2

    goto :goto_0

    :cond_7
    const v5, 0x65584966

    if-ne v4, v5, :cond_8

    if-eqz v1, :cond_8

    .line 6669
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->writePngExifChunk(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;)V

    add-int/lit8 v3, v3, 0x4

    .line 6670
    invoke-virtual {v0, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    move v1, v2

    goto :goto_0

    :cond_8
    const v5, 0x69545874

    if-ne v4, v5, :cond_b

    .line 6673
    sget-object v5, Landroidx/exifinterface/media/ExifInterface;->PNG_ITXT_XMP_KEYWORD:[B

    array-length v6, v5

    if-lt v3, v6, :cond_b

    .line 6676
    array-length v6, v5

    new-array v7, v6, [B

    .line 6677
    invoke-virtual {v0, v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    sub-int v6, v3, v6

    add-int/lit8 v6, v6, 0x4

    .line 6679
    invoke-static {v7, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 6680
    iget-object p2, p0, Landroidx/exifinterface/media/ExifInterface;->mXmpFromSeparateMarker:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz p2, :cond_9

    .line 6681
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->writePngXmpItxtChunk(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;)V

    .line 6683
    :cond_9
    invoke-virtual {v0, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    goto :goto_2

    .line 6687
    :cond_a
    invoke-virtual {p1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 6688
    invoke-virtual {p1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 6689
    invoke-virtual {p1, v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 6690
    invoke-static {v0, p1, v6}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    goto :goto_0

    .line 6694
    :cond_b
    invoke-virtual {p1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 6695
    invoke-virtual {p1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    add-int/lit8 v3, v3, 0x4

    .line 6696
    invoke-static {v0, p1, v3}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    goto/16 :goto_0
.end method

.method private saveWebpAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 6767
    sget-boolean v3, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 6768
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "saveWebpAttributes starting with (inputStream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", outputStream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ExifInterface"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6771
    :cond_0
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v3, v0, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    .line 6773
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;

    invoke-direct {v0, v2, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 6777
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    array-length v5, v2

    invoke-static {v3, v0, v5}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 6778
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v5

    .line 6779
    sget-object v6, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    array-length v7, v6

    invoke-virtual {v3, v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    const/4 v7, 0x0

    .line 6785
    :try_start_0
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6786
    :try_start_1
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;

    invoke-direct {v9, v8, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 6789
    iget v4, v1, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    const/4 v11, 0x4

    const/16 v12, 0x8

    if-eqz v4, :cond_2

    .line 6792
    array-length v2, v2

    add-int/2addr v2, v11

    array-length v6, v6

    add-int/2addr v2, v6

    sub-int/2addr v4, v2

    sub-int/2addr v4, v12

    .line 6794
    invoke-static {v3, v9, v4}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 6799
    invoke-virtual {v3, v11}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 6800
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    .line 6803
    rem-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 6806
    :cond_1
    invoke-virtual {v3, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 6809
    invoke-direct {v1, v9}, Landroidx/exifinterface/media/ExifInterface;->writeExifSegment(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;)I

    move-result v2

    :goto_0
    move/from16 p2, v12

    :goto_1
    const/16 v16, -0x1

    goto/16 :goto_c

    :catchall_0
    move-exception v0

    move-object v7, v8

    goto/16 :goto_e

    :catch_0
    move-exception v0

    move-object v7, v8

    goto/16 :goto_d

    .line 6812
    :cond_2
    new-array v2, v11, [B

    .line 6813
    invoke-virtual {v3, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 6815
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8X:[B

    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v6, :cond_7

    .line 6817
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    .line 6819
    rem-int/lit8 v6, v2, 0x2

    if-ne v6, v14, :cond_3

    add-int/lit8 v6, v2, 0x1

    goto :goto_2

    :cond_3
    move v6, v2

    :goto_2
    new-array v6, v6, [B

    .line 6820
    invoke-virtual {v3, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 6823
    aget-byte v15, v6, v13

    or-int/2addr v15, v12

    int-to-byte v15, v15

    aput-byte v15, v6, v13

    shr-int/2addr v15, v14

    and-int/2addr v15, v14

    if-ne v15, v14, :cond_4

    move v13, v14

    .line 6829
    :cond_4
    invoke-virtual {v9, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 6830
    invoke-virtual {v9, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 6831
    invoke-virtual {v9, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    if-eqz v13, :cond_6

    .line 6841
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_ANIM:[B

    invoke-direct {v1, v3, v9, v2, v7}, Landroidx/exifinterface/media/ExifInterface;->copyChunksUpToGivenChunkType(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;[B[B)V

    .line 6845
    :goto_3
    new-array v2, v11, [B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6848
    :try_start_2
    invoke-virtual {v3, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 6849
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_ANMF:[B

    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    xor-int/2addr v4, v14

    goto :goto_4

    :catch_1
    move v4, v14

    :goto_4
    if-eqz v4, :cond_5

    .line 6854
    :try_start_3
    invoke-direct {v1, v9}, Landroidx/exifinterface/media/ExifInterface;->writeExifSegment(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;)I

    move-result v2

    goto :goto_0

    .line 6857
    :cond_5
    invoke-direct {v1, v3, v9, v2}, Landroidx/exifinterface/media/ExifInterface;->copyWebPChunk(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;[B)V

    goto :goto_3

    .line 6861
    :cond_6
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8:[B

    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    invoke-direct {v1, v3, v9, v2, v4}, Landroidx/exifinterface/media/ExifInterface;->copyChunksUpToGivenChunkType(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;[B[B)V

    .line 6863
    invoke-direct {v1, v9}, Landroidx/exifinterface/media/ExifInterface;->writeExifSegment(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;)I

    move-result v2

    goto :goto_0

    .line 6865
    :cond_7
    sget-object v6, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8:[B

    invoke-static {v2, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-nez v7, :cond_9

    sget-object v7, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    .line 6866
    invoke-static {v2, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_5

    :cond_8
    move/from16 p2, v12

    const/4 v2, -0x1

    goto/16 :goto_1

    .line 6867
    :cond_9
    :goto_5
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v7

    .line 6870
    rem-int/lit8 v15, v7, 0x2

    if-ne v15, v14, :cond_a

    add-int/lit8 v15, v7, 0x1

    :goto_6
    move/from16 p1, v11

    goto :goto_7

    :cond_a
    move v15, v7

    goto :goto_6

    :goto_7
    const/4 v11, 0x3

    move/from16 p2, v12

    .line 6880
    new-array v12, v11, [B

    .line 6882
    invoke-static {v2, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v16

    move/from16 v17, v13

    const/16 v13, 0x2f

    if-eqz v16, :cond_c

    .line 6883
    invoke-virtual {v3, v12}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 6886
    new-array v11, v11, [B

    .line 6887
    invoke-virtual {v3, v11}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 6888
    sget-object v14, Landroidx/exifinterface/media/ExifInterface;->WEBP_VP8_SIGNATURE:[B

    invoke-static {v14, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 6893
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v11

    and-int/lit16 v14, v11, 0x3fff

    const/16 v16, -0x1

    shr-int/lit8 v10, v11, 0x10

    and-int/lit16 v10, v10, 0x3fff

    add-int/lit8 v15, v15, -0xa

    move/from16 v20, v15

    move v15, v14

    move/from16 v14, v17

    goto :goto_9

    .line 6889
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Error checking VP8 signature"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const/16 v16, -0x1

    .line 6897
    sget-object v10, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    invoke-static {v2, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 6899
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v10

    if-ne v10, v13, :cond_e

    .line 6905
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v11

    and-int/lit16 v10, v11, 0x3fff

    add-int/2addr v10, v14

    const v18, 0xfffc000

    and-int v18, v11, v18

    ushr-int/lit8 v18, v18, 0xe

    add-int/lit8 v18, v18, 0x1

    const/high16 v19, 0x10000000

    and-int v19, v11, v19

    if-eqz v19, :cond_d

    goto :goto_8

    :cond_d
    move/from16 v14, v17

    :goto_8
    add-int/lit8 v15, v15, -0x5

    move/from16 v20, v15

    move v15, v10

    move/from16 v10, v18

    goto :goto_9

    .line 6901
    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Error checking VP8L signature"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    move/from16 v20, v15

    move/from16 v10, v17

    move v11, v10

    move v14, v11

    move v15, v14

    .line 6916
    :goto_9
    invoke-virtual {v9, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    const/16 v4, 0xa

    .line 6917
    invoke-virtual {v9, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 6918
    new-array v4, v4, [B

    if-eqz v14, :cond_10

    .line 6921
    aget-byte v14, v4, v17

    or-int/lit8 v14, v14, 0x10

    int-to-byte v14, v14

    aput-byte v14, v4, v17

    .line 6924
    :cond_10
    aget-byte v14, v4, v17

    or-int/lit8 v14, v14, 0x8

    int-to-byte v14, v14

    aput-byte v14, v4, v17

    add-int/lit8 v15, v15, -0x1

    add-int/lit8 v10, v10, -0x1

    int-to-byte v14, v15

    .line 6928
    aput-byte v14, v4, p1

    shr-int/lit8 v14, v15, 0x8

    int-to-byte v14, v14

    const/16 v17, 0x5

    .line 6929
    aput-byte v14, v4, v17

    shr-int/lit8 v14, v15, 0x10

    int-to-byte v14, v14

    const/4 v15, 0x6

    .line 6930
    aput-byte v14, v4, v15

    const/4 v14, 0x7

    int-to-byte v15, v10

    .line 6931
    aput-byte v15, v4, v14

    shr-int/lit8 v14, v10, 0x8

    int-to-byte v14, v14

    .line 6932
    aput-byte v14, v4, p2

    shr-int/lit8 v10, v10, 0x10

    int-to-byte v10, v10

    const/16 v14, 0x9

    .line 6933
    aput-byte v10, v4, v14

    .line 6934
    invoke-virtual {v9, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 6937
    invoke-virtual {v9, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 6938
    invoke-virtual {v9, v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 6939
    invoke-static {v2, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 6940
    invoke-virtual {v9, v12}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 6941
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->WEBP_VP8_SIGNATURE:[B

    invoke-virtual {v9, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 6942
    invoke-virtual {v9, v11}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    :cond_11
    :goto_a
    move/from16 v15, v20

    goto :goto_b

    .line 6943
    :cond_12
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 6944
    invoke-virtual {v9, v13}, Ljava/io/OutputStream;->write(I)V

    .line 6945
    invoke-virtual {v9, v11}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    goto :goto_a

    .line 6947
    :goto_b
    invoke-static {v3, v9, v15}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 6950
    invoke-direct {v1, v9}, Landroidx/exifinterface/media/ExifInterface;->writeExifSegment(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;)I

    move-result v2

    :goto_c
    add-int/lit8 v5, v5, 0x8

    .line 6955
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->position()I

    move-result v4

    sub-int/2addr v5, v4

    .line 6956
    invoke-static {v3, v9, v5}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 6959
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    sget-object v5, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    array-length v6, v5

    add-int/2addr v4, v6

    invoke-virtual {v0, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 6961
    invoke-virtual {v0, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    move/from16 v4, v16

    if-eq v2, v4, :cond_13

    .line 6963
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->size()I

    move-result v4

    add-int/2addr v4, v2

    iput v4, v1, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    .line 6965
    :cond_13
    invoke-virtual {v8, v0}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 6967
    invoke-static {v3, v0}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6971
    invoke-static {v8}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_1
    move-exception v0

    goto :goto_e

    :catch_2
    move-exception v0

    .line 6969
    :goto_d
    :try_start_4
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to save WebP file"

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 6971
    :goto_e
    invoke-static {v7}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 6972
    throw v0
.end method

.method private setThumbnailData(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 4

    .line 7347
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 7349
    const-string v1, "Compression"

    .line 7350
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    const/4 v2, 0x6

    if-eqz v1, :cond_3

    .line 7352
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    iput v1, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailCompression:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 7355
    :cond_0
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->handleThumbnailFromJfif(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    return-void

    .line 7360
    :cond_1
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->isSupportedDataType(Ljava/util/HashMap;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7361
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->handleThumbnailFromStrips(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    :cond_2
    :goto_0
    return-void

    .line 7368
    :cond_3
    iput v2, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailCompression:I

    .line 7369
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->handleThumbnailFromJfif(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    return-void
.end method

.method private static shouldSupportSeek(I)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private swapBasedOnImageSize(II)V
    .locals 6

    .line 8363
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const-string v1, "ExifInterface"

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 8370
    :cond_0
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    .line 8371
    const-string v2, "ImageLength"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 8372
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, p1

    .line 8373
    const-string v4, "ImageWidth"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 8374
    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, p2

    .line 8375
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 8376
    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, p2

    .line 8377
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_4

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_3

    if-nez v4, :cond_2

    goto :goto_0

    .line 8388
    :cond_2
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 8389
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 8390
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    .line 8391
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    if-ge v0, v2, :cond_6

    if-ge v1, v3, :cond_6

    .line 8395
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v0, p1

    .line 8396
    aget-object v2, v0, p2

    aput-object v2, v0, p1

    .line 8397
    aput-object v1, v0, p2

    return-void

    .line 8384
    :cond_3
    :goto_0
    sget-boolean p1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_6

    .line 8385
    const-string p1, "Second image does not contain valid size information"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8380
    :cond_4
    :goto_1
    sget-boolean p1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_6

    .line 8381
    const-string p1, "First image does not contain valid size information"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8364
    :cond_5
    :goto_2
    sget-boolean p1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_6

    .line 8365
    const-string p1, "Cannot perform swap since only one image data exists"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method private static updateCrcWithInt(Ljava/util/zip/CRC32;I)V
    .locals 1

    ushr-int/lit8 v0, p1, 0x18

    .line 6424
    invoke-virtual {p0, v0}, Ljava/util/zip/CRC32;->update(I)V

    ushr-int/lit8 v0, p1, 0x10

    .line 6425
    invoke-virtual {p0, v0}, Ljava/util/zip/CRC32;->update(I)V

    ushr-int/lit8 v0, p1, 0x8

    .line 6426
    invoke-virtual {p0, v0}, Ljava/util/zip/CRC32;->update(I)V

    .line 6427
    invoke-virtual {p0, p1}, Ljava/util/zip/CRC32;->update(I)V

    return-void
.end method

.method private updateImageSizeValues(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V
    .locals 9

    .line 7609
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "DefaultCropSize"

    .line 7610
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7612
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "SensorTopBorder"

    .line 7613
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7614
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    const-string v3, "SensorLeftBorder"

    .line 7615
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7616
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, p2

    const-string v4, "SensorBottomBorder"

    .line 7617
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7618
    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, p2

    const-string v5, "SensorRightBorder"

    .line 7619
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7621
    const-string v5, "ImageLength"

    const-string v6, "ImageWidth"

    if-eqz v0, :cond_5

    .line 7624
    iget p1, v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    const/4 v1, 0x5

    const-string v2, "Invalid crop size values. cropSize="

    const-string v3, "ExifInterface"

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-ne p1, v1, :cond_2

    .line 7625
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7626
    invoke-virtual {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/exifinterface/media/ExifInterface$Rational;

    if-eqz p1, :cond_1

    .line 7627
    array-length v0, p1

    if-eq v0, v8, :cond_0

    goto :goto_0

    .line 7632
    :cond_0
    aget-object v0, p1, v7

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7633
    invoke-static {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createURational(Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 7634
    aget-object p1, p1, v4

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7635
    invoke-static {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createURational(Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object p1

    goto :goto_1

    .line 7628
    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7629
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7628
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7637
    :cond_2
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7638
    invoke-virtual {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_4

    .line 7639
    array-length v0, p1

    if-eq v0, v8, :cond_3

    goto :goto_2

    .line 7644
    :cond_3
    aget v0, p1, v7

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7645
    invoke-static {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 7646
    aget p1, p1, v4

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7647
    invoke-static {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object p1

    .line 7649
    :goto_1
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7650
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p2, v0, p2

    invoke-virtual {p2, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 7640
    :cond_4
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7641
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7640
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    .line 7654
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p1

    .line 7655
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 7656
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 7657
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    if-le v0, p1, :cond_6

    if-le v1, v2, :cond_6

    sub-int/2addr v0, p1

    sub-int/2addr v1, v2

    .line 7661
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7662
    invoke-static {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object p1

    .line 7663
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7664
    invoke-static {v1, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 7665
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    invoke-virtual {v1, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7666
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, p1, p2

    invoke-virtual {p1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-void

    .line 7669
    :cond_7
    invoke-direct {p0, p1, p2}, Landroidx/exifinterface/media/ExifInterface;->retrieveJpegImageSize(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    return-void
.end method

.method private validateImages()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x5

    .line 7553
    invoke-direct {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->swapBasedOnImageSize(II)V

    const/4 v2, 0x4

    .line 7554
    invoke-direct {p0, v0, v2}, Landroidx/exifinterface/media/ExifInterface;->swapBasedOnImageSize(II)V

    .line 7555
    invoke-direct {p0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->swapBasedOnImageSize(II)V

    .line 7561
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const-string v5, "PixelXDimension"

    .line 7562
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7563
    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v5, v4

    const-string v5, "PixelYDimension"

    .line 7564
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7565
    const-string v5, "ImageLength"

    const-string v6, "ImageWidth"

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 7566
    iget-object v7, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v0

    invoke-virtual {v7, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7567
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v0

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7572
    :cond_0
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7573
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v1

    invoke-direct {p0, v3}, Landroidx/exifinterface/media/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7574
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v3, v1

    aput-object v4, v3, v2

    .line 7575
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    aput-object v4, v3, v1

    .line 7580
    :cond_1
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v2

    invoke-direct {p0, v3}, Landroidx/exifinterface/media/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 7581
    const-string v3, "ExifInterface"

    const-string v4, "No image meets the size requirements of a thumbnail image."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7585
    :cond_2
    const-string v3, "ThumbnailOrientation"

    const-string v4, "Orientation"

    invoke-direct {p0, v0, v3, v4}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 7586
    const-string v7, "ThumbnailImageLength"

    invoke-direct {p0, v0, v7, v5}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 7587
    const-string v8, "ThumbnailImageWidth"

    invoke-direct {p0, v0, v8, v6}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 7588
    invoke-direct {p0, v1, v3, v4}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 7589
    invoke-direct {p0, v1, v7, v5}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 7590
    invoke-direct {p0, v1, v8, v6}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 7591
    invoke-direct {p0, v2, v4, v3}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 7592
    invoke-direct {p0, v2, v5, v7}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 7593
    invoke-direct {p0, v2, v6, v8}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private writeExifSegment(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;)I
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 7681
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v3, v2

    new-array v3, v3, [I

    .line 7682
    array-length v2, v2

    new-array v2, v2, [I

    .line 7685
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_0

    aget-object v8, v4, v7

    .line 7686
    iget-object v8, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-direct {v0, v8}, Landroidx/exifinterface/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 7689
    :cond_0
    iget-boolean v4, v0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    const-string v5, "JPEGInterchangeFormatLength"

    const-string v7, "StripByteCounts"

    const-string v8, "JPEGInterchangeFormat"

    const-string v9, "StripOffsets"

    if-eqz v4, :cond_2

    .line 7690
    iget-boolean v4, v0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnailStrips:Z

    if-eqz v4, :cond_1

    .line 7691
    invoke-direct {v0, v9}, Landroidx/exifinterface/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 7692
    invoke-direct {v0, v7}, Landroidx/exifinterface/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    goto :goto_1

    .line 7694
    :cond_1
    invoke-direct {v0, v8}, Landroidx/exifinterface/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 7695
    invoke-direct {v0, v5}, Landroidx/exifinterface/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    :cond_2
    :goto_1
    move v4, v6

    .line 7700
    :goto_2
    sget-object v10, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v10, v10

    if-ge v4, v10, :cond_5

    .line 7701
    iget-object v10, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v10, v10, v4

    .line 7702
    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 7703
    :cond_3
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 7704
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 7705
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_3

    .line 7706
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 7713
    :cond_5
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v10, 0x1

    aget-object v4, v4, v10

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    const-wide/16 v11, 0x0

    if-nez v4, :cond_6

    .line 7714
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v6

    sget-object v13, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v13, v13, v10

    iget-object v13, v13, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v14, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7715
    invoke-static {v11, v12, v14}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v14

    .line 7714
    invoke-virtual {v4, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7717
    :cond_6
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v13, 0x2

    aget-object v4, v4, v13

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 7718
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v6

    sget-object v14, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v14, v14, v13

    iget-object v14, v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v15, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7719
    invoke-static {v11, v12, v15}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v15

    .line 7718
    invoke-virtual {v4, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7721
    :cond_7
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v14, 0x3

    aget-object v4, v4, v14

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 7722
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v10

    sget-object v15, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v15, v15, v14

    iget-object v15, v15, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move/from16 v16, v13

    iget-object v13, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7723
    invoke-static {v11, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v13

    .line 7722
    invoke-virtual {v4, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_8
    move/from16 v16, v13

    .line 7725
    :goto_4
    iget-boolean v4, v0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    const/4 v13, 0x4

    if-eqz v4, :cond_9

    .line 7726
    iget-boolean v4, v0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnailStrips:Z

    if-eqz v4, :cond_a

    .line 7727
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v13

    iget-object v5, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7728
    invoke-static {v6, v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v5

    .line 7727
    invoke-virtual {v4, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7729
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v13

    iget v5, v0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    iget-object v15, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7730
    invoke-static {v5, v15}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v5

    .line 7729
    invoke-virtual {v4, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    move/from16 v17, v14

    goto :goto_5

    .line 7732
    :cond_a
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v13

    iget-object v7, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7733
    invoke-static {v11, v12, v7}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v7

    .line 7732
    invoke-virtual {v4, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7734
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v13

    iget v7, v0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    move/from16 v17, v14

    int-to-long v14, v7

    iget-object v7, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7735
    invoke-static {v14, v15, v7}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v7

    .line 7734
    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    move v4, v6

    .line 7741
    :goto_6
    sget-object v5, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v5, v5

    if-ge v4, v5, :cond_d

    .line 7743
    iget-object v5, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v7, v6

    :cond_b
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 7744
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7745
    invoke-virtual {v14}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->size()I

    move-result v14

    if-le v14, v13, :cond_b

    add-int/2addr v7, v14

    goto :goto_7

    .line 7750
    :cond_c
    aget v5, v2, v4

    add-int/2addr v5, v7

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_d
    const/16 v4, 0x8

    move v5, v6

    .line 7757
    :goto_8
    sget-object v7, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v7, v7

    if-ge v5, v7, :cond_f

    .line 7758
    iget-object v7, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e

    .line 7759
    aput v4, v3, v5

    .line 7760
    iget-object v7, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    mul-int/lit8 v7, v7, 0xc

    add-int/lit8 v7, v7, 0x6

    aget v14, v2, v5

    add-int/2addr v7, v14

    add-int/2addr v4, v7

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 7763
    :cond_f
    iget-boolean v5, v0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    if-eqz v5, :cond_11

    .line 7765
    iget-boolean v5, v0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnailStrips:Z

    if-eqz v5, :cond_10

    .line 7766
    iget-object v5, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, v13

    iget-object v7, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7767
    invoke-static {v4, v7}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v7

    .line 7766
    invoke-virtual {v5, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 7769
    :cond_10
    iget-object v5, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, v13

    int-to-long v14, v4

    iget-object v7, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7770
    invoke-static {v14, v15, v7}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v7

    .line 7769
    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7772
    :goto_9
    iput v4, v0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailOffset:I

    .line 7773
    iget v5, v0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    add-int/2addr v4, v5

    .line 7777
    :cond_11
    iget v5, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    if-ne v5, v13, :cond_12

    add-int/lit8 v4, v4, 0x8

    .line 7781
    :cond_12
    sget-boolean v5, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v5, :cond_13

    move v5, v6

    .line 7782
    :goto_a
    sget-object v7, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v7, v7

    if-ge v5, v7, :cond_13

    .line 7784
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aget v8, v3, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, v5

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aget v14, v2, v5

    .line 7785
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move/from16 v18, v10

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v7, v10, v6

    aput-object v8, v10, v18

    aput-object v9, v10, v16

    aput-object v14, v10, v17

    aput-object v15, v10, v13

    .line 7783
    const-string v7, "index: %d, offsets: %d, tag count: %d, data sizes: %d, total size: %d"

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "ExifInterface"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    move/from16 v10, v18

    goto :goto_a

    :cond_13
    move/from16 v18, v10

    .line 7790
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v18

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    .line 7791
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v6

    sget-object v5, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v5, v5, v18

    iget-object v5, v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    aget v7, v3, v18

    int-to-long v7, v7

    iget-object v9, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7792
    invoke-static {v7, v8, v9}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v7

    .line 7791
    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7794
    :cond_14
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v16

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    .line 7795
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v6

    sget-object v5, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v5, v5, v16

    iget-object v5, v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    aget v7, v3, v16

    int-to-long v7, v7

    iget-object v9, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7796
    invoke-static {v7, v8, v9}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v7

    .line 7795
    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7798
    :cond_15
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v17

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    .line 7799
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v18

    sget-object v5, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v5, v5, v17

    iget-object v5, v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    aget v7, v3, v17

    int-to-long v7, v7

    iget-object v9, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v7, v8, v9}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7803
    :cond_16
    iget v2, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/16 v5, 0xe

    if-eq v2, v13, :cond_19

    const/16 v7, 0xd

    if-eq v2, v7, :cond_18

    if-eq v2, v5, :cond_17

    goto :goto_b

    .line 7821
    :cond_17
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_EXIF:[B

    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 7822
    invoke-virtual {v1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    goto :goto_b

    .line 7816
    :cond_18
    invoke-virtual {v1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    const v2, 0x65584966

    .line 7817
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    goto :goto_b

    :cond_19
    const v2, 0xffff

    if-gt v4, v2, :cond_25

    .line 7811
    invoke-virtual {v1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 7812
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 7826
    :goto_b
    iget-object v2, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->size()I

    move-result v2

    .line 7829
    iget-object v7, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    sget-object v8, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v7, v8, :cond_1a

    const/16 v7, 0x4d4d

    goto :goto_c

    :cond_1a
    const/16 v7, 0x4949

    :goto_c
    invoke-virtual {v1, v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeShort(S)V

    .line 7830
    iget-object v7, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    const/16 v7, 0x2a

    .line 7831
    invoke-virtual {v1, v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    const-wide/16 v7, 0x8

    .line 7832
    invoke-virtual {v1, v7, v8}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    move v7, v6

    .line 7835
    :goto_d
    sget-object v8, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v8, v8

    if-ge v7, v8, :cond_22

    .line 7836
    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_20

    .line 7839
    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-virtual {v1, v8}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 7842
    aget v8, v3, v7

    add-int/lit8 v8, v8, 0x2

    iget-object v9, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    mul-int/lit8 v9, v9, 0xc

    add-int/2addr v8, v9

    add-int/2addr v8, v13

    .line 7843
    iget-object v9, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 7845
    sget-object v14, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v14, v14, v7

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 7846
    iget v14, v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    .line 7847
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7848
    invoke-virtual {v10}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->size()I

    move-result v15

    .line 7850
    invoke-virtual {v1, v14}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 7851
    iget v14, v10, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    invoke-virtual {v1, v14}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 7852
    iget v14, v10, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    invoke-virtual {v1, v14}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    if-le v15, v13, :cond_1b

    int-to-long v11, v8

    .line 7854
    invoke-virtual {v1, v11, v12}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    add-int/2addr v8, v15

    goto :goto_10

    .line 7857
    :cond_1b
    iget-object v10, v10, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-virtual {v1, v10}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    if-ge v15, v13, :cond_1c

    :goto_f
    if-ge v15, v13, :cond_1c

    .line 7861
    invoke-virtual {v1, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_f

    :cond_1c
    :goto_10
    const-wide/16 v11, 0x0

    goto :goto_e

    :cond_1d
    if-nez v7, :cond_1e

    .line 7870
    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v13

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1e

    .line 7871
    aget v8, v3, v13

    int-to-long v8, v8

    invoke-virtual {v1, v8, v9}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    const-wide/16 v8, 0x0

    goto :goto_11

    :cond_1e
    const-wide/16 v8, 0x0

    .line 7873
    invoke-virtual {v1, v8, v9}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    .line 7877
    :goto_11
    iget-object v10, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v10, v10, v7

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1f
    :goto_12
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_21

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 7878
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7880
    iget-object v11, v11, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v12, v11

    if-le v12, v13, :cond_1f

    .line 7881
    array-length v12, v11

    invoke-virtual {v1, v11, v6, v12}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    goto :goto_12

    :cond_20
    move-wide v8, v11

    :cond_21
    add-int/lit8 v7, v7, 0x1

    move-wide v11, v8

    goto/16 :goto_d

    .line 7888
    :cond_22
    iget-boolean v3, v0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    if-eqz v3, :cond_23

    .line 7889
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface;->getThumbnailBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 7893
    :cond_23
    iget v3, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    if-ne v3, v5, :cond_24

    rem-int/lit8 v4, v4, 0x2

    move/from16 v3, v18

    if-ne v4, v3, :cond_24

    .line 7894
    invoke-virtual {v1, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 7898
    :cond_24
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    return v2

    .line 7806
    :cond_25
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Size of exif data ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes) exceeds the max size of a JPEG APP1 segment (65536 bytes)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private writePngExifChunk(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;)V
    .locals 4

    .line 6706
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6708
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, v0, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 6709
    invoke-direct {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->writeExifSegment(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;)I

    move-result v1

    .line 6711
    iget-object v2, p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->size()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, p0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    .line 6712
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 6713
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 6714
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 6715
    array-length v2, v0

    const/4 v3, 0x4

    sub-int/2addr v2, v3

    invoke-virtual {v1, v0, v3, v2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 6716
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    return-void
.end method

.method private writePngXmpItxtChunk(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;)V
    .locals 2

    .line 6721
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mXmpFromSeparateMarker:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    iget-object v0, v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x16

    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 6722
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    const v1, 0x69545874

    .line 6723
    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 6724
    invoke-static {v0, v1}, Landroidx/exifinterface/media/ExifInterface;->updateCrcWithInt(Ljava/util/zip/CRC32;I)V

    .line 6725
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->PNG_ITXT_XMP_KEYWORD:[B

    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 6726
    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 6727
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mXmpFromSeparateMarker:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    iget-object v1, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 6728
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mXmpFromSeparateMarker:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    iget-object v1, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 6729
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    const/4 p1, 0x1

    .line 6730
    iput-boolean p1, p0, Landroidx/exifinterface/media/ExifInterface;->mFileOnDiskContainsSeparateXmpMarker:Z

    return-void
.end method


# virtual methods
.method public getAltitude(D)D
    .locals 6

    .line 5298
    const-string v0, "GPSAltitude"

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    invoke-virtual {p0, v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    move-result-wide v0

    .line 5299
    const-string v2, "GPSAltitudeRef"

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_1

    if-ltz v2, :cond_1

    const/4 p1, 0x1

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_0
    move v3, p1

    :goto_0
    int-to-double p1, v3

    mul-double/2addr v0, p1

    return-wide v0

    :cond_1
    return-wide p1
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    if-eqz p1, :cond_6

    .line 4315
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4319
    :cond_0
    const-string v2, "GPSTimeStamp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4321
    iget p1, v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    const/4 v2, 0x5

    const-string v3, "ExifInterface"

    if-eq p1, v2, :cond_1

    const/16 v2, 0xa

    if-eq p1, v2, :cond_1

    .line 4323
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GPS Timestamp format is not rational. format="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 4326
    :cond_1
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/exifinterface/media/ExifInterface$Rational;

    if-eqz p1, :cond_3

    .line 4327
    array-length v0, p1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 4331
    aget-object v1, p1, v0

    iget-wide v3, v1, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    long-to-float v3, v3

    iget-wide v4, v1, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    long-to-float v1, v4

    div-float/2addr v3, v1

    float-to-int v1, v3

    .line 4332
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aget-object v4, p1, v3

    iget-wide v5, v4, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    long-to-float v5, v5

    iget-wide v6, v4, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    long-to-float v4, v6

    div-float/2addr v5, v4

    float-to-int v4, v5

    .line 4333
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aget-object p1, p1, v5

    iget-wide v6, p1, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    long-to-float v6, v6

    iget-wide v7, p1, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    long-to-float p1, v7

    div-float/2addr v6, p1

    float-to-int p1, v6

    .line 4334
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    aput-object v4, v2, v3

    aput-object p1, v2, v5

    .line 4331
    const-string p1, "%02d:%02d:%02d"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4328
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid GPS Timestamp array. array="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 4335
    :cond_4
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->RATIONAL_TAGS_HANDLED_AS_DECIMALS_FOR_COMPATIBILITY:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 4338
    :try_start_0
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v1

    .line 4343
    :cond_5
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4313
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "tag shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAttributeDouble(Ljava/lang/String;D)D
    .locals 1

    if-eqz p1, :cond_1

    .line 4383
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 4389
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    :goto_0
    return-wide p2

    .line 4381
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "tag shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAttributeInt(Ljava/lang/String;I)I
    .locals 1

    if-eqz p1, :cond_1

    .line 4359
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 4365
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :goto_0
    return p2

    .line 4357
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "tag shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLatLong()[D
    .locals 12

    .line 5222
    const-string v0, "GPSLatitude"

    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5223
    const-string v1, "GPSLatitudeRef"

    invoke-virtual {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5224
    const-string v2, "GPSLongitude"

    invoke-virtual {p0, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5225
    const-string v3, "GPSLongitudeRef"

    invoke-virtual {p0, v3}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    .line 5229
    :try_start_0
    invoke-static {v0, v1}, Landroidx/exifinterface/media/ExifInterface;->convertRationalLatLonToDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v7

    .line 5230
    invoke-static {v2, v3}, Landroidx/exifinterface/media/ExifInterface;->convertRationalLatLonToDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v9

    .line 5231
    new-array v11, v6, [D

    aput-wide v7, v11, v5

    aput-wide v9, v11, v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v11

    .line 5233
    :catch_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Latitude/longitude values are not parsable. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v5

    aput-object v1, v8, v4

    aput-object v2, v8, v6

    const/4 v0, 0x3

    aput-object v3, v8, v0

    .line 5234
    const-string/jumbo v0, "latValue=%s, latRef=%s, lngValue=%s, lngRef=%s"

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5233
    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThumbnail()[B
    .locals 2

    .line 5009
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailCompression:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 5010
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->getThumbnailBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailBytes()[B
    .locals 8

    .line 5020
    const-string v0, "ExifInterface"

    iget-boolean v1, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 5023
    :cond_0
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    if-eqz v1, :cond_1

    return-object v1

    .line 5031
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_3

    .line 5033
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5034
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    :goto_0
    move-object v3, v2

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_1
    move-object v2, v1

    goto/16 :goto_4

    :catch_0
    move-exception v3

    move-object v4, v3

    move-object v3, v2

    goto/16 :goto_3

    .line 5036
    :cond_2
    const-string v3, "Cannot read thumbnail from inputstream without mark/reset support"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5062
    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v2

    .line 5039
    :cond_3
    :try_start_2
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 5040
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_4

    :catch_1
    move-exception v3

    move-object v1, v2

    move-object v4, v3

    move-object v3, v1

    goto :goto_3

    .line 5042
    :cond_4
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v1}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5043
    :try_start_3
    sget v3, Landroid/system/OsConstants;->SEEK_SET:I

    const-wide/16 v4, 0x0

    invoke-static {v1, v4, v5, v3}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 5044
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v7, v3

    move-object v3, v1

    move-object v1, v7

    .line 5051
    :goto_2
    :try_start_4
    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v4, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 5052
    iget v5, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailOffset:I

    iget v6, p0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 5054
    iget v5, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    new-array v5, v5, [B

    .line 5055
    invoke-virtual {v4, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 5056
    iput-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 5062
    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v3, :cond_5

    .line 5064
    invoke-static {v3}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    :cond_5
    return-object v5

    :catchall_2
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v4

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v3, v1

    goto :goto_4

    :catch_3
    move-exception v3

    move-object v4, v3

    move-object v3, v1

    move-object v1, v2

    .line 5060
    :goto_3
    :try_start_5
    const-string v5, "Encountered exception while getting thumbnail"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 5062
    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v3, :cond_6

    .line 5064
    invoke-static {v3}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    :cond_6
    return-object v2

    .line 5062
    :goto_4
    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v3, :cond_7

    .line 5064
    invoke-static {v3}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 5066
    :cond_7
    throw v0
.end method

.method public saveAttributes()V
    .locals 13

    .line 4883
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterface;->isSupportedFormatForSavingAttributes(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4887
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4888
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ExifInterface does not support saving attributes for the current input."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4891
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnailStrips:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    if-eqz v0, :cond_2

    goto :goto_1

    .line 4892
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ExifInterface does not support saving attributes when the image file has non-consecutive thumbnail strips"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 4898
    iput-boolean v0, p0, Landroidx/exifinterface/media/ExifInterface;->mModified:Z

    .line 4901
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->getThumbnail()[B

    move-result-object v1

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    const/4 v1, 0x0

    .line 4908
    :try_start_0
    const-string/jumbo v2, "temp"

    const-string/jumbo v3, "tmp"

    invoke-static {v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 4909
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_4

    .line 4910
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v6, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v6, v1

    goto/16 :goto_11

    :catch_0
    move-exception v0

    move-object v6, v1

    goto/16 :goto_10

    .line 4912
    :cond_4
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    sget v6, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v3, v4, v5, v6}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 4916
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v6, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4918
    :goto_2
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 4919
    :try_start_2
    invoke-static {v3, v6}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 4923
    invoke-static {v3}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 4924
    invoke-static {v6}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v3, 0x0

    .line 4934
    :try_start_3
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4935
    :try_start_4
    iget-object v7, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 4936
    new-instance v7, Ljava/io/FileOutputStream;

    iget-object v8, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v9, v1

    goto/16 :goto_d

    :catch_1
    move-exception v7

    move-object v8, v1

    move-object v9, v8

    move-object v1, v6

    :goto_3
    move-object v6, v7

    move-object v7, v9

    goto/16 :goto_7

    .line 4938
    :cond_5
    iget-object v7, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 4939
    sget v8, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v7, v4, v5, v8}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 4940
    new-instance v7, Ljava/io/FileOutputStream;

    iget-object v8, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4942
    :goto_4
    :try_start_5
    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-direct {v8, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4943
    :try_start_6
    new-instance v9, Ljava/io/BufferedOutputStream;

    invoke-direct {v9, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 4944
    :try_start_7
    iget v10, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_6

    .line 4945
    invoke-direct {p0, v8, v9}, Landroidx/exifinterface/media/ExifInterface;->saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_6

    :catchall_2
    move-exception v0

    :goto_5
    move-object v1, v8

    goto/16 :goto_d

    :catch_2
    move-exception v1

    move-object v12, v6

    move-object v6, v1

    move-object v1, v12

    goto :goto_7

    :cond_6
    const/16 v11, 0xd

    if-ne v10, v11, :cond_7

    .line 4947
    invoke-direct {p0, v8, v9}, Landroidx/exifinterface/media/ExifInterface;->savePngAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_6

    :cond_7
    const/16 v11, 0xe

    if-ne v10, v11, :cond_8

    .line 4949
    invoke-direct {p0, v8, v9}, Landroidx/exifinterface/media/ExifInterface;->saveWebpAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 4975
    :cond_8
    :goto_6
    invoke-static {v8}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 4976
    invoke-static {v9}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 4978
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 4983
    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    return-void

    :catchall_3
    move-exception v0

    move-object v9, v1

    goto :goto_5

    :catch_3
    move-exception v9

    move-object v12, v9

    move-object v9, v1

    move-object v1, v6

    move-object v6, v12

    goto :goto_7

    :catch_4
    move-exception v8

    move-object v9, v1

    move-object v1, v6

    move-object v6, v8

    move-object v8, v9

    goto :goto_7

    :catch_5
    move-exception v7

    move-object v8, v1

    move-object v9, v8

    goto :goto_3

    .line 4954
    :goto_7
    :try_start_8
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 4955
    :try_start_9
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 4956
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    :goto_8
    move-object v7, v1

    goto :goto_a

    :catchall_4
    move-exception v0

    :goto_9
    move-object v1, v10

    goto :goto_c

    :catch_6
    move-exception v1

    goto :goto_b

    .line 4958
    :cond_9
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    sget v11, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v1, v4, v5, v11}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 4962
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    goto :goto_8

    .line 4964
    :goto_a
    invoke-static {v10, v7}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 4970
    :try_start_a
    invoke-static {v10}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 4971
    invoke-static {v7}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 4973
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to save new file"

    invoke-direct {v0, v1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_5
    move-exception v0

    goto :goto_c

    :catch_7
    move-exception v3

    move-object v10, v1

    move-object v1, v3

    .line 4967
    :goto_b
    :try_start_b
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to save new file. Original file is stored in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4968
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :catchall_6
    move-exception v1

    move v3, v0

    move-object v0, v1

    goto :goto_9

    .line 4970
    :goto_c
    :try_start_c
    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 4971
    invoke-static {v7}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 4972
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 4975
    :goto_d
    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 4976
    invoke-static {v9}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    if-nez v3, :cond_a

    .line 4978
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 4980
    :cond_a
    throw v0

    :catchall_7
    move-exception v0

    :goto_e
    move-object v1, v3

    goto :goto_11

    :catch_8
    move-exception v0

    :goto_f
    move-object v1, v3

    goto :goto_10

    :catchall_8
    move-exception v0

    move-object v6, v1

    goto :goto_e

    :catch_9
    move-exception v0

    move-object v6, v1

    goto :goto_f

    .line 4921
    :goto_10
    :try_start_d
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to copy original file to temp file"

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    :catchall_9
    move-exception v0

    .line 4923
    :goto_11
    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 4924
    invoke-static {v6}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 4925
    throw v0

    .line 4884
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ExifInterface only supports saving attributes for JPEG, PNG, and WebP formats."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v1, :cond_21

    .line 4408
    const-string v3, "ISOSpeedRatings"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "ExifInterface"

    if-eqz v3, :cond_1

    .line 4409
    sget-boolean v1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 4410
    const-string/jumbo v1, "setAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY."

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4413
    :cond_0
    const-string v1, "PhotographicSensitivity"

    :cond_1
    const/4 v3, 0x3

    const/4 v5, 0x2

    .line 4416
    const-string v6, "/"

    const/4 v7, 0x1

    if-eqz v2, :cond_8

    .line 4417
    sget-object v8, Landroidx/exifinterface/media/ExifInterface;->RATIONAL_TAGS_HANDLED_AS_DECIMALS_FOR_COMPATIBILITY:Ljava/util/Set;

    invoke-interface {v8, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, " : "

    const-string v10, "Invalid value for "

    if-eqz v8, :cond_2

    .line 4418
    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 4422
    :try_start_0
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    .line 4423
    invoke-static {v11, v12}, Landroidx/exifinterface/media/ExifInterface$Rational;->createFromDouble(D)Landroidx/exifinterface/media/ExifInterface$Rational;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/exifinterface/media/ExifInterface$Rational;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 4425
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4428
    :cond_2
    const-string v8, "GPSTimeStamp"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 4429
    sget-object v8, Landroidx/exifinterface/media/ExifInterface;->GPS_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 4430
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-nez v11, :cond_3

    .line 4431
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4434
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4435
    invoke-virtual {v8, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "/1,"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4437
    invoke-virtual {v8, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4439
    invoke-virtual {v8, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "/1"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 4441
    :cond_4
    const-string v8, "DateTime"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "DateTimeOriginal"

    .line 4442
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "DateTimeDigitized"

    .line 4443
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 4445
    :cond_5
    sget-object v8, Landroidx/exifinterface/media/ExifInterface;->DATETIME_PRIMARY_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    .line 4446
    sget-object v11, Landroidx/exifinterface/media/ExifInterface;->DATETIME_SECONDARY_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    .line 4448
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x13

    if-ne v12, v13, :cond_7

    if-nez v8, :cond_6

    if-nez v11, :cond_6

    goto :goto_0

    :cond_6
    if-eqz v11, :cond_8

    .line 4459
    const-string v8, "-"

    const-string v9, ":"

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 4450
    :cond_7
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4464
    :cond_8
    :goto_1
    const-string v8, "Xmp"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_e

    .line 4465
    iget-object v9, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, v10

    .line 4466
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    iget-object v9, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v11, 0x5

    aget-object v9, v9, v11

    .line 4467
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_2

    :cond_9
    move v8, v10

    goto :goto_3

    :cond_a
    :goto_2
    move v8, v7

    .line 4468
    :goto_3
    iget v9, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    invoke-static {v9}, Landroidx/exifinterface/media/ExifInterface;->getXmpHandlingForImageType(I)I

    move-result v9

    if-ne v9, v5, :cond_b

    .line 4469
    iget-object v11, v0, Landroidx/exifinterface/media/ExifInterface;->mXmpFromSeparateMarker:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-nez v11, :cond_c

    if-eqz v8, :cond_c

    :cond_b
    if-ne v9, v3, :cond_e

    if-nez v8, :cond_e

    :cond_c
    if-eqz v2, :cond_d

    .line 4473
    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createByte(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v1

    goto :goto_4

    :cond_d
    const/4 v1, 0x0

    :goto_4
    iput-object v1, v0, Landroidx/exifinterface/media/ExifInterface;->mXmpFromSeparateMarker:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    return-void

    :cond_e
    move v3, v10

    .line 4478
    :goto_5
    sget-object v8, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v8, v8

    if-ge v3, v8, :cond_20

    const/4 v8, 0x4

    if-ne v3, v8, :cond_10

    .line 4479
    iget-boolean v8, v0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    if-nez v8, :cond_10

    :cond_f
    :goto_6
    move-object/from16 v22, v6

    move/from16 p1, v7

    move/from16 v20, v10

    goto/16 :goto_14

    .line 4482
    :cond_10
    sget-object v8, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v8, v8, v3

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    if-eqz v8, :cond_f

    if-nez v2, :cond_11

    .line 4485
    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v3

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 4488
    :cond_11
    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v9

    .line 4490
    iget v11, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    iget-object v12, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, -0x1

    if-eq v11, v12, :cond_19

    iget v11, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    iget-object v12, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v11, v12, :cond_12

    goto/16 :goto_b

    .line 4492
    :cond_12
    iget v11, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    if-eq v11, v13, :cond_14

    iget-object v12, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-eq v11, v12, :cond_13

    iget v11, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    iget-object v12, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    .line 4493
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v11, v12, :cond_14

    .line 4494
    :cond_13
    iget v8, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    goto/16 :goto_c

    .line 4495
    :cond_14
    iget v11, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    if-eq v11, v7, :cond_18

    const/4 v12, 0x7

    if-eq v11, v12, :cond_18

    if-ne v11, v5, :cond_15

    goto/16 :goto_a

    .line 4500
    :cond_15
    sget-boolean v11, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v11, :cond_f

    .line 4501
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Given tag ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ") value didn\'t match with one of expected formats: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget v14, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    aget-object v14, v12, v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4504
    iget v14, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    const-string v15, ", "

    const-string v16, ""

    if-ne v14, v13, :cond_16

    move-object/from16 v8, v16

    goto :goto_7

    .line 4505
    :cond_16
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    aget-object v8, v12, v8

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_7
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " (guess: "

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    .line 4506
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v8, v12, v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v13, :cond_17

    :goto_8
    move-object/from16 v8, v16

    goto :goto_9

    .line 4507
    :cond_17
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v9, v12, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_8

    :goto_9
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4501
    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_18
    :goto_a
    move v8, v11

    goto :goto_c

    .line 4491
    :cond_19
    :goto_b
    iget v8, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    .line 4511
    :goto_c
    const-string v9, ","

    packed-switch v8, :pswitch_data_0

    .line 4586
    :pswitch_0
    sget-boolean v9, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v9, :cond_f

    .line 4587
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Data format isn\'t one of expected formats: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 4576
    :pswitch_1
    invoke-virtual {v2, v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 4577
    array-length v9, v8

    new-array v9, v9, [D

    move v11, v10

    .line 4578
    :goto_d
    array-length v12, v8

    if-ge v11, v12, :cond_1a

    .line 4579
    aget-object v12, v8, v11

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    aput-wide v12, v9, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    .line 4581
    :cond_1a
    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v3

    iget-object v11, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4582
    invoke-static {v9, v11}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createDouble([DLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v9

    .line 4581
    invoke-virtual {v8, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 4564
    :pswitch_2
    invoke-virtual {v2, v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 4565
    array-length v9, v8

    new-array v9, v9, [Landroidx/exifinterface/media/ExifInterface$Rational;

    move v11, v10

    .line 4566
    :goto_e
    array-length v12, v8

    if-ge v11, v12, :cond_1b

    .line 4567
    aget-object v12, v8, v11

    invoke-virtual {v12, v6, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v12

    .line 4568
    new-instance v14, Landroidx/exifinterface/media/ExifInterface$Rational;

    aget-object v15, v12, v10

    move/from16 p1, v7

    move-object/from16 p2, v8

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-long v7, v7

    aget-object v12, v12, p1

    move/from16 v20, v10

    move/from16 v21, v11

    .line 4569
    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-long v10, v10

    const/16 v19, 0x0

    move-wide v15, v7

    move-wide/from16 v17, v10

    invoke-direct/range {v14 .. v19}, Landroidx/exifinterface/media/ExifInterface$Rational;-><init>(JJLandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v14, v9, v21

    add-int/lit8 v11, v21, 0x1

    move/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v10, v20

    goto :goto_e

    :cond_1b
    move/from16 p1, v7

    move/from16 v20, v10

    .line 4571
    iget-object v7, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v3

    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4572
    invoke-static {v9, v8}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createSRational([Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v8

    .line 4571
    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_f
    move-object/from16 v22, v6

    goto/16 :goto_14

    :pswitch_3
    move/from16 p1, v7

    move/from16 v20, v10

    .line 4532
    invoke-virtual {v2, v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 4533
    array-length v8, v7

    new-array v8, v8, [I

    move/from16 v9, v20

    .line 4534
    :goto_10
    array-length v10, v7

    if-ge v9, v10, :cond_1c

    .line 4535
    aget-object v10, v7, v9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    .line 4537
    :cond_1c
    iget-object v7, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v3

    iget-object v9, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4538
    invoke-static {v8, v9}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createSLong([ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v8

    .line 4537
    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :pswitch_4
    move/from16 p1, v7

    move/from16 v20, v10

    .line 4552
    invoke-virtual {v2, v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 4553
    array-length v8, v7

    new-array v8, v8, [Landroidx/exifinterface/media/ExifInterface$Rational;

    move/from16 v9, v20

    .line 4554
    :goto_11
    array-length v10, v7

    if-ge v9, v10, :cond_1d

    .line 4555
    aget-object v10, v7, v9

    invoke-virtual {v10, v6, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    .line 4556
    new-instance v14, Landroidx/exifinterface/media/ExifInterface$Rational;

    aget-object v11, v10, v20

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    double-to-long v11, v11

    aget-object v10, v10, p1

    move-object/from16 v22, v6

    .line 4557
    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-long v5, v5

    const/16 v19, 0x0

    move-wide/from16 v17, v5

    move-wide v15, v11

    invoke-direct/range {v14 .. v19}, Landroidx/exifinterface/media/ExifInterface$Rational;-><init>(JJLandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v14, v8, v9

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v6, v22

    const/4 v5, 0x2

    goto :goto_11

    :cond_1d
    move-object/from16 v22, v6

    .line 4559
    iget-object v5, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, v3

    iget-object v6, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4560
    invoke-static {v8, v6}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createURational([Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v6

    .line 4559
    invoke-virtual {v5, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_14

    :pswitch_5
    move-object/from16 v22, v6

    move/from16 p1, v7

    move/from16 v20, v10

    .line 4542
    invoke-virtual {v2, v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 4543
    array-length v6, v5

    new-array v6, v6, [J

    move/from16 v7, v20

    .line 4544
    :goto_12
    array-length v8, v5

    if-ge v7, v8, :cond_1e

    .line 4545
    aget-object v8, v5, v7

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    .line 4547
    :cond_1e
    iget-object v5, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, v3

    iget-object v7, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4548
    invoke-static {v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v6

    .line 4547
    invoke-virtual {v5, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :pswitch_6
    move-object/from16 v22, v6

    move/from16 p1, v7

    move/from16 v20, v10

    .line 4522
    invoke-virtual {v2, v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 4523
    array-length v6, v5

    new-array v6, v6, [I

    move/from16 v7, v20

    .line 4524
    :goto_13
    array-length v8, v5

    if-ge v7, v8, :cond_1f

    .line 4525
    aget-object v8, v5, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    .line 4527
    :cond_1f
    iget-object v5, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, v3

    iget-object v7, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4528
    invoke-static {v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v6

    .line 4527
    invoke-virtual {v5, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :pswitch_7
    move-object/from16 v22, v6

    move/from16 p1, v7

    move/from16 v20, v10

    .line 4518
    iget-object v5, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, v3

    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :pswitch_8
    move-object/from16 v22, v6

    move/from16 p1, v7

    move/from16 v20, v10

    .line 4513
    iget-object v5, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, v3

    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createByte(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_14
    add-int/lit8 v3, v3, 0x1

    move/from16 v7, p1

    move/from16 v10, v20

    move-object/from16 v6, v22

    const/4 v5, 0x2

    goto/16 :goto_5

    :cond_20
    return-void

    .line 4404
    :cond_21
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "tag shouldn\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
