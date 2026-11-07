package androidx.camera.camera2.internal;

import android.hardware.camera2.params.DynamicRangeProfiles;
import androidx.camera.core.DynamicRange;
import com.google.android.gms.cast.MediaStatus;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\bÁ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\n\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000b\u001a\u00020\u0006J\u001d\u0010\f\u001a\u0004\u0018\u00010\u00062\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0010R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\"\u0010\b\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\t0\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Landroidx/camera/camera2/internal/DynamicRangeConversions;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "PROFILE_TO_DR_MAP", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/DynamicRange;", "DR_TO_PROFILE_MAP", _UrlKt.FRAGMENT_ENCODE_SET, "profileToDynamicRange", "profile", "dynamicRangeToFirstSupportedProfile", "dynamicRange", "dynamicRangeProfiles", "Landroid/hardware/camera2/params/DynamicRangeProfiles;", "(Landroidx/camera/core/DynamicRange;Landroid/hardware/camera2/params/DynamicRangeProfiles;)Ljava/lang/Long;", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
public final class DynamicRangeConversions {
    private static final Map<DynamicRange, List<Long>> DR_TO_PROFILE_MAP;
    public static final DynamicRangeConversions INSTANCE = new DynamicRangeConversions();
    private static final Map<Long, DynamicRange> PROFILE_TO_DR_MAP;

    private DynamicRangeConversions() {
    }

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        PROFILE_TO_DR_MAP = linkedHashMap;
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        DR_TO_PROFILE_MAP = linkedHashMap2;
        DynamicRange dynamicRange = DynamicRange.SDR;
        linkedHashMap.put(1L, dynamicRange);
        linkedHashMap2.put(dynamicRange, CollectionsKt.listOf(1L));
        linkedHashMap.put(2L, DynamicRange.HLG_10_BIT);
        linkedHashMap2.put(linkedHashMap.get(2L), CollectionsKt.listOf(2L));
        DynamicRange dynamicRange2 = DynamicRange.HDR10_10_BIT;
        linkedHashMap.put(4L, dynamicRange2);
        linkedHashMap2.put(dynamicRange2, CollectionsKt.listOf(4L));
        DynamicRange dynamicRange3 = DynamicRange.HDR10_PLUS_10_BIT;
        linkedHashMap.put(8L, dynamicRange3);
        linkedHashMap2.put(dynamicRange3, CollectionsKt.listOf(8L));
        List<Long> listListOf = CollectionsKt.listOf((Object[]) new Long[]{64L, 128L, 16L, 32L});
        Iterator<Long> it = listListOf.iterator();
        while (it.hasNext()) {
            PROFILE_TO_DR_MAP.put(Long.valueOf(it.next().longValue()), DynamicRange.DOLBY_VISION_10_BIT);
        }
        DR_TO_PROFILE_MAP.put(DynamicRange.DOLBY_VISION_10_BIT, listListOf);
        List<Long> listListOf2 = CollectionsKt.listOf((Object[]) new Long[]{1024L, Long.valueOf(MediaStatus.COMMAND_QUEUE_REPEAT_ONE), 256L, 512L});
        Iterator<Long> it2 = listListOf2.iterator();
        while (it2.hasNext()) {
            PROFILE_TO_DR_MAP.put(Long.valueOf(it2.next().longValue()), DynamicRange.DOLBY_VISION_8_BIT);
        }
        DR_TO_PROFILE_MAP.put(DynamicRange.DOLBY_VISION_8_BIT, listListOf2);
    }

    public final DynamicRange profileToDynamicRange(long profile) {
        return PROFILE_TO_DR_MAP.get(Long.valueOf(profile));
    }

    public final Long dynamicRangeToFirstSupportedProfile(DynamicRange dynamicRange, DynamicRangeProfiles dynamicRangeProfiles) {
        List<Long> list = DR_TO_PROFILE_MAP.get(dynamicRange);
        if (list == null) {
            return null;
        }
        Set<Long> supportedProfiles = dynamicRangeProfiles.getSupportedProfiles();
        Iterator<Long> it = list.iterator();
        while (it.hasNext()) {
            long jLongValue = it.next().longValue();
            if (supportedProfiles.contains(Long.valueOf(jLongValue))) {
                return Long.valueOf(jLongValue);
            }
        }
        return null;
    }
}
