package androidx.view.viewmodel.internal;

import androidx.view.HasDefaultViewModelProviderFactory;
import androidx.view.ViewModel;
import androidx.view.ViewModelProvider;
import androidx.view.ViewModelStoreOwner;
import androidx.view.viewmodel.CreationExtras;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import okhttp3.internal.url._UrlKt;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J'\u0010\u000b\u001a\u00020\b\"\b\b\u0000\u0010\u0005*\u00020\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006H\u0000¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\u000f\u001a\u00028\u0000\"\b\b\u0000\u0010\f*\u00020\u0004H\u0000¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0010H\u0000¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u0010H\u0000¢\u0006\u0004\b\u0017\u0010\u0018¨\u0006\u001a"}, d2 = {"Landroidx/lifecycle/viewmodel/internal/ViewModelProviders;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Landroidx/lifecycle/ViewModel;", "T", "Lkotlin/reflect/KClass;", "modelClass", _UrlKt.FRAGMENT_ENCODE_SET, "getDefaultKey$lifecycle_viewmodel", "(Lkotlin/reflect/KClass;)Ljava/lang/String;", "getDefaultKey", "VM", "unsupportedCreateViewModel$lifecycle_viewmodel", "()Landroidx/lifecycle/ViewModel;", "unsupportedCreateViewModel", "Landroidx/lifecycle/ViewModelStoreOwner;", "owner", "Landroidx/lifecycle/ViewModelProvider$Factory;", "getDefaultFactory$lifecycle_viewmodel", "(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/ViewModelProvider$Factory;", "getDefaultFactory", "Landroidx/lifecycle/viewmodel/CreationExtras;", "getDefaultCreationExtras$lifecycle_viewmodel", "(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;", "getDefaultCreationExtras", "lifecycle-viewmodel"}, m754k = 1, mv = {2, 0, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nViewModelProviders.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewModelProviders.kt\nandroidx/lifecycle/viewmodel/internal/ViewModelProviders\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,91:1\n37#2,2:92\n1310#3,2:94\n*S KotlinDebug\n*F\n+ 1 ViewModelProviders.kt\nandroidx/lifecycle/viewmodel/internal/ViewModelProviders\n*L\n58#1:92,2\n85#1:94,2\n*E\n"})
public final class ViewModelProviders {
    public static final ViewModelProviders INSTANCE = new ViewModelProviders();

    private ViewModelProviders() {
    }

    public final <T extends ViewModel> String getDefaultKey$lifecycle_viewmodel(KClass<T> modelClass) {
        String canonicalName = CanonicalName_jvmKt.getCanonicalName(modelClass);
        if (canonicalName == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Local and anonymous classes can not be ViewModels");
            return null;
        }
        return "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(canonicalName);
    }

    public final <VM extends ViewModel> VM unsupportedCreateViewModel$lifecycle_viewmodel() {
        throw new UnsupportedOperationException("`Factory.create(String, CreationExtras)` is not implemented. You may need to override the method and provide a custom implementation. Note that using `Factory.create(String)` is not supported and considered an error.");
    }

    public final ViewModelProvider.Factory getDefaultFactory$lifecycle_viewmodel(ViewModelStoreOwner owner) {
        if (owner instanceof HasDefaultViewModelProviderFactory) {
            return ((HasDefaultViewModelProviderFactory) owner).getDefaultViewModelProviderFactory();
        }
        return DefaultViewModelProviderFactory.INSTANCE;
    }

    public final CreationExtras getDefaultCreationExtras$lifecycle_viewmodel(ViewModelStoreOwner owner) {
        if (owner instanceof HasDefaultViewModelProviderFactory) {
            return ((HasDefaultViewModelProviderFactory) owner).getDefaultViewModelCreationExtras();
        }
        return CreationExtras.Empty.INSTANCE;
    }
}
