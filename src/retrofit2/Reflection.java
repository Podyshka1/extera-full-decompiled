package retrofit2;

import android.annotation.TargetApi;
import android.os.Build;
import java.lang.reflect.Method;
import java.lang.reflect.Parameter;
import javax.annotation.Nullable;
import okio.ByteString$$ExternalSyntheticBUOutline0;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

/* JADX INFO: loaded from: classes3.dex */
class Reflection {
    public boolean isDefaultMethod(Method method) {
        return false;
    }

    @Nullable
    public Object invokeDefaultMethod(Method method, Class<?> cls, Object obj, @Nullable Object[] objArr) {
        throw new AssertionError();
    }

    public String describeMethodParameter(Method method, int i) {
        return "parameter #" + (i + 1);
    }

    /* JADX INFO: loaded from: classes4.dex */
    @IgnoreJRERequirement
    public static class Java8 extends Reflection {
        @Override // retrofit2.Reflection
        public boolean isDefaultMethod(Method method) {
            return method.isDefault();
        }

        @Override // retrofit2.Reflection
        public Object invokeDefaultMethod(Method method, Class<?> cls, Object obj, @Nullable Object[] objArr) {
            return DefaultMethodSupport.invoke(method, cls, obj, objArr);
        }

        @Override // retrofit2.Reflection
        public String describeMethodParameter(Method method, int i) {
            Parameter parameter = method.getParameters()[i];
            if (parameter.isNamePresent()) {
                return "parameter '" + parameter.getName() + '\'';
            }
            return super.describeMethodParameter(method, i);
        }
    }

    @TargetApi(24)
    @IgnoreJRERequirement
    public static final class Android24 extends Reflection {
        @Override // retrofit2.Reflection
        public boolean isDefaultMethod(Method method) {
            return method.isDefault();
        }

        @Override // retrofit2.Reflection
        public Object invokeDefaultMethod(Method method, Class<?> cls, Object obj, @Nullable Object[] objArr) {
            if (Build.VERSION.SDK_INT < 26) {
                ByteString$$ExternalSyntheticBUOutline0.m838m("Calling default methods on API 24 and 25 is not supported");
                return null;
            }
            return DefaultMethodSupport.invoke(method, cls, obj, objArr);
        }
    }
}
