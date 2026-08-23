package androidx.camera.video;

import android.util.Size;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Quality {
    public static final Quality FHD;

    /* JADX INFO: renamed from: HD */
    public static final Quality f28HD;
    public static final Quality HIGHEST;
    public static final Quality LOWEST;
    static final Quality NONE;
    private static final Set QUALITIES;
    private static final List QUALITIES_ORDER_BY_SIZE;

    /* JADX INFO: renamed from: SD */
    public static final Quality f29SD;
    public static final Quality UHD;

    private Quality() {
    }

    static {
        ConstantQuality constantQualityM106of = ConstantQuality.m106of(4, 2002, "SD", DesugarCollections.unmodifiableList(Arrays.asList(new Size(720, 480), new Size(640, 480))));
        f29SD = constantQualityM106of;
        ConstantQuality constantQualityM106of2 = ConstantQuality.m106of(5, 2003, "HD", Collections.singletonList(new Size(1280, 720)));
        f28HD = constantQualityM106of2;
        ConstantQuality constantQualityM106of3 = ConstantQuality.m106of(6, 2004, "FHD", Collections.singletonList(new Size(1920, 1080)));
        FHD = constantQualityM106of3;
        ConstantQuality constantQualityM106of4 = ConstantQuality.m106of(8, 2005, "UHD", Collections.singletonList(new Size(3840, 2160)));
        UHD = constantQualityM106of4;
        List list = Collections.EMPTY_LIST;
        ConstantQuality constantQualityM106of5 = ConstantQuality.m106of(0, 2000, "LOWEST", list);
        LOWEST = constantQualityM106of5;
        ConstantQuality constantQualityM106of6 = ConstantQuality.m106of(1, 2001, "HIGHEST", list);
        HIGHEST = constantQualityM106of6;
        NONE = ConstantQuality.m106of(-1, -1, "NONE", list);
        QUALITIES = new HashSet(Arrays.asList(constantQualityM106of5, constantQualityM106of6, constantQualityM106of, constantQualityM106of2, constantQualityM106of3, constantQualityM106of4));
        QUALITIES_ORDER_BY_SIZE = Arrays.asList(constantQualityM106of4, constantQualityM106of3, constantQualityM106of2, constantQualityM106of);
    }

    static boolean containsQuality(Quality quality) {
        return QUALITIES.contains(quality);
    }

    public static List getSortedQualities() {
        return new ArrayList(QUALITIES_ORDER_BY_SIZE);
    }

    public static abstract class ConstantQuality extends Quality {
        abstract int getHighSpeedValue();

        public abstract String getName();

        public abstract List getTypicalSizes();

        abstract int getValue();

        public ConstantQuality() {
            super();
        }

        /* JADX INFO: renamed from: of */
        static ConstantQuality m106of(int i, int i2, String str, List list) {
            return new AutoValue_Quality_ConstantQuality(i, i2, str, list);
        }

        public int getQualityValue(int i) {
            if (i == 1) {
                return getValue();
            }
            if (i == 2) {
                return getHighSpeedValue();
            }
            throw new AssertionError("Unknown quality source: " + i);
        }
    }
}
