package androidx.camera.camera2.impl;

import androidx.camera.core.impl.TagBundle;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class UseCaseCameraRequestControlKt {
    public static final Map toMap(TagBundle tagBundle) {
        Intrinsics.checkNotNullParameter(tagBundle, "<this>");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Set<String> setListKeys = tagBundle.listKeys();
        Intrinsics.checkNotNullExpressionValue(setListKeys, "listKeys(...)");
        for (String str : setListKeys) {
            Object tag = tagBundle.getTag(str);
            Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type kotlin.Any");
            linkedHashMap.put(str, tag);
        }
        return linkedHashMap;
    }
}
