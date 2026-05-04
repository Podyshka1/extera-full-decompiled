package androidx.camera.video;

import android.util.Size;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.camera.video.FallbackStrategy;
import androidx.core.util.Preconditions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p022j$.util.DesugarCollections;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class QualitySelector {
    public static final QualitySelector NONE = new QualitySelector(Collections.EMPTY_LIST, FallbackStrategy.NONE);
    private final FallbackStrategy mFallbackStrategy;
    private final List mPreferredQualityList;

    public static Size getResolution(CameraInfo cameraInfo, Quality quality) {
        checkQualityConstantsOrThrow(quality);
        return Recorder.getVideoCapabilities(cameraInfo).getResolution(quality, DynamicRange.SDR);
    }

    public static Map getQualityToResolutionMap(VideoCapabilities videoCapabilities, DynamicRange dynamicRange) {
        HashMap map = new HashMap();
        for (Quality quality : videoCapabilities.getSupportedQualities(dynamicRange)) {
            Size resolution = videoCapabilities.getResolution(quality, dynamicRange);
            Objects.requireNonNull(resolution);
            map.put(quality, resolution);
        }
        return map;
    }

    QualitySelector(List list, FallbackStrategy fallbackStrategy) {
        this.mPreferredQualityList = DesugarCollections.unmodifiableList(new ArrayList(list));
        this.mFallbackStrategy = fallbackStrategy;
    }

    public static QualitySelector from(Quality quality, FallbackStrategy fallbackStrategy) {
        Preconditions.checkNotNull(quality, "quality cannot be null");
        Preconditions.checkNotNull(fallbackStrategy, "fallbackStrategy cannot be null");
        checkQualityConstantsOrThrow(quality);
        return new QualitySelector(Collections.singletonList(quality), fallbackStrategy);
    }

    public static QualitySelector fromOrderedList(List list) {
        return fromOrderedList(list, FallbackStrategy.NONE);
    }

    public static QualitySelector fromOrderedList(List list, FallbackStrategy fallbackStrategy) {
        Preconditions.checkNotNull(list, "qualities cannot be null");
        Preconditions.checkNotNull(fallbackStrategy, "fallbackStrategy cannot be null");
        Preconditions.checkArgument(!list.isEmpty(), "qualities cannot be empty");
        checkQualityConstantsOrThrow(list);
        return new QualitySelector(list, fallbackStrategy);
    }

    public List getPrioritizedQualities(List list) {
        if (list.isEmpty()) {
            Logger.m81w("QualitySelector", "No supported quality on the device.");
            return new ArrayList();
        }
        Logger.m76d("QualitySelector", "supportedQualities = " + list);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = this.mPreferredQualityList.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Quality quality = (Quality) it.next();
            if (quality == Quality.HIGHEST) {
                linkedHashSet.addAll(list);
                break;
            }
            if (quality == Quality.LOWEST) {
                ArrayList arrayList = new ArrayList(list);
                Collections.reverse(arrayList);
                linkedHashSet.addAll(arrayList);
                break;
            }
            if (list.contains(quality)) {
                linkedHashSet.add(quality);
            } else {
                Logger.m81w("QualitySelector", "quality is not supported and will be ignored: " + quality);
            }
        }
        addByFallbackStrategy(list, linkedHashSet);
        return new ArrayList(linkedHashSet);
    }

    public String toString() {
        return "QualitySelector{preferredQualities=" + this.mPreferredQualityList + ", fallbackStrategy=" + this.mFallbackStrategy + "}";
    }

    private void addByFallbackStrategy(List list, Set set) {
        Quality fallbackQuality;
        if (list.isEmpty() || set.containsAll(list)) {
            return;
        }
        Logger.m76d("QualitySelector", "Select quality by fallbackStrategy = " + this.mFallbackStrategy);
        FallbackStrategy fallbackStrategy = this.mFallbackStrategy;
        if (fallbackStrategy == FallbackStrategy.NONE) {
            return;
        }
        Preconditions.checkState(fallbackStrategy instanceof FallbackStrategy.RuleStrategy, "Currently only support type RuleStrategy");
        FallbackStrategy.RuleStrategy ruleStrategy = (FallbackStrategy.RuleStrategy) this.mFallbackStrategy;
        List sortedQualities = Quality.getSortedQualities();
        if (ruleStrategy.getFallbackQuality() == Quality.HIGHEST) {
            fallbackQuality = (Quality) sortedQualities.get(0);
        } else if (ruleStrategy.getFallbackQuality() == Quality.LOWEST) {
            fallbackQuality = (Quality) sortedQualities.get(sortedQualities.size() - 1);
        } else {
            fallbackQuality = ruleStrategy.getFallbackQuality();
        }
        int iIndexOf = sortedQualities.indexOf(fallbackQuality);
        Preconditions.checkState(iIndexOf != -1);
        ArrayList arrayList = new ArrayList();
        for (int i = iIndexOf - 1; i >= 0; i--) {
            Quality quality = (Quality) sortedQualities.get(i);
            if (list.contains(quality)) {
                arrayList.add(quality);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (int i2 = iIndexOf + 1; i2 < sortedQualities.size(); i2++) {
            Quality quality2 = (Quality) sortedQualities.get(i2);
            if (list.contains(quality2)) {
                arrayList2.add(quality2);
            }
        }
        Logger.m76d("QualitySelector", "sizeSortedQualities = " + sortedQualities + ", fallback quality = " + fallbackQuality + ", largerQualities = " + arrayList + ", smallerQualities = " + arrayList2);
        int fallbackRule = ruleStrategy.getFallbackRule();
        if (fallbackRule != 0) {
            if (fallbackRule == 1) {
                set.addAll(arrayList);
                set.addAll(arrayList2);
                return;
            }
            if (fallbackRule == 2) {
                set.addAll(arrayList);
                return;
            }
            if (fallbackRule == 3) {
                set.addAll(arrayList2);
                set.addAll(arrayList);
            } else {
                if (fallbackRule == 4) {
                    set.addAll(arrayList2);
                    return;
                }
                throw new AssertionError("Unhandled fallback strategy: " + this.mFallbackStrategy);
            }
        }
    }

    private static void checkQualityConstantsOrThrow(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Quality quality = (Quality) it.next();
            Preconditions.checkArgument(Quality.containsQuality(quality), "qualities contain invalid quality: " + quality);
        }
    }

    private static void checkQualityConstantsOrThrow(Quality quality) {
        Preconditions.checkArgument(Quality.containsQuality(quality), "Invalid quality: " + quality);
    }
}
