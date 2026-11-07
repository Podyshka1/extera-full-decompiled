package androidx.view.viewmodel.internal;

import androidx.view.ViewModel;
import java.lang.reflect.Constructor;
import java.lang.reflect.Modifier;
import kotlin.Metadata;
import okhttp3.internal.url._UrlKt;
import org.mvel2.MVEL$$ExternalSyntheticBUOutline0;
import p002c.a$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J#\u0010\u0004\u001a\u0002H\u0005\"\b\b\u0000\u0010\u0005*\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00050\b¢\u0006\u0002\u0010\t¨\u0006\n"}, d2 = {"Landroidx/lifecycle/viewmodel/internal/JvmViewModelProviders;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "createViewModel", "T", "Landroidx/lifecycle/ViewModel;", "modelClass", "Ljava/lang/Class;", "(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;", "lifecycle-viewmodel"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
public final class JvmViewModelProviders {
    public static final JvmViewModelProviders INSTANCE = new JvmViewModelProviders();

    private JvmViewModelProviders() {
    }

    public final <T extends ViewModel> T createViewModel(Class<T> modelClass) {
        try {
            Constructor<T> declaredConstructor = modelClass.getDeclaredConstructor(null);
            if (!Modifier.isPublic(declaredConstructor.getModifiers())) {
                MVEL$$ExternalSyntheticBUOutline0.m1005m("Cannot create an instance of ", modelClass);
                return null;
            }
            try {
                return declaredConstructor.newInstance(null);
            } catch (IllegalAccessException e) {
                a$$ExternalSyntheticBUOutline0.m209m("Cannot create an instance of ", modelClass, e);
                return null;
            } catch (InstantiationException e2) {
                a$$ExternalSyntheticBUOutline0.m209m("Cannot create an instance of ", modelClass, e2);
                return null;
            }
        } catch (NoSuchMethodException e3) {
            a$$ExternalSyntheticBUOutline0.m209m("Cannot create an instance of ", modelClass, e3);
            return null;
        }
    }
}
