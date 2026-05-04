package androidx.lifecycle.viewmodel.internal;

import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes.dex */
public final class ViewModelProviders {
    public static final ViewModelProviders INSTANCE = new ViewModelProviders();

    private ViewModelProviders() {
    }

    public final String getDefaultKey$lifecycle_viewmodel(KClass modelClass) {
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        String canonicalName = CanonicalName_jvmKt.getCanonicalName(modelClass);
        if (canonicalName == null) {
            throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
        }
        return "androidx.lifecycle.ViewModelProvider.DefaultKey:" + canonicalName;
    }

    public final ViewModel unsupportedCreateViewModel$lifecycle_viewmodel() {
        throw new UnsupportedOperationException("`Factory.create(String, CreationExtras)` is not implemented. You may need to override the method and provide a custom implementation. Note that using `Factory.create(String)` is not supported and considered an error.");
    }

    public final ViewModelProvider.Factory getDefaultFactory$lifecycle_viewmodel(ViewModelStoreOwner owner) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        if (owner instanceof HasDefaultViewModelProviderFactory) {
            return ((HasDefaultViewModelProviderFactory) owner).getDefaultViewModelProviderFactory();
        }
        return DefaultViewModelProviderFactory.INSTANCE;
    }

    public final CreationExtras getDefaultCreationExtras$lifecycle_viewmodel(ViewModelStoreOwner owner) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        if (owner instanceof HasDefaultViewModelProviderFactory) {
            return ((HasDefaultViewModelProviderFactory) owner).getDefaultViewModelCreationExtras();
        }
        return CreationExtras.Empty.INSTANCE;
    }
}
