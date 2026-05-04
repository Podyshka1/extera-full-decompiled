package androidx.camera.camera2.pipe;

import android.graphics.ColorSpace;
import android.os.Build;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CameraColorSpace {
    public static final Companion Companion = new Companion(null);
    private static final String UNKNOWN = m1534constructorimpl("UNKNOWN");
    private static final String SRGB = m1534constructorimpl("SRGB");
    private static final String LINEAR_SRGB = m1534constructorimpl("LINEAR_SRGB");
    private static final String EXTENDED_SRGB = m1534constructorimpl("EXTENDED_SRGB");
    private static final String LINEAR_EXTENDED_SRGB = m1534constructorimpl("LINEAR_EXTENDED_SRGB");
    private static final String BT709 = m1534constructorimpl("BT709");
    private static final String BT2020 = m1534constructorimpl("BT2020");
    private static final String DCI_P3 = m1534constructorimpl("DCI_P3");
    private static final String DISPLAY_P3 = m1534constructorimpl("DISPLAY_P3");
    private static final String NTSC_1953 = m1534constructorimpl("NTSC_1953");
    private static final String SMPTE_C = m1534constructorimpl("SMPTE_C");
    private static final String ADOBE_RGB = m1534constructorimpl("ADOBE_RGB");
    private static final String PRO_PHOTO_RGB = m1534constructorimpl("PRO_PHOTO_RGB");
    private static final String ACES = m1534constructorimpl("ACES");
    private static final String ACESCG = m1534constructorimpl("ACESCG");
    private static final String CIE_XYZ = m1534constructorimpl("CIE_XYZ");
    private static final String CIE_LAB = m1534constructorimpl("CIE_LAB");
    private static final String BT2020_HLG = m1534constructorimpl("BT2020_HLG");
    private static final String BT2020_PQ = m1534constructorimpl("BT2020_PQ");

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    private static String m1534constructorimpl(String str) {
        return str;
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1535equalsimpl0(String str, String str2) {
        return Intrinsics.areEqual(str, str2);
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m1536hashCodeimpl(String str) {
        return str.hashCode();
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m1538toStringimpl(String str) {
        return "CameraColorSpace(colorSpaceName=" + str + ')';
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: renamed from: toColorSpaceNamed-impl, reason: not valid java name */
    public static final ColorSpace.Named m1537toColorSpaceNamedimpl(String str) {
        if (m1535equalsimpl0(str, UNKNOWN)) {
            return null;
        }
        if (m1535equalsimpl0(str, SRGB)) {
            return ColorSpace.Named.SRGB;
        }
        if (m1535equalsimpl0(str, LINEAR_SRGB)) {
            return ColorSpace.Named.LINEAR_SRGB;
        }
        if (m1535equalsimpl0(str, EXTENDED_SRGB)) {
            return ColorSpace.Named.EXTENDED_SRGB;
        }
        if (m1535equalsimpl0(str, LINEAR_EXTENDED_SRGB)) {
            return ColorSpace.Named.LINEAR_EXTENDED_SRGB;
        }
        if (m1535equalsimpl0(str, BT709)) {
            return ColorSpace.Named.BT709;
        }
        if (m1535equalsimpl0(str, BT2020)) {
            return ColorSpace.Named.BT2020;
        }
        if (m1535equalsimpl0(str, DCI_P3)) {
            return ColorSpace.Named.DCI_P3;
        }
        if (m1535equalsimpl0(str, DISPLAY_P3)) {
            return ColorSpace.Named.DISPLAY_P3;
        }
        if (m1535equalsimpl0(str, NTSC_1953)) {
            return ColorSpace.Named.NTSC_1953;
        }
        if (m1535equalsimpl0(str, SMPTE_C)) {
            return ColorSpace.Named.SMPTE_C;
        }
        if (m1535equalsimpl0(str, ADOBE_RGB)) {
            return ColorSpace.Named.ADOBE_RGB;
        }
        if (m1535equalsimpl0(str, PRO_PHOTO_RGB)) {
            return ColorSpace.Named.PRO_PHOTO_RGB;
        }
        if (m1535equalsimpl0(str, ACES)) {
            return ColorSpace.Named.ACES;
        }
        if (m1535equalsimpl0(str, ACESCG)) {
            return ColorSpace.Named.ACESCG;
        }
        if (m1535equalsimpl0(str, CIE_XYZ)) {
            return ColorSpace.Named.CIE_XYZ;
        }
        if (m1535equalsimpl0(str, CIE_LAB)) {
            return ColorSpace.Named.CIE_LAB;
        }
        if (Build.VERSION.SDK_INT < 34) {
            return null;
        }
        if (m1535equalsimpl0(str, BT2020_HLG)) {
            return ColorSpace.Named.BT2020_HLG;
        }
        if (m1535equalsimpl0(str, BT2020_PQ)) {
            return ColorSpace.Named.BT2020_PQ;
        }
        return null;
    }
}
