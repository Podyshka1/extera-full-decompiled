package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import javax.annotation.Nullable;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;

/* JADX INFO: loaded from: classes3.dex */
public interface Converter<F, T> {
    @Nullable
    T convert(F f);

    public static abstract class Factory {
        @Nullable
        public Converter<?, RequestBody> requestBodyConverter(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, Retrofit retrofit) {
            return null;
        }

        @Nullable
        public abstract Converter<ResponseBody, ?> responseBodyConverter(Type type, Annotation[] annotationArr, Retrofit retrofit);

        @Nullable
        public Converter<?, String> stringConverter(Type type, Annotation[] annotationArr, Retrofit retrofit) {
            return null;
        }

        public static Type getParameterUpperBound(int i, ParameterizedType parameterizedType) {
            return Utils.getParameterUpperBound(i, parameterizedType);
        }

        public static Class<?> getRawType(Type type) {
            return Utils.getRawType(type);
        }
    }
}
