package androidx.camera.core.impl.utils;

import android.os.Build;
import android.util.Pair;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraCaptureMetaData$FlashState;
import androidx.core.util.Preconditions;
import androidx.mediarouter.media.GlobalMediaRouter;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import okhttp3.internal.url._UrlKt;
import okhttp3.internal.ws.WebSocketProtocol;

/* JADX INFO: loaded from: classes3.dex */
public class ExifData {
    private static final String COMPONENTS_CONFIGURATION_YCBCR;
    static final ExifTag[] EXIF_POINTER_TAGS;
    static final ExifTag[][] EXIF_TAGS;
    private static final ExifTag[] IFD_EXIF_TAGS;
    static final String[] IFD_FORMAT_NAMES = {_UrlKt.FRAGMENT_ENCODE_SET, "BYTE", "STRING", "USHORT", "ULONG", "URATIONAL", "SBYTE", "UNDEFINED", "SSHORT", "SLONG", "SRATIONAL", "SINGLE", "DOUBLE", "IFD"};
    private static final ExifTag[] IFD_GPS_TAGS;
    private static final ExifTag[] IFD_INTEROPERABILITY_TAGS;
    private static final ExifTag[] IFD_TIFF_TAGS;
    static final HashSet<String> sTagSetForCompatibility;
    private final List<Map<String, ExifAttribute>> mAttributes;
    private final ByteOrder mByteOrder;

    public enum WhiteBalanceMode {
        AUTO,
        MANUAL
    }

    static {
        ExifTag[] exifTagArr = {new ExifTag("ImageWidth", 256, 3, 4), new ExifTag("ImageLength", GlobalMediaRouter.CallbackHandler.MSG_ROUTE_ADDED, 3, 4), new ExifTag("Make", 271, 2), new ExifTag("Model", 272, 2), new ExifTag("Orientation", 274, 3), new ExifTag("XResolution", 282, 5), new ExifTag("YResolution", 283, 5), new ExifTag("ResolutionUnit", 296, 3), new ExifTag("Software", 305, 2), new ExifTag("DateTime", 306, 2), new ExifTag("YCbCrPositioning", 531, 3), new ExifTag("SubIFDPointer", 330, 4), new ExifTag("ExifIFDPointer", 34665, 4), new ExifTag("GPSInfoIFDPointer", 34853, 4)};
        IFD_TIFF_TAGS = exifTagArr;
        ExifTag[] exifTagArr2 = {new ExifTag("ExposureTime", 33434, 5), new ExifTag("FNumber", 33437, 5), new ExifTag("ExposureProgram", 34850, 3), new ExifTag("PhotographicSensitivity", 34855, 3), new ExifTag("SensitivityType", 34864, 3), new ExifTag("ExifVersion", 36864, 2), new ExifTag("DateTimeOriginal", 36867, 2), new ExifTag("DateTimeDigitized", 36868, 2), new ExifTag("ComponentsConfiguration", 37121, 7), new ExifTag("ShutterSpeedValue", 37377, 10), new ExifTag("ApertureValue", 37378, 5), new ExifTag("BrightnessValue", 37379, 10), new ExifTag("ExposureBiasValue", 37380, 10), new ExifTag("MaxApertureValue", 37381, 5), new ExifTag("MeteringMode", 37383, 3), new ExifTag("LightSource", 37384, 3), new ExifTag("Flash", 37385, 3), new ExifTag("FocalLength", 37386, 5), new ExifTag("SubSecTime", 37520, 2), new ExifTag("SubSecTimeOriginal", 37521, 2), new ExifTag("SubSecTimeDigitized", 37522, 2), new ExifTag("FlashpixVersion", 40960, 7), new ExifTag("ColorSpace", 40961, 3), new ExifTag("PixelXDimension", 40962, 3, 4), new ExifTag("PixelYDimension", 40963, 3, 4), new ExifTag("InteroperabilityIFDPointer", 40965, 4), new ExifTag("FocalPlaneResolutionUnit", 41488, 3), new ExifTag("SensingMethod", 41495, 3), new ExifTag("FileSource", 41728, 7), new ExifTag("SceneType", 41729, 7), new ExifTag("CustomRendered", 41985, 3), new ExifTag("ExposureMode", 41986, 3), new ExifTag("WhiteBalance", 41987, 3), new ExifTag("SceneCaptureType", 41990, 3), new ExifTag("Contrast", 41992, 3), new ExifTag("Saturation", 41993, 3), new ExifTag("Sharpness", 41994, 3)};
        IFD_EXIF_TAGS = exifTagArr2;
        ExifTag[] exifTagArr3 = {new ExifTag("GPSVersionID", 0, 1), new ExifTag("GPSLatitudeRef", 1, 2), new ExifTag("GPSLatitude", 2, 5, 10), new ExifTag("GPSLongitudeRef", 3, 2), new ExifTag("GPSLongitude", 4, 5, 10), new ExifTag("GPSAltitudeRef", 5, 1), new ExifTag("GPSAltitude", 6, 5), new ExifTag("GPSTimeStamp", 7, 5), new ExifTag("GPSSpeedRef", 12, 2), new ExifTag("GPSTrackRef", 14, 2), new ExifTag("GPSImgDirectionRef", 16, 2), new ExifTag("GPSDestBearingRef", 23, 2), new ExifTag("GPSDestDistanceRef", 25, 2)};
        IFD_GPS_TAGS = exifTagArr3;
        EXIF_POINTER_TAGS = new ExifTag[]{new ExifTag("SubIFDPointer", 330, 4), new ExifTag("ExifIFDPointer", 34665, 4), new ExifTag("GPSInfoIFDPointer", 34853, 4), new ExifTag("InteroperabilityIFDPointer", 40965, 4)};
        ExifTag[] exifTagArr4 = {new ExifTag("InteroperabilityIndex", 1, 2)};
        IFD_INTEROPERABILITY_TAGS = exifTagArr4;
        EXIF_TAGS = new ExifTag[][]{exifTagArr, exifTagArr2, exifTagArr3, exifTagArr4};
        sTagSetForCompatibility = new HashSet<>(Arrays.asList("FNumber", "ExposureTime", "GPSTimeStamp"));
        COMPONENTS_CONFIGURATION_YCBCR = new String(new byte[]{1, 2, 3, 0}, StandardCharsets.UTF_8);
    }

    public ExifData(ByteOrder byteOrder, List<Map<String, ExifAttribute>> list) {
        Preconditions.checkState(list.size() == EXIF_TAGS.length, "Malformed attributes list. Number of IFDs mismatch.");
        this.mByteOrder = byteOrder;
        this.mAttributes = list;
    }

    public static ExifData create(ImageProxy imageProxy, int i) {
        Builder builderBuilderForDevice = builderForDevice();
        if (imageProxy.getImageInfo() != null) {
            imageProxy.getImageInfo().populateExifData(builderBuilderForDevice);
        }
        builderBuilderForDevice.setOrientationDegrees(i);
        return builderBuilderForDevice.setImageWidth(imageProxy.getWidth()).setImageHeight(imageProxy.getHeight()).build();
    }

    public ByteOrder getByteOrder() {
        return this.mByteOrder;
    }

    public Map<String, ExifAttribute> getAttributes(int i) {
        Preconditions.checkArgumentInRange(i, 0, EXIF_TAGS.length, "Invalid IFD index: " + i + ". Index should be between [0, EXIF_TAGS.length] ");
        return this.mAttributes.get(i);
    }

    public static Builder builderForDevice() {
        return new Builder(ByteOrder.BIG_ENDIAN).setAttribute("Orientation", String.valueOf(1)).setAttribute("XResolution", "72/1").setAttribute("YResolution", "72/1").setAttribute("ResolutionUnit", String.valueOf(2)).setAttribute("YCbCrPositioning", String.valueOf(1)).setAttribute("Make", Build.MANUFACTURER).setAttribute("Model", Build.MODEL);
    }

    public static final class Builder {
        final List<Map<String, ExifAttribute>> mAttributes = Collections.list(new Enumeration<Map<String, ExifAttribute>>() { // from class: androidx.camera.core.impl.utils.ExifData.Builder.2
            int mIfdIndex = 0;

            @Override // java.util.Enumeration
            public boolean hasMoreElements() {
                return this.mIfdIndex < ExifData.EXIF_TAGS.length;
            }

            @Override // java.util.Enumeration
            public Map<String, ExifAttribute> nextElement() {
                this.mIfdIndex++;
                return new HashMap();
            }
        });
        private final ByteOrder mByteOrder;
        private static final Pattern GPS_TIMESTAMP_PATTERN = Pattern.compile("^(\\d{2}):(\\d{2}):(\\d{2})$");
        private static final Pattern DATETIME_PRIMARY_FORMAT_PATTERN = Pattern.compile("^(\\d{4}):(\\d{2}):(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$");
        private static final Pattern DATETIME_SECONDARY_FORMAT_PATTERN = Pattern.compile("^(\\d{4})-(\\d{2})-(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$");
        static final List<HashMap<String, ExifTag>> sExifTagMapsForWriting = Collections.list(new Enumeration<HashMap<String, ExifTag>>() { // from class: androidx.camera.core.impl.utils.ExifData.Builder.1
            int mIfdIndex = 0;

            @Override // java.util.Enumeration
            public boolean hasMoreElements() {
                return this.mIfdIndex < ExifData.EXIF_TAGS.length;
            }

            @Override // java.util.Enumeration
            public HashMap<String, ExifTag> nextElement() {
                HashMap<String, ExifTag> map = new HashMap<>();
                for (ExifTag exifTag : ExifData.EXIF_TAGS[this.mIfdIndex]) {
                    map.put(exifTag.name, exifTag);
                }
                this.mIfdIndex++;
                return map;
            }
        });

        public Builder(ByteOrder byteOrder) {
            this.mByteOrder = byteOrder;
        }

        public Builder setImageWidth(int i) {
            return setAttribute("ImageWidth", String.valueOf(i));
        }

        public Builder setImageHeight(int i) {
            return setAttribute("ImageLength", String.valueOf(i));
        }

        public Builder setOrientationDegrees(int i) {
            int i2;
            if (i == 0) {
                i2 = 1;
            } else if (i == 90) {
                i2 = 6;
            } else if (i == 180) {
                i2 = 3;
            } else if (i != 270) {
                Logger.m79w("ExifData", "Unexpected orientation value: " + i + ". Must be one of 0, 90, 180, 270.");
                i2 = 0;
            } else {
                i2 = 8;
            }
            return setAttribute("Orientation", String.valueOf(i2));
        }

        public Builder setFlashState(CameraCaptureMetaData$FlashState cameraCaptureMetaData$FlashState) {
            int i;
            if (cameraCaptureMetaData$FlashState == CameraCaptureMetaData$FlashState.UNKNOWN) {
                return this;
            }
            int i2 = C02761.f7x649fcb98[cameraCaptureMetaData$FlashState.ordinal()];
            if (i2 == 1) {
                i = 0;
            } else if (i2 == 2) {
                i = 32;
            } else {
                if (i2 != 3) {
                    Logger.m79w("ExifData", "Unknown flash state: " + cameraCaptureMetaData$FlashState);
                    return this;
                }
                i = 1;
            }
            if ((i & 1) == 1) {
                setAttribute("LightSource", String.valueOf(4));
            }
            return setAttribute("Flash", String.valueOf(i));
        }

        public Builder setExposureTimeNanos(long j) {
            return setAttribute("ExposureTime", String.valueOf(j / 1.0E9d));
        }

        public Builder setLensFNumber(float f) {
            return setAttribute("FNumber", String.valueOf(f));
        }

        public Builder setIso(int i) {
            return setAttribute("SensitivityType", String.valueOf(3)).setAttribute("PhotographicSensitivity", String.valueOf(Math.min(65535, i)));
        }

        public Builder setFocalLength(float f) {
            return setAttribute("FocalLength", new LongRational((long) (f * 1000.0f), 1000L).toString());
        }

        public Builder setWhiteBalanceMode(WhiteBalanceMode whiteBalanceMode) {
            String strValueOf;
            int iOrdinal = whiteBalanceMode.ordinal();
            if (iOrdinal == 0) {
                strValueOf = String.valueOf(0);
            } else {
                strValueOf = iOrdinal != 1 ? null : String.valueOf(1);
            }
            return setAttribute("WhiteBalance", strValueOf);
        }

        public Builder setAttribute(String str, String str2) {
            setAttributeInternal(str, str2, this.mAttributes);
            return this;
        }

        private void setAttributeIfMissing(String str, String str2, List<Map<String, ExifAttribute>> list) {
            Iterator<Map<String, ExifAttribute>> it = list.iterator();
            while (it.hasNext()) {
                if (it.next().containsKey(str)) {
                    return;
                }
            }
            setAttributeInternal(str, str2, list);
        }

        /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
            	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.calcSwitchOut(SwitchRegionMaker.java:217)
            	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:68)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:102)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:102)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
            	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:125)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:48)
            	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
            */
        private void setAttributeInternal(java.lang.String r18, java.lang.String r19, java.util.List<java.util.Map<java.lang.String, androidx.camera.core.impl.utils.ExifAttribute>> r20) {
            /*
                Method dump skipped, instruction units count: 774
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.camera.core.impl.utils.ExifData.Builder.setAttributeInternal(java.lang.String, java.lang.String, java.util.List):void");
        }

        public ExifData build() {
            ArrayList list = Collections.list(new Enumeration<Map<String, ExifAttribute>>() { // from class: androidx.camera.core.impl.utils.ExifData.Builder.3
                final Enumeration<Map<String, ExifAttribute>> mMapEnumeration;

                {
                    this.mMapEnumeration = Collections.enumeration(Builder.this.mAttributes);
                }

                @Override // java.util.Enumeration
                public boolean hasMoreElements() {
                    return this.mMapEnumeration.hasMoreElements();
                }

                @Override // java.util.Enumeration
                public Map<String, ExifAttribute> nextElement() {
                    return new HashMap(this.mMapEnumeration.nextElement());
                }
            });
            if (!list.get(1).isEmpty()) {
                setAttributeIfMissing("ExposureProgram", String.valueOf(0), list);
                setAttributeIfMissing("ExifVersion", "0230", list);
                setAttributeIfMissing("ComponentsConfiguration", ExifData.COMPONENTS_CONFIGURATION_YCBCR, list);
                setAttributeIfMissing("MeteringMode", String.valueOf(0), list);
                setAttributeIfMissing("LightSource", String.valueOf(0), list);
                setAttributeIfMissing("FlashpixVersion", "0100", list);
                setAttributeIfMissing("FocalPlaneResolutionUnit", String.valueOf(2), list);
                setAttributeIfMissing("FileSource", String.valueOf(3), list);
                setAttributeIfMissing("SceneType", String.valueOf(1), list);
                setAttributeIfMissing("CustomRendered", String.valueOf(0), list);
                setAttributeIfMissing("SceneCaptureType", String.valueOf(0), list);
                setAttributeIfMissing("Contrast", String.valueOf(0), list);
                setAttributeIfMissing("Saturation", String.valueOf(0), list);
                setAttributeIfMissing("Sharpness", String.valueOf(0), list);
            }
            if (!list.get(2).isEmpty()) {
                setAttributeIfMissing("GPSVersionID", "2300", list);
                setAttributeIfMissing("GPSSpeedRef", "K", list);
                setAttributeIfMissing("GPSTrackRef", "T", list);
                setAttributeIfMissing("GPSImgDirectionRef", "T", list);
                setAttributeIfMissing("GPSDestBearingRef", "T", list);
                setAttributeIfMissing("GPSDestDistanceRef", "K", list);
            }
            return new ExifData(this.mByteOrder, list);
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
    }

    /* JADX INFO: renamed from: androidx.camera.core.impl.utils.ExifData$1 */
    public static /* synthetic */ class C02761 {

        /* JADX INFO: renamed from: $SwitchMap$androidx$camera$core$impl$CameraCaptureMetaData$FlashState */
        static final /* synthetic */ int[] f7x649fcb98;

        static {
            int[] iArr = new int[CameraCaptureMetaData$FlashState.values().length];
            f7x649fcb98 = iArr;
            try {
                iArr[CameraCaptureMetaData$FlashState.READY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7x649fcb98[CameraCaptureMetaData$FlashState.NONE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f7x649fcb98[CameraCaptureMetaData$FlashState.FIRED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }
}
