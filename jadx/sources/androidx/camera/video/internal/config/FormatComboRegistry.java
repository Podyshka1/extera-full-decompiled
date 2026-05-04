package androidx.camera.video.internal.config;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class FormatComboRegistry {
    private final Map formatComboMapping;

    public /* synthetic */ FormatComboRegistry(Map map, DefaultConstructorMarker defaultConstructorMarker) {
        this(map);
    }

    private FormatComboRegistry(Map map) {
        this.formatComboMapping = map;
    }

    public final List getCombosForVideo(String str) {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.formatComboMapping.values().iterator();
        while (it.hasNext()) {
            Set set = (Set) ((Map) it.next()).get(str);
            if (set != null) {
                arrayList.addAll(set);
            }
        }
        return arrayList;
    }

    public static final class Builder {
        private final Map formatComboMapping = new LinkedHashMap();

        public final void container(int i, Function1 block) {
            Intrinsics.checkNotNullParameter(block, "block");
            Map map = this.formatComboMapping;
            Integer numValueOf = Integer.valueOf(i);
            Object linkedHashMap = map.get(numValueOf);
            if (linkedHashMap == null) {
                linkedHashMap = new LinkedHashMap();
                map.put(numValueOf, linkedHashMap);
            }
            block.invoke(new ContainerScope(i, (Map) linkedHashMap));
        }

        public static final class ContainerScope {
            private final int container;
            private final Map videoMap;

            public ContainerScope(int i, Map videoMap) {
                Intrinsics.checkNotNullParameter(videoMap, "videoMap");
                this.container = i;
                this.videoMap = videoMap;
            }

            public final void support(List videoMimes, List audioMimes) {
                Intrinsics.checkNotNullParameter(videoMimes, "videoMimes");
                Intrinsics.checkNotNullParameter(audioMimes, "audioMimes");
                Iterator it = videoMimes.iterator();
                while (it.hasNext()) {
                    String str = (String) it.next();
                    Map map = this.videoMap;
                    Object linkedHashSet = map.get(str);
                    if (linkedHashSet == null) {
                        linkedHashSet = new LinkedHashSet();
                        map.put(str, linkedHashSet);
                    }
                    Set set = (Set) linkedHashSet;
                    Iterator it2 = audioMimes.iterator();
                    while (it2.hasNext()) {
                        set.add(new FormatCombo(this.container, str, (String) it2.next()));
                    }
                    set.add(new FormatCombo(this.container, str, null));
                }
                Map map2 = this.videoMap;
                Object linkedHashSet2 = map2.get(null);
                if (linkedHashSet2 == null) {
                    linkedHashSet2 = new LinkedHashSet();
                    map2.put(null, linkedHashSet2);
                }
                Set set2 = (Set) linkedHashSet2;
                Iterator it3 = audioMimes.iterator();
                while (it3.hasNext()) {
                    set2.add(new FormatCombo(this.container, null, (String) it3.next()));
                }
            }
        }

        public final FormatComboRegistry build() {
            return new FormatComboRegistry(this.formatComboMapping, null);
        }
    }
}
