package com.google.gson;

import com.google.gson.internal.Streams;
import com.google.gson.internal.bind.JsonTreeReader;
import com.google.gson.internal.bind.JsonTreeWriter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.Writer;

/* JADX INFO: loaded from: classes.dex */
public abstract class TypeAdapter {
    public abstract Object read(JsonReader jsonReader);

    public abstract void write(JsonWriter jsonWriter, Object obj);

    public final void toJson(Writer writer, Object obj) {
        write(new JsonWriter(writer), obj);
    }

    public final String toJson(Object obj) {
        StringBuilder sb = new StringBuilder();
        try {
            toJson(Streams.writerForAppendable(sb), obj);
            return sb.toString();
        } catch (IOException e) {
            throw new JsonIOException(e);
        }
    }

    public final JsonElement toJsonTree(Object obj) {
        try {
            JsonTreeWriter jsonTreeWriter = new JsonTreeWriter();
            write(jsonTreeWriter, obj);
            return jsonTreeWriter.get();
        } catch (IOException e) {
            throw new JsonIOException(e);
        }
    }

    public final Object fromJson(Reader reader) {
        return read(new JsonReader(reader));
    }

    public final Object fromJson(String str) {
        return fromJson(new StringReader(str));
    }

    public final Object fromJsonTree(JsonElement jsonElement) {
        try {
            return read(new JsonTreeReader(jsonElement));
        } catch (IOException e) {
            throw new JsonIOException(e);
        }
    }

    public final TypeAdapter nullSafe() {
        return !(this instanceof NullSafeTypeAdapter) ? new NullSafeTypeAdapter() : this;
    }

    private final class NullSafeTypeAdapter extends TypeAdapter {
        private NullSafeTypeAdapter() {
        }

        @Override // com.google.gson.TypeAdapter
        public void write(JsonWriter jsonWriter, Object obj) {
            if (obj == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter.this.write(jsonWriter, obj);
            }
        }

        @Override // com.google.gson.TypeAdapter
        public Object read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            return TypeAdapter.this.read(jsonReader);
        }

        public String toString() {
            return "NullSafeTypeAdapter[" + TypeAdapter.this + "]";
        }
    }
}
