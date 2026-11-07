package androidx.view;

import androidx.view.ViewModelProvider;
import androidx.view.viewmodel.CreationExtras;
import androidx.view.viewmodel.internal.DefaultViewModelProviderFactory;
import kotlin.Metadata;
import kotlin.jvm.JvmName;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0017\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u00028G¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\"\u0017\u0010\u0005\u001a\u00020\u0006*\u0004\u0018\u00010\u00028G¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"defaultViewModelProviderFactory", "Landroidx/lifecycle/ViewModelProvider$Factory;", "Landroidx/lifecycle/ViewModelStoreOwner;", "getViewModelProviderFactory", "(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/ViewModelProvider$Factory;", "defaultViewModelCreationExtras", "Landroidx/lifecycle/viewmodel/CreationExtras;", "getViewModelCreationExtras", "(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;", "lifecycle-viewmodel"}, m862k = 2, mv = {2, 1, 0}, xi = 48)
@JvmName(name = "ViewModelStoreOwnerDefaults")
public abstract class ViewModelStoreOwnerDefaults {
    @JvmName(name = "getViewModelProviderFactory")
    public static final ViewModelProvider.Factory getViewModelProviderFactory(ViewModelStoreOwner viewModelStoreOwner) {
        if (viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory) {
            return ((HasDefaultViewModelProviderFactory) viewModelStoreOwner).getDefaultViewModelProviderFactory();
        }
        return DefaultViewModelProviderFactory.INSTANCE;
    }

    @JvmName(name = "getViewModelCreationExtras")
    public static final CreationExtras getViewModelCreationExtras(ViewModelStoreOwner viewModelStoreOwner) {
        if (viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory) {
            return ((HasDefaultViewModelProviderFactory) viewModelStoreOwner).getDefaultViewModelCreationExtras();
        }
        return CreationExtras.Empty.INSTANCE;
    }
}
