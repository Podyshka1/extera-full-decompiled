package androidx.work.impl.utils;

import android.net.NetworkRequest;
import androidx.work.Logger;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class NetworkRequestCompat {
    public static final Companion Companion = new Companion(null);
    private static final String TAG;
    private final Object wrapped;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof NetworkRequestCompat) && Intrinsics.areEqual(this.wrapped, ((NetworkRequestCompat) obj).wrapped);
    }

    public int hashCode() {
        Object obj = this.wrapped;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public String toString() {
        return "NetworkRequestCompat(wrapped=" + this.wrapped + ')';
    }

    public NetworkRequestCompat(Object obj) {
        this.wrapped = obj;
    }

    public /* synthetic */ NetworkRequestCompat(Object obj, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : obj);
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final String getTAG() {
            return NetworkRequestCompat.TAG;
        }
    }

    static {
        String strTagWithPrefix = Logger.tagWithPrefix("NetworkRequestCompat");
        Intrinsics.checkNotNullExpressionValue(strTagWithPrefix, "tagWithPrefix(...)");
        TAG = strTagWithPrefix;
    }

    public final NetworkRequest getNetworkRequest() {
        return (NetworkRequest) this.wrapped;
    }
}
