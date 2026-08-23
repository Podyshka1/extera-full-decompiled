package androidx.lifecycle.viewmodel.internal;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes.dex */
public final class ViewModelProviderImpl {
    private final CreationExtras defaultExtras;
    private final ViewModelProvider.Factory factory;
    private final SynchronizedObject lock;
    private final ViewModelStore store;

    public ViewModelProviderImpl(ViewModelStore store, ViewModelProvider.Factory factory, CreationExtras defaultExtras) {
        Intrinsics.checkNotNullParameter(store, "store");
        Intrinsics.checkNotNullParameter(factory, "factory");
        Intrinsics.checkNotNullParameter(defaultExtras, "defaultExtras");
        this.store = store;
        this.factory = factory;
        this.defaultExtras = defaultExtras;
        this.lock = new SynchronizedObject();
    }

    public static /* synthetic */ ViewModel getViewModel$lifecycle_viewmodel$default(ViewModelProviderImpl viewModelProviderImpl, KClass kClass, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = ViewModelProviders.INSTANCE.getDefaultKey$lifecycle_viewmodel(kClass);
        }
        return viewModelProviderImpl.getViewModel$lifecycle_viewmodel(kClass, str);
    }

    public final ViewModel getViewModel$lifecycle_viewmodel(KClass modelClass, String key) {
        ViewModel viewModelCreateViewModel;
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        Intrinsics.checkNotNullParameter(key, "key");
        synchronized (this.lock) {
            try {
                viewModelCreateViewModel = this.store.get(key);
                if (modelClass.isInstance(viewModelCreateViewModel)) {
                    if (this.factory instanceof ViewModelProvider.OnRequeryFactory) {
                        ViewModelProvider.OnRequeryFactory onRequeryFactory = (ViewModelProvider.OnRequeryFactory) this.factory;
                        Intrinsics.checkNotNull(viewModelCreateViewModel);
                        onRequeryFactory.onRequery(viewModelCreateViewModel);
                    }
                    Intrinsics.checkNotNull(viewModelCreateViewModel, "null cannot be cast to non-null type T of androidx.lifecycle.viewmodel.internal.ViewModelProviderImpl.getViewModel");
                } else {
                    MutableCreationExtras mutableCreationExtras = new MutableCreationExtras(this.defaultExtras);
                    mutableCreationExtras.set(ViewModelProvider.VIEW_MODEL_KEY, key);
                    viewModelCreateViewModel = ViewModelProviderImpl_androidKt.createViewModel(this.factory, modelClass, mutableCreationExtras);
                    this.store.put(key, viewModelCreateViewModel);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return viewModelCreateViewModel;
    }
}
