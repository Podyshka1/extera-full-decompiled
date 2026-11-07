package androidx.view.viewmodel.internal;

import androidx.view.ViewModel;
import androidx.view.ViewModelProvider;
import androidx.view.ViewModelStore;
import androidx.view.viewmodel.CreationExtras;
import androidx.view.viewmodel.MutableCreationExtras;
import com.exteragram.messenger.plugins.PluginsConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ1\u0010\f\u001a\u0002H\r\"\b\b\u0000\u0010\r*\u00020\u000e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\r0\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u0012H\u0000¢\u0006\u0004\b\u0013\u0010\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Landroidx/lifecycle/viewmodel/internal/ViewModelProviderImpl;", _UrlKt.FRAGMENT_ENCODE_SET, "store", "Landroidx/lifecycle/ViewModelStore;", PluginsConstants.Settings.FACTORY, "Landroidx/lifecycle/ViewModelProvider$Factory;", "defaultExtras", "Landroidx/lifecycle/viewmodel/CreationExtras;", "<init>", "(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)V", "lock", "Landroidx/lifecycle/viewmodel/internal/SynchronizedObject;", "getViewModel", "T", "Landroidx/lifecycle/ViewModel;", "modelClass", "Lkotlin/reflect/KClass;", PluginsConstants.Settings.KEY, _UrlKt.FRAGMENT_ENCODE_SET, "getViewModel$lifecycle_viewmodel", "(Lkotlin/reflect/KClass;Ljava/lang/String;)Landroidx/lifecycle/ViewModel;", "lifecycle-viewmodel"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nViewModelProviderImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewModelProviderImpl.kt\nandroidx/lifecycle/viewmodel/internal/ViewModelProviderImpl\n+ 2 SynchronizedObject.kt\nandroidx/lifecycle/viewmodel/internal/SynchronizedObjectKt\n+ 3 SynchronizedObject.jvmAndAndroid.kt\nandroidx/lifecycle/viewmodel/internal/SynchronizedObject_jvmKt\n*L\n1#1,84:1\n32#2:85\n26#3:86\n*S KotlinDebug\n*F\n+ 1 ViewModelProviderImpl.kt\nandroidx/lifecycle/viewmodel/internal/ViewModelProviderImpl\n*L\n47#1:85\n47#1:86\n*E\n"})
public final class ViewModelProviderImpl {
    private final CreationExtras defaultExtras;
    private final ViewModelProvider.Factory factory;
    private final SynchronizedObject lock = new SynchronizedObject();
    private final ViewModelStore store;

    public ViewModelProviderImpl(ViewModelStore viewModelStore, ViewModelProvider.Factory factory, CreationExtras creationExtras) {
        this.store = viewModelStore;
        this.factory = factory;
        this.defaultExtras = creationExtras;
    }

    public static /* synthetic */ ViewModel getViewModel$lifecycle_viewmodel$default(ViewModelProviderImpl viewModelProviderImpl, KClass kClass, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = ViewModelProviders.INSTANCE.getDefaultKey$lifecycle_viewmodel(kClass);
        }
        return viewModelProviderImpl.getViewModel$lifecycle_viewmodel(kClass, str);
    }

    public final <T extends ViewModel> T getViewModel$lifecycle_viewmodel(KClass<T> modelClass, String key) {
        T t;
        synchronized (this.lock) {
            try {
                t = (T) this.store.get(key);
                if (modelClass.isInstance(t)) {
                    if (this.factory instanceof ViewModelProvider.OnRequeryFactory) {
                        ((ViewModelProvider.OnRequeryFactory) this.factory).onRequery(t);
                    }
                } else {
                    MutableCreationExtras mutableCreationExtras = new MutableCreationExtras(this.defaultExtras);
                    mutableCreationExtras.set(ViewModelProvider.VIEW_MODEL_KEY, key);
                    t = (T) ViewModelProviderImpl_androidKt.createViewModel(this.factory, modelClass, mutableCreationExtras);
                    this.store.put(key, t);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return t;
    }
}
