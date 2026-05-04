package androidx.lifecycle.viewmodel.internal;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.viewmodel.CreationExtras;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes.dex */
public abstract class ViewModelProviderImpl_androidKt {
    public static final ViewModel createViewModel(ViewModelProvider.Factory factory, KClass modelClass, CreationExtras extras) {
        Intrinsics.checkNotNullParameter(factory, "factory");
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        Intrinsics.checkNotNullParameter(extras, "extras");
        try {
            try {
                return factory.create(modelClass, extras);
            } catch (AbstractMethodError unused) {
                return factory.create(JvmClassMappingKt.getJavaClass(modelClass));
            }
        } catch (AbstractMethodError unused2) {
            return factory.create(JvmClassMappingKt.getJavaClass(modelClass), extras);
        }
    }
}
