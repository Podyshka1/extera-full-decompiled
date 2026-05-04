package androidx.lifecycle.viewmodel;

import androidx.lifecycle.viewmodel.CreationExtras;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class MutableCreationExtras extends CreationExtras {
    /* JADX WARN: Multi-variable type inference failed */
    public MutableCreationExtras() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public MutableCreationExtras(Map initialExtras) {
        Intrinsics.checkNotNullParameter(initialExtras, "initialExtras");
        getExtras$lifecycle_viewmodel().putAll(initialExtras);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MutableCreationExtras(CreationExtras initialExtras) {
        this(initialExtras.getExtras$lifecycle_viewmodel());
        Intrinsics.checkNotNullParameter(initialExtras, "initialExtras");
    }

    public /* synthetic */ MutableCreationExtras(CreationExtras creationExtras, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CreationExtras.Empty.INSTANCE : creationExtras);
    }

    public final void set(CreationExtras.Key key, Object obj) {
        Intrinsics.checkNotNullParameter(key, "key");
        getExtras$lifecycle_viewmodel().put(key, obj);
    }

    @Override // androidx.lifecycle.viewmodel.CreationExtras
    public Object get(CreationExtras.Key key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return getExtras$lifecycle_viewmodel().get(key);
    }
}
