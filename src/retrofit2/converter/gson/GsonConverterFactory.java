package retrofit2.converter.gson;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import p002c.f$$ExternalSyntheticBUOutline2;
import retrofit2.Converter;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes3.dex */
public final class GsonConverterFactory extends Converter.Factory {
    private final Gson gson;
    private final boolean streaming;

    public static GsonConverterFactory create(Gson gson) {
        if (gson == null) {
            f$$ExternalSyntheticBUOutline2.m179m("gson == null");
            return null;
        }
        return new GsonConverterFactory(gson, false);
    }

    private GsonConverterFactory(Gson gson, boolean z) {
        this.gson = gson;
        this.streaming = z;
    }

    @Override // retrofit2.Converter.Factory
    public Converter<ResponseBody, ?> responseBodyConverter(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        return new GsonResponseBodyConverter(this.gson, this.gson.getAdapter(TypeToken.get(type)));
    }

    @Override // retrofit2.Converter.Factory
    public Converter<?, RequestBody> requestBodyConverter(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, Retrofit retrofit) {
        return new GsonRequestBodyConverter(this.gson, this.gson.getAdapter(TypeToken.get(type)), this.streaming);
    }
}
