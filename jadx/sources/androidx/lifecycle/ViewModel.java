package androidx.lifecycle;

import androidx.lifecycle.viewmodel.internal.ViewModelImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class ViewModel {
    private final ViewModelImpl impl = new ViewModelImpl();

    protected void onCleared() {
    }

    public final void clear$lifecycle_viewmodel() {
        ViewModelImpl viewModelImpl = this.impl;
        if (viewModelImpl != null) {
            viewModelImpl.clear();
        }
        onCleared();
    }

    public final void addCloseable(String key, AutoCloseable closeable) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(closeable, "closeable");
        ViewModelImpl viewModelImpl = this.impl;
        if (viewModelImpl != null) {
            viewModelImpl.addCloseable(key, closeable);
        }
    }

    public final AutoCloseable getCloseable(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        ViewModelImpl viewModelImpl = this.impl;
        if (viewModelImpl != null) {
            return viewModelImpl.getCloseable(key);
        }
        return null;
    }
}
