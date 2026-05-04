package retrofit2.converter.gson;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okio.BufferedSink;

/* JADX INFO: loaded from: classes7.dex */
final class GsonStreamingRequestBody extends RequestBody {
    private final TypeAdapter adapter;
    private final Gson gson;
    private final Object value;

    public GsonStreamingRequestBody(Gson gson, TypeAdapter typeAdapter, Object obj) {
        this.gson = gson;
        this.adapter = typeAdapter;
        this.value = obj;
    }

    @Override // okhttp3.RequestBody
    public MediaType contentType() {
        return GsonRequestBodyConverter.MEDIA_TYPE;
    }

    @Override // okhttp3.RequestBody
    public void writeTo(BufferedSink bufferedSink) {
        GsonRequestBodyConverter.writeJson(bufferedSink, this.gson, this.adapter, this.value);
    }
}
