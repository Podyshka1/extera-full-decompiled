package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes3.dex */
public interface Converter {
    Object convert(Object obj);

    public static abstract class Factory {
        public Converter requestBodyConverter(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, Retrofit retrofit) {
            return null;
        }

        public abstract Converter responseBodyConverter(Type type, Annotation[] annotationArr, Retrofit retrofit);

        public Converter stringConverter(Type type, Annotation[] annotationArr, Retrofit retrofit) {
            return null;
        }

        protected static Type getParameterUpperBound(int i, ParameterizedType parameterizedType) {
            return Utils.getParameterUpperBound(i, parameterizedType);
        }

        protected static Class getRawType(Type type) {
            return Utils.getRawType(type);
        }
    }
}
