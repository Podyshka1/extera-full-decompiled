package kotlin.collections;

import java.util.Map;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes5.dex */
interface MapWithDefault extends Map, KMappedMarker {
    Object getOrImplicitDefault(Object obj);
}
