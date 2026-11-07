package androidx.car.app.utils;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CollectionUtils {
    public static <T> List<T> emptyIfNull(List<T> list) {
        return list != null ? list : Collections.EMPTY_LIST;
    }

    public static <T> List<T> unmodifiableCopy(List<T> list) {
        return list == null ? Collections.EMPTY_LIST : Collections.unmodifiableList(new ArrayList(list));
    }
}
