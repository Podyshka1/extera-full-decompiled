package okhttp3.internal;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes.dex */
public abstract class Tags {
    public /* synthetic */ Tags(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract <T> T get(KClass kClass);

    public abstract <T> Tags plus(KClass kClass, T t);

    private Tags() {
    }
}
