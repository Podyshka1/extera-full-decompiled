package okhttp3.internal;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes.dex */
public final class EmptyTags extends Tags {
    public static final EmptyTags INSTANCE = new EmptyTags();

    @Override // okhttp3.internal.Tags
    public <T> T get(KClass key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return null;
    }

    private EmptyTags() {
        super(null);
    }

    @Override // okhttp3.internal.Tags
    public <T> Tags plus(KClass key, T t) {
        Intrinsics.checkNotNullParameter(key, "key");
        return t != null ? new LinkedTags(key, t, this) : this;
    }

    public String toString() {
        return "{}";
    }
}
