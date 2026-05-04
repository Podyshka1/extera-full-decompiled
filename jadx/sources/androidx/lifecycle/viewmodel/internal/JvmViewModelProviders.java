package androidx.lifecycle.viewmodel.internal;

import androidx.lifecycle.ViewModel;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Modifier;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class JvmViewModelProviders {
    public static final JvmViewModelProviders INSTANCE = new JvmViewModelProviders();

    private JvmViewModelProviders() {
    }

    public final ViewModel createViewModel(Class modelClass) throws InvocationTargetException {
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        try {
            Constructor declaredConstructor = modelClass.getDeclaredConstructor(null);
            if (!Modifier.isPublic(declaredConstructor.getModifiers())) {
                throw new RuntimeException("Cannot create an instance of " + modelClass);
            }
            try {
                Object objNewInstance = declaredConstructor.newInstance(null);
                Intrinsics.checkNotNull(objNewInstance);
                return (ViewModel) objNewInstance;
            } catch (IllegalAccessException e) {
                throw new RuntimeException("Cannot create an instance of " + modelClass, e);
            } catch (InstantiationException e2) {
                throw new RuntimeException("Cannot create an instance of " + modelClass, e2);
            }
        } catch (NoSuchMethodException e3) {
            throw new RuntimeException("Cannot create an instance of " + modelClass, e3);
        }
    }
}
