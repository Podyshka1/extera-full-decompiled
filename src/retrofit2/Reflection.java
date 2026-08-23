package retrofit2;

import android.os.Build;
import java.lang.reflect.Method;
import java.lang.reflect.Parameter;

/* JADX INFO: loaded from: classes3.dex */
class Reflection {
    boolean isDefaultMethod(Method method) {
        return false;
    }

    Reflection() {
    }

    Object invokeDefaultMethod(Method method, Class cls, Object obj, Object[] objArr) {
        throw new AssertionError();
    }

    String describeMethodParameter(Method method, int i) {
        return "parameter #" + (i + 1);
    }

    /* JADX INFO: loaded from: classes7.dex */
    static class Java8 extends Reflection {
        Java8() {
        }

        @Override // retrofit2.Reflection
        boolean isDefaultMethod(Method method) {
            return method.isDefault();
        }

        @Override // retrofit2.Reflection
        Object invokeDefaultMethod(Method method, Class cls, Object obj, Object[] objArr) {
            return DefaultMethodSupport.invoke(method, cls, obj, objArr);
        }

        @Override // retrofit2.Reflection
        String describeMethodParameter(Method method, int i) {
            Parameter parameter = method.getParameters()[i];
            if (parameter.isNamePresent()) {
                return "parameter '" + parameter.getName() + '\'';
            }
            return super.describeMethodParameter(method, i);
        }
    }

    static final class Android24 extends Reflection {
        Android24() {
        }

        @Override // retrofit2.Reflection
        boolean isDefaultMethod(Method method) {
            return method.isDefault();
        }

        @Override // retrofit2.Reflection
        Object invokeDefaultMethod(Method method, Class cls, Object obj, Object[] objArr) {
            if (Build.VERSION.SDK_INT < 26) {
                throw new UnsupportedOperationException("Calling default methods on API 24 and 25 is not supported");
            }
            return DefaultMethodSupport.invoke(method, cls, obj, objArr);
        }
    }
}
