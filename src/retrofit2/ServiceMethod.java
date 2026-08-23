package retrofit2;

import java.lang.reflect.Method;
import java.lang.reflect.Type;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
abstract class ServiceMethod<T> {
    @Nullable
    public abstract T invoke(Object obj, Object[] objArr);

    public static <T> ServiceMethod<T> parseAnnotations(Retrofit retrofit, Class<?> cls, Method method) {
        RequestFactory annotations = RequestFactory.parseAnnotations(retrofit, cls, method);
        Type genericReturnType = method.getGenericReturnType();
        if (Utils.hasUnresolvableType(genericReturnType)) {
            throw Utils.methodError(method, "Method return type must not include a type variable or wildcard: %s", genericReturnType);
        }
        if (genericReturnType == Void.TYPE) {
            throw Utils.methodError(method, "Service methods cannot return void.", new Object[0]);
        }
        return HttpServiceMethod.parseAnnotations(retrofit, method, annotations);
    }
}
