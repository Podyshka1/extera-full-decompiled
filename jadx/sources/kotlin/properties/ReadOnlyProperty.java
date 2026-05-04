package kotlin.properties;

import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes.dex */
public interface ReadOnlyProperty {
    Object getValue(Object obj, KProperty kProperty);
}
