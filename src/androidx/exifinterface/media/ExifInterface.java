package androidx.exifinterface.media;

import android.content.res.AssetManager;
import android.media.MediaDataSource;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import android.util.Pair;
import androidx.exifinterface.media.ExifInterfaceUtils;
import androidx.mediarouter.media.GlobalMediaRouter;
import com.android.dx.io.Opcodes;
import com.google.android.gms.cast.MediaError;
import j$.util.DesugarTimeZone;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.CRC32;
import kotlin.jvm.internal.LongCompanionObject;
import okhttp3.internal.url._UrlKt;
import okhttp3.internal.ws.WebSocketProtocol;
import okio.Buffer$$ExternalSyntheticBUOutline1;
import okio.ByteString$$ExternalSyntheticBUOutline0;
import okio.internal.ZipFilesKt$$ExternalSyntheticBUOutline0;
import okio.internal.ZipFilesKt$$ExternalSyntheticBUOutline1;
import org.vosk.Model$$ExternalSyntheticBUOutline0;
import p002c.f$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes.dex */
public class ExifInterface {
    private static final Charset ASCII;
    private static final Pattern DATETIME_PRIMARY_FORMAT_PATTERN;
    private static final Pattern DATETIME_SECONDARY_FORMAT_PATTERN;
    private static final ExifTag[] EXIF_POINTER_TAGS;
    static final ExifTag[][] EXIF_TAGS;
    private static final Pattern GPS_TIMESTAMP_PATTERN;
    static final byte[] IDENTIFIER_EXIF_APP1;
    private static final byte[] IDENTIFIER_XMP_APP1;
    private static final ExifTag[] IFD_EXIF_TAGS;
    private static final ExifTag[] IFD_GPS_TAGS;
    private static final ExifTag[] IFD_INTEROPERABILITY_TAGS;
    private static final ExifTag[] IFD_THUMBNAIL_TAGS;
    private static final ExifTag[] IFD_TIFF_TAGS;
    private static final Pattern NON_ZERO_TIME_PATTERN;
    private static final ExifTag[] ORF_CAMERA_SETTINGS_TAGS;
    private static final ExifTag[] ORF_IMAGE_PROCESSING_TAGS;
    private static final ExifTag[] ORF_MAKER_NOTE_TAGS;
    private static final ExifTag[] PEF_TAGS;
    private static final Set<String> RATIONAL_TAGS_HANDLED_AS_DECIMALS_FOR_COMPATIBILITY;
    private static final ExifTag TAG_RAF_IMAGE_SIZE;
    private static final HashMap<Integer, Integer> sExifPointerTagMap;
    private static final HashMap<Integer, ExifTag>[] sExifTagMapsForReading;
    private static final HashMap<String, ExifTag>[] sExifTagMapsForWriting;
    private static final SimpleDateFormat sFormatterPrimary;
    private static final SimpleDateFormat sFormatterSecondary;
    private boolean mAreThumbnailStripsConsecutive;
    private AssetManager.AssetInputStream mAssetInputStream;
    private final HashMap<String, ExifAttribute>[] mAttributes;
    private Set<Integer> mAttributesOffsets;
    private ByteOrder mExifByteOrder;
    private boolean mFileOnDiskContainsSeparateXmpMarker;
    private String mFilename;
    private boolean mHasThumbnail;
    private boolean mHasThumbnailStrips;
    private boolean mIsExifDataOnly;
    private int mMimeType;
    private boolean mModified;
    private int mOffsetToExifData;
    private int mOrfMakerNoteOffset;
    private int mOrfThumbnailLength;
    private int mOrfThumbnailOffset;
    private FileDescriptor mSeekableFileDescriptor;
    private byte[] mThumbnailBytes;
    private int mThumbnailCompression;
    private int mThumbnailLength;
    private int mThumbnailOffset;
    private ExifAttribute mXmpFromSeparateMarker;
    private static final boolean DEBUG = Log.isLoggable("ExifInterface", 3);
    private static final List<Integer> ROTATION_ORDER = Arrays.asList(1, 6, 3, 8);
    private static final List<Integer> FLIPPED_ROTATION_ORDER = Arrays.asList(2, 7, 4, 5);
    public static final int[] BITS_PER_SAMPLE_RGB = {8, 8, 8};
    public static final int[] BITS_PER_SAMPLE_GREYSCALE_1 = {4};
    public static final int[] BITS_PER_SAMPLE_GREYSCALE_2 = {8};
    static final byte[] JPEG_SIGNATURE = {-1, -40, -1};
    private static final byte[] HEIF_TYPE_FTYP = {102, 116, 121, 112};
    private static final byte[] HEIF_BRAND_MIF1 = {109, 105, 102, 49};
    private static final byte[] HEIF_BRAND_HEIC = {104, 101, 105, 99};
    private static final byte[] HEIF_BRAND_AVIF = {97, 118, 105, 102};
    private static final byte[] HEIF_BRAND_AVIS = {97, 118, 105, 115};
    private static final byte[] ORF_MAKER_NOTE_HEADER_1 = {79, 76, 89, 77, 80, 0};
    private static final byte[] ORF_MAKER_NOTE_HEADER_2 = {79, 76, 89, 77, 80, 85, 83, 0, 73, 73};
    private static final byte[] PNG_SIGNATURE = {-119, 80, 78, 71, 13, 10, 26, 10};
    static final byte[] PNG_ITXT_XMP_KEYWORD = "XML:com.adobe.xmp\u0000\u0000\u0000\u0000\u0000".getBytes(StandardCharsets.UTF_8);
    private static final byte[] WEBP_SIGNATURE_1 = {82, 73, 70, 70};
    private static final byte[] WEBP_SIGNATURE_2 = {87, 69, 66, 80};
    private static final byte[] WEBP_CHUNK_TYPE_EXIF = {69, 88, 73, 70};
    private static final byte[] WEBP_VP8_SIGNATURE = {-99, 1, 42};
    private static final byte[] WEBP_CHUNK_TYPE_VP8X = "VP8X".getBytes(Charset.defaultCharset());
    private static final byte[] WEBP_CHUNK_TYPE_VP8L = "VP8L".getBytes(Charset.defaultCharset());
    private static final byte[] WEBP_CHUNK_TYPE_VP8 = "VP8 ".getBytes(Charset.defaultCharset());
    private static final byte[] WEBP_CHUNK_TYPE_ANIM = "ANIM".getBytes(Charset.defaultCharset());
    private static final byte[] WEBP_CHUNK_TYPE_ANMF = "ANMF".getBytes(Charset.defaultCharset());
    private static final String[] IFD_FORMAT_NAMES = {_UrlKt.FRAGMENT_ENCODE_SET, "BYTE", "STRING", "USHORT", "ULONG", "URATIONAL", "SBYTE", "UNDEFINED", "SSHORT", "SLONG", "SRATIONAL", "SINGLE", "DOUBLE", "IFD"};
    private static final int[] IFD_FORMAT_BYTES_PER_FORMAT = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8, 1};
    private static final byte[] EXIF_ASCII_PREFIX = {65, 83, 67, 73, 73, 0, 0, 0};

    private static int getXmpHandlingForImageType(int i) {
        if (i != 4) {
            return (i == 9 || i == 15 || i == 12 || i == 13) ? 2 : 1;
        }
        return 3;
    }

    private static boolean isSupportedFormatForSavingAttributes(int i) {
        return i == 4 || i == 13 || i == 14;
    }

    private static boolean shouldSupportSeek(int i) {
        return (i == 4 || i == 9 || i == 13 || i == 14) ? false : true;
    }

    static {
        ExifTag[] exifTagArr = {new ExifTag("NewSubfileType", Opcodes.CONST_METHOD_HANDLE, 4), new ExifTag("SubfileType", 255, 4), new ExifTag("ImageWidth", 256, 3, 4), new ExifTag("ImageLength", GlobalMediaRouter.CallbackHandler.MSG_ROUTE_ADDED, 3, 4), new ExifTag("BitsPerSample", GlobalMediaRouter.CallbackHandler.MSG_ROUTE_REMOVED, 3), new ExifTag("Compression", GlobalMediaRouter.CallbackHandler.MSG_ROUTE_CHANGED, 3), new ExifTag("PhotometricInterpretation", GlobalMediaRouter.CallbackHandler.MSG_ROUTE_SELECTED, 3), new ExifTag("ImageDescription", 270, 2), new ExifTag("Make", 271, 2), new ExifTag("Model", 272, 2), new ExifTag("StripOffsets", 273, 3, 4), new ExifTag("Orientation", 274, 3), new ExifTag("SamplesPerPixel", 277, 3), new ExifTag("RowsPerStrip", 278, 3, 4), new ExifTag("StripByteCounts", 279, 3, 4), new ExifTag("XResolution", 282, 5), new ExifTag("YResolution", 283, 5), new ExifTag("PlanarConfiguration", 284, 3), new ExifTag("ResolutionUnit", 296, 3), new ExifTag("TransferFunction", MediaError.DetailedErrorCode.SEGMENT_NETWORK, 3), new ExifTag("Software", 305, 2), new ExifTag("DateTime", 306, 2), new ExifTag("Artist", MediaError.DetailedErrorCode.HLS_NETWORK_INVALID_SEGMENT, 2), new ExifTag("WhitePoint", 318, 5), new ExifTag("PrimaryChromaticities", 319, 5), new ExifTag("SubIFDPointer", 330, 4), new ExifTag("JPEGInterchangeFormat", GlobalMediaRouter.CallbackHandler.MSG_PROVIDER_ADDED, 4), new ExifTag("JPEGInterchangeFormatLength", GlobalMediaRouter.CallbackHandler.MSG_PROVIDER_REMOVED, 4), new ExifTag("YCbCrCoefficients", 529, 5), new ExifTag("YCbCrSubSampling", 530, 3), new ExifTag("YCbCrPositioning", 531, 3), new ExifTag("ReferenceBlackWhite", 532, 5), new ExifTag("Copyright", 33432, 2), new ExifTag("ExifIFDPointer", 34665, 4), new ExifTag("GPSInfoIFDPointer", 34853, 4), new ExifTag("SensorTopBorder", 4, 4), new ExifTag("SensorLeftBorder", 5, 4), new ExifTag("SensorBottomBorder", 6, 4), new ExifTag("SensorRightBorder", 7, 4), new ExifTag("ISO", 23, 3), new ExifTag("JpgFromRaw", 46, 7), new ExifTag("Xmp", 700, 1)};
        IFD_TIFF_TAGS = exifTagArr;
        ExifTag[] exifTagArr2 = {new ExifTag("ExposureTime", 33434, 5), new ExifTag("FNumber", 33437, 5), new ExifTag("ExposureProgram", 34850, 3), new ExifTag("SpectralSensitivity", 34852, 2), new ExifTag("PhotographicSensitivity", 34855, 3), new ExifTag("OECF", 34856, 7), new ExifTag("SensitivityType", 34864, 3), new ExifTag("StandardOutputSensitivity", 34865, 4), new ExifTag("RecommendedExposureIndex", 34866, 4), new ExifTag("ISOSpeed", 34867, 4), new ExifTag("ISOSpeedLatitudeyyy", 34868, 4), new ExifTag("ISOSpeedLatitudezzz", 34869, 4), new ExifTag("ExifVersion", 36864, 2), new ExifTag("DateTimeOriginal", 36867, 2), new ExifTag("DateTimeDigitized", 36868, 2), new ExifTag("OffsetTime", 36880, 2), new ExifTag("OffsetTimeOriginal", 36881, 2), new ExifTag("OffsetTimeDigitized", 36882, 2), new ExifTag("ComponentsConfiguration", 37121, 7), new ExifTag("CompressedBitsPerPixel", 37122, 5), new ExifTag("ShutterSpeedValue", 37377, 10), new ExifTag("ApertureValue", 37378, 5), new ExifTag("BrightnessValue", 37379, 10), new ExifTag("ExposureBiasValue", 37380, 10), new ExifTag("MaxApertureValue", 37381, 5), new ExifTag("SubjectDistance", 37382, 5), new ExifTag("MeteringMode", 37383, 3), new ExifTag("LightSource", 37384, 3), new ExifTag("Flash", 37385, 3), new ExifTag("FocalLength", 37386, 5), new ExifTag("SubjectArea", 37396, 3), new ExifTag("MakerNote", 37500, 7), new ExifTag("UserComment", 37510, 7), new ExifTag("SubSecTime", 37520, 2), new ExifTag("SubSecTimeOriginal", 37521, 2), new ExifTag("SubSecTimeDigitized", 37522, 2), new ExifTag("FlashpixVersion", 40960, 7), new ExifTag("ColorSpace", 40961, 3), new ExifTag("PixelXDimension", 40962, 3, 4), new ExifTag("PixelYDimension", 40963, 3, 4), new ExifTag("RelatedSoundFile", 40964, 2), new ExifTag("InteroperabilityIFDPointer", 40965, 4), new ExifTag("FlashEnergy", 41483, 5), new ExifTag("SpatialFrequencyResponse", 41484, 7), new ExifTag("FocalPlaneXResolution", 41486, 5), new ExifTag("FocalPlaneYResolution", 41487, 5), new ExifTag("FocalPlaneResolutionUnit", 41488, 3), new ExifTag("SubjectLocation", 41492, 3), new ExifTag("ExposureIndex", 41493, 5), new ExifTag("SensingMethod", 41495, 3), new ExifTag("FileSource", 41728, 7), new ExifTag("SceneType", 41729, 7), new ExifTag("CFAPattern", 41730, 7), new ExifTag("CustomRendered", 41985, 3), new ExifTag("ExposureMode", 41986, 3), new ExifTag("WhiteBalance", 41987, 3), new ExifTag("DigitalZoomRatio", 41988, 5), new ExifTag("FocalLengthIn35mmFilm", 41989, 3), new ExifTag("SceneCaptureType", 41990, 3), new ExifTag("GainControl", 41991, 3), new ExifTag("Contrast", 41992, 3), new ExifTag("Saturation", 41993, 3), new ExifTag("Sharpness", 41994, 3), new ExifTag("DeviceSettingDescription", 41995, 7), new ExifTag("SubjectDistanceRange", 41996, 3), new ExifTag("ImageUniqueID", 42016, 2), new ExifTag("CameraOwnerName", 42032, 2), new ExifTag("BodySerialNumber", 42033, 2), new ExifTag("LensSpecification", 42034, 5), new ExifTag("LensMake", 42035, 2), new ExifTag("LensModel", 42036, 2), new ExifTag("Gamma", 42240, 5), new ExifTag("DNGVersion", 50706, 1), new ExifTag("DefaultCropSize", 50720, 3, 4)};
        IFD_EXIF_TAGS = exifTagArr2;
        ExifTag[] exifTagArr3 = {new ExifTag("GPSVersionID", 0, 1), new ExifTag("GPSLatitudeRef", 1, 2), new ExifTag("GPSLatitude", 2, 5, 10), new ExifTag("GPSLongitudeRef", 3, 2), new ExifTag("GPSLongitude", 4, 5, 10), new ExifTag("GPSAltitudeRef", 5, 1), new ExifTag("GPSAltitude", 6, 5), new ExifTag("GPSTimeStamp", 7, 5), new ExifTag("GPSSatellites", 8, 2), new ExifTag("GPSStatus", 9, 2), new ExifTag("GPSMeasureMode", 10, 2), new ExifTag("GPSDOP", 11, 5), new ExifTag("GPSSpeedRef", 12, 2), new ExifTag("GPSSpeed", 13, 5), new ExifTag("GPSTrackRef", 14, 2), new ExifTag("GPSTrack", 15, 5), new ExifTag("GPSImgDirectionRef", 16, 2), new ExifTag("GPSImgDirection", 17, 5), new ExifTag("GPSMapDatum", 18, 2), new ExifTag("GPSDestLatitudeRef", 19, 2), new ExifTag("GPSDestLatitude", 20, 5), new ExifTag("GPSDestLongitudeRef", 21, 2), new ExifTag("GPSDestLongitude", 22, 5), new ExifTag("GPSDestBearingRef", 23, 2), new ExifTag("GPSDestBearing", 24, 5), new ExifTag("GPSDestDistanceRef", 25, 2), new ExifTag("GPSDestDistance", 26, 5), new ExifTag("GPSProcessingMethod", 27, 7), new ExifTag("GPSAreaInformation", 28, 7), new ExifTag("GPSDateStamp", 29, 2), new ExifTag("GPSDifferential", 30, 3), new ExifTag("GPSHPositioningError", 31, 5)};
        IFD_GPS_TAGS = exifTagArr3;
        ExifTag[] exifTagArr4 = {new ExifTag("InteroperabilityIndex", 1, 2)};
        IFD_INTEROPERABILITY_TAGS = exifTagArr4;
        ExifTag[] exifTagArr5 = {new ExifTag("NewSubfileType", Opcodes.CONST_METHOD_HANDLE, 4), new ExifTag("SubfileType", 255, 4), new ExifTag("ThumbnailImageWidth", 256, 3, 4), new ExifTag("ThumbnailImageLength", GlobalMediaRouter.CallbackHandler.MSG_ROUTE_ADDED, 3, 4), new ExifTag("BitsPerSample", GlobalMediaRouter.CallbackHandler.MSG_ROUTE_REMOVED, 3), new ExifTag("Compression", GlobalMediaRouter.CallbackHandler.MSG_ROUTE_CHANGED, 3), new ExifTag("PhotometricInterpretation", GlobalMediaRouter.CallbackHandler.MSG_ROUTE_SELECTED, 3), new ExifTag("ImageDescription", 270, 2), new ExifTag("Make", 271, 2), new ExifTag("Model", 272, 2), new ExifTag("StripOffsets", 273, 3, 4), new ExifTag("ThumbnailOrientation", 274, 3), new ExifTag("SamplesPerPixel", 277, 3), new ExifTag("RowsPerStrip", 278, 3, 4), new ExifTag("StripByteCounts", 279, 3, 4), new ExifTag("XResolution", 282, 5), new ExifTag("YResolution", 283, 5), new ExifTag("PlanarConfiguration", 284, 3), new ExifTag("ResolutionUnit", 296, 3), new ExifTag("TransferFunction", MediaError.DetailedErrorCode.SEGMENT_NETWORK, 3), new ExifTag("Software", 305, 2), new ExifTag("DateTime", 306, 2), new ExifTag("Artist", MediaError.DetailedErrorCode.HLS_NETWORK_INVALID_SEGMENT, 2), new ExifTag("WhitePoint", 318, 5), new ExifTag("PrimaryChromaticities", 319, 5), new ExifTag("SubIFDPointer", 330, 4), new ExifTag("JPEGInterchangeFormat", GlobalMediaRouter.CallbackHandler.MSG_PROVIDER_ADDED, 4), new ExifTag("JPEGInterchangeFormatLength", GlobalMediaRouter.CallbackHandler.MSG_PROVIDER_REMOVED, 4), new ExifTag("YCbCrCoefficients", 529, 5), new ExifTag("YCbCrSubSampling", 530, 3), new ExifTag("YCbCrPositioning", 531, 3), new ExifTag("ReferenceBlackWhite", 532, 5), new ExifTag("Copyright", 33432, 2), new ExifTag("ExifIFDPointer", 34665, 4), new ExifTag("GPSInfoIFDPointer", 34853, 4), new ExifTag("DNGVersion", 50706, 1), new ExifTag("DefaultCropSize", 50720, 3, 4)};
        IFD_THUMBNAIL_TAGS = exifTagArr5;
        TAG_RAF_IMAGE_SIZE = new ExifTag("StripOffsets", 273, 3);
        ExifTag[] exifTagArr6 = {new ExifTag("ThumbnailImage", 256, 7), new ExifTag("CameraSettingsIFDPointer", 8224, 4), new ExifTag("ImageProcessingIFDPointer", 8256, 4)};
        ORF_MAKER_NOTE_TAGS = exifTagArr6;
        ExifTag[] exifTagArr7 = {new ExifTag("PreviewImageStart", GlobalMediaRouter.CallbackHandler.MSG_ROUTE_ADDED, 4), new ExifTag("PreviewImageLength", GlobalMediaRouter.CallbackHandler.MSG_ROUTE_REMOVED, 4)};
        ORF_CAMERA_SETTINGS_TAGS = exifTagArr7;
        ExifTag[] exifTagArr8 = {new ExifTag("AspectFrame", 4371, 3)};
        ORF_IMAGE_PROCESSING_TAGS = exifTagArr8;
        ExifTag[] exifTagArr9 = {new ExifTag("ColorSpace", 55, 3)};
        PEF_TAGS = exifTagArr9;
        ExifTag[][] exifTagArr10 = {exifTagArr, exifTagArr2, exifTagArr3, exifTagArr4, exifTagArr5, exifTagArr, exifTagArr6, exifTagArr7, exifTagArr8, exifTagArr9};
        EXIF_TAGS = exifTagArr10;
        EXIF_POINTER_TAGS = new ExifTag[]{new ExifTag("SubIFDPointer", 330, 4), new ExifTag("ExifIFDPointer", 34665, 4), new ExifTag("GPSInfoIFDPointer", 34853, 4), new ExifTag("InteroperabilityIFDPointer", 40965, 4), new ExifTag("CameraSettingsIFDPointer", 8224, 1), new ExifTag("ImageProcessingIFDPointer", 8256, 1)};
        sExifTagMapsForReading = new HashMap[exifTagArr10.length];
        sExifTagMapsForWriting = new HashMap[exifTagArr10.length];
        RATIONAL_TAGS_HANDLED_AS_DECIMALS_FOR_COMPATIBILITY = Collections.unmodifiableSet(new HashSet(Arrays.asList("FNumber", "DigitalZoomRatio", "ExposureTime", "SubjectDistance")));
        sExifPointerTagMap = new HashMap<>();
        Charset charsetForName = Charset.forName("US-ASCII");
        ASCII = charsetForName;
        IDENTIFIER_EXIF_APP1 = "Exif\u0000\u0000".getBytes(charsetForName);
        IDENTIFIER_XMP_APP1 = "http://ns.adobe.com/xap/1.0/\u0000".getBytes(charsetForName);
        Locale locale = Locale.US;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy:MM:dd HH:mm:ss", locale);
        sFormatterPrimary = simpleDateFormat;
        simpleDateFormat.setTimeZone(DesugarTimeZone.getTimeZone("UTC"));
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", locale);
        sFormatterSecondary = simpleDateFormat2;
        simpleDateFormat2.setTimeZone(DesugarTimeZone.getTimeZone("UTC"));
        int i = 0;
        while (true) {
            ExifTag[][] exifTagArr11 = EXIF_TAGS;
            if (i < exifTagArr11.length) {
                sExifTagMapsForReading[i] = new HashMap<>();
                sExifTagMapsForWriting[i] = new HashMap<>();
                for (ExifTag exifTag : exifTagArr11[i]) {
                    sExifTagMapsForReading[i].put(Integer.valueOf(exifTag.number), exifTag);
                    sExifTagMapsForWriting[i].put(exifTag.name, exifTag);
                }
                i++;
            } else {
                HashMap<Integer, Integer> map = sExifPointerTagMap;
                ExifTag[] exifTagArr12 = EXIF_POINTER_TAGS;
                map.put(Integer.valueOf(exifTagArr12[0].number), 5);
                map.put(Integer.valueOf(exifTagArr12[1].number), 1);
                map.put(Integer.valueOf(exifTagArr12[2].number), 2);
                map.put(Integer.valueOf(exifTagArr12[3].number), 3);
                map.put(Integer.valueOf(exifTagArr12[4].number), 7);
                map.put(Integer.valueOf(exifTagArr12[5].number), 8);
                NON_ZERO_TIME_PATTERN = Pattern.compile(".*[1-9].*");
                GPS_TIMESTAMP_PATTERN = Pattern.compile("^(\\d{2}):(\\d{2}):(\\d{2})$");
                DATETIME_PRIMARY_FORMAT_PATTERN = Pattern.compile("^(\\d{4}):(\\d{2}):(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$");
                DATETIME_SECONDARY_FORMAT_PATTERN = Pattern.compile("^(\\d{4})-(\\d{2})-(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$");
                return;
            }
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public static class Rational {
        public final long denominator;
        public final long numerator;

        private Rational(long j, long j2) {
            if (j2 == 0) {
                this.numerator = 0L;
                this.denominator = 1L;
            } else {
                this.numerator = j;
                this.denominator = j2;
            }
        }

        public static Rational createFromDouble(double d) {
            long j;
            long j2;
            long j3 = 1;
            if (d >= 9.223372036854776E18d || d <= -9.223372036854776E18d) {
                return new Rational(d > 0.0d ? LongCompanionObject.MAX_VALUE : Long.MIN_VALUE, 1L);
            }
            double dAbs = Math.abs(d);
            long j4 = 0;
            long j5 = 1;
            double d2 = dAbs;
            long j6 = 0;
            while (true) {
                double d3 = d2 % 1.0d;
                long j7 = (long) (d2 - d3);
                j = j6 + (j7 * j3);
                j2 = (j7 * j4) + j5;
                d2 = 1.0d / d3;
                long j8 = j3;
                if (Math.abs(dAbs - (j / j2)) <= 1.0E-8d * dAbs) {
                    break;
                }
                j5 = j4;
                j3 = j;
                j6 = j8;
                j4 = j2;
            }
            if (d < 0.0d) {
                j = -j;
            }
            return new Rational(j, j2);
        }

        public String toString() {
            return this.numerator + "/" + this.denominator;
        }

        public double calculate() {
            return this.numerator / this.denominator;
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public static class ExifAttribute {
        public final byte[] bytes;
        public final long bytesOffset;
        public final int format;
        public final int numberOfComponents;

        public ExifAttribute(int i, int i2, byte[] bArr) {
            this(i, i2, -1L, bArr);
        }

        public ExifAttribute(int i, int i2, long j, byte[] bArr) {
            this.format = i;
            this.numberOfComponents = i2;
            this.bytesOffset = j;
            this.bytes = bArr;
        }

        public static ExifAttribute createUShort(int[] iArr, ByteOrder byteOrder) {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[ExifInterface.IFD_FORMAT_BYTES_PER_FORMAT[3] * iArr.length]);
            byteBufferWrap.order(byteOrder);
            for (int i : iArr) {
                byteBufferWrap.putShort((short) i);
            }
            return new ExifAttribute(3, iArr.length, byteBufferWrap.array());
        }

        public static ExifAttribute createUShort(int i, ByteOrder byteOrder) {
            return createUShort(new int[]{i}, byteOrder);
        }

        public static ExifAttribute createULong(long[] jArr, ByteOrder byteOrder) {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[ExifInterface.IFD_FORMAT_BYTES_PER_FORMAT[4] * jArr.length]);
            byteBufferWrap.order(byteOrder);
            for (long j : jArr) {
                byteBufferWrap.putInt((int) j);
            }
            return new ExifAttribute(4, jArr.length, byteBufferWrap.array());
        }

        public static ExifAttribute createULong(long j, ByteOrder byteOrder) {
            return createULong(new long[]{j}, byteOrder);
        }

        public static ExifAttribute createSLong(int[] iArr, ByteOrder byteOrder) {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[ExifInterface.IFD_FORMAT_BYTES_PER_FORMAT[9] * iArr.length]);
            byteBufferWrap.order(byteOrder);
            for (int i : iArr) {
                byteBufferWrap.putInt(i);
            }
            return new ExifAttribute(9, iArr.length, byteBufferWrap.array());
        }

        public static ExifAttribute createByte(String str) {
            if (str.length() != 1 || str.charAt(0) < '0' || str.charAt(0) > '1') {
                byte[] bytes = str.getBytes(ExifInterface.ASCII);
                return new ExifAttribute(1, bytes.length, bytes);
            }
            return new ExifAttribute(1, 1, new byte[]{(byte) (str.charAt(0) - '0')});
        }

        public static ExifAttribute createString(String str) {
            byte[] bytes = (str + (char) 0).getBytes(ExifInterface.ASCII);
            return new ExifAttribute(2, bytes.length, bytes);
        }

        public static ExifAttribute createURational(Rational[] rationalArr, ByteOrder byteOrder) {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[ExifInterface.IFD_FORMAT_BYTES_PER_FORMAT[5] * rationalArr.length]);
            byteBufferWrap.order(byteOrder);
            for (Rational rational : rationalArr) {
                byteBufferWrap.putInt((int) rational.numerator);
                byteBufferWrap.putInt((int) rational.denominator);
            }
            return new ExifAttribute(5, rationalArr.length, byteBufferWrap.array());
        }

        public static ExifAttribute createURational(Rational rational, ByteOrder byteOrder) {
            return createURational(new Rational[]{rational}, byteOrder);
        }

        public static ExifAttribute createSRational(Rational[] rationalArr, ByteOrder byteOrder) {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[ExifInterface.IFD_FORMAT_BYTES_PER_FORMAT[10] * rationalArr.length]);
            byteBufferWrap.order(byteOrder);
            for (Rational rational : rationalArr) {
                byteBufferWrap.putInt((int) rational.numerator);
                byteBufferWrap.putInt((int) rational.denominator);
            }
            return new ExifAttribute(10, rationalArr.length, byteBufferWrap.array());
        }

        public static ExifAttribute createDouble(double[] dArr, ByteOrder byteOrder) {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[ExifInterface.IFD_FORMAT_BYTES_PER_FORMAT[12] * dArr.length]);
            byteBufferWrap.order(byteOrder);
            for (double d : dArr) {
                byteBufferWrap.putDouble(d);
            }
            return new ExifAttribute(12, dArr.length, byteBufferWrap.array());
        }

        public String toString() {
            return "(" + ExifInterface.IFD_FORMAT_NAMES[this.format] + ", data length:" + this.bytes.length + ")";
        }

        /* JADX WARN: Not initialized variable reg: 4, insn: 0x0032: MOVE (r3 I:??[OBJECT, ARRAY]) = (r4 I:??[OBJECT, ARRAY]), block:B:18:0x0031 */
        /* JADX WARN: Removed duplicated region for block: B:109:0x0163 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:125:? A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Object getValue(ByteOrder byteOrder) throws Throwable {
            Throwable th;
            IOException iOException;
            ByteOrderedDataInputStream byteOrderedDataInputStream;
            InputStream inputStream;
            byte b2;
            String str;
            byte b3;
            Object str2;
            InputStream inputStream2 = null;
            try {
                try {
                    byteOrderedDataInputStream = new ByteOrderedDataInputStream(this.bytes);
                    try {
                        byteOrderedDataInputStream.setByteOrder(byteOrder);
                        int length = 0;
                        switch (this.format) {
                            case 1:
                            case 6:
                                byte[] bArr = this.bytes;
                                if (bArr.length != 1 || (b2 = bArr[0]) < 0 || b2 > 1) {
                                    str2 = new String(bArr, ExifInterface.ASCII);
                                    try {
                                        byteOrderedDataInputStream.close();
                                        return str2;
                                    } catch (IOException e) {
                                        Log.e("ExifInterface", "IOException occurred while closing InputStream", e);
                                        return str2;
                                    }
                                }
                                str = new String(new char[]{(char) (b2 + 48)});
                                try {
                                    byteOrderedDataInputStream.close();
                                    return str;
                                } catch (IOException e2) {
                                    Log.e("ExifInterface", "IOException occurred while closing InputStream", e2);
                                    return str;
                                }
                            case 2:
                            case 7:
                                if (this.numberOfComponents >= ExifInterface.EXIF_ASCII_PREFIX.length) {
                                    int i = 0;
                                    while (true) {
                                        if (i >= ExifInterface.EXIF_ASCII_PREFIX.length) {
                                            length = ExifInterface.EXIF_ASCII_PREFIX.length;
                                        } else if (this.bytes[i] == ExifInterface.EXIF_ASCII_PREFIX[i]) {
                                            i++;
                                        }
                                    }
                                }
                                StringBuilder sb = new StringBuilder();
                                while (length < this.numberOfComponents && (b3 = this.bytes[length]) != 0) {
                                    if (b3 >= 32) {
                                        sb.append((char) b3);
                                    } else {
                                        sb.append('?');
                                    }
                                    length++;
                                }
                                str = sb.toString();
                                byteOrderedDataInputStream.close();
                                return str;
                            case 3:
                                int[] iArr = new int[this.numberOfComponents];
                                while (true) {
                                    str2 = iArr;
                                    if (length < this.numberOfComponents) {
                                        iArr[length] = byteOrderedDataInputStream.readUnsignedShort();
                                        length++;
                                    }
                                    byteOrderedDataInputStream.close();
                                    return str2;
                                }
                            case 4:
                                long[] jArr = new long[this.numberOfComponents];
                                while (true) {
                                    str2 = jArr;
                                    if (length < this.numberOfComponents) {
                                        jArr[length] = byteOrderedDataInputStream.readUnsignedInt();
                                        length++;
                                    }
                                    byteOrderedDataInputStream.close();
                                    return str2;
                                }
                            case 5:
                                Rational[] rationalArr = new Rational[this.numberOfComponents];
                                while (true) {
                                    str2 = rationalArr;
                                    if (length < this.numberOfComponents) {
                                        rationalArr[length] = new Rational(byteOrderedDataInputStream.readUnsignedInt(), byteOrderedDataInputStream.readUnsignedInt());
                                        length++;
                                    }
                                    byteOrderedDataInputStream.close();
                                    return str2;
                                }
                            case 8:
                                int[] iArr2 = new int[this.numberOfComponents];
                                while (true) {
                                    str2 = iArr2;
                                    if (length < this.numberOfComponents) {
                                        iArr2[length] = byteOrderedDataInputStream.readShort();
                                        length++;
                                    }
                                    byteOrderedDataInputStream.close();
                                    return str2;
                                }
                            case 9:
                                int[] iArr3 = new int[this.numberOfComponents];
                                while (true) {
                                    str2 = iArr3;
                                    if (length < this.numberOfComponents) {
                                        iArr3[length] = byteOrderedDataInputStream.readInt();
                                        length++;
                                    }
                                    byteOrderedDataInputStream.close();
                                    return str2;
                                }
                            case 10:
                                Rational[] rationalArr2 = new Rational[this.numberOfComponents];
                                while (true) {
                                    str2 = rationalArr2;
                                    if (length < this.numberOfComponents) {
                                        rationalArr2[length] = new Rational(byteOrderedDataInputStream.readInt(), byteOrderedDataInputStream.readInt());
                                        length++;
                                    }
                                    byteOrderedDataInputStream.close();
                                    return str2;
                                }
                            case 11:
                                double[] dArr = new double[this.numberOfComponents];
                                while (true) {
                                    str2 = dArr;
                                    if (length < this.numberOfComponents) {
                                        dArr[length] = byteOrderedDataInputStream.readFloat();
                                        length++;
                                    }
                                    byteOrderedDataInputStream.close();
                                    return str2;
                                }
                            case 12:
                                double[] dArr2 = new double[this.numberOfComponents];
                                while (true) {
                                    str2 = dArr2;
                                    if (length < this.numberOfComponents) {
                                        dArr2[length] = byteOrderedDataInputStream.readDouble();
                                        length++;
                                    }
                                    byteOrderedDataInputStream.close();
                                    return str2;
                                }
                            default:
                                try {
                                    byteOrderedDataInputStream.close();
                                    return null;
                                } catch (IOException e3) {
                                    Log.e("ExifInterface", "IOException occurred while closing InputStream", e3);
                                    return null;
                                }
                        }
                    } catch (IOException e4) {
                        iOException = e4;
                        Log.w("ExifInterface", "IOException occurred during reading a value", iOException);
                        if (byteOrderedDataInputStream != null) {
                            try {
                                byteOrderedDataInputStream.close();
                            } catch (IOException e5) {
                                Log.e("ExifInterface", "IOException occurred while closing InputStream", e5);
                            }
                        }
                        return null;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    inputStream2 = inputStream;
                    if (inputStream2 != null) {
                        throw th;
                    }
                    try {
                        inputStream2.close();
                        throw th;
                    } catch (IOException e6) {
                        Log.e("ExifInterface", "IOException occurred while closing InputStream", e6);
                        throw th;
                    }
                }
            } catch (IOException e7) {
                iOException = e7;
                byteOrderedDataInputStream = null;
            } catch (Throwable th3) {
                th = th3;
                if (inputStream2 != null) {
                }
            }
        }

        public double getDoubleValue(ByteOrder byteOrder) throws Throwable {
            Object value = getValue(byteOrder);
            if (value == null) {
                throw new NumberFormatException("NULL can't be converted to a double value");
            }
            if (value instanceof String) {
                return Double.parseDouble((String) value);
            }
            if (value instanceof long[]) {
                if (((long[]) value).length == 1) {
                    return r3[0];
                }
                throw new NumberFormatException("There are more than one component");
            }
            if (value instanceof int[]) {
                if (((int[]) value).length == 1) {
                    return r3[0];
                }
                throw new NumberFormatException("There are more than one component");
            }
            if (value instanceof double[]) {
                double[] dArr = (double[]) value;
                if (dArr.length == 1) {
                    return dArr[0];
                }
                throw new NumberFormatException("There are more than one component");
            }
            if (value instanceof Rational[]) {
                Rational[] rationalArr = (Rational[]) value;
                if (rationalArr.length == 1) {
                    return rationalArr[0].calculate();
                }
                throw new NumberFormatException("There are more than one component");
            }
            throw new NumberFormatException("Couldn't find a double value");
        }

        public int getIntValue(ByteOrder byteOrder) throws Throwable {
            Object value = getValue(byteOrder);
            if (value == null) {
                throw new NumberFormatException("NULL can't be converted to a integer value");
            }
            if (value instanceof String) {
                return Integer.parseInt((String) value);
            }
            if (value instanceof long[]) {
                long[] jArr = (long[]) value;
                if (jArr.length == 1) {
                    return (int) jArr[0];
                }
                throw new NumberFormatException("There are more than one component");
            }
            if (value instanceof int[]) {
                int[] iArr = (int[]) value;
                if (iArr.length == 1) {
                    return iArr[0];
                }
                throw new NumberFormatException("There are more than one component");
            }
            throw new NumberFormatException("Couldn't find a integer value");
        }

        public String getStringValue(ByteOrder byteOrder) throws Throwable {
            Object value = getValue(byteOrder);
            if (value == null) {
                return null;
            }
            if (value instanceof String) {
                return (String) value;
            }
            StringBuilder sb = new StringBuilder();
            int i = 0;
            if (value instanceof long[]) {
                long[] jArr = (long[]) value;
                while (i < jArr.length) {
                    sb.append(jArr[i]);
                    i++;
                    if (i != jArr.length) {
                        sb.append(",");
                    }
                }
                return sb.toString();
            }
            if (value instanceof int[]) {
                int[] iArr = (int[]) value;
                while (i < iArr.length) {
                    sb.append(iArr[i]);
                    i++;
                    if (i != iArr.length) {
                        sb.append(",");
                    }
                }
                return sb.toString();
            }
            if (value instanceof double[]) {
                double[] dArr = (double[]) value;
                while (i < dArr.length) {
                    sb.append(dArr[i]);
                    i++;
                    if (i != dArr.length) {
                        sb.append(",");
                    }
                }
                return sb.toString();
            }
            if (!(value instanceof Rational[])) {
                return null;
            }
            Rational[] rationalArr = (Rational[]) value;
            while (i < rationalArr.length) {
                sb.append(rationalArr[i].numerator);
                sb.append('/');
                sb.append(rationalArr[i].denominator);
                i++;
                if (i != rationalArr.length) {
                    sb.append(",");
                }
            }
            return sb.toString();
        }

        public int size() {
            return ExifInterface.IFD_FORMAT_BYTES_PER_FORMAT[this.format] * this.numberOfComponents;
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public static class ExifTag {
        public final String name;
        public final int number;
        public final int primaryFormat;
        public final int secondaryFormat;

        public ExifTag(String str, int i, int i2) {
            this.name = str;
            this.number = i;
            this.primaryFormat = i2;
            this.secondaryFormat = -1;
        }

        public ExifTag(String str, int i, int i2, int i3) {
            this.name = str;
            this.number = i;
            this.primaryFormat = i2;
            this.secondaryFormat = i3;
        }

        public boolean isFormatCompatible(int i) {
            int i2;
            int i3 = this.primaryFormat;
            if (i3 == 7 || i == 7 || i3 == i || (i2 = this.secondaryFormat) == i) {
                return true;
            }
            if ((i3 == 4 || i2 == 4) && i == 3) {
                return true;
            }
            if ((i3 == 9 || i2 == 9) && i == 8) {
                return true;
            }
            return (i3 == 12 || i2 == 12) && i == 11;
        }
    }

    public ExifInterface(File file) throws Throwable {
        ExifTag[][] exifTagArr = EXIF_TAGS;
        this.mAttributes = new HashMap[exifTagArr.length];
        this.mAttributesOffsets = new HashSet(exifTagArr.length);
        this.mExifByteOrder = ByteOrder.BIG_ENDIAN;
        if (file == null) {
            f$$ExternalSyntheticBUOutline2.m179m("file cannot be null");
            throw null;
        }
        initForFilename(file.getAbsolutePath());
    }

    public ExifInterface(String str) throws Throwable {
        ExifTag[][] exifTagArr = EXIF_TAGS;
        this.mAttributes = new HashMap[exifTagArr.length];
        this.mAttributesOffsets = new HashSet(exifTagArr.length);
        this.mExifByteOrder = ByteOrder.BIG_ENDIAN;
        if (str == null) {
            f$$ExternalSyntheticBUOutline2.m179m("filename cannot be null");
            throw null;
        }
        initForFilename(str);
    }

    public ExifInterface(InputStream inputStream) {
        this(inputStream, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ExifInterface(InputStream inputStream, int i) {
        ExifTag[][] exifTagArr = EXIF_TAGS;
        this.mAttributes = new HashMap[exifTagArr.length];
        this.mAttributesOffsets = new HashSet(exifTagArr.length);
        this.mExifByteOrder = ByteOrder.BIG_ENDIAN;
        if (inputStream == null) {
            f$$ExternalSyntheticBUOutline2.m179m("inputStream cannot be null");
            throw null;
        }
        this.mFilename = null;
        boolean z = i == 1;
        this.mIsExifDataOnly = z;
        if (z) {
            this.mAssetInputStream = null;
            this.mSeekableFileDescriptor = null;
        } else if (inputStream instanceof AssetManager.AssetInputStream) {
            this.mAssetInputStream = (AssetManager.AssetInputStream) inputStream;
            this.mSeekableFileDescriptor = null;
        } else if (inputStream instanceof FileInputStream) {
            FileInputStream fileInputStream = (FileInputStream) inputStream;
            if (isSeekableFD(fileInputStream.getFD())) {
                this.mAssetInputStream = null;
                this.mSeekableFileDescriptor = fileInputStream.getFD();
            } else {
                this.mAssetInputStream = null;
                this.mSeekableFileDescriptor = null;
            }
        }
        loadAttributes(inputStream);
    }

    private ExifAttribute getExifAttribute(String str) {
        ExifAttribute exifAttribute;
        ExifAttribute exifAttribute2;
        if (str == null) {
            f$$ExternalSyntheticBUOutline2.m179m("tag shouldn't be null");
            return null;
        }
        if ("ISOSpeedRatings".equals(str)) {
            if (DEBUG) {
                Log.d("ExifInterface", "getExifAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY.");
            }
            str = "PhotographicSensitivity";
        }
        if ("Xmp".equals(str) && getXmpHandlingForImageType(this.mMimeType) == 2 && (exifAttribute2 = this.mXmpFromSeparateMarker) != null) {
            return exifAttribute2;
        }
        for (int i = 0; i < EXIF_TAGS.length; i++) {
            ExifAttribute exifAttribute3 = this.mAttributes[i].get(str);
            if (exifAttribute3 != null) {
                return exifAttribute3;
            }
        }
        if (!"Xmp".equals(str) || (exifAttribute = this.mXmpFromSeparateMarker) == null) {
            return null;
        }
        return exifAttribute;
    }

    public String getAttribute(String str) {
        if (str == null) {
            f$$ExternalSyntheticBUOutline2.m179m("tag shouldn't be null");
            return null;
        }
        ExifAttribute exifAttribute = getExifAttribute(str);
        if (exifAttribute == null) {
            return null;
        }
        if (str.equals("GPSTimeStamp")) {
            int i = exifAttribute.format;
            if (i != 5 && i != 10) {
                Log.w("ExifInterface", "GPS Timestamp format is not rational. format=" + exifAttribute.format);
                return null;
            }
            Rational[] rationalArr = (Rational[]) exifAttribute.getValue(this.mExifByteOrder);
            if (rationalArr == null || rationalArr.length != 3) {
                Log.w("ExifInterface", "Invalid GPS Timestamp array. array=" + Arrays.toString(rationalArr));
                return null;
            }
            Rational rational = rationalArr[0];
            Integer numValueOf = Integer.valueOf((int) (rational.numerator / rational.denominator));
            Rational rational2 = rationalArr[1];
            Integer numValueOf2 = Integer.valueOf((int) (rational2.numerator / rational2.denominator));
            Rational rational3 = rationalArr[2];
            return String.format("%02d:%02d:%02d", numValueOf, numValueOf2, Integer.valueOf((int) (rational3.numerator / rational3.denominator)));
        }
        boolean zContains = RATIONAL_TAGS_HANDLED_AS_DECIMALS_FOR_COMPATIBILITY.contains(str);
        ByteOrder byteOrder = this.mExifByteOrder;
        if (zContains) {
            try {
                return Double.toString(exifAttribute.getDoubleValue(byteOrder));
            } catch (NumberFormatException unused) {
                return null;
            }
        }
        return exifAttribute.getStringValue(byteOrder);
    }

    public int getAttributeInt(String str, int i) {
        if (str == null) {
            f$$ExternalSyntheticBUOutline2.m179m("tag shouldn't be null");
            return 0;
        }
        ExifAttribute exifAttribute = getExifAttribute(str);
        if (exifAttribute != null) {
            try {
                return exifAttribute.getIntValue(this.mExifByteOrder);
            } catch (NumberFormatException unused) {
            }
        }
        return i;
    }

    public double getAttributeDouble(String str, double d) {
        if (str == null) {
            f$$ExternalSyntheticBUOutline2.m179m("tag shouldn't be null");
            return 0.0d;
        }
        ExifAttribute exifAttribute = getExifAttribute(str);
        if (exifAttribute != null) {
            try {
                return exifAttribute.getDoubleValue(this.mExifByteOrder);
            } catch (NumberFormatException unused) {
            }
        }
        return d;
    }

    public void setAttribute(String str, String str2) {
        ExifTag exifTag;
        int i;
        String str3;
        int i2;
        int i3;
        String str4 = str;
        String strReplaceAll = str2;
        if (str4 == null) {
            f$$ExternalSyntheticBUOutline2.m179m("tag shouldn't be null");
            return;
        }
        if ("ISOSpeedRatings".equals(str4)) {
            if (DEBUG) {
                Log.d("ExifInterface", "setAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY.");
            }
            str4 = "PhotographicSensitivity";
        }
        int i4 = 2;
        String str5 = "/";
        int i5 = 1;
        if (strReplaceAll != null) {
            if (RATIONAL_TAGS_HANDLED_AS_DECIMALS_FOR_COMPATIBILITY.contains(str4) && !strReplaceAll.contains("/")) {
                try {
                    strReplaceAll = Rational.createFromDouble(Double.parseDouble(strReplaceAll)).toString();
                } catch (NumberFormatException unused) {
                    Log.w("ExifInterface", "Invalid value for " + str4 + " : " + strReplaceAll);
                    return;
                }
            } else if (str4.equals("GPSTimeStamp")) {
                Matcher matcher = GPS_TIMESTAMP_PATTERN.matcher(strReplaceAll);
                if (!matcher.find()) {
                    Log.w("ExifInterface", "Invalid value for " + str4 + " : " + strReplaceAll);
                    return;
                }
                strReplaceAll = Integer.parseInt(matcher.group(1)) + "/1," + Integer.parseInt(matcher.group(2)) + "/1," + Integer.parseInt(matcher.group(3)) + "/1";
            } else if ("DateTime".equals(str4) || "DateTimeOriginal".equals(str4) || "DateTimeDigitized".equals(str4)) {
                boolean zFind = DATETIME_PRIMARY_FORMAT_PATTERN.matcher(strReplaceAll).find();
                boolean zFind2 = DATETIME_SECONDARY_FORMAT_PATTERN.matcher(strReplaceAll).find();
                if (strReplaceAll.length() != 19 || (!zFind && !zFind2)) {
                    Log.w("ExifInterface", "Invalid value for " + str4 + " : " + strReplaceAll);
                    return;
                }
                if (zFind2) {
                    strReplaceAll = strReplaceAll.replaceAll("-", ":");
                }
            }
        }
        int i6 = 0;
        if ("Xmp".equals(str4)) {
            boolean z = this.mAttributes[0].containsKey("Xmp") || this.mAttributes[5].containsKey("Xmp");
            int xmpHandlingForImageType = getXmpHandlingForImageType(this.mMimeType);
            if ((xmpHandlingForImageType == 2 && (this.mXmpFromSeparateMarker != null || !z)) || (xmpHandlingForImageType == 3 && !z)) {
                this.mXmpFromSeparateMarker = strReplaceAll != null ? ExifAttribute.createByte(strReplaceAll) : null;
                return;
            }
        }
        int i7 = 0;
        while (i7 < EXIF_TAGS.length) {
            if ((i7 != 4 || this.mHasThumbnail) && (exifTag = sExifTagMapsForWriting[i7].get(str4)) != null) {
                if (strReplaceAll == null) {
                    this.mAttributes[i7].remove(str4);
                } else {
                    Pair<Integer, Integer> pairGuessDataFormat = guessDataFormat(strReplaceAll);
                    if (exifTag.primaryFormat == ((Integer) pairGuessDataFormat.first).intValue() || exifTag.primaryFormat == ((Integer) pairGuessDataFormat.second).intValue()) {
                        i = exifTag.primaryFormat;
                    } else {
                        int i8 = exifTag.secondaryFormat;
                        if (i8 != -1 && (i8 == ((Integer) pairGuessDataFormat.first).intValue() || exifTag.secondaryFormat == ((Integer) pairGuessDataFormat.second).intValue())) {
                            i = exifTag.secondaryFormat;
                        } else {
                            int i9 = exifTag.primaryFormat;
                            if (i9 == i5 || i9 == 7 || i9 == i4) {
                                i = i9;
                            } else if (DEBUG) {
                                StringBuilder sb = new StringBuilder("Given tag (");
                                sb.append(str4);
                                sb.append(") value didn't match with one of expected formats: ");
                                String[] strArr = IFD_FORMAT_NAMES;
                                sb.append(strArr[exifTag.primaryFormat]);
                                int i10 = exifTag.secondaryFormat;
                                String str6 = _UrlKt.FRAGMENT_ENCODE_SET;
                                sb.append(i10 == -1 ? _UrlKt.FRAGMENT_ENCODE_SET : ", " + strArr[exifTag.secondaryFormat]);
                                sb.append(" (guess: ");
                                sb.append(strArr[((Integer) pairGuessDataFormat.first).intValue()]);
                                if (((Integer) pairGuessDataFormat.second).intValue() != -1) {
                                    str6 = ", " + strArr[((Integer) pairGuessDataFormat.second).intValue()];
                                }
                                sb.append(str6);
                                sb.append(")");
                                Log.d("ExifInterface", sb.toString());
                            }
                        }
                    }
                    switch (i) {
                        case 1:
                            str3 = str5;
                            i2 = i5;
                            i3 = i6;
                            this.mAttributes[i7].put(str4, ExifAttribute.createByte(strReplaceAll));
                            break;
                        case 2:
                        case 7:
                            str3 = str5;
                            i2 = i5;
                            i3 = i6;
                            this.mAttributes[i7].put(str4, ExifAttribute.createString(strReplaceAll));
                            break;
                        case 3:
                            str3 = str5;
                            i2 = i5;
                            i3 = i6;
                            String[] strArrSplit = strReplaceAll.split(",", -1);
                            int[] iArr = new int[strArrSplit.length];
                            for (int i11 = i3; i11 < strArrSplit.length; i11++) {
                                iArr[i11] = Integer.parseInt(strArrSplit[i11]);
                            }
                            this.mAttributes[i7].put(str4, ExifAttribute.createUShort(iArr, this.mExifByteOrder));
                            break;
                        case 4:
                            str3 = str5;
                            i2 = i5;
                            i3 = i6;
                            String[] strArrSplit2 = strReplaceAll.split(",", -1);
                            long[] jArr = new long[strArrSplit2.length];
                            for (int i12 = i3; i12 < strArrSplit2.length; i12++) {
                                jArr[i12] = Long.parseLong(strArrSplit2[i12]);
                            }
                            this.mAttributes[i7].put(str4, ExifAttribute.createULong(jArr, this.mExifByteOrder));
                            break;
                        case 5:
                            i2 = i5;
                            i3 = i6;
                            String[] strArrSplit3 = strReplaceAll.split(",", -1);
                            Rational[] rationalArr = new Rational[strArrSplit3.length];
                            int i13 = i3;
                            while (i13 < strArrSplit3.length) {
                                String[] strArrSplit4 = strArrSplit3[i13].split(str5, -1);
                                rationalArr[i13] = new Rational((long) Double.parseDouble(strArrSplit4[i3]), (long) Double.parseDouble(strArrSplit4[i2]));
                                i13++;
                                str5 = str5;
                            }
                            str3 = str5;
                            this.mAttributes[i7].put(str4, ExifAttribute.createURational(rationalArr, this.mExifByteOrder));
                            break;
                        case 6:
                        case 8:
                        case 11:
                        default:
                            if (DEBUG) {
                                Log.d("ExifInterface", "Data format isn't one of expected formats: " + i);
                            }
                            break;
                        case 9:
                            i2 = i5;
                            i3 = i6;
                            String[] strArrSplit5 = strReplaceAll.split(",", -1);
                            int[] iArr2 = new int[strArrSplit5.length];
                            for (int i14 = i3; i14 < strArrSplit5.length; i14++) {
                                iArr2[i14] = Integer.parseInt(strArrSplit5[i14]);
                            }
                            this.mAttributes[i7].put(str4, ExifAttribute.createSLong(iArr2, this.mExifByteOrder));
                            str3 = str5;
                            break;
                        case 10:
                            String[] strArrSplit6 = strReplaceAll.split(",", -1);
                            Rational[] rationalArr2 = new Rational[strArrSplit6.length];
                            int i15 = i6;
                            while (i15 < strArrSplit6.length) {
                                String[] strArrSplit7 = strArrSplit6[i15].split(str5, -1);
                                int i16 = i5;
                                int i17 = i15;
                                rationalArr2[i17] = new Rational((long) Double.parseDouble(strArrSplit7[i6]), (long) Double.parseDouble(strArrSplit7[i16]));
                                i15 = i17 + 1;
                                i5 = i16;
                                strArrSplit6 = strArrSplit6;
                                i6 = i6;
                            }
                            i2 = i5;
                            i3 = i6;
                            this.mAttributes[i7].put(str4, ExifAttribute.createSRational(rationalArr2, this.mExifByteOrder));
                            str3 = str5;
                            break;
                        case 12:
                            String[] strArrSplit8 = strReplaceAll.split(",", -1);
                            double[] dArr = new double[strArrSplit8.length];
                            for (int i18 = i6; i18 < strArrSplit8.length; i18++) {
                                dArr[i18] = Double.parseDouble(strArrSplit8[i18]);
                            }
                            this.mAttributes[i7].put(str4, ExifAttribute.createDouble(dArr, this.mExifByteOrder));
                            break;
                    }
                }
                str3 = str5;
                i2 = i5;
                i3 = i6;
            } else {
                str3 = str5;
                i2 = i5;
                i3 = i6;
            }
            i7++;
            i5 = i2;
            i6 = i3;
            str5 = str3;
            i4 = 2;
        }
    }

    private void removeAttribute(String str) {
        for (int i = 0; i < EXIF_TAGS.length; i++) {
            this.mAttributes[i].remove(str);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x00af A[Catch: all -> 0x0013, TRY_LEAVE, TryCatch #2 {all -> 0x0013, blocks: (B:3:0x0002, B:5:0x0007, B:12:0x001c, B:14:0x0020, B:15:0x002e, B:17:0x0036, B:19:0x003f, B:38:0x0071, B:25:0x0050, B:32:0x005e, B:35:0x0066, B:36:0x006a, B:37:0x006e, B:39:0x007b, B:41:0x0085, B:44:0x008d, B:47:0x0095, B:50:0x009d, B:55:0x00ab, B:57:0x00af), top: B:66:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:70:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void loadAttributes(InputStream inputStream) {
        boolean z;
        for (int i = 0; i < EXIF_TAGS.length; i++) {
            try {
                try {
                    this.mAttributes[i] = new HashMap<>();
                } catch (Throwable th) {
                    addDefaultValuesForCompatibility();
                    if (DEBUG) {
                        printAttributes();
                    }
                    throw th;
                }
            } catch (IOException e) {
                e = e;
                z = DEBUG;
                if (z) {
                    Log.w("ExifInterface", "Invalid image: ExifInterface got an unsupported image format file (ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface.", e);
                }
                addDefaultValuesForCompatibility();
                if (z) {
                    return;
                }
                printAttributes();
                return;
            } catch (UnsupportedOperationException e2) {
                e = e2;
                z = DEBUG;
                if (z) {
                }
                addDefaultValuesForCompatibility();
                if (z) {
                }
            }
        }
        if (!this.mIsExifDataOnly) {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream, 5000);
            this.mMimeType = getMimeType(bufferedInputStream);
            inputStream = bufferedInputStream;
        }
        if (shouldSupportSeek(this.mMimeType)) {
            SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream = new SeekableByteOrderedDataInputStream(inputStream);
            if (!this.mIsExifDataOnly) {
                int i2 = this.mMimeType;
                if (i2 == 12 || i2 == 15) {
                    getHeifAttributes(seekableByteOrderedDataInputStream, i2);
                } else if (i2 == 7) {
                    getOrfAttributes(seekableByteOrderedDataInputStream);
                } else if (i2 == 10) {
                    getRw2Attributes(seekableByteOrderedDataInputStream);
                } else {
                    getRawAttributes(seekableByteOrderedDataInputStream);
                }
            } else if (!getStandaloneAttributes(seekableByteOrderedDataInputStream)) {
                addDefaultValuesForCompatibility();
                if (DEBUG) {
                    printAttributes();
                    return;
                }
                return;
            }
            seekableByteOrderedDataInputStream.seek(this.mOffsetToExifData);
            setThumbnailData(seekableByteOrderedDataInputStream);
        } else {
            ByteOrderedDataInputStream byteOrderedDataInputStream = new ByteOrderedDataInputStream(inputStream);
            int i3 = this.mMimeType;
            if (i3 == 4) {
                getJpegAttributes(byteOrderedDataInputStream, 0, 0);
            } else if (i3 == 13) {
                getPngAttributes(byteOrderedDataInputStream);
            } else if (i3 == 9) {
                getRafAttributes(byteOrderedDataInputStream);
            } else if (i3 == 14) {
                getWebpAttributes(byteOrderedDataInputStream);
            }
        }
        addDefaultValuesForCompatibility();
        if (DEBUG) {
            printAttributes();
        }
    }

    private static boolean isSeekableFD(FileDescriptor fileDescriptor) {
        try {
            Os.lseek(fileDescriptor, 0L, OsConstants.SEEK_CUR);
            return true;
        } catch (Exception unused) {
            if (!DEBUG) {
                return false;
            }
            Log.d("ExifInterface", "The file descriptor for the given input is not seekable");
            return false;
        }
    }

    private void printAttributes() {
        for (int i = 0; i < this.mAttributes.length; i++) {
            Log.d("ExifInterface", "The size of tag group[" + i + "]: " + this.mAttributes[i].size());
            for (Map.Entry<String, ExifAttribute> entry : this.mAttributes[i].entrySet()) {
                ExifAttribute value = entry.getValue();
                Log.d("ExifInterface", "tagName: " + entry.getKey() + ", tagType: " + value.toString() + ", tagValue: '" + value.getStringValue(this.mExifByteOrder) + "'");
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:70:0x00f1 A[Catch: all -> 0x00fa, Exception -> 0x00fe, TryCatch #17 {Exception -> 0x00fe, all -> 0x00fa, blocks: (B:68:0x00ed, B:70:0x00f1, B:77:0x0110, B:76:0x0101), top: B:129:0x00ed }] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0101 A[Catch: all -> 0x00fa, Exception -> 0x00fe, TryCatch #17 {Exception -> 0x00fe, all -> 0x00fa, blocks: (B:68:0x00ed, B:70:0x00f1, B:77:0x0110, B:76:0x0101), top: B:129:0x00ed }] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x014f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void saveAttributes() throws Throwable {
        FileOutputStream fileOutputStream;
        FileInputStream fileInputStream;
        BufferedOutputStream bufferedOutputStream;
        BufferedInputStream bufferedInputStream;
        Exception exc;
        OutputStream fileOutputStream2;
        FileInputStream fileInputStream2;
        FileOutputStream fileOutputStream3;
        FileInputStream fileInputStream3;
        if (!isSupportedFormatForSavingAttributes(this.mMimeType)) {
            Model$$ExternalSyntheticBUOutline0.m964m("ExifInterface only supports saving attributes for JPEG, PNG, and WebP formats.");
            return;
        }
        if (this.mSeekableFileDescriptor == null && this.mFilename == null) {
            Model$$ExternalSyntheticBUOutline0.m964m("ExifInterface does not support saving attributes for the current input.");
            return;
        }
        if (this.mHasThumbnail && this.mHasThumbnailStrips && !this.mAreThumbnailStripsConsecutive) {
            Model$$ExternalSyntheticBUOutline0.m964m("ExifInterface does not support saving attributes when the image file has non-consecutive thumbnail strips");
            return;
        }
        boolean z = true;
        this.mModified = true;
        this.mThumbnailBytes = getThumbnail();
        InputStream inputStream = null;
        try {
            File fileCreateTempFile = File.createTempFile("temp", "tmp");
            if (this.mFilename != null) {
                fileInputStream = new FileInputStream(this.mFilename);
            } else {
                Os.lseek(this.mSeekableFileDescriptor, 0L, OsConstants.SEEK_SET);
                fileInputStream = new FileInputStream(this.mSeekableFileDescriptor);
            }
            try {
                fileOutputStream = new FileOutputStream(fileCreateTempFile);
                try {
                    ExifInterfaceUtils.copy(fileInputStream, fileOutputStream);
                    ExifInterfaceUtils.closeQuietly(fileInputStream);
                    ExifInterfaceUtils.closeQuietly(fileOutputStream);
                    boolean z2 = false;
                    try {
                    } catch (Throwable th) {
                        th = th;
                    }
                    try {
                        try {
                            fileInputStream3 = new FileInputStream(fileCreateTempFile);
                        } catch (Throwable th2) {
                            th = th2;
                            bufferedOutputStream = null;
                            ExifInterfaceUtils.closeQuietly(inputStream);
                            ExifInterfaceUtils.closeQuietly(bufferedOutputStream);
                            if (!z2) {
                            }
                            throw th;
                        }
                        try {
                            if (this.mFilename != null) {
                                fileOutputStream2 = new FileOutputStream(this.mFilename);
                            } else {
                                Os.lseek(this.mSeekableFileDescriptor, 0L, OsConstants.SEEK_SET);
                                fileOutputStream2 = new FileOutputStream(this.mSeekableFileDescriptor);
                            }
                            try {
                                bufferedInputStream = new BufferedInputStream(fileInputStream3);
                                try {
                                    bufferedOutputStream = new BufferedOutputStream(fileOutputStream2);
                                    try {
                                        int i = this.mMimeType;
                                        if (i == 4) {
                                            saveJpegAttributes(bufferedInputStream, bufferedOutputStream);
                                        } else if (i == 13) {
                                            savePngAttributes(bufferedInputStream, bufferedOutputStream);
                                        } else if (i == 14) {
                                            saveWebpAttributes(bufferedInputStream, bufferedOutputStream);
                                        }
                                        ExifInterfaceUtils.closeQuietly(bufferedInputStream);
                                        ExifInterfaceUtils.closeQuietly(bufferedOutputStream);
                                        fileCreateTempFile.delete();
                                        this.mThumbnailBytes = null;
                                    } catch (Exception e) {
                                        exc = e;
                                        inputStream = fileInputStream3;
                                        try {
                                            fileInputStream2 = new FileInputStream(fileCreateTempFile);
                                        } catch (Exception e2) {
                                            e = e2;
                                        } catch (Throwable th3) {
                                            th = th3;
                                            z = false;
                                        }
                                        try {
                                            if (this.mFilename == null) {
                                                fileOutputStream3 = new FileOutputStream(this.mFilename);
                                            } else {
                                                Os.lseek(this.mSeekableFileDescriptor, 0L, OsConstants.SEEK_SET);
                                                fileOutputStream3 = new FileOutputStream(this.mSeekableFileDescriptor);
                                            }
                                            fileOutputStream2 = fileOutputStream3;
                                            ExifInterfaceUtils.copy(fileInputStream2, fileOutputStream2);
                                            ExifInterfaceUtils.closeQuietly(fileInputStream2);
                                            ExifInterfaceUtils.closeQuietly(fileOutputStream2);
                                            throw new IOException("Failed to save new file", exc);
                                        } catch (Exception e3) {
                                            e = e3;
                                            inputStream = fileInputStream2;
                                            try {
                                                throw new IOException("Failed to save new file. Original file is stored in " + fileCreateTempFile.getAbsolutePath(), e);
                                            } catch (Throwable th4) {
                                                th = th4;
                                                try {
                                                    ExifInterfaceUtils.closeQuietly(inputStream);
                                                    ExifInterfaceUtils.closeQuietly(fileOutputStream2);
                                                    throw th;
                                                } catch (Throwable th5) {
                                                    th = th5;
                                                    z2 = z;
                                                    inputStream = bufferedInputStream;
                                                    ExifInterfaceUtils.closeQuietly(inputStream);
                                                    ExifInterfaceUtils.closeQuietly(bufferedOutputStream);
                                                    if (!z2) {
                                                        fileCreateTempFile.delete();
                                                    }
                                                    throw th;
                                                }
                                            }
                                        } catch (Throwable th6) {
                                            th = th6;
                                            z = false;
                                            inputStream = fileInputStream2;
                                            ExifInterfaceUtils.closeQuietly(inputStream);
                                            ExifInterfaceUtils.closeQuietly(fileOutputStream2);
                                            throw th;
                                        }
                                    }
                                } catch (Exception e4) {
                                    bufferedOutputStream = null;
                                    inputStream = fileInputStream3;
                                    exc = e4;
                                } catch (Throwable th7) {
                                    th = th7;
                                    bufferedOutputStream = null;
                                    inputStream = bufferedInputStream;
                                    ExifInterfaceUtils.closeQuietly(inputStream);
                                    ExifInterfaceUtils.closeQuietly(bufferedOutputStream);
                                    if (!z2) {
                                    }
                                    throw th;
                                }
                            } catch (Exception e5) {
                                bufferedOutputStream = null;
                                inputStream = fileInputStream3;
                                exc = e5;
                                bufferedInputStream = null;
                            }
                        } catch (Exception e6) {
                            e = e6;
                            bufferedInputStream = null;
                            bufferedOutputStream = null;
                            inputStream = fileInputStream3;
                            exc = e;
                            fileOutputStream2 = bufferedOutputStream;
                            fileInputStream2 = new FileInputStream(fileCreateTempFile);
                            if (this.mFilename == null) {
                            }
                            fileOutputStream2 = fileOutputStream3;
                            ExifInterfaceUtils.copy(fileInputStream2, fileOutputStream2);
                            ExifInterfaceUtils.closeQuietly(fileInputStream2);
                            ExifInterfaceUtils.closeQuietly(fileOutputStream2);
                            throw new IOException("Failed to save new file", exc);
                        }
                    } catch (Exception e7) {
                        e = e7;
                        bufferedInputStream = null;
                        bufferedOutputStream = null;
                    }
                } catch (Exception e8) {
                    e = e8;
                    inputStream = fileInputStream;
                    try {
                        throw new IOException("Failed to copy original file to temp file", e);
                    } catch (Throwable th8) {
                        th = th8;
                        ExifInterfaceUtils.closeQuietly(inputStream);
                        ExifInterfaceUtils.closeQuietly(fileOutputStream);
                        throw th;
                    }
                } catch (Throwable th9) {
                    th = th9;
                    inputStream = fileInputStream;
                    ExifInterfaceUtils.closeQuietly(inputStream);
                    ExifInterfaceUtils.closeQuietly(fileOutputStream);
                    throw th;
                }
            } catch (Exception e9) {
                e = e9;
                fileOutputStream = null;
            } catch (Throwable th10) {
                th = th10;
                fileOutputStream = null;
            }
        } catch (Exception e10) {
            e = e10;
            fileOutputStream = null;
        } catch (Throwable th11) {
            th = th11;
            fileOutputStream = null;
        }
    }

    public byte[] getThumbnail() {
        int i = this.mThumbnailCompression;
        if (i == 6 || i == 7) {
            return getThumbnailBytes();
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0088  */
    /* JADX WARN: Type inference failed for: r1v1, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v6, types: [android.content.res.AssetManager$AssetInputStream, java.io.Closeable, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.io.Closeable, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public byte[] getThumbnailBytes() throws Throwable {
        FileDescriptor fileDescriptor;
        ?? fileInputStream;
        ?? r2 = 0;
        r2 = 0;
        if (!this.mHasThumbnail) {
            return null;
        }
        ?? fileInputStream2 = this.mThumbnailBytes;
        try {
            if (fileInputStream2 != 0) {
                return fileInputStream2;
            }
            try {
                fileInputStream2 = this.mAssetInputStream;
                if (fileInputStream2 != 0) {
                    try {
                        if (!fileInputStream2.markSupported()) {
                            Log.d("ExifInterface", "Cannot read thumbnail from inputstream without mark/reset support");
                            ExifInterfaceUtils.closeQuietly(fileInputStream2);
                            return null;
                        }
                        fileInputStream2.reset();
                        fileInputStream = fileInputStream2;
                        fileDescriptor = null;
                        fileInputStream2 = fileInputStream;
                    } catch (Exception e) {
                        e = e;
                        fileDescriptor = null;
                        Log.d("ExifInterface", "Encountered exception while getting thumbnail", e);
                        ExifInterfaceUtils.closeQuietly(fileInputStream2);
                        if (fileDescriptor != null) {
                        }
                        return null;
                    } catch (Throwable th) {
                        th = th;
                        fileDescriptor = null;
                    }
                } else if (this.mFilename != null) {
                    fileInputStream = new FileInputStream(this.mFilename);
                    fileDescriptor = null;
                    fileInputStream2 = fileInputStream;
                } else {
                    FileDescriptor fileDescriptorDup = Os.dup(this.mSeekableFileDescriptor);
                    try {
                        Os.lseek(fileDescriptorDup, 0L, OsConstants.SEEK_SET);
                        fileDescriptor = fileDescriptorDup;
                        fileInputStream2 = new FileInputStream(fileDescriptorDup);
                    } catch (Exception e2) {
                        e = e2;
                        fileDescriptor = fileDescriptorDup;
                        fileInputStream2 = 0;
                        Log.d("ExifInterface", "Encountered exception while getting thumbnail", e);
                        ExifInterfaceUtils.closeQuietly(fileInputStream2);
                        if (fileDescriptor != null) {
                        }
                        return null;
                    } catch (Throwable th2) {
                        th = th2;
                        fileDescriptor = fileDescriptorDup;
                    }
                }
                try {
                    ByteOrderedDataInputStream byteOrderedDataInputStream = new ByteOrderedDataInputStream((InputStream) fileInputStream2);
                    byteOrderedDataInputStream.skipFully(this.mThumbnailOffset + this.mOffsetToExifData);
                    byte[] bArr = new byte[this.mThumbnailLength];
                    byteOrderedDataInputStream.readFully(bArr);
                    this.mThumbnailBytes = bArr;
                    ExifInterfaceUtils.closeQuietly(fileInputStream2);
                    if (fileDescriptor != null) {
                        ExifInterfaceUtils.closeFileDescriptor(fileDescriptor);
                    }
                    return bArr;
                } catch (Exception e3) {
                    e = e3;
                    Log.d("ExifInterface", "Encountered exception while getting thumbnail", e);
                    ExifInterfaceUtils.closeQuietly(fileInputStream2);
                    if (fileDescriptor != null) {
                        ExifInterfaceUtils.closeFileDescriptor(fileDescriptor);
                    }
                    return null;
                }
            } catch (Exception e4) {
                e = e4;
                fileInputStream2 = 0;
                fileDescriptor = null;
            } catch (Throwable th3) {
                th = th3;
                fileDescriptor = null;
            }
        } catch (Throwable th4) {
            th = th4;
        }
        r2 = fileInputStream2;
        ExifInterfaceUtils.closeQuietly(r2);
        if (fileDescriptor != null) {
            ExifInterfaceUtils.closeFileDescriptor(fileDescriptor);
        }
        throw th;
    }

    public double[] getLatLong() {
        String attribute = getAttribute("GPSLatitude");
        String attribute2 = getAttribute("GPSLatitudeRef");
        String attribute3 = getAttribute("GPSLongitude");
        String attribute4 = getAttribute("GPSLongitudeRef");
        if (attribute == null || attribute2 == null || attribute3 == null || attribute4 == null) {
            return null;
        }
        try {
            return new double[]{convertRationalLatLonToDouble(attribute, attribute2), convertRationalLatLonToDouble(attribute3, attribute4)};
        } catch (IllegalArgumentException unused) {
            Log.w("ExifInterface", "Latitude/longitude values are not parsable. ".concat(String.format("latValue=%s, latRef=%s, lngValue=%s, lngRef=%s", attribute, attribute2, attribute3, attribute4)));
            return null;
        }
    }

    public double getAltitude(double d) {
        double attributeDouble = getAttributeDouble("GPSAltitude", -1.0d);
        int attributeInt = getAttributeInt("GPSAltitudeRef", -1);
        if (attributeDouble < 0.0d || attributeInt < 0) {
            return d;
        }
        return attributeDouble * ((double) (attributeInt != 1 ? 1 : -1));
    }

    private void initForFilename(String str) throws Throwable {
        FileInputStream fileInputStream;
        if (str == null) {
            f$$ExternalSyntheticBUOutline2.m179m("filename cannot be null");
            return;
        }
        FileInputStream fileInputStream2 = null;
        this.mAssetInputStream = null;
        this.mFilename = str;
        try {
            fileInputStream = new FileInputStream(str);
        } catch (Throwable th) {
            th = th;
        }
        try {
            if (isSeekableFD(fileInputStream.getFD())) {
                this.mSeekableFileDescriptor = fileInputStream.getFD();
            } else {
                this.mSeekableFileDescriptor = null;
            }
            loadAttributes(fileInputStream);
            ExifInterfaceUtils.closeQuietly(fileInputStream);
        } catch (Throwable th2) {
            th = th2;
            fileInputStream2 = fileInputStream;
            ExifInterfaceUtils.closeQuietly(fileInputStream2);
            throw th;
        }
    }

    private static double convertRationalLatLonToDouble(String str, String str2) {
        try {
            String[] strArrSplit = str.split(",", -1);
            String[] strArrSplit2 = strArrSplit[0].split("/", -1);
            double d = Double.parseDouble(strArrSplit2[0].trim()) / Double.parseDouble(strArrSplit2[1].trim());
            String[] strArrSplit3 = strArrSplit[1].split("/", -1);
            double d2 = Double.parseDouble(strArrSplit3[0].trim()) / Double.parseDouble(strArrSplit3[1].trim());
            String[] strArrSplit4 = strArrSplit[2].split("/", -1);
            double d3 = d + (d2 / 60.0d) + ((Double.parseDouble(strArrSplit4[0].trim()) / Double.parseDouble(strArrSplit4[1].trim())) / 3600.0d);
            if (!str2.equals("S") && !str2.equals("W")) {
                if (!str2.equals("N") && !str2.equals("E")) {
                    throw new IllegalArgumentException();
                }
                return d3;
            }
            return -d3;
        } catch (ArrayIndexOutOfBoundsException | NumberFormatException e) {
            throw new IllegalArgumentException(e);
        }
    }

    private int getMimeType(BufferedInputStream bufferedInputStream) throws Throwable {
        bufferedInputStream.mark(5000);
        byte[] bArr = new byte[5000];
        bufferedInputStream.read(bArr);
        bufferedInputStream.reset();
        if (isJpegFormat(bArr)) {
            return 4;
        }
        if (isRafFormat(bArr)) {
            return 9;
        }
        int iIsHeicOrAvifFormat = isHeicOrAvifFormat(bArr);
        if (iIsHeicOrAvifFormat != 0) {
            return iIsHeicOrAvifFormat;
        }
        if (isOrfFormat(bArr)) {
            return 7;
        }
        if (isRw2Format(bArr)) {
            return 10;
        }
        if (isPngFormat(bArr)) {
            return 13;
        }
        return isWebpFormat(bArr) ? 14 : 0;
    }

    private static boolean isJpegFormat(byte[] bArr) {
        int i = 0;
        while (true) {
            byte[] bArr2 = JPEG_SIGNATURE;
            if (i >= bArr2.length) {
                return true;
            }
            if (bArr[i] != bArr2[i]) {
                return false;
            }
            i++;
        }
    }

    private boolean isRafFormat(byte[] bArr) {
        byte[] bytes = "FUJIFILMCCD-RAW".getBytes(Charset.defaultCharset());
        for (int i = 0; i < bytes.length; i++) {
            if (bArr[i] != bytes[i]) {
                return false;
            }
        }
        return true;
    }

    private int isHeicOrAvifFormat(byte[] bArr) throws Throwable {
        ByteOrderedDataInputStream byteOrderedDataInputStream;
        long j;
        ByteOrderedDataInputStream byteOrderedDataInputStream2 = null;
        try {
            try {
                byteOrderedDataInputStream = new ByteOrderedDataInputStream(bArr);
            } catch (Exception e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            long length = byteOrderedDataInputStream.readInt();
            byte[] bArr2 = new byte[4];
            byteOrderedDataInputStream.readFully(bArr2);
            if (!Arrays.equals(bArr2, HEIF_TYPE_FTYP)) {
                byteOrderedDataInputStream.close();
                return 0;
            }
            if (length == 1) {
                length = byteOrderedDataInputStream.readLong();
                j = 16;
                if (length < 16) {
                    byteOrderedDataInputStream.close();
                    return 0;
                }
            } else {
                j = 8;
            }
            if (length > bArr.length) {
                length = bArr.length;
            }
            long j2 = length - j;
            if (j2 < 8) {
                byteOrderedDataInputStream.close();
                return 0;
            }
            byte[] bArr3 = new byte[4];
            boolean z = false;
            boolean z2 = false;
            boolean z3 = false;
            for (long j3 = 0; j3 < j2 / 4; j3++) {
                try {
                    byteOrderedDataInputStream.readFully(bArr3);
                    if (j3 != 1) {
                        if (Arrays.equals(bArr3, HEIF_BRAND_MIF1)) {
                            z = true;
                        } else if (Arrays.equals(bArr3, HEIF_BRAND_HEIC)) {
                            z2 = true;
                        } else if (Arrays.equals(bArr3, HEIF_BRAND_AVIF) || Arrays.equals(bArr3, HEIF_BRAND_AVIS)) {
                            z3 = true;
                        }
                        if (!z) {
                            continue;
                        } else {
                            if (z2) {
                                byteOrderedDataInputStream.close();
                                return 12;
                            }
                            if (z3) {
                                byteOrderedDataInputStream.close();
                                return 15;
                            }
                        }
                    }
                } catch (EOFException unused) {
                    byteOrderedDataInputStream.close();
                    return 0;
                }
            }
            byteOrderedDataInputStream.close();
        } catch (Exception e2) {
            e = e2;
            byteOrderedDataInputStream2 = byteOrderedDataInputStream;
            if (DEBUG) {
                Log.d("ExifInterface", "Exception parsing HEIF file type box.", e);
            }
            if (byteOrderedDataInputStream2 != null) {
                byteOrderedDataInputStream2.close();
            }
        } catch (Throwable th2) {
            th = th2;
            byteOrderedDataInputStream2 = byteOrderedDataInputStream;
            if (byteOrderedDataInputStream2 != null) {
                byteOrderedDataInputStream2.close();
            }
            throw th;
        }
        return 0;
    }

    private boolean isOrfFormat(byte[] bArr) throws Throwable {
        ByteOrderedDataInputStream byteOrderedDataInputStream = null;
        try {
            ByteOrderedDataInputStream byteOrderedDataInputStream2 = new ByteOrderedDataInputStream(bArr);
            try {
                ByteOrder byteOrder = readByteOrder(byteOrderedDataInputStream2);
                this.mExifByteOrder = byteOrder;
                byteOrderedDataInputStream2.setByteOrder(byteOrder);
                short s = byteOrderedDataInputStream2.readShort();
                boolean z = s == 20306 || s == 21330;
                byteOrderedDataInputStream2.close();
                return z;
            } catch (Exception unused) {
                byteOrderedDataInputStream = byteOrderedDataInputStream2;
                if (byteOrderedDataInputStream != null) {
                    byteOrderedDataInputStream.close();
                }
                return false;
            } catch (Throwable th) {
                th = th;
                byteOrderedDataInputStream = byteOrderedDataInputStream2;
                if (byteOrderedDataInputStream != null) {
                    byteOrderedDataInputStream.close();
                }
                throw th;
            }
        } catch (Exception unused2) {
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private boolean isRw2Format(byte[] bArr) throws Throwable {
        ByteOrderedDataInputStream byteOrderedDataInputStream = null;
        try {
            ByteOrderedDataInputStream byteOrderedDataInputStream2 = new ByteOrderedDataInputStream(bArr);
            try {
                ByteOrder byteOrder = readByteOrder(byteOrderedDataInputStream2);
                this.mExifByteOrder = byteOrder;
                byteOrderedDataInputStream2.setByteOrder(byteOrder);
                boolean z = byteOrderedDataInputStream2.readShort() == 85;
                byteOrderedDataInputStream2.close();
                return z;
            } catch (Exception unused) {
                byteOrderedDataInputStream = byteOrderedDataInputStream2;
                if (byteOrderedDataInputStream != null) {
                    byteOrderedDataInputStream.close();
                }
                return false;
            } catch (Throwable th) {
                th = th;
                byteOrderedDataInputStream = byteOrderedDataInputStream2;
                if (byteOrderedDataInputStream != null) {
                    byteOrderedDataInputStream.close();
                }
                throw th;
            }
        } catch (Exception unused2) {
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private boolean isPngFormat(byte[] bArr) {
        int i = 0;
        while (true) {
            byte[] bArr2 = PNG_SIGNATURE;
            if (i >= bArr2.length) {
                return true;
            }
            if (bArr[i] != bArr2[i]) {
                return false;
            }
            i++;
        }
    }

    private boolean isWebpFormat(byte[] bArr) {
        int i = 0;
        while (true) {
            byte[] bArr2 = WEBP_SIGNATURE_1;
            if (i >= bArr2.length) {
                int i2 = 0;
                while (true) {
                    byte[] bArr3 = WEBP_SIGNATURE_2;
                    if (i2 >= bArr3.length) {
                        return true;
                    }
                    if (bArr[WEBP_SIGNATURE_1.length + i2 + 4] != bArr3[i2]) {
                        return false;
                    }
                    i2++;
                }
            } else {
                if (bArr[i] != bArr2[i]) {
                    return false;
                }
                i++;
            }
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:31:0x00a2. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:32:0x00a5. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:33:0x00a8. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00b0 A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0153 A[LOOP:0: B:10:0x0034->B:57:0x0153, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0159 A[SYNTHETIC] */
    /*  JADX ERROR: UnsupportedOperationException in pass: RegionMakerVisitor
        java.lang.UnsupportedOperationException
        	at java.base/java.util.Collections$UnmodifiableCollection.add(Collections.java:1091)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker$1.leaveRegion(SwitchRegionMaker.java:390)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:23)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaksForCase(SwitchRegionMaker.java:370)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaks(SwitchRegionMaker.java:85)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.leaveRegion(PostProcessRegions.java:33)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1116)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1116)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1116)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1116)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1116)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1116)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1116)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1116)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1116)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1116)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:23)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
        */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void getJpegAttributes(androidx.exifinterface.media.ExifInterface.ByteOrderedDataInputStream r20, int r21, int r22) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 436
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.exifinterface.media.ExifInterface.getJpegAttributes(androidx.exifinterface.media.ExifInterface$ByteOrderedDataInputStream, int, int):void");
    }

    private void getRawAttributes(SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream) throws Throwable {
        ExifAttribute exifAttribute;
        parseTiffHeaders(seekableByteOrderedDataInputStream);
        readImageFileDirectory(seekableByteOrderedDataInputStream, 0);
        updateImageSizeValues(seekableByteOrderedDataInputStream, 0);
        updateImageSizeValues(seekableByteOrderedDataInputStream, 5);
        updateImageSizeValues(seekableByteOrderedDataInputStream, 4);
        validateImages();
        if (this.mMimeType != 8 || (exifAttribute = this.mAttributes[1].get("MakerNote")) == null) {
            return;
        }
        SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream2 = new SeekableByteOrderedDataInputStream(exifAttribute.bytes);
        seekableByteOrderedDataInputStream2.setByteOrder(this.mExifByteOrder);
        seekableByteOrderedDataInputStream2.skipFully(6);
        readImageFileDirectory(seekableByteOrderedDataInputStream2, 9);
        ExifAttribute exifAttribute2 = this.mAttributes[9].get("ColorSpace");
        if (exifAttribute2 != null) {
            this.mAttributes[1].put("ColorSpace", exifAttribute2);
        }
    }

    private void getRafAttributes(ByteOrderedDataInputStream byteOrderedDataInputStream) throws Throwable {
        boolean z = DEBUG;
        if (z) {
            Log.d("ExifInterface", "getRafAttributes starting with: " + byteOrderedDataInputStream);
        }
        byteOrderedDataInputStream.skipFully(84);
        byte[] bArr = new byte[4];
        byte[] bArr2 = new byte[4];
        byte[] bArr3 = new byte[4];
        byteOrderedDataInputStream.readFully(bArr);
        byteOrderedDataInputStream.readFully(bArr2);
        byteOrderedDataInputStream.readFully(bArr3);
        int i = ByteBuffer.wrap(bArr).getInt();
        int i2 = ByteBuffer.wrap(bArr2).getInt();
        int i3 = ByteBuffer.wrap(bArr3).getInt();
        byte[] bArr4 = new byte[i2];
        byteOrderedDataInputStream.skipFully(i - byteOrderedDataInputStream.position());
        byteOrderedDataInputStream.readFully(bArr4);
        getJpegAttributes(new ByteOrderedDataInputStream(bArr4), i, 5);
        byteOrderedDataInputStream.skipFully(i3 - byteOrderedDataInputStream.position());
        byteOrderedDataInputStream.setByteOrder(ByteOrder.BIG_ENDIAN);
        int i4 = byteOrderedDataInputStream.readInt();
        if (z) {
            Log.d("ExifInterface", "numberOfDirectoryEntry: " + i4);
        }
        for (int i5 = 0; i5 < i4; i5++) {
            int unsignedShort = byteOrderedDataInputStream.readUnsignedShort();
            int unsignedShort2 = byteOrderedDataInputStream.readUnsignedShort();
            if (unsignedShort == TAG_RAF_IMAGE_SIZE.number) {
                short s = byteOrderedDataInputStream.readShort();
                short s2 = byteOrderedDataInputStream.readShort();
                ExifAttribute exifAttributeCreateUShort = ExifAttribute.createUShort(s, this.mExifByteOrder);
                ExifAttribute exifAttributeCreateUShort2 = ExifAttribute.createUShort(s2, this.mExifByteOrder);
                this.mAttributes[0].put("ImageLength", exifAttributeCreateUShort);
                this.mAttributes[0].put("ImageWidth", exifAttributeCreateUShort2);
                if (DEBUG) {
                    Log.d("ExifInterface", "Updated to length: " + ((int) s) + ", width: " + ((int) s2));
                    return;
                }
                return;
            }
            byteOrderedDataInputStream.skipFully(unsignedShort2);
        }
    }

    private void getHeifAttributes(final SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream, int i) {
        String strExtractMetadata;
        String strExtractMetadata2;
        String strExtractMetadata3;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 28) {
            ByteString$$ExternalSyntheticBUOutline0.m838m("Reading EXIF from HEIC files is supported from SDK 28 and above");
            return;
        }
        if (i == 15 && i2 < 31) {
            ByteString$$ExternalSyntheticBUOutline0.m838m("Reading EXIF from AVIF files is supported from SDK 31 and above");
            return;
        }
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            try {
                ExifInterfaceUtils.Api23Impl.setDataSource(mediaMetadataRetriever, new MediaDataSource() { // from class: androidx.exifinterface.media.ExifInterface.1
                    long mPosition;

                    @Override // java.io.Closeable, java.lang.AutoCloseable
                    public void close() {
                    }

                    @Override // android.media.MediaDataSource
                    public long getSize() {
                        return -1L;
                    }

                    @Override // android.media.MediaDataSource
                    public int readAt(long j, byte[] bArr, int i3, int i4) {
                        if (i4 == 0) {
                            return 0;
                        }
                        if (j < 0) {
                            return -1;
                        }
                        try {
                            long j2 = this.mPosition;
                            if (j2 != j) {
                                if (j2 >= 0 && j >= j2 + ((long) seekableByteOrderedDataInputStream.available())) {
                                    return -1;
                                }
                                seekableByteOrderedDataInputStream.seek(j);
                                this.mPosition = j;
                            }
                            if (i4 > seekableByteOrderedDataInputStream.available()) {
                                i4 = seekableByteOrderedDataInputStream.available();
                            }
                            int i5 = seekableByteOrderedDataInputStream.read(bArr, i3, i4);
                            if (i5 >= 0) {
                                this.mPosition += (long) i5;
                                return i5;
                            }
                        } catch (IOException unused) {
                        }
                        this.mPosition = -1L;
                        return -1;
                    }
                });
                String strExtractMetadata4 = mediaMetadataRetriever.extractMetadata(33);
                String strExtractMetadata5 = mediaMetadataRetriever.extractMetadata(34);
                String strExtractMetadata6 = mediaMetadataRetriever.extractMetadata(26);
                String strExtractMetadata7 = mediaMetadataRetriever.extractMetadata(17);
                if ("yes".equals(strExtractMetadata6)) {
                    strExtractMetadata = mediaMetadataRetriever.extractMetadata(29);
                    strExtractMetadata3 = mediaMetadataRetriever.extractMetadata(30);
                    strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(31);
                } else if ("yes".equals(strExtractMetadata7)) {
                    strExtractMetadata = mediaMetadataRetriever.extractMetadata(18);
                    strExtractMetadata3 = mediaMetadataRetriever.extractMetadata(19);
                    strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(24);
                } else {
                    strExtractMetadata = null;
                    strExtractMetadata2 = null;
                    strExtractMetadata3 = null;
                }
                if (strExtractMetadata != null) {
                    this.mAttributes[0].put("ImageWidth", ExifAttribute.createUShort(Integer.parseInt(strExtractMetadata), this.mExifByteOrder));
                }
                if (strExtractMetadata3 != null) {
                    this.mAttributes[0].put("ImageLength", ExifAttribute.createUShort(Integer.parseInt(strExtractMetadata3), this.mExifByteOrder));
                }
                if (strExtractMetadata2 != null) {
                    int i3 = Integer.parseInt(strExtractMetadata2);
                    this.mAttributes[0].put("Orientation", ExifAttribute.createUShort(i3 != 90 ? i3 != 180 ? i3 != 270 ? 1 : 8 : 3 : 6, this.mExifByteOrder));
                }
                if (strExtractMetadata4 != null && strExtractMetadata5 != null) {
                    int i4 = Integer.parseInt(strExtractMetadata4);
                    int i5 = Integer.parseInt(strExtractMetadata5);
                    if (i5 <= 6) {
                        throw new IOException("Invalid exif length");
                    }
                    seekableByteOrderedDataInputStream.seek(i4);
                    byte[] bArr = new byte[6];
                    seekableByteOrderedDataInputStream.readFully(bArr);
                    int i6 = i4 + 6;
                    int i7 = i5 - 6;
                    if (!Arrays.equals(bArr, IDENTIFIER_EXIF_APP1)) {
                        throw new IOException("Invalid identifier");
                    }
                    byte[] bArr2 = new byte[i7];
                    seekableByteOrderedDataInputStream.readFully(bArr2);
                    this.mOffsetToExifData = i6;
                    readExifSegment(bArr2, 0);
                }
                String strExtractMetadata8 = mediaMetadataRetriever.extractMetadata(41);
                String strExtractMetadata9 = mediaMetadataRetriever.extractMetadata(42);
                if (strExtractMetadata8 != null && strExtractMetadata9 != null) {
                    int i8 = Integer.parseInt(strExtractMetadata8);
                    int i9 = Integer.parseInt(strExtractMetadata9);
                    long j = i8;
                    seekableByteOrderedDataInputStream.seek(j);
                    byte[] bArr3 = new byte[i9];
                    seekableByteOrderedDataInputStream.readFully(bArr3);
                    this.mXmpFromSeparateMarker = new ExifAttribute(1, i9, j, bArr3);
                    this.mFileOnDiskContainsSeparateXmpMarker = true;
                }
                if (DEBUG) {
                    Log.d("ExifInterface", "Heif meta: " + strExtractMetadata + "x" + strExtractMetadata3 + ", rotation " + strExtractMetadata2);
                }
                try {
                    mediaMetadataRetriever.release();
                } catch (IOException unused) {
                }
            } catch (RuntimeException e) {
                throw new UnsupportedOperationException("Failed to read EXIF from HEIF file. Given stream is either malformed or unsupported.", e);
            }
        } catch (Throwable th) {
            try {
                mediaMetadataRetriever.release();
            } catch (IOException unused2) {
            }
            throw th;
        }
    }

    private boolean getStandaloneAttributes(SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream) throws IOException {
        byte[] bArr = IDENTIFIER_EXIF_APP1;
        byte[] bArr2 = new byte[bArr.length];
        seekableByteOrderedDataInputStream.readFully(bArr2);
        if (!Arrays.equals(bArr2, bArr)) {
            Log.w("ExifInterface", "Given data is not EXIF-only.");
            return false;
        }
        byte[] toEnd = seekableByteOrderedDataInputStream.readToEnd();
        this.mOffsetToExifData = bArr.length;
        readExifSegment(toEnd, 0);
        return true;
    }

    private void getOrfAttributes(SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream) throws Throwable {
        int i;
        int i2;
        getRawAttributes(seekableByteOrderedDataInputStream);
        ExifAttribute exifAttribute = this.mAttributes[1].get("MakerNote");
        if (exifAttribute != null) {
            SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream2 = new SeekableByteOrderedDataInputStream(exifAttribute.bytes);
            seekableByteOrderedDataInputStream2.setByteOrder(this.mExifByteOrder);
            byte[] bArr = ORF_MAKER_NOTE_HEADER_1;
            byte[] bArr2 = new byte[bArr.length];
            seekableByteOrderedDataInputStream2.readFully(bArr2);
            seekableByteOrderedDataInputStream2.seek(0L);
            byte[] bArr3 = ORF_MAKER_NOTE_HEADER_2;
            byte[] bArr4 = new byte[bArr3.length];
            seekableByteOrderedDataInputStream2.readFully(bArr4);
            if (Arrays.equals(bArr2, bArr)) {
                seekableByteOrderedDataInputStream2.seek(8L);
            } else if (Arrays.equals(bArr4, bArr3)) {
                seekableByteOrderedDataInputStream2.seek(12L);
            }
            readImageFileDirectory(seekableByteOrderedDataInputStream2, 6);
            ExifAttribute exifAttribute2 = this.mAttributes[7].get("PreviewImageStart");
            ExifAttribute exifAttribute3 = this.mAttributes[7].get("PreviewImageLength");
            if (exifAttribute2 != null && exifAttribute3 != null) {
                this.mAttributes[5].put("JPEGInterchangeFormat", exifAttribute2);
                this.mAttributes[5].put("JPEGInterchangeFormatLength", exifAttribute3);
            }
            ExifAttribute exifAttribute4 = this.mAttributes[8].get("AspectFrame");
            if (exifAttribute4 != null) {
                int[] iArr = (int[]) exifAttribute4.getValue(this.mExifByteOrder);
                if (iArr == null || iArr.length != 4) {
                    Log.w("ExifInterface", "Invalid aspect frame values. frame=" + Arrays.toString(iArr));
                    return;
                }
                int i3 = iArr[2];
                int i4 = iArr[0];
                if (i3 <= i4 || (i = iArr[3]) <= (i2 = iArr[1])) {
                    return;
                }
                int i5 = (i3 - i4) + 1;
                int i6 = (i - i2) + 1;
                if (i5 < i6) {
                    int i7 = i5 + i6;
                    i6 = i7 - i6;
                    i5 = i7 - i6;
                }
                ExifAttribute exifAttributeCreateUShort = ExifAttribute.createUShort(i5, this.mExifByteOrder);
                ExifAttribute exifAttributeCreateUShort2 = ExifAttribute.createUShort(i6, this.mExifByteOrder);
                this.mAttributes[0].put("ImageWidth", exifAttributeCreateUShort);
                this.mAttributes[0].put("ImageLength", exifAttributeCreateUShort2);
            }
        }
    }

    private void getRw2Attributes(SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream) throws Throwable {
        if (DEBUG) {
            Log.d("ExifInterface", "getRw2Attributes starting with: " + seekableByteOrderedDataInputStream);
        }
        getRawAttributes(seekableByteOrderedDataInputStream);
        ExifAttribute exifAttribute = this.mAttributes[0].get("JpgFromRaw");
        if (exifAttribute != null) {
            getJpegAttributes(new ByteOrderedDataInputStream(exifAttribute.bytes), (int) exifAttribute.bytesOffset, 5);
        }
        ExifAttribute exifAttribute2 = this.mAttributes[0].get("ISO");
        ExifAttribute exifAttribute3 = this.mAttributes[1].get("PhotographicSensitivity");
        if (exifAttribute2 == null || exifAttribute3 != null) {
            return;
        }
        this.mAttributes[1].put("PhotographicSensitivity", exifAttribute2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x005d, code lost:
    
        r17.mFileOnDiskContainsSeparateXmpMarker = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x005f, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void getPngAttributes(ByteOrderedDataInputStream byteOrderedDataInputStream) throws Throwable {
        if (DEBUG) {
            Log.d("ExifInterface", "getPngAttributes starting with: " + byteOrderedDataInputStream);
        }
        byteOrderedDataInputStream.setByteOrder(ByteOrder.BIG_ENDIAN);
        int iPosition = byteOrderedDataInputStream.position();
        byteOrderedDataInputStream.skipFully(PNG_SIGNATURE.length);
        boolean z = false;
        boolean z2 = false;
        while (true) {
            if (z && z2) {
                break;
            }
            try {
                int i = byteOrderedDataInputStream.readInt();
                int i2 = byteOrderedDataInputStream.readInt();
                int iPosition2 = byteOrderedDataInputStream.position() + i + 4;
                if (byteOrderedDataInputStream.position() - iPosition == 16 && i2 != 1229472850) {
                    throw new IOException("Encountered invalid PNG file--IHDR chunk should appear as the first chunk");
                }
                if (i2 == 1229278788) {
                    break;
                }
                if (i2 == 1700284774 && !z) {
                    this.mOffsetToExifData = byteOrderedDataInputStream.position() - iPosition;
                    byte[] bArr = new byte[i];
                    byteOrderedDataInputStream.readFully(bArr);
                    int i3 = byteOrderedDataInputStream.readInt();
                    CRC32 crc32 = new CRC32();
                    updateCrcWithInt(crc32, i2);
                    crc32.update(bArr);
                    if (((int) crc32.getValue()) != i3) {
                        throw new IOException("Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: " + i3 + ", calculated CRC value: " + crc32.getValue());
                    }
                    readExifSegment(bArr, 0);
                    validateImages();
                    setThumbnailData(new ByteOrderedDataInputStream(bArr));
                    z = true;
                } else if (i2 == 1767135348 && !z2) {
                    byte[] bArr2 = PNG_ITXT_XMP_KEYWORD;
                    if (i >= bArr2.length) {
                        int length = bArr2.length;
                        byte[] bArr3 = new byte[length];
                        byteOrderedDataInputStream.readFully(bArr3);
                        if (Arrays.equals(bArr3, bArr2)) {
                            int iPosition3 = byteOrderedDataInputStream.position() - iPosition;
                            int i4 = i - length;
                            byte[] bArr4 = new byte[i4];
                            byteOrderedDataInputStream.readFully(bArr4);
                            this.mXmpFromSeparateMarker = new ExifAttribute(1, i4, iPosition3, bArr4);
                            z2 = true;
                        }
                    }
                }
                byteOrderedDataInputStream.skipFully(iPosition2 - byteOrderedDataInputStream.position());
            } catch (EOFException e) {
                throw new IOException("Encountered corrupt PNG file.", e);
            }
        }
    }

    private static void updateCrcWithInt(CRC32 crc32, int i) {
        crc32.update(i >>> 24);
        crc32.update(i >>> 16);
        crc32.update(i >>> 8);
        crc32.update(i);
    }

    private void getWebpAttributes(ByteOrderedDataInputStream byteOrderedDataInputStream) throws Throwable {
        if (DEBUG) {
            Log.d("ExifInterface", "getWebpAttributes starting with: " + byteOrderedDataInputStream);
        }
        byteOrderedDataInputStream.setByteOrder(ByteOrder.LITTLE_ENDIAN);
        byteOrderedDataInputStream.skipFully(WEBP_SIGNATURE_1.length);
        int i = byteOrderedDataInputStream.readInt() + 8;
        byte[] bArr = WEBP_SIGNATURE_2;
        byteOrderedDataInputStream.skipFully(bArr.length);
        int length = bArr.length + 8;
        while (true) {
            try {
                byte[] bArr2 = new byte[4];
                byteOrderedDataInputStream.readFully(bArr2);
                int i2 = byteOrderedDataInputStream.readInt();
                int i3 = length + 8;
                if (Arrays.equals(WEBP_CHUNK_TYPE_EXIF, bArr2)) {
                    byte[] bArrCopyOfRange = new byte[i2];
                    byteOrderedDataInputStream.readFully(bArrCopyOfRange);
                    byte[] bArr3 = IDENTIFIER_EXIF_APP1;
                    if (ExifInterfaceUtils.startsWith(bArrCopyOfRange, bArr3)) {
                        bArrCopyOfRange = Arrays.copyOfRange(bArrCopyOfRange, bArr3.length, i2);
                    }
                    this.mOffsetToExifData = i3;
                    readExifSegment(bArrCopyOfRange, 0);
                    setThumbnailData(new ByteOrderedDataInputStream(bArrCopyOfRange));
                    return;
                }
                if (i2 % 2 == 1) {
                    i2++;
                }
                length = i3 + i2;
                if (length == i) {
                    return;
                }
                if (length > i) {
                    throw new IOException("Encountered WebP file with invalid chunk size");
                }
                byteOrderedDataInputStream.skipFully(i2);
            } catch (EOFException e) {
                throw new IOException("Encountered corrupt WebP file.", e);
            }
        }
    }

    private void saveJpegAttributes(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte b2;
        byte[] bArr;
        if (DEBUG) {
            Log.d("ExifInterface", "saveJpegAttributes starting with (inputStream: " + inputStream + ", outputStream: " + outputStream + ")");
        }
        ByteOrderedDataInputStream byteOrderedDataInputStream = new ByteOrderedDataInputStream(inputStream);
        ByteOrderedDataOutputStream byteOrderedDataOutputStream = new ByteOrderedDataOutputStream(outputStream, ByteOrder.BIG_ENDIAN);
        if (byteOrderedDataInputStream.readByte() != -1) {
            Model$$ExternalSyntheticBUOutline0.m964m("Invalid marker");
            return;
        }
        byteOrderedDataOutputStream.writeByte(-1);
        if (byteOrderedDataInputStream.readByte() != -40) {
            Model$$ExternalSyntheticBUOutline0.m964m("Invalid marker");
            return;
        }
        byteOrderedDataOutputStream.writeByte(-40);
        byteOrderedDataOutputStream.writeByte(-1);
        byteOrderedDataOutputStream.writeByte(-31);
        this.mOffsetToExifData = writeExifSegment(byteOrderedDataOutputStream);
        if (this.mXmpFromSeparateMarker != null) {
            byteOrderedDataOutputStream.write(-1);
            byteOrderedDataOutputStream.writeByte(-31);
            byte[] bArr2 = IDENTIFIER_XMP_APP1;
            byteOrderedDataOutputStream.writeUnsignedShort(bArr2.length + 2 + this.mXmpFromSeparateMarker.bytes.length);
            byteOrderedDataOutputStream.write(bArr2);
            byteOrderedDataOutputStream.write(this.mXmpFromSeparateMarker.bytes);
            this.mFileOnDiskContainsSeparateXmpMarker = true;
        }
        byte[] bArr3 = new byte[4096];
        while (byteOrderedDataInputStream.readByte() == -1) {
            do {
                b2 = byteOrderedDataInputStream.readByte();
            } while (b2 == -1);
            if (b2 == -39 || b2 == -38) {
                byteOrderedDataOutputStream.writeByte(-1);
                byteOrderedDataOutputStream.writeByte(b2);
                ExifInterfaceUtils.copy(byteOrderedDataInputStream, byteOrderedDataOutputStream);
                return;
            }
            if (b2 == -31) {
                int unsignedShort = byteOrderedDataInputStream.readUnsignedShort();
                int length = unsignedShort - 2;
                if (length < 0) {
                    Model$$ExternalSyntheticBUOutline0.m964m("Invalid length");
                    return;
                }
                byte[] bArr4 = IDENTIFIER_XMP_APP1;
                if (length >= bArr4.length) {
                    bArr = new byte[bArr4.length];
                } else {
                    byte[] bArr5 = IDENTIFIER_EXIF_APP1;
                    bArr = length >= bArr5.length ? new byte[bArr5.length] : null;
                }
                if (bArr != null) {
                    byteOrderedDataInputStream.readFully(bArr);
                    if (ExifInterfaceUtils.startsWith(bArr, IDENTIFIER_EXIF_APP1) || ExifInterfaceUtils.startsWith(bArr, bArr4)) {
                        byteOrderedDataInputStream.skipFully(length - bArr.length);
                    }
                }
                byteOrderedDataOutputStream.writeByte(-1);
                byteOrderedDataOutputStream.writeByte(b2);
                byteOrderedDataOutputStream.writeUnsignedShort(unsignedShort);
                if (bArr != null) {
                    length -= bArr.length;
                    byteOrderedDataOutputStream.write(bArr);
                }
                while (length > 0) {
                    int i = byteOrderedDataInputStream.read(bArr3, 0, Math.min(length, 4096));
                    if (i >= 0) {
                        byteOrderedDataOutputStream.write(bArr3, 0, i);
                        length -= i;
                    }
                }
            } else {
                byteOrderedDataOutputStream.writeByte(-1);
                byteOrderedDataOutputStream.writeByte(b2);
                int unsignedShort2 = byteOrderedDataInputStream.readUnsignedShort();
                byteOrderedDataOutputStream.writeUnsignedShort(unsignedShort2);
                int i2 = unsignedShort2 - 2;
                if (i2 < 0) {
                    Model$$ExternalSyntheticBUOutline0.m964m("Invalid length");
                    return;
                }
                while (i2 > 0) {
                    int i3 = byteOrderedDataInputStream.read(bArr3, 0, Math.min(i2, 4096));
                    if (i3 >= 0) {
                        byteOrderedDataOutputStream.write(bArr3, 0, i3);
                        i2 -= i3;
                    }
                }
            }
        }
        Model$$ExternalSyntheticBUOutline0.m964m("Invalid marker");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0044 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0078 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0058 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0076 -> B:10:0x0042). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void savePngAttributes(java.io.InputStream r9, java.io.OutputStream r10) {
        /*
            r8 = this;
            boolean r0 = androidx.exifinterface.media.ExifInterface.DEBUG
            if (r0 == 0) goto L25
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "savePngAttributes starting with (inputStream: "
            r0.<init>(r1)
            r0.append(r9)
            java.lang.String r1 = ", outputStream: "
            r0.append(r1)
            r0.append(r10)
            java.lang.String r1 = ")"
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "ExifInterface"
            android.util.Log.d(r1, r0)
        L25:
            androidx.exifinterface.media.ExifInterface$ByteOrderedDataInputStream r0 = new androidx.exifinterface.media.ExifInterface$ByteOrderedDataInputStream
            r0.<init>(r9)
            androidx.exifinterface.media.ExifInterface$ByteOrderedDataOutputStream r9 = new androidx.exifinterface.media.ExifInterface$ByteOrderedDataOutputStream
            java.nio.ByteOrder r1 = java.nio.ByteOrder.BIG_ENDIAN
            r9.<init>(r10, r1)
            byte[] r10 = androidx.exifinterface.media.ExifInterface.PNG_SIGNATURE
            int r10 = r10.length
            androidx.exifinterface.media.ExifInterfaceUtils.copy(r0, r9, r10)
            androidx.exifinterface.media.ExifInterface$ExifAttribute r10 = r8.mXmpFromSeparateMarker
            r1 = 1
            r2 = 0
            if (r10 != 0) goto L41
            boolean r10 = r8.mFileOnDiskContainsSeparateXmpMarker
            if (r10 == 0) goto L76
        L41:
            r10 = r1
        L42:
            if (r1 != 0) goto L4b
            if (r10 == 0) goto L47
            goto L4b
        L47:
            androidx.exifinterface.media.ExifInterfaceUtils.copy(r0, r9)
            return
        L4b:
            int r3 = r0.readInt()
            int r4 = r0.readInt()
            r5 = 1229472850(0x49484452, float:820293.1)
            if (r4 != r5) goto L78
            r9.writeInt(r3)
            r9.writeInt(r4)
            int r3 = r3 + 4
            androidx.exifinterface.media.ExifInterfaceUtils.copy(r0, r9, r3)
            int r3 = r8.mOffsetToExifData
            if (r3 != 0) goto L6b
            r8.writePngExifChunk(r9)
            r1 = r2
        L6b:
            androidx.exifinterface.media.ExifInterface$ExifAttribute r3 = r8.mXmpFromSeparateMarker
            if (r3 == 0) goto L42
            boolean r3 = r8.mFileOnDiskContainsSeparateXmpMarker
            if (r3 != 0) goto L42
            r8.writePngXmpItxtChunk(r9)
        L76:
            r10 = r2
            goto L42
        L78:
            r5 = 1700284774(0x65584966, float:6.383657E22)
            if (r4 != r5) goto L89
            if (r1 == 0) goto L89
            r8.writePngExifChunk(r9)
            int r3 = r3 + 4
            r0.skipFully(r3)
            r1 = r2
            goto L42
        L89:
            r5 = 1767135348(0x69545874, float:1.6044374E25)
            if (r4 != r5) goto Lbb
            byte[] r5 = androidx.exifinterface.media.ExifInterface.PNG_ITXT_XMP_KEYWORD
            int r6 = r5.length
            if (r3 < r6) goto Lbb
            int r6 = r5.length
            byte[] r7 = new byte[r6]
            r0.readFully(r7)
            int r6 = r3 - r6
            int r6 = r6 + 4
            boolean r5 = java.util.Arrays.equals(r7, r5)
            if (r5 == 0) goto Lae
            androidx.exifinterface.media.ExifInterface$ExifAttribute r10 = r8.mXmpFromSeparateMarker
            if (r10 == 0) goto Laa
            r8.writePngXmpItxtChunk(r9)
        Laa:
            r0.skipFully(r6)
            goto L76
        Lae:
            r9.writeInt(r3)
            r9.writeInt(r4)
            r9.write(r7)
            androidx.exifinterface.media.ExifInterfaceUtils.copy(r0, r9, r6)
            goto L42
        Lbb:
            r9.writeInt(r3)
            r9.writeInt(r4)
            int r3 = r3 + 4
            androidx.exifinterface.media.ExifInterfaceUtils.copy(r0, r9, r3)
            goto L42
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.exifinterface.media.ExifInterface.savePngAttributes(java.io.InputStream, java.io.OutputStream):void");
    }

    private void writePngExifChunk(ByteOrderedDataOutputStream byteOrderedDataOutputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        this.mOffsetToExifData = byteOrderedDataOutputStream.mOutputStream.size() + writeExifSegment(new ByteOrderedDataOutputStream(byteArrayOutputStream, ByteOrder.BIG_ENDIAN));
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        byteOrderedDataOutputStream.write(byteArray);
        CRC32 crc32 = new CRC32();
        crc32.update(byteArray, 4, byteArray.length - 4);
        byteOrderedDataOutputStream.writeInt((int) crc32.getValue());
    }

    private void writePngXmpItxtChunk(ByteOrderedDataOutputStream byteOrderedDataOutputStream) throws IOException {
        byteOrderedDataOutputStream.writeInt(this.mXmpFromSeparateMarker.bytes.length + 22);
        CRC32 crc32 = new CRC32();
        byteOrderedDataOutputStream.writeInt(1767135348);
        updateCrcWithInt(crc32, 1767135348);
        byte[] bArr = PNG_ITXT_XMP_KEYWORD;
        byteOrderedDataOutputStream.write(bArr);
        crc32.update(bArr);
        byteOrderedDataOutputStream.write(this.mXmpFromSeparateMarker.bytes);
        crc32.update(this.mXmpFromSeparateMarker.bytes);
        byteOrderedDataOutputStream.writeInt((int) crc32.getValue());
        this.mFileOnDiskContainsSeparateXmpMarker = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:82:0x0211 A[Catch: all -> 0x007c, Exception -> 0x0080, TryCatch #5 {Exception -> 0x0080, all -> 0x007c, blocks: (B:7:0x004d, B:9:0x0059, B:11:0x006d, B:12:0x006f, B:80:0x01f5, B:82:0x0211, B:83:0x021a, B:19:0x0084, B:21:0x0093, B:23:0x009b, B:25:0x009f, B:28:0x00af, B:30:0x00ba, B:31:0x00bf, B:32:0x00c1, B:36:0x00cf, B:37:0x00d4, B:38:0x00d8, B:39:0x00e4, B:41:0x00ec, B:45:0x00fa, B:47:0x0102, B:50:0x0109, B:52:0x0118, B:54:0x0128, B:69:0x0184, B:71:0x0190, B:72:0x0197, B:74:0x01d1, B:79:0x01ee, B:76:0x01df, B:78:0x01e7, B:55:0x013c, B:56:0x0143, B:57:0x0144, B:59:0x014e, B:61:0x0154, B:65:0x016d, B:66:0x0175, B:67:0x017c), top: B:97:0x004d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void saveWebpAttributes(InputStream inputStream, OutputStream outputStream) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int iWriteExifSegment;
        boolean z;
        if (DEBUG) {
            Log.d("ExifInterface", "saveWebpAttributes starting with (inputStream: " + inputStream + ", outputStream: " + outputStream + ")");
        }
        ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
        ByteOrderedDataInputStream byteOrderedDataInputStream = new ByteOrderedDataInputStream(inputStream, byteOrder);
        ByteOrderedDataOutputStream byteOrderedDataOutputStream = new ByteOrderedDataOutputStream(outputStream, byteOrder);
        byte[] bArr = WEBP_SIGNATURE_1;
        ExifInterfaceUtils.copy(byteOrderedDataInputStream, byteOrderedDataOutputStream, bArr.length);
        int i6 = byteOrderedDataInputStream.readInt();
        byte[] bArr2 = WEBP_SIGNATURE_2;
        byteOrderedDataInputStream.skipFully(bArr2.length);
        ByteArrayOutputStream byteArrayOutputStream2 = null;
        try {
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e) {
            e = e;
        }
        try {
            ByteOrderedDataOutputStream byteOrderedDataOutputStream2 = new ByteOrderedDataOutputStream(byteArrayOutputStream, byteOrder);
            int i7 = this.mOffsetToExifData;
            if (i7 != 0) {
                ExifInterfaceUtils.copy(byteOrderedDataInputStream, byteOrderedDataOutputStream2, (i7 - ((bArr.length + 4) + bArr2.length)) - 8);
                byteOrderedDataInputStream.skipFully(4);
                int i8 = byteOrderedDataInputStream.readInt();
                if (i8 % 2 != 0) {
                    i8++;
                }
                byteOrderedDataInputStream.skipFully(i8);
                iWriteExifSegment = writeExifSegment(byteOrderedDataOutputStream2);
            } else {
                byte[] bArr3 = new byte[4];
                byteOrderedDataInputStream.readFully(bArr3);
                byte[] bArr4 = WEBP_CHUNK_TYPE_VP8X;
                boolean z2 = true;
                if (Arrays.equals(bArr3, bArr4)) {
                    int i9 = byteOrderedDataInputStream.readInt();
                    byte[] bArr5 = new byte[i9 % 2 == 1 ? i9 + 1 : i9];
                    byteOrderedDataInputStream.readFully(bArr5);
                    byte b2 = (byte) (bArr5[0] | 8);
                    bArr5[0] = b2;
                    boolean z3 = ((b2 >> 1) & 1) == 1;
                    byteOrderedDataOutputStream2.write(bArr4);
                    byteOrderedDataOutputStream2.writeInt(i9);
                    byteOrderedDataOutputStream2.write(bArr5);
                    if (z3) {
                        copyChunksUpToGivenChunkType(byteOrderedDataInputStream, byteOrderedDataOutputStream2, WEBP_CHUNK_TYPE_ANIM, null);
                        while (true) {
                            byte[] bArr6 = new byte[4];
                            try {
                                byteOrderedDataInputStream.readFully(bArr6);
                                z = !Arrays.equals(bArr6, WEBP_CHUNK_TYPE_ANMF);
                            } catch (EOFException unused) {
                                z = true;
                            }
                            if (z) {
                                break;
                            } else {
                                copyWebPChunk(byteOrderedDataInputStream, byteOrderedDataOutputStream2, bArr6);
                            }
                        }
                        iWriteExifSegment = writeExifSegment(byteOrderedDataOutputStream2);
                    } else {
                        copyChunksUpToGivenChunkType(byteOrderedDataInputStream, byteOrderedDataOutputStream2, WEBP_CHUNK_TYPE_VP8, WEBP_CHUNK_TYPE_VP8L);
                        iWriteExifSegment = writeExifSegment(byteOrderedDataOutputStream2);
                    }
                } else {
                    byte[] bArr7 = WEBP_CHUNK_TYPE_VP8;
                    if (!Arrays.equals(bArr3, bArr7) && !Arrays.equals(bArr3, WEBP_CHUNK_TYPE_VP8L)) {
                        iWriteExifSegment = -1;
                        i = -1;
                        ExifInterfaceUtils.copy(byteOrderedDataInputStream, byteOrderedDataOutputStream2, (i6 + 8) - byteOrderedDataInputStream.position());
                        int size = byteArrayOutputStream.size();
                        byte[] bArr8 = WEBP_SIGNATURE_2;
                        byteOrderedDataOutputStream.writeInt(size + bArr8.length);
                        byteOrderedDataOutputStream.write(bArr8);
                        if (iWriteExifSegment != i) {
                            this.mOffsetToExifData = byteOrderedDataOutputStream.mOutputStream.size() + iWriteExifSegment;
                        }
                        byteArrayOutputStream.writeTo(byteOrderedDataOutputStream);
                        ExifInterfaceUtils.copy(byteOrderedDataInputStream, byteOrderedDataOutputStream);
                        ExifInterfaceUtils.closeQuietly(byteArrayOutputStream);
                    }
                    int i10 = byteOrderedDataInputStream.readInt();
                    int i11 = i10 % 2 == 1 ? i10 + 1 : i10;
                    byte[] bArr9 = new byte[3];
                    if (Arrays.equals(bArr3, bArr7)) {
                        byteOrderedDataInputStream.readFully(bArr9);
                        byte[] bArr10 = new byte[3];
                        byteOrderedDataInputStream.readFully(bArr10);
                        if (!Arrays.equals(WEBP_VP8_SIGNATURE, bArr10)) {
                            throw new IOException("Error checking VP8 signature");
                        }
                        i4 = byteOrderedDataInputStream.readInt();
                        i = -1;
                        i3 = (i4 >> 16) & 16383;
                        i2 = i11 - 10;
                        i5 = i4 & 16383;
                        z2 = false;
                    } else {
                        i = -1;
                        if (!Arrays.equals(bArr3, WEBP_CHUNK_TYPE_VP8L)) {
                            i2 = i11;
                            i3 = 0;
                            i4 = 0;
                            z2 = false;
                            i5 = 0;
                        } else {
                            if (byteOrderedDataInputStream.readByte() != 47) {
                                throw new IOException("Error checking VP8L signature");
                            }
                            i4 = byteOrderedDataInputStream.readInt();
                            int i12 = (i4 & 16383) + 1;
                            int i13 = ((i4 & 268419072) >>> 14) + 1;
                            if ((i4 & 268435456) == 0) {
                                z2 = false;
                            }
                            i2 = i11 - 5;
                            i5 = i12;
                            i3 = i13;
                        }
                    }
                    byteOrderedDataOutputStream2.write(bArr4);
                    byteOrderedDataOutputStream2.writeInt(10);
                    byte[] bArr11 = new byte[10];
                    if (z2) {
                        bArr11[0] = (byte) (bArr11[0] | 16);
                    }
                    bArr11[0] = (byte) (bArr11[0] | 8);
                    int i14 = i5 - 1;
                    int i15 = i3 - 1;
                    bArr11[4] = (byte) i14;
                    bArr11[5] = (byte) (i14 >> 8);
                    bArr11[6] = (byte) (i14 >> 16);
                    bArr11[7] = (byte) i15;
                    bArr11[8] = (byte) (i15 >> 8);
                    bArr11[9] = (byte) (i15 >> 16);
                    byteOrderedDataOutputStream2.write(bArr11);
                    byteOrderedDataOutputStream2.write(bArr3);
                    byteOrderedDataOutputStream2.writeInt(i10);
                    if (Arrays.equals(bArr3, bArr7)) {
                        byteOrderedDataOutputStream2.write(bArr9);
                        byteOrderedDataOutputStream2.write(WEBP_VP8_SIGNATURE);
                        byteOrderedDataOutputStream2.writeInt(i4);
                    } else if (Arrays.equals(bArr3, WEBP_CHUNK_TYPE_VP8L)) {
                        byteOrderedDataOutputStream2.write(47);
                        byteOrderedDataOutputStream2.writeInt(i4);
                    }
                    ExifInterfaceUtils.copy(byteOrderedDataInputStream, byteOrderedDataOutputStream2, i2);
                    iWriteExifSegment = writeExifSegment(byteOrderedDataOutputStream2);
                    ExifInterfaceUtils.copy(byteOrderedDataInputStream, byteOrderedDataOutputStream2, (i6 + 8) - byteOrderedDataInputStream.position());
                    int size2 = byteArrayOutputStream.size();
                    byte[] bArr82 = WEBP_SIGNATURE_2;
                    byteOrderedDataOutputStream.writeInt(size2 + bArr82.length);
                    byteOrderedDataOutputStream.write(bArr82);
                    if (iWriteExifSegment != i) {
                    }
                    byteArrayOutputStream.writeTo(byteOrderedDataOutputStream);
                    ExifInterfaceUtils.copy(byteOrderedDataInputStream, byteOrderedDataOutputStream);
                    ExifInterfaceUtils.closeQuietly(byteArrayOutputStream);
                }
            }
            i = -1;
            ExifInterfaceUtils.copy(byteOrderedDataInputStream, byteOrderedDataOutputStream2, (i6 + 8) - byteOrderedDataInputStream.position());
            int size22 = byteArrayOutputStream.size();
            byte[] bArr822 = WEBP_SIGNATURE_2;
            byteOrderedDataOutputStream.writeInt(size22 + bArr822.length);
            byteOrderedDataOutputStream.write(bArr822);
            if (iWriteExifSegment != i) {
            }
            byteArrayOutputStream.writeTo(byteOrderedDataOutputStream);
            ExifInterfaceUtils.copy(byteOrderedDataInputStream, byteOrderedDataOutputStream);
            ExifInterfaceUtils.closeQuietly(byteArrayOutputStream);
        } catch (Exception e2) {
            e = e2;
            throw new IOException("Failed to save WebP file", e);
        } catch (Throwable th2) {
            th = th2;
            byteArrayOutputStream2 = byteArrayOutputStream;
            ExifInterfaceUtils.closeQuietly(byteArrayOutputStream2);
            throw th;
        }
    }

    private void copyChunksUpToGivenChunkType(ByteOrderedDataInputStream byteOrderedDataInputStream, ByteOrderedDataOutputStream byteOrderedDataOutputStream, byte[] bArr, byte[] bArr2) throws IOException {
        while (true) {
            byte[] bArr3 = new byte[4];
            byteOrderedDataInputStream.readFully(bArr3);
            copyWebPChunk(byteOrderedDataInputStream, byteOrderedDataOutputStream, bArr3);
            if (Arrays.equals(bArr3, bArr)) {
                return;
            }
            if (bArr2 != null && Arrays.equals(bArr3, bArr2)) {
                return;
            }
        }
    }

    private void copyWebPChunk(ByteOrderedDataInputStream byteOrderedDataInputStream, ByteOrderedDataOutputStream byteOrderedDataOutputStream, byte[] bArr) throws IOException {
        int i = byteOrderedDataInputStream.readInt();
        byteOrderedDataOutputStream.write(bArr);
        byteOrderedDataOutputStream.writeInt(i);
        if (i % 2 == 1) {
            i++;
        }
        ExifInterfaceUtils.copy(byteOrderedDataInputStream, byteOrderedDataOutputStream, i);
    }

    private void readExifSegment(byte[] bArr, int i) throws IOException {
        SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream = new SeekableByteOrderedDataInputStream(bArr);
        parseTiffHeaders(seekableByteOrderedDataInputStream);
        readImageFileDirectory(seekableByteOrderedDataInputStream, i);
    }

    private void addDefaultValuesForCompatibility() {
        String attribute = getAttribute("DateTimeOriginal");
        if (attribute != null && getAttribute("DateTime") == null) {
            this.mAttributes[0].put("DateTime", ExifAttribute.createString(attribute));
        }
        if (getAttribute("ImageWidth") == null) {
            this.mAttributes[0].put("ImageWidth", ExifAttribute.createULong(0L, this.mExifByteOrder));
        }
        if (getAttribute("ImageLength") == null) {
            this.mAttributes[0].put("ImageLength", ExifAttribute.createULong(0L, this.mExifByteOrder));
        }
        if (getAttribute("Orientation") == null) {
            this.mAttributes[0].put("Orientation", ExifAttribute.createULong(0L, this.mExifByteOrder));
        }
        if (getAttribute("LightSource") == null) {
            this.mAttributes[1].put("LightSource", ExifAttribute.createULong(0L, this.mExifByteOrder));
        }
    }

    private ByteOrder readByteOrder(ByteOrderedDataInputStream byteOrderedDataInputStream) throws IOException {
        short s = byteOrderedDataInputStream.readShort();
        if (s == 18761) {
            if (DEBUG) {
                Log.d("ExifInterface", "readExifSegment: Byte Align II");
            }
            return ByteOrder.LITTLE_ENDIAN;
        }
        if (s == 19789) {
            if (DEBUG) {
                Log.d("ExifInterface", "readExifSegment: Byte Align MM");
            }
            return ByteOrder.BIG_ENDIAN;
        }
        ZipFilesKt$$ExternalSyntheticBUOutline1.m855m("Invalid byte order: ", Integer.toHexString(s));
        return null;
    }

    private void parseTiffHeaders(ByteOrderedDataInputStream byteOrderedDataInputStream) throws IOException {
        ByteOrder byteOrder = readByteOrder(byteOrderedDataInputStream);
        this.mExifByteOrder = byteOrder;
        byteOrderedDataInputStream.setByteOrder(byteOrder);
        int unsignedShort = byteOrderedDataInputStream.readUnsignedShort();
        int i = this.mMimeType;
        if (i != 7 && i != 10 && unsignedShort != 42) {
            ZipFilesKt$$ExternalSyntheticBUOutline1.m855m("Invalid start code: ", Integer.toHexString(unsignedShort));
            return;
        }
        int i2 = byteOrderedDataInputStream.readInt();
        if (i2 < 8) {
            ZipFilesKt$$ExternalSyntheticBUOutline0.m854m("Invalid first Ifd offset: ", i2);
            return;
        }
        int i3 = i2 - 8;
        if (i3 > 0) {
            byteOrderedDataInputStream.skipFully(i3);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0273  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x020f  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0271  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void readImageFileDirectory(SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream, int i) throws IOException {
        short s;
        short s2;
        long j;
        int i2;
        ExifTag exifTag;
        long j2;
        boolean z;
        boolean z2;
        long j3;
        ExifTag exifTag2;
        int unsignedShort;
        long unsignedInt;
        int i3 = i;
        this.mAttributesOffsets.add(Integer.valueOf(seekableByteOrderedDataInputStream.position()));
        short s3 = seekableByteOrderedDataInputStream.readShort();
        if (DEBUG) {
            Log.d("ExifInterface", "numberOfDirectoryEntry: " + ((int) s3));
        }
        if (s3 <= 0) {
            return;
        }
        short s4 = 0;
        while (s4 < s3) {
            int unsignedShort2 = seekableByteOrderedDataInputStream.readUnsignedShort();
            int unsignedShort3 = seekableByteOrderedDataInputStream.readUnsignedShort();
            int i4 = seekableByteOrderedDataInputStream.readInt();
            long jPosition = ((long) seekableByteOrderedDataInputStream.position()) + 4;
            ExifTag exifTag3 = sExifTagMapsForReading[i3].get(Integer.valueOf(unsignedShort2));
            boolean z3 = DEBUG;
            if (z3) {
                j = 4;
                i2 = 4;
                s = s3;
                s2 = s4;
                Log.d("ExifInterface", String.format("ifdType: %d, tagNumber: %d, tagName: %s, dataFormat: %d, numberOfComponents: %d", Integer.valueOf(i3), Integer.valueOf(unsignedShort2), exifTag3 != null ? exifTag3.name : null, Integer.valueOf(unsignedShort3), Integer.valueOf(i4)));
            } else {
                s = s3;
                s2 = s4;
                j = 4;
                i2 = 4;
            }
            if (exifTag3 != null) {
                if (unsignedShort3 > 0) {
                    int[] iArr = IFD_FORMAT_BYTES_PER_FORMAT;
                    if (unsignedShort3 < iArr.length) {
                        if (exifTag3.isFormatCompatible(unsignedShort3)) {
                            if (unsignedShort3 == 7) {
                                unsignedShort3 = exifTag3.primaryFormat;
                            }
                            exifTag = exifTag3;
                            j2 = ((long) i4) * ((long) iArr[unsignedShort3]);
                            if (j2 < 0 || j2 > 2147483647L) {
                                if (z3) {
                                    Log.d("ExifInterface", "Skip the tag entry since the number of components is invalid: " + i4);
                                }
                                z = false;
                                if (z) {
                                    seekableByteOrderedDataInputStream.seek(jPosition);
                                } else {
                                    if (j2 > j) {
                                        int i5 = seekableByteOrderedDataInputStream.readInt();
                                        if (z3) {
                                            Log.d("ExifInterface", "seek to data offset: " + i5);
                                        }
                                        if (this.mMimeType == 7) {
                                            z2 = z3;
                                            exifTag2 = exifTag;
                                            if ("MakerNote".equals(exifTag2.name)) {
                                                this.mOrfMakerNoteOffset = i5;
                                            } else if (i3 == 6 && "ThumbnailImage".equals(exifTag2.name)) {
                                                this.mOrfThumbnailOffset = i5;
                                                this.mOrfThumbnailLength = i4;
                                                ExifAttribute exifAttributeCreateUShort = ExifAttribute.createUShort(6, this.mExifByteOrder);
                                                j3 = jPosition;
                                                ExifAttribute exifAttributeCreateULong = ExifAttribute.createULong(this.mOrfThumbnailOffset, this.mExifByteOrder);
                                                ExifAttribute exifAttributeCreateULong2 = ExifAttribute.createULong(this.mOrfThumbnailLength, this.mExifByteOrder);
                                                this.mAttributes[i2].put("Compression", exifAttributeCreateUShort);
                                                this.mAttributes[i2].put("JPEGInterchangeFormat", exifAttributeCreateULong);
                                                this.mAttributes[i2].put("JPEGInterchangeFormatLength", exifAttributeCreateULong2);
                                            }
                                            j3 = jPosition;
                                        } else {
                                            z2 = z3;
                                            j3 = jPosition;
                                            exifTag2 = exifTag;
                                        }
                                        seekableByteOrderedDataInputStream.seek(i5);
                                    } else {
                                        z2 = z3;
                                        j3 = jPosition;
                                        exifTag2 = exifTag;
                                    }
                                    Integer num = sExifPointerTagMap.get(Integer.valueOf(unsignedShort2));
                                    if (z2) {
                                        Log.d("ExifInterface", "nextIfdType: " + num + " byteCount: " + j2);
                                    }
                                    if (num != null) {
                                        if (unsignedShort3 == 3) {
                                            unsignedShort = seekableByteOrderedDataInputStream.readUnsignedShort();
                                        } else {
                                            if (unsignedShort3 == i2) {
                                                unsignedInt = seekableByteOrderedDataInputStream.readUnsignedInt();
                                            } else if (unsignedShort3 == 8) {
                                                unsignedShort = seekableByteOrderedDataInputStream.readShort();
                                            } else if (unsignedShort3 == 9 || unsignedShort3 == 13) {
                                                unsignedShort = seekableByteOrderedDataInputStream.readInt();
                                            } else {
                                                unsignedInt = -1;
                                            }
                                            if (z2) {
                                                Log.d("ExifInterface", String.format("Offset: %d, tagName: %s", Long.valueOf(unsignedInt), exifTag2.name));
                                            }
                                            if (unsignedInt > 0 || (seekableByteOrderedDataInputStream.length() != -1 && unsignedInt >= seekableByteOrderedDataInputStream.length())) {
                                                if (z2) {
                                                    String str = "Skip jump into the IFD since its offset is invalid: " + unsignedInt;
                                                    if (seekableByteOrderedDataInputStream.length() != -1) {
                                                        str = str + " (total length: " + seekableByteOrderedDataInputStream.length() + ")";
                                                    }
                                                    Log.d("ExifInterface", str);
                                                }
                                            } else if (!this.mAttributesOffsets.contains(Integer.valueOf((int) unsignedInt))) {
                                                seekableByteOrderedDataInputStream.seek(unsignedInt);
                                                readImageFileDirectory(seekableByteOrderedDataInputStream, num.intValue());
                                            } else if (z2) {
                                                Log.d("ExifInterface", "Skip jump into the IFD since it has already been read: IfdType " + num + " (at " + unsignedInt + ")");
                                            }
                                            seekableByteOrderedDataInputStream.seek(j3);
                                        }
                                        unsignedInt = unsignedShort;
                                        if (z2) {
                                        }
                                        if (unsignedInt > 0) {
                                            if (z2) {
                                            }
                                            seekableByteOrderedDataInputStream.seek(j3);
                                        }
                                    } else {
                                        int iPosition = seekableByteOrderedDataInputStream.position() + this.mOffsetToExifData;
                                        byte[] bArr = new byte[(int) j2];
                                        seekableByteOrderedDataInputStream.readFully(bArr);
                                        long j4 = iPosition;
                                        ExifTag exifTag4 = exifTag2;
                                        long j5 = j3;
                                        ExifAttribute exifAttribute = new ExifAttribute(unsignedShort3, i4, j4, bArr);
                                        this.mAttributes[i].put(exifTag4.name, exifAttribute);
                                        if ("DNGVersion".equals(exifTag4.name)) {
                                            this.mMimeType = 3;
                                        }
                                        if ((("Make".equals(exifTag4.name) || "Model".equals(exifTag4.name)) && exifAttribute.getStringValue(this.mExifByteOrder).contains("PENTAX")) || ("Compression".equals(exifTag4.name) && exifAttribute.getIntValue(this.mExifByteOrder) == 65535)) {
                                            this.mMimeType = 8;
                                        }
                                        if (seekableByteOrderedDataInputStream.position() != j5) {
                                            seekableByteOrderedDataInputStream.seek(j5);
                                        }
                                    }
                                }
                                s4 = (short) (s2 + 1);
                                i3 = i;
                                s3 = s;
                            } else {
                                z = true;
                                if (z) {
                                }
                                s4 = (short) (s2 + 1);
                                i3 = i;
                                s3 = s;
                            }
                        } else if (z3) {
                            Log.d("ExifInterface", "Skip the tag entry since data format (" + IFD_FORMAT_NAMES[unsignedShort3] + ") is unexpected for tag: " + exifTag3.name);
                        }
                    }
                }
                exifTag = exifTag3;
                if (z3) {
                    Log.d("ExifInterface", "Skip the tag entry since data format is invalid: " + unsignedShort3);
                }
                j2 = 0;
                z = false;
                if (z) {
                }
                s4 = (short) (s2 + 1);
                i3 = i;
                s3 = s;
            } else if (z3) {
                Log.d("ExifInterface", "Skip the tag entry since tag number is not defined: " + unsignedShort2);
            }
            exifTag = exifTag3;
            j2 = 0;
            z = false;
            if (z) {
            }
            s4 = (short) (s2 + 1);
            i3 = i;
            s3 = s;
        }
        int i6 = seekableByteOrderedDataInputStream.readInt();
        boolean z4 = DEBUG;
        if (z4) {
            Log.d("ExifInterface", String.format("nextIfdOffset: %d", Integer.valueOf(i6)));
        }
        long j6 = i6;
        if (j6 <= 0) {
            if (z4) {
                Log.d("ExifInterface", "Stop reading file since a wrong offset may cause an infinite loop: " + i6);
                return;
            }
            return;
        }
        if (this.mAttributesOffsets.contains(Integer.valueOf(i6))) {
            if (z4) {
                Log.d("ExifInterface", "Stop reading file since re-reading an IFD may cause an infinite loop: " + i6);
                return;
            }
            return;
        }
        seekableByteOrderedDataInputStream.seek(j6);
        if (this.mAttributes[4].isEmpty()) {
            readImageFileDirectory(seekableByteOrderedDataInputStream, 4);
        } else if (this.mAttributes[5].isEmpty()) {
            readImageFileDirectory(seekableByteOrderedDataInputStream, 5);
        }
    }

    private void retrieveJpegImageSize(SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream, int i) throws Throwable {
        ExifAttribute exifAttribute = this.mAttributes[i].get("ImageLength");
        ExifAttribute exifAttribute2 = this.mAttributes[i].get("ImageWidth");
        if (exifAttribute == null || exifAttribute2 == null) {
            ExifAttribute exifAttribute3 = this.mAttributes[i].get("JPEGInterchangeFormat");
            ExifAttribute exifAttribute4 = this.mAttributes[i].get("JPEGInterchangeFormatLength");
            if (exifAttribute3 == null || exifAttribute4 == null) {
                return;
            }
            int intValue = exifAttribute3.getIntValue(this.mExifByteOrder);
            int intValue2 = exifAttribute3.getIntValue(this.mExifByteOrder);
            seekableByteOrderedDataInputStream.seek(intValue);
            byte[] bArr = new byte[intValue2];
            seekableByteOrderedDataInputStream.readFully(bArr);
            getJpegAttributes(new ByteOrderedDataInputStream(bArr), intValue, i);
        }
    }

    private void setThumbnailData(ByteOrderedDataInputStream byteOrderedDataInputStream) throws Throwable {
        HashMap<String, ExifAttribute> map = this.mAttributes[4];
        ExifAttribute exifAttribute = map.get("Compression");
        if (exifAttribute != null) {
            int intValue = exifAttribute.getIntValue(this.mExifByteOrder);
            this.mThumbnailCompression = intValue;
            if (intValue != 1) {
                if (intValue == 6) {
                    handleThumbnailFromJfif(byteOrderedDataInputStream, map);
                    return;
                } else if (intValue != 7) {
                    return;
                }
            }
            if (isSupportedDataType(map)) {
                handleThumbnailFromStrips(byteOrderedDataInputStream, map);
                return;
            }
            return;
        }
        this.mThumbnailCompression = 6;
        handleThumbnailFromJfif(byteOrderedDataInputStream, map);
    }

    private void handleThumbnailFromJfif(ByteOrderedDataInputStream byteOrderedDataInputStream, HashMap<String, ExifAttribute> map) throws Throwable {
        ExifAttribute exifAttribute = map.get("JPEGInterchangeFormat");
        ExifAttribute exifAttribute2 = map.get("JPEGInterchangeFormatLength");
        if (exifAttribute == null || exifAttribute2 == null) {
            return;
        }
        int intValue = exifAttribute.getIntValue(this.mExifByteOrder);
        int intValue2 = exifAttribute2.getIntValue(this.mExifByteOrder);
        if (this.mMimeType == 7) {
            intValue += this.mOrfMakerNoteOffset;
        }
        if (intValue > 0 && intValue2 > 0) {
            this.mHasThumbnail = true;
            if (this.mFilename == null && this.mAssetInputStream == null && this.mSeekableFileDescriptor == null) {
                byte[] bArr = new byte[intValue2];
                byteOrderedDataInputStream.skipFully(intValue);
                byteOrderedDataInputStream.readFully(bArr);
                this.mThumbnailBytes = bArr;
            }
            this.mThumbnailOffset = intValue;
            this.mThumbnailLength = intValue2;
        }
        if (DEBUG) {
            Log.d("ExifInterface", "Setting thumbnail attributes with offset: " + intValue + ", length: " + intValue2);
        }
    }

    private void handleThumbnailFromStrips(ByteOrderedDataInputStream byteOrderedDataInputStream, HashMap<String, ExifAttribute> map) throws IOException {
        int i;
        ExifAttribute exifAttribute = map.get("StripOffsets");
        ExifAttribute exifAttribute2 = map.get("StripByteCounts");
        if (exifAttribute == null || exifAttribute2 == null) {
            return;
        }
        long[] jArrConvertToLongArray = ExifInterfaceUtils.convertToLongArray(exifAttribute.getValue(this.mExifByteOrder));
        long[] jArrConvertToLongArray2 = ExifInterfaceUtils.convertToLongArray(exifAttribute2.getValue(this.mExifByteOrder));
        if (jArrConvertToLongArray == null || jArrConvertToLongArray.length == 0) {
            Log.w("ExifInterface", "stripOffsets should not be null or have zero length.");
            return;
        }
        if (jArrConvertToLongArray2 == null || jArrConvertToLongArray2.length == 0) {
            Log.w("ExifInterface", "stripByteCounts should not be null or have zero length.");
            return;
        }
        if (jArrConvertToLongArray.length != jArrConvertToLongArray2.length) {
            Log.w("ExifInterface", "stripOffsets and stripByteCounts should have same length.");
            return;
        }
        long j = 0;
        for (long j2 : jArrConvertToLongArray2) {
            j += j2;
        }
        int i2 = (int) j;
        byte[] bArr = new byte[i2];
        int i3 = 1;
        this.mAreThumbnailStripsConsecutive = true;
        this.mHasThumbnailStrips = true;
        this.mHasThumbnail = true;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (i4 < jArrConvertToLongArray.length) {
            int i7 = (int) jArrConvertToLongArray[i4];
            int i8 = (int) jArrConvertToLongArray2[i4];
            if (i4 < jArrConvertToLongArray.length - i3) {
                i = i4;
                if (i7 + i8 != jArrConvertToLongArray[i + 1]) {
                    this.mAreThumbnailStripsConsecutive = false;
                }
            } else {
                i = i4;
            }
            int i9 = i7 - i5;
            if (i9 < 0) {
                Log.d("ExifInterface", "Invalid strip offset value");
                return;
            }
            try {
                byteOrderedDataInputStream.skipFully(i9);
                int i10 = i5 + i9;
                byte[] bArr2 = new byte[i8];
                try {
                    byteOrderedDataInputStream.readFully(bArr2);
                    i5 = i10 + i8;
                    System.arraycopy(bArr2, 0, bArr, i6, i8);
                    i6 += i8;
                    i4 = i + 1;
                    i3 = 1;
                } catch (EOFException unused) {
                    Log.d("ExifInterface", "Failed to read " + i8 + " bytes.");
                    return;
                }
            } catch (EOFException unused2) {
                Log.d("ExifInterface", "Failed to skip " + i9 + " bytes.");
                return;
            }
        }
        this.mThumbnailBytes = bArr;
        if (this.mAreThumbnailStripsConsecutive) {
            this.mThumbnailOffset = (int) jArrConvertToLongArray[0];
            this.mThumbnailLength = i2;
        }
    }

    private boolean isSupportedDataType(HashMap<String, ExifAttribute> map) {
        ExifAttribute exifAttribute;
        int intValue;
        ExifAttribute exifAttribute2 = map.get("BitsPerSample");
        if (exifAttribute2 != null) {
            int[] iArr = (int[]) exifAttribute2.getValue(this.mExifByteOrder);
            int[] iArr2 = BITS_PER_SAMPLE_RGB;
            if (Arrays.equals(iArr2, iArr)) {
                return true;
            }
            if (this.mMimeType == 3 && (exifAttribute = map.get("PhotometricInterpretation")) != null && (((intValue = exifAttribute.getIntValue(this.mExifByteOrder)) == 1 && Arrays.equals(iArr, BITS_PER_SAMPLE_GREYSCALE_2)) || (intValue == 6 && Arrays.equals(iArr, iArr2)))) {
                return true;
            }
        }
        if (!DEBUG) {
            return false;
        }
        Log.d("ExifInterface", "Unsupported data type value");
        return false;
    }

    private boolean isThumbnail(HashMap<String, ExifAttribute> map) {
        ExifAttribute exifAttribute = map.get("ImageLength");
        ExifAttribute exifAttribute2 = map.get("ImageWidth");
        if (exifAttribute == null || exifAttribute2 == null) {
            return false;
        }
        return exifAttribute.getIntValue(this.mExifByteOrder) <= 512 && exifAttribute2.getIntValue(this.mExifByteOrder) <= 512;
    }

    private void validateImages() throws Throwable {
        swapBasedOnImageSize(0, 5);
        swapBasedOnImageSize(0, 4);
        swapBasedOnImageSize(5, 4);
        ExifAttribute exifAttribute = this.mAttributes[1].get("PixelXDimension");
        ExifAttribute exifAttribute2 = this.mAttributes[1].get("PixelYDimension");
        if (exifAttribute != null && exifAttribute2 != null) {
            this.mAttributes[0].put("ImageWidth", exifAttribute);
            this.mAttributes[0].put("ImageLength", exifAttribute2);
        }
        if (this.mAttributes[4].isEmpty() && isThumbnail(this.mAttributes[5])) {
            HashMap<String, ExifAttribute>[] mapArr = this.mAttributes;
            mapArr[4] = mapArr[5];
            mapArr[5] = new HashMap<>();
        }
        if (!isThumbnail(this.mAttributes[4])) {
            Log.d("ExifInterface", "No image meets the size requirements of a thumbnail image.");
        }
        replaceInvalidTags(0, "ThumbnailOrientation", "Orientation");
        replaceInvalidTags(0, "ThumbnailImageLength", "ImageLength");
        replaceInvalidTags(0, "ThumbnailImageWidth", "ImageWidth");
        replaceInvalidTags(5, "ThumbnailOrientation", "Orientation");
        replaceInvalidTags(5, "ThumbnailImageLength", "ImageLength");
        replaceInvalidTags(5, "ThumbnailImageWidth", "ImageWidth");
        replaceInvalidTags(4, "Orientation", "ThumbnailOrientation");
        replaceInvalidTags(4, "ImageLength", "ThumbnailImageLength");
        replaceInvalidTags(4, "ImageWidth", "ThumbnailImageWidth");
    }

    private void updateImageSizeValues(SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream, int i) throws Throwable {
        ExifAttribute exifAttributeCreateUShort;
        ExifAttribute exifAttributeCreateUShort2;
        ExifAttribute exifAttribute = this.mAttributes[i].get("DefaultCropSize");
        ExifAttribute exifAttribute2 = this.mAttributes[i].get("SensorTopBorder");
        ExifAttribute exifAttribute3 = this.mAttributes[i].get("SensorLeftBorder");
        ExifAttribute exifAttribute4 = this.mAttributes[i].get("SensorBottomBorder");
        ExifAttribute exifAttribute5 = this.mAttributes[i].get("SensorRightBorder");
        if (exifAttribute == null) {
            if (exifAttribute2 != null && exifAttribute3 != null && exifAttribute4 != null && exifAttribute5 != null) {
                int intValue = exifAttribute2.getIntValue(this.mExifByteOrder);
                int intValue2 = exifAttribute4.getIntValue(this.mExifByteOrder);
                int intValue3 = exifAttribute5.getIntValue(this.mExifByteOrder);
                int intValue4 = exifAttribute3.getIntValue(this.mExifByteOrder);
                if (intValue2 <= intValue || intValue3 <= intValue4) {
                    return;
                }
                ExifAttribute exifAttributeCreateUShort3 = ExifAttribute.createUShort(intValue2 - intValue, this.mExifByteOrder);
                ExifAttribute exifAttributeCreateUShort4 = ExifAttribute.createUShort(intValue3 - intValue4, this.mExifByteOrder);
                this.mAttributes[i].put("ImageLength", exifAttributeCreateUShort3);
                this.mAttributes[i].put("ImageWidth", exifAttributeCreateUShort4);
                return;
            }
            retrieveJpegImageSize(seekableByteOrderedDataInputStream, i);
            return;
        }
        int i2 = exifAttribute.format;
        ByteOrder byteOrder = this.mExifByteOrder;
        if (i2 == 5) {
            Rational[] rationalArr = (Rational[]) exifAttribute.getValue(byteOrder);
            if (rationalArr == null || rationalArr.length != 2) {
                Log.w("ExifInterface", "Invalid crop size values. cropSize=" + Arrays.toString(rationalArr));
                return;
            }
            exifAttributeCreateUShort = ExifAttribute.createURational(rationalArr[0], this.mExifByteOrder);
            exifAttributeCreateUShort2 = ExifAttribute.createURational(rationalArr[1], this.mExifByteOrder);
        } else {
            int[] iArr = (int[]) exifAttribute.getValue(byteOrder);
            if (iArr == null || iArr.length != 2) {
                Log.w("ExifInterface", "Invalid crop size values. cropSize=" + Arrays.toString(iArr));
                return;
            }
            exifAttributeCreateUShort = ExifAttribute.createUShort(iArr[0], this.mExifByteOrder);
            exifAttributeCreateUShort2 = ExifAttribute.createUShort(iArr[1], this.mExifByteOrder);
        }
        this.mAttributes[i].put("ImageWidth", exifAttributeCreateUShort);
        this.mAttributes[i].put("ImageLength", exifAttributeCreateUShort2);
    }

    private int writeExifSegment(ByteOrderedDataOutputStream byteOrderedDataOutputStream) throws IOException {
        HashMap<String, ExifAttribute>[] mapArr;
        char c2;
        char c3;
        int i;
        int i2;
        ExifTag[][] exifTagArr = EXIF_TAGS;
        int[] iArr = new int[exifTagArr.length];
        int[] iArr2 = new int[exifTagArr.length];
        for (ExifTag exifTag : EXIF_POINTER_TAGS) {
            removeAttribute(exifTag.name);
        }
        if (this.mHasThumbnail) {
            if (this.mHasThumbnailStrips) {
                removeAttribute("StripOffsets");
                removeAttribute("StripByteCounts");
            } else {
                removeAttribute("JPEGInterchangeFormat");
                removeAttribute("JPEGInterchangeFormatLength");
            }
        }
        int i3 = 0;
        while (true) {
            int length = EXIF_TAGS.length;
            mapArr = this.mAttributes;
            if (i3 >= length) {
                break;
            }
            Iterator<Map.Entry<String, ExifAttribute>> it = mapArr[i3].entrySet().iterator();
            while (it.hasNext()) {
                if (it.next().getValue() == null) {
                    it.remove();
                }
            }
            i3++;
        }
        if (!mapArr[1].isEmpty()) {
            this.mAttributes[0].put(EXIF_POINTER_TAGS[1].name, ExifAttribute.createULong(0L, this.mExifByteOrder));
        }
        if (!this.mAttributes[2].isEmpty()) {
            this.mAttributes[0].put(EXIF_POINTER_TAGS[2].name, ExifAttribute.createULong(0L, this.mExifByteOrder));
        }
        if (this.mAttributes[3].isEmpty()) {
            c2 = 2;
        } else {
            c2 = 2;
            this.mAttributes[1].put(EXIF_POINTER_TAGS[3].name, ExifAttribute.createULong(0L, this.mExifByteOrder));
        }
        if (this.mHasThumbnail) {
            boolean z = this.mHasThumbnailStrips;
            HashMap<String, ExifAttribute>[] mapArr2 = this.mAttributes;
            if (z) {
                mapArr2[4].put("StripOffsets", ExifAttribute.createUShort(0, this.mExifByteOrder));
                this.mAttributes[4].put("StripByteCounts", ExifAttribute.createUShort(this.mThumbnailLength, this.mExifByteOrder));
                c3 = 3;
            } else {
                mapArr2[4].put("JPEGInterchangeFormat", ExifAttribute.createULong(0L, this.mExifByteOrder));
                c3 = 3;
                this.mAttributes[4].put("JPEGInterchangeFormatLength", ExifAttribute.createULong(this.mThumbnailLength, this.mExifByteOrder));
            }
        } else {
            c3 = 3;
        }
        for (int i4 = 0; i4 < EXIF_TAGS.length; i4++) {
            Iterator<Map.Entry<String, ExifAttribute>> it2 = this.mAttributes[i4].entrySet().iterator();
            int i5 = 0;
            while (it2.hasNext()) {
                int size = it2.next().getValue().size();
                if (size > 4) {
                    i5 += size;
                }
            }
            iArr2[i4] = iArr2[i4] + i5;
        }
        int size2 = 8;
        for (int i6 = 0; i6 < EXIF_TAGS.length; i6++) {
            if (!this.mAttributes[i6].isEmpty()) {
                iArr[i6] = size2;
                size2 += (this.mAttributes[i6].size() * 12) + 6 + iArr2[i6];
            }
        }
        if (this.mHasThumbnail) {
            boolean z2 = this.mHasThumbnailStrips;
            HashMap<String, ExifAttribute>[] mapArr3 = this.mAttributes;
            if (z2) {
                mapArr3[4].put("StripOffsets", ExifAttribute.createUShort(size2, this.mExifByteOrder));
            } else {
                mapArr3[4].put("JPEGInterchangeFormat", ExifAttribute.createULong(size2, this.mExifByteOrder));
            }
            this.mThumbnailOffset = size2;
            size2 += this.mThumbnailLength;
        }
        if (this.mMimeType == 4) {
            size2 += 8;
        }
        if (DEBUG) {
            for (int i7 = 0; i7 < EXIF_TAGS.length; i7++) {
                Log.d("ExifInterface", String.format("index: %d, offsets: %d, tag count: %d, data sizes: %d, total size: %d", Integer.valueOf(i7), Integer.valueOf(iArr[i7]), Integer.valueOf(this.mAttributes[i7].size()), Integer.valueOf(iArr2[i7]), Integer.valueOf(size2)));
            }
        }
        if (!this.mAttributes[1].isEmpty()) {
            this.mAttributes[0].put(EXIF_POINTER_TAGS[1].name, ExifAttribute.createULong(iArr[1], this.mExifByteOrder));
        }
        if (!this.mAttributes[c2].isEmpty()) {
            this.mAttributes[0].put(EXIF_POINTER_TAGS[c2].name, ExifAttribute.createULong(iArr[c2], this.mExifByteOrder));
        }
        if (!this.mAttributes[c3].isEmpty()) {
            this.mAttributes[1].put(EXIF_POINTER_TAGS[c3].name, ExifAttribute.createULong(iArr[c3], this.mExifByteOrder));
        }
        int i8 = this.mMimeType;
        if (i8 == 4) {
            if (size2 > 65535) {
                ExifInterface$$ExternalSyntheticBUOutline0.m146m("Size of exif data (", size2, " bytes) exceeds the max size of a JPEG APP1 segment (65536 bytes)");
                return 0;
            }
            byteOrderedDataOutputStream.writeUnsignedShort(size2);
            byteOrderedDataOutputStream.write(IDENTIFIER_EXIF_APP1);
        } else if (i8 == 13) {
            byteOrderedDataOutputStream.writeInt(size2);
            byteOrderedDataOutputStream.writeInt(1700284774);
        } else if (i8 == 14) {
            byteOrderedDataOutputStream.write(WEBP_CHUNK_TYPE_EXIF);
            byteOrderedDataOutputStream.writeInt(size2);
        }
        int size3 = byteOrderedDataOutputStream.mOutputStream.size();
        byteOrderedDataOutputStream.writeShort(this.mExifByteOrder == ByteOrder.BIG_ENDIAN ? (short) 19789 : (short) 18761);
        byteOrderedDataOutputStream.setByteOrder(this.mExifByteOrder);
        byteOrderedDataOutputStream.writeUnsignedShort(42);
        byteOrderedDataOutputStream.writeUnsignedInt(8L);
        int i9 = 0;
        while (i9 < EXIF_TAGS.length) {
            if (this.mAttributes[i9].isEmpty()) {
                i = i9;
            } else {
                byteOrderedDataOutputStream.writeUnsignedShort(this.mAttributes[i9].size());
                int size4 = iArr[i9] + 2 + (this.mAttributes[i9].size() * 12) + 4;
                for (Map.Entry<String, ExifAttribute> entry : this.mAttributes[i9].entrySet()) {
                    int i10 = sExifTagMapsForWriting[i9].get(entry.getKey()).number;
                    ExifAttribute value = entry.getValue();
                    int size5 = value.size();
                    byteOrderedDataOutputStream.writeUnsignedShort(i10);
                    byteOrderedDataOutputStream.writeUnsignedShort(value.format);
                    byteOrderedDataOutputStream.writeInt(value.numberOfComponents);
                    if (size5 > 4) {
                        i2 = i9;
                        byteOrderedDataOutputStream.writeUnsignedInt(size4);
                        size4 += size5;
                    } else {
                        i2 = i9;
                        byteOrderedDataOutputStream.write(value.bytes);
                        if (size5 < 4) {
                            while (size5 < 4) {
                                byteOrderedDataOutputStream.writeByte(0);
                                size5++;
                            }
                        }
                    }
                    i9 = i2;
                }
                i = i9;
                if (i == 0 && !this.mAttributes[4].isEmpty()) {
                    byteOrderedDataOutputStream.writeUnsignedInt(iArr[4]);
                } else {
                    byteOrderedDataOutputStream.writeUnsignedInt(0L);
                }
                Iterator<Map.Entry<String, ExifAttribute>> it3 = this.mAttributes[i].entrySet().iterator();
                while (it3.hasNext()) {
                    byte[] bArr = it3.next().getValue().bytes;
                    if (bArr.length > 4) {
                        byteOrderedDataOutputStream.write(bArr, 0, bArr.length);
                    }
                }
            }
            i9 = i + 1;
        }
        if (this.mHasThumbnail) {
            byteOrderedDataOutputStream.write(getThumbnailBytes());
        }
        if (this.mMimeType == 14 && size2 % 2 == 1) {
            byteOrderedDataOutputStream.writeByte(0);
        }
        byteOrderedDataOutputStream.setByteOrder(ByteOrder.BIG_ENDIAN);
        return size3;
    }

    private static Pair<Integer, Integer> guessDataFormat(String str) {
        if (str.contains(",")) {
            String[] strArrSplit = str.split(",", -1);
            Pair<Integer, Integer> pairGuessDataFormat = guessDataFormat(strArrSplit[0]);
            if (((Integer) pairGuessDataFormat.first).intValue() == 2) {
                return pairGuessDataFormat;
            }
            for (int i = 1; i < strArrSplit.length; i++) {
                Pair<Integer, Integer> pairGuessDataFormat2 = guessDataFormat(strArrSplit[i]);
                int iIntValue = (((Integer) pairGuessDataFormat2.first).equals(pairGuessDataFormat.first) || ((Integer) pairGuessDataFormat2.second).equals(pairGuessDataFormat.first)) ? ((Integer) pairGuessDataFormat.first).intValue() : -1;
                int iIntValue2 = (((Integer) pairGuessDataFormat.second).intValue() == -1 || !(((Integer) pairGuessDataFormat2.first).equals(pairGuessDataFormat.second) || ((Integer) pairGuessDataFormat2.second).equals(pairGuessDataFormat.second))) ? -1 : ((Integer) pairGuessDataFormat.second).intValue();
                if (iIntValue == -1 && iIntValue2 == -1) {
                    return new Pair<>(2, -1);
                }
                if (iIntValue == -1) {
                    pairGuessDataFormat = new Pair<>(Integer.valueOf(iIntValue2), -1);
                } else if (iIntValue2 == -1) {
                    pairGuessDataFormat = new Pair<>(Integer.valueOf(iIntValue), -1);
                }
            }
            return pairGuessDataFormat;
        }
        if (str.contains("/")) {
            String[] strArrSplit2 = str.split("/", -1);
            if (strArrSplit2.length == 2) {
                try {
                    long j = (long) Double.parseDouble(strArrSplit2[0]);
                    long j2 = (long) Double.parseDouble(strArrSplit2[1]);
                    if (j >= 0 && j2 >= 0) {
                        if (j <= 2147483647L && j2 <= 2147483647L) {
                            return new Pair<>(10, 5);
                        }
                        return new Pair<>(5, -1);
                    }
                    return new Pair<>(10, -1);
                } catch (NumberFormatException unused) {
                }
            }
            return new Pair<>(2, -1);
        }
        try {
            try {
                long j3 = Long.parseLong(str);
                if (j3 >= 0 && j3 <= WebSocketProtocol.PAYLOAD_SHORT_MAX) {
                    return new Pair<>(3, 4);
                }
                if (j3 < 0) {
                    return new Pair<>(9, -1);
                }
                return new Pair<>(4, -1);
            } catch (NumberFormatException unused2) {
                return new Pair<>(2, -1);
            }
        } catch (NumberFormatException unused3) {
            Double.parseDouble(str);
            return new Pair<>(12, -1);
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public static class SeekableByteOrderedDataInputStream extends ByteOrderedDataInputStream {
        public SeekableByteOrderedDataInputStream(byte[] bArr) {
            super(bArr);
            this.mDataInputStream.mark(Integer.MAX_VALUE);
        }

        public SeekableByteOrderedDataInputStream(InputStream inputStream) {
            super(inputStream);
            if (!inputStream.markSupported()) {
                f$$ExternalSyntheticBUOutline1.m178m("Cannot create SeekableByteOrderedDataInputStream with stream that does not support mark/reset");
                throw null;
            }
            this.mDataInputStream.mark(Integer.MAX_VALUE);
        }

        public void seek(long j) throws IOException {
            int i = this.mPosition;
            if (i > j) {
                this.mPosition = 0;
                this.mDataInputStream.reset();
            } else {
                j -= (long) i;
            }
            skipFully((int) j);
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public static class ByteOrderedDataInputStream extends InputStream implements DataInput {
        private ByteOrder mByteOrder;
        protected final DataInputStream mDataInputStream;
        private int mLength;
        protected int mPosition;
        private byte[] mSkipBuffer;

        public ByteOrderedDataInputStream(byte[] bArr) {
            this(new ByteArrayInputStream(bArr), ByteOrder.BIG_ENDIAN);
            this.mLength = bArr.length;
        }

        public ByteOrderedDataInputStream(InputStream inputStream) {
            this(inputStream, ByteOrder.BIG_ENDIAN);
        }

        public ByteOrderedDataInputStream(InputStream inputStream, ByteOrder byteOrder) {
            DataInputStream dataInputStream = new DataInputStream(inputStream);
            this.mDataInputStream = dataInputStream;
            dataInputStream.mark(0);
            this.mPosition = 0;
            this.mByteOrder = byteOrder;
            this.mLength = inputStream instanceof ByteOrderedDataInputStream ? ((ByteOrderedDataInputStream) inputStream).length() : -1;
        }

        public void setByteOrder(ByteOrder byteOrder) {
            this.mByteOrder = byteOrder;
        }

        public int position() {
            return this.mPosition;
        }

        public byte[] readToEnd() throws IOException {
            byte[] bArrCopyOf = new byte[1024];
            int i = 0;
            while (true) {
                if (i == bArrCopyOf.length) {
                    bArrCopyOf = Arrays.copyOf(bArrCopyOf, bArrCopyOf.length * 2);
                }
                int i2 = this.mDataInputStream.read(bArrCopyOf, i, bArrCopyOf.length - i);
                if (i2 != -1) {
                    i += i2;
                    this.mPosition += i2;
                } else {
                    return Arrays.copyOf(bArrCopyOf, i);
                }
            }
        }

        @Override // java.io.InputStream
        public int available() {
            return this.mDataInputStream.available();
        }

        @Override // java.io.InputStream
        public int read() {
            this.mPosition++;
            return this.mDataInputStream.read();
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            int i3 = this.mDataInputStream.read(bArr, i, i2);
            this.mPosition += i3;
            return i3;
        }

        @Override // java.io.DataInput
        public int readUnsignedByte() {
            this.mPosition++;
            return this.mDataInputStream.readUnsignedByte();
        }

        @Override // java.io.DataInput
        public String readLine() {
            Log.d("ExifInterface", "Currently unsupported");
            return null;
        }

        @Override // java.io.DataInput
        public boolean readBoolean() {
            this.mPosition++;
            return this.mDataInputStream.readBoolean();
        }

        @Override // java.io.DataInput
        public char readChar() {
            this.mPosition += 2;
            return this.mDataInputStream.readChar();
        }

        @Override // java.io.DataInput
        public String readUTF() {
            this.mPosition += 2;
            return this.mDataInputStream.readUTF();
        }

        @Override // java.io.DataInput
        public void readFully(byte[] bArr, int i, int i2) throws IOException {
            this.mPosition += i2;
            this.mDataInputStream.readFully(bArr, i, i2);
        }

        @Override // java.io.DataInput
        public void readFully(byte[] bArr) throws IOException {
            this.mPosition += bArr.length;
            this.mDataInputStream.readFully(bArr);
        }

        @Override // java.io.DataInput
        public byte readByte() throws IOException {
            this.mPosition++;
            int i = this.mDataInputStream.read();
            if (i >= 0) {
                return (byte) i;
            }
            Buffer$$ExternalSyntheticBUOutline1.m834m();
            return (byte) 0;
        }

        @Override // java.io.DataInput
        public short readShort() throws IOException {
            this.mPosition += 2;
            int i = this.mDataInputStream.read();
            int i2 = this.mDataInputStream.read();
            if ((i | i2) < 0) {
                Buffer$$ExternalSyntheticBUOutline1.m834m();
                return (short) 0;
            }
            ByteOrder byteOrder = this.mByteOrder;
            if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
                return (short) ((i2 << 8) + i);
            }
            if (byteOrder == ByteOrder.BIG_ENDIAN) {
                return (short) ((i << 8) + i2);
            }
            ZipFilesKt$$ExternalSyntheticBUOutline1.m855m("Invalid byte order: ", this.mByteOrder);
            return (short) 0;
        }

        @Override // java.io.DataInput
        public int readInt() throws IOException {
            this.mPosition += 4;
            int i = this.mDataInputStream.read();
            int i2 = this.mDataInputStream.read();
            int i3 = this.mDataInputStream.read();
            int i4 = this.mDataInputStream.read();
            if ((i | i2 | i3 | i4) < 0) {
                Buffer$$ExternalSyntheticBUOutline1.m834m();
                return 0;
            }
            ByteOrder byteOrder = this.mByteOrder;
            if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
                return (i4 << 24) + (i3 << 16) + (i2 << 8) + i;
            }
            if (byteOrder == ByteOrder.BIG_ENDIAN) {
                return (i << 24) + (i2 << 16) + (i3 << 8) + i4;
            }
            ZipFilesKt$$ExternalSyntheticBUOutline1.m855m("Invalid byte order: ", this.mByteOrder);
            return 0;
        }

        @Override // java.io.DataInput
        public int skipBytes(int i) {
            throw new UnsupportedOperationException("skipBytes is currently unsupported");
        }

        public void skipFully(int i) throws IOException {
            int i2 = 0;
            while (i2 < i) {
                int i3 = i - i2;
                int iSkip = (int) this.mDataInputStream.skip(i3);
                if (iSkip <= 0) {
                    if (this.mSkipBuffer == null) {
                        this.mSkipBuffer = new byte[8192];
                    }
                    iSkip = this.mDataInputStream.read(this.mSkipBuffer, 0, Math.min(8192, i3));
                    if (iSkip == -1) {
                        throw new EOFException("Reached EOF while skipping " + i + " bytes.");
                    }
                }
                i2 += iSkip;
            }
            this.mPosition += i2;
        }

        @Override // java.io.DataInput
        public int readUnsignedShort() throws IOException {
            this.mPosition += 2;
            int i = this.mDataInputStream.read();
            int i2 = this.mDataInputStream.read();
            if ((i | i2) < 0) {
                Buffer$$ExternalSyntheticBUOutline1.m834m();
                return 0;
            }
            ByteOrder byteOrder = this.mByteOrder;
            if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
                return (i2 << 8) + i;
            }
            if (byteOrder == ByteOrder.BIG_ENDIAN) {
                return (i << 8) + i2;
            }
            ZipFilesKt$$ExternalSyntheticBUOutline1.m855m("Invalid byte order: ", this.mByteOrder);
            return 0;
        }

        public long readUnsignedInt() {
            return ((long) readInt()) & 4294967295L;
        }

        @Override // java.io.DataInput
        public long readLong() throws IOException {
            this.mPosition += 8;
            int i = this.mDataInputStream.read();
            int i2 = this.mDataInputStream.read();
            int i3 = this.mDataInputStream.read();
            int i4 = this.mDataInputStream.read();
            int i5 = this.mDataInputStream.read();
            int i6 = this.mDataInputStream.read();
            int i7 = this.mDataInputStream.read();
            int i8 = this.mDataInputStream.read();
            if ((i | i2 | i3 | i4 | i5 | i6 | i7 | i8) < 0) {
                Buffer$$ExternalSyntheticBUOutline1.m834m();
                return 0L;
            }
            ByteOrder byteOrder = this.mByteOrder;
            if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
                return (((long) i8) << 56) + (((long) i7) << 48) + (((long) i6) << 40) + (((long) i5) << 32) + (((long) i4) << 24) + (((long) i3) << 16) + (((long) i2) << 8) + ((long) i);
            }
            if (byteOrder == ByteOrder.BIG_ENDIAN) {
                return (((long) i) << 56) + (((long) i2) << 48) + (((long) i3) << 40) + (((long) i4) << 32) + (((long) i5) << 24) + (((long) i6) << 16) + (((long) i7) << 8) + ((long) i8);
            }
            ZipFilesKt$$ExternalSyntheticBUOutline1.m855m("Invalid byte order: ", this.mByteOrder);
            return 0L;
        }

        @Override // java.io.DataInput
        public float readFloat() {
            return Float.intBitsToFloat(readInt());
        }

        @Override // java.io.DataInput
        public double readDouble() {
            return Double.longBitsToDouble(readLong());
        }

        @Override // java.io.InputStream
        public void mark(int i) {
            throw new UnsupportedOperationException("Mark is currently unsupported");
        }

        @Override // java.io.InputStream
        public void reset() {
            throw new UnsupportedOperationException("Reset is currently unsupported");
        }

        public int length() {
            return this.mLength;
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public static class ByteOrderedDataOutputStream extends FilterOutputStream {
        private ByteOrder mByteOrder;
        final DataOutputStream mOutputStream;

        public ByteOrderedDataOutputStream(OutputStream outputStream, ByteOrder byteOrder) {
            super(outputStream);
            this.mOutputStream = new DataOutputStream(outputStream);
            this.mByteOrder = byteOrder;
        }

        public void setByteOrder(ByteOrder byteOrder) {
            this.mByteOrder = byteOrder;
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream
        public void write(byte[] bArr) throws IOException {
            this.mOutputStream.write(bArr);
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) throws IOException {
            this.mOutputStream.write(bArr, i, i2);
        }

        public void writeByte(int i) throws IOException {
            this.mOutputStream.write(i);
        }

        public void writeShort(short s) throws IOException {
            ByteOrder byteOrder = this.mByteOrder;
            if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
                this.mOutputStream.write(s & 255);
                this.mOutputStream.write((s >>> 8) & 255);
            } else if (byteOrder == ByteOrder.BIG_ENDIAN) {
                this.mOutputStream.write((s >>> 8) & 255);
                this.mOutputStream.write(s & 255);
            }
        }

        public void writeInt(int i) throws IOException {
            ByteOrder byteOrder = this.mByteOrder;
            if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
                this.mOutputStream.write(i & 255);
                this.mOutputStream.write((i >>> 8) & 255);
                this.mOutputStream.write((i >>> 16) & 255);
                this.mOutputStream.write((i >>> 24) & 255);
                return;
            }
            if (byteOrder == ByteOrder.BIG_ENDIAN) {
                this.mOutputStream.write((i >>> 24) & 255);
                this.mOutputStream.write((i >>> 16) & 255);
                this.mOutputStream.write((i >>> 8) & 255);
                this.mOutputStream.write(i & 255);
            }
        }

        public void writeUnsignedShort(int i) throws IOException {
            if (i > 65535) {
                f$$ExternalSyntheticBUOutline1.m178m("val is larger than the maximum value of a 16-bit unsigned integer");
            } else {
                writeShort((short) i);
            }
        }

        public void writeUnsignedInt(long j) throws IOException {
            if (j > 4294967295L) {
                f$$ExternalSyntheticBUOutline1.m178m("val is larger than the maximum value of a 32-bit unsigned integer");
            } else {
                writeInt((int) j);
            }
        }
    }

    private void swapBasedOnImageSize(int i, int i2) throws Throwable {
        if (this.mAttributes[i].isEmpty() || this.mAttributes[i2].isEmpty()) {
            if (DEBUG) {
                Log.d("ExifInterface", "Cannot perform swap since only one image data exists");
                return;
            }
            return;
        }
        ExifAttribute exifAttribute = this.mAttributes[i].get("ImageLength");
        ExifAttribute exifAttribute2 = this.mAttributes[i].get("ImageWidth");
        ExifAttribute exifAttribute3 = this.mAttributes[i2].get("ImageLength");
        ExifAttribute exifAttribute4 = this.mAttributes[i2].get("ImageWidth");
        if (exifAttribute == null || exifAttribute2 == null) {
            if (DEBUG) {
                Log.d("ExifInterface", "First image does not contain valid size information");
                return;
            }
            return;
        }
        if (exifAttribute3 == null || exifAttribute4 == null) {
            if (DEBUG) {
                Log.d("ExifInterface", "Second image does not contain valid size information");
                return;
            }
            return;
        }
        int intValue = exifAttribute.getIntValue(this.mExifByteOrder);
        int intValue2 = exifAttribute2.getIntValue(this.mExifByteOrder);
        int intValue3 = exifAttribute3.getIntValue(this.mExifByteOrder);
        int intValue4 = exifAttribute4.getIntValue(this.mExifByteOrder);
        if (intValue >= intValue3 || intValue2 >= intValue4) {
            return;
        }
        HashMap<String, ExifAttribute>[] mapArr = this.mAttributes;
        HashMap<String, ExifAttribute> map = mapArr[i];
        mapArr[i] = mapArr[i2];
        mapArr[i2] = map;
    }

    private void replaceInvalidTags(int i, String str, String str2) {
        if (this.mAttributes[i].isEmpty() || this.mAttributes[i].get(str) == null) {
            return;
        }
        HashMap<String, ExifAttribute> map = this.mAttributes[i];
        map.put(str2, map.get(str));
        this.mAttributes[i].remove(str);
    }
}
