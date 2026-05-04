package kotlin.reflect;

import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public interface KProperty2 extends KProperty, Function2 {

    /* JADX INFO: loaded from: classes5.dex */
    public interface Getter extends KFunction, Function2 {
    }

    Object get(Object obj, Object obj2);

    Getter getGetter();
}
