package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import kotlin.Unit;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.Converter;
import retrofit2.http.Streaming;

/* JADX INFO: loaded from: classes3.dex */
final class BuiltInConverters extends Converter.Factory {
    BuiltInConverters() {
    }

    @Override // retrofit2.Converter.Factory
    public Converter responseBodyConverter(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        if (type == ResponseBody.class) {
            if (Utils.isAnnotationPresent(annotationArr, Streaming.class)) {
                return StreamingResponseBodyConverter.INSTANCE;
            }
            return BufferingResponseBodyConverter.INSTANCE;
        }
        if (type == Void.class) {
            return VoidResponseBodyConverter.INSTANCE;
        }
        if (Utils.isUnit(type)) {
            return UnitResponseBodyConverter.INSTANCE;
        }
        return null;
    }

    @Override // retrofit2.Converter.Factory
    public Converter requestBodyConverter(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, Retrofit retrofit) {
        if (RequestBody.class.isAssignableFrom(Utils.getRawType(type))) {
            return RequestBodyConverter.INSTANCE;
        }
        return null;
    }

    /* JADX INFO: loaded from: classes7.dex */
    static final class VoidResponseBodyConverter implements Converter {
        static final VoidResponseBodyConverter INSTANCE = new VoidResponseBodyConverter();

        VoidResponseBodyConverter() {
        }

        @Override // retrofit2.Converter
        public Void convert(ResponseBody responseBody) {
            responseBody.close();
            return null;
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    static final class UnitResponseBodyConverter implements Converter {
        static final UnitResponseBodyConverter INSTANCE = new UnitResponseBodyConverter();

        UnitResponseBodyConverter() {
        }

        @Override // retrofit2.Converter
        public Unit convert(ResponseBody responseBody) {
            responseBody.close();
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    static final class RequestBodyConverter implements Converter {
        static final RequestBodyConverter INSTANCE = new RequestBodyConverter();

        @Override // retrofit2.Converter
        public RequestBody convert(RequestBody requestBody) {
            return requestBody;
        }

        RequestBodyConverter() {
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    static final class StreamingResponseBodyConverter implements Converter {
        static final StreamingResponseBodyConverter INSTANCE = new StreamingResponseBodyConverter();

        @Override // retrofit2.Converter
        public ResponseBody convert(ResponseBody responseBody) {
            return responseBody;
        }

        StreamingResponseBodyConverter() {
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    static final class BufferingResponseBodyConverter implements Converter {
        static final BufferingResponseBodyConverter INSTANCE = new BufferingResponseBodyConverter();

        BufferingResponseBodyConverter() {
        }

        @Override // retrofit2.Converter
        public ResponseBody convert(ResponseBody responseBody) {
            try {
                return Utils.buffer(responseBody);
            } finally {
                responseBody.close();
            }
        }
    }

    static final class ToStringConverter implements Converter {
        static final ToStringConverter INSTANCE = new ToStringConverter();

        ToStringConverter() {
        }

        @Override // retrofit2.Converter
        public String convert(Object obj) {
            return obj.toString();
        }
    }
}
