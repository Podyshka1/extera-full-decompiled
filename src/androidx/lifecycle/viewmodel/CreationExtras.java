package androidx.lifecycle.viewmodel;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class CreationExtras {
    public static final Companion Companion = new Companion(null);
    private final Map extras = new LinkedHashMap();

    public interface Key {
    }

    public abstract Object get(Key key);

    public final Map getExtras$lifecycle_viewmodel() {
        return this.extras;
    }

    public boolean equals(Object obj) {
        return (obj instanceof CreationExtras) && Intrinsics.areEqual(this.extras, ((CreationExtras) obj).extras);
    }

    public int hashCode() {
        return this.extras.hashCode();
    }

    public String toString() {
        return "CreationExtras(extras=" + this.extras + ')';
    }

    public static final class Empty extends CreationExtras {
        public static final Empty INSTANCE = new Empty();

        @Override // androidx.lifecycle.viewmodel.CreationExtras
        public Object get(Key key) {
            Intrinsics.checkNotNullParameter(key, "key");
            return null;
        }

        private Empty() {
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
