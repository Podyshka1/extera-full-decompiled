package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes3.dex */
public interface CallAdapter {
    Object adapt(Call call);

    Type responseType();

    public static abstract class Factory {
        public abstract CallAdapter get(Type type, Annotation[] annotationArr, Retrofit retrofit);

        protected static Type getParameterUpperBound(int i, ParameterizedType parameterizedType) {
            return Utils.getParameterUpperBound(i, parameterizedType);
        }

        protected static Class getRawType(Type type) {
            return Utils.getRawType(type);
        }
    }
}
