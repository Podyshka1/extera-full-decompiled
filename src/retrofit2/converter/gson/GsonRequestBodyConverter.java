package retrofit2.converter.gson;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonWriter;
import java.io.OutputStreamWriter;
import java.nio.charset.StandardCharsets;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okio.Buffer;
import okio.BufferedSink;
import retrofit2.Converter;

/* JADX INFO: loaded from: classes7.dex */
final class GsonRequestBodyConverter implements Converter {
    static final MediaType MEDIA_TYPE = MediaType.get("application/json; charset=UTF-8");
    private final TypeAdapter adapter;
    private final Gson gson;
    private final boolean streaming;

    GsonRequestBodyConverter(Gson gson, TypeAdapter typeAdapter, boolean z) {
        this.gson = gson;
        this.adapter = typeAdapter;
        this.streaming = z;
    }

    @Override // retrofit2.Converter
    public RequestBody convert(Object obj) {
        if (this.streaming) {
            return new GsonStreamingRequestBody(this.gson, this.adapter, obj);
        }
        Buffer buffer = new Buffer();
        writeJson(buffer, this.gson, this.adapter, obj);
        return RequestBody.create(MEDIA_TYPE, buffer.readByteString());
    }

    static void writeJson(BufferedSink bufferedSink, Gson gson, TypeAdapter typeAdapter, Object obj) {
        JsonWriter jsonWriterNewJsonWriter = gson.newJsonWriter(new OutputStreamWriter(bufferedSink.outputStream(), StandardCharsets.UTF_8));
        typeAdapter.write(jsonWriterNewJsonWriter, obj);
        jsonWriterNewJsonWriter.close();
    }
}
