package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public interface CallAdapter<R, T> {
    T adapt(Call<R> call);

    Type responseType();

    public static abstract class Factory {
        @Nullable
        public abstract CallAdapter<?, ?> get(Type type, Annotation[] annotationArr, Retrofit retrofit);

        public static Type getParameterUpperBound(int i, ParameterizedType parameterizedType) {
            return Utils.getParameterUpperBound(i, parameterizedType);
        }

        public static Class<?> getRawType(Type type) {
            return Utils.getRawType(type);
        }
    }
}
