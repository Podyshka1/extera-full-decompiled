package com.exteragram.messenger.utils;

import androidx.exifinterface.media.ExifInterface;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;

/* JADX INFO: loaded from: classes4.dex */
public abstract class MediaUtils {
    private static final String[] GEO_TAGS = {"GPSLatitude", "GPSLatitudeRef", "GPSLongitude", "GPSLongitudeRef", "GPSAltitude", "GPSAltitudeRef", "GPSTimeStamp", "GPSDateStamp", "GPSProcessingMethod"};
    private static final String[] GEO_TAGS_API_24 = {"GPSAreaInformation", "GPSDOP", "GPSMeasureMode", "GPSSpeedRef", "GPSSpeed", "GPSStatus", "GPSDestLatitude", "GPSDestLatitudeRef", "GPSDestLongitude", "GPSDestLongitudeRef", "GPSDestBearing", "GPSDestBearingRef", "GPSDestDistance", "GPSDestDistanceRef"};
    private static final String[] MOTION_PHOTO_XMP_MARKERS = {"Camera:MotionPhoto", "GCamera:MotionPhoto", "Camera:MicroVideo", "GCamera:MicroVideo", "Camera:MotionPhotoPresentationTimestampUs", "GCamera:MotionPhotoPresentationTimestampUs", "Camera:MicroVideoPresentationTimestampUs", "GCamera:MicroVideoPresentationTimestampUs", "Camera:MicroVideoOffset", "GCamera:MicroVideoOffset", "Container:Directory", "GContainer:Directory"};

    public static boolean removeGeolocation(String str, String str2) throws Throwable {
        File file = new File(str);
        if (!file.exists()) {
            return false;
        }
        File file2 = new File(str2);
        if (!AndroidUtilities.copyFile(file, file2)) {
            file2.delete();
            throw new IOException("failed to copy " + str + " to " + str2);
        }
        ArrayList arrayList = new ArrayList(Arrays.asList(GEO_TAGS));
        arrayList.addAll(getApi24GeoTags());
        ExifInterface exifInterface = new ExifInterface(file2.getAbsolutePath());
        int size = arrayList.size();
        boolean z = false;
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            String str3 = (String) obj;
            if (exifInterface.getAttribute(str3) != null) {
                try {
                    exifInterface.setAttribute(str3, null);
                    z = true;
                } catch (Exception unused) {
                }
            }
        }
        if (z) {
            try {
                exifInterface.saveAttributes();
                return true;
            } catch (IOException unused2) {
                file2.delete();
            }
        }
        return false;
    }

    private static List<String> getApi24GeoTags() {
        return Arrays.asList(GEO_TAGS_API_24);
    }

    public static String getPhotoPlatform(JpegFingerprint jpegFingerprint) {
        String str;
        if (jpegFingerprint == null || jpegFingerprint.jfifUnits < 0) {
            return null;
        }
        boolean z = (jpegFingerprint.iccVersion == 1072 && jpegFingerprint.iccYear == 2016) || ((str = jpegFingerprint.iccDescription) != null && str.startsWith("Google/Skia/"));
        int i = jpegFingerprint.jfifUnits;
        if (i == 0) {
            if (jpegFingerprint.jfifDensityX != 1) {
                return null;
            }
            if (z) {
                return "Android";
            }
            if (jpegFingerprint.iccLength == 0) {
                int i2 = jpegFingerprint.quality;
                if (i2 == 72) {
                    return "iOS";
                }
                if (i2 == 75) {
                    return "macOS";
                }
            }
            return null;
        }
        if (i != 1 || jpegFingerprint.jfifDensityX != 72) {
            return jpegFingerprint.iccVersion == 576 ? "macOS" : "Desktop";
        }
        if (z) {
            return "Android";
        }
        int i3 = jpegFingerprint.iccVersion;
        if (i3 == 576) {
            return "macOS";
        }
        if (i3 == 1088 && jpegFingerprint.iccLength == 480) {
            return "Desktop";
        }
        return null;
    }
}
