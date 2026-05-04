package androidx.camera.camera2.internal;

import android.hardware.camera2.params.DynamicRangeProfiles;
import androidx.camera.core.DynamicRange;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.p025ws.RealWebSocket;

/* JADX INFO: loaded from: classes3.dex */
public final class DynamicRangeConversions {
    private static final Map DR_TO_PROFILE_MAP;
    public static final DynamicRangeConversions INSTANCE = new DynamicRangeConversions();
    private static final Map PROFILE_TO_DR_MAP;

    private DynamicRangeConversions() {
    }

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        PROFILE_TO_DR_MAP = linkedHashMap;
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        DR_TO_PROFILE_MAP = linkedHashMap2;
        DynamicRange dynamicRange = DynamicRange.SDR;
        linkedHashMap.put(1L, dynamicRange);
        linkedHashMap2.put(dynamicRange, CollectionsKt.listOf((Object) 1L));
        linkedHashMap.put(2L, DynamicRange.HLG_10_BIT);
        linkedHashMap2.put(linkedHashMap.get(2L), CollectionsKt.listOf((Object) 2L));
        DynamicRange dynamicRange2 = DynamicRange.HDR10_10_BIT;
        linkedHashMap.put(4L, dynamicRange2);
        linkedHashMap2.put(dynamicRange2, CollectionsKt.listOf((Object) 4L));
        DynamicRange dynamicRange3 = DynamicRange.HDR10_PLUS_10_BIT;
        linkedHashMap.put(8L, dynamicRange3);
        linkedHashMap2.put(dynamicRange3, CollectionsKt.listOf((Object) 8L));
        List listListOf = CollectionsKt.listOf((Object[]) new Long[]{64L, 128L, 16L, 32L});
        Iterator it = listListOf.iterator();
        while (it.hasNext()) {
            PROFILE_TO_DR_MAP.put(Long.valueOf(((Number) it.next()).longValue()), DynamicRange.DOLBY_VISION_10_BIT);
        }
        DR_TO_PROFILE_MAP.put(DynamicRange.DOLBY_VISION_10_BIT, listListOf);
        List listListOf2 = CollectionsKt.listOf((Object[]) new Long[]{Long.valueOf(RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE), 2048L, 256L, 512L});
        Iterator it2 = listListOf2.iterator();
        while (it2.hasNext()) {
            PROFILE_TO_DR_MAP.put(Long.valueOf(((Number) it2.next()).longValue()), DynamicRange.DOLBY_VISION_8_BIT);
        }
        DR_TO_PROFILE_MAP.put(DynamicRange.DOLBY_VISION_8_BIT, listListOf2);
    }

    public final DynamicRange profileToDynamicRange(long j) {
        return (DynamicRange) PROFILE_TO_DR_MAP.get(Long.valueOf(j));
    }

    public final Long dynamicRangeToFirstSupportedProfile(DynamicRange dynamicRange, DynamicRangeProfiles dynamicRangeProfiles) {
        Intrinsics.checkNotNullParameter(dynamicRange, "dynamicRange");
        Intrinsics.checkNotNullParameter(dynamicRangeProfiles, "dynamicRangeProfiles");
        List list = (List) DR_TO_PROFILE_MAP.get(dynamicRange);
        if (list == null) {
            return null;
        }
        Set<Long> supportedProfiles = dynamicRangeProfiles.getSupportedProfiles();
        Intrinsics.checkNotNullExpressionValue(supportedProfiles, "getSupportedProfiles(...)");
        Iterator it = list.iterator();
        while (it.hasNext()) {
            long jLongValue = ((Number) it.next()).longValue();
            if (supportedProfiles.contains(Long.valueOf(jLongValue))) {
                return Long.valueOf(jLongValue);
            }
        }
        return null;
    }
}
