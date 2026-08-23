package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import okhttp3.ResponseBody;
import p022j$.util.Optional;
import retrofit2.Converter;

/* JADX INFO: loaded from: classes3.dex */
public final class OptionalConverterFactory extends Converter.Factory {
    OptionalConverterFactory() {
    }

    @Override // retrofit2.Converter.Factory
    public Converter responseBodyConverter(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        if (Converter.Factory.getRawType(type) != Optional.class) {
            return null;
        }
        return new OptionalConverter(retrofit.responseBodyConverter(Converter.Factory.getParameterUpperBound(0, (ParameterizedType) type), annotationArr));
    }

    /* JADX INFO: loaded from: classes7.dex */
    static final class OptionalConverter implements Converter {
        private final Converter delegate;

        OptionalConverter(Converter converter) {
            this.delegate = converter;
        }

        @Override // retrofit2.Converter
        public Optional convert(ResponseBody responseBody) {
            return Optional.ofNullable(this.delegate.convert(responseBody));
        }
    }
}
