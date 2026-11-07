package retrofit2.converter.gson;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okio.BufferedSink;

/* JADX INFO: loaded from: classes7.dex */
final class GsonStreamingRequestBody<T> extends RequestBody {
    private final TypeAdapter<T> adapter;
    private final Gson gson;
    private final T value;

    public GsonStreamingRequestBody(Gson gson, TypeAdapter<T> typeAdapter, T t) {
        this.gson = gson;
        this.adapter = typeAdapter;
        this.value = t;
    }

    @Override // okhttp3.RequestBody
    /* JADX INFO: renamed from: contentType */
    public MediaType get$contentType() {
        return GsonRequestBodyConverter.MEDIA_TYPE;
    }

    @Override // okhttp3.RequestBody
    public void writeTo(BufferedSink bufferedSink) {
        GsonRequestBodyConverter.writeJson(bufferedSink, this.gson, this.adapter, this.value);
    }
}
