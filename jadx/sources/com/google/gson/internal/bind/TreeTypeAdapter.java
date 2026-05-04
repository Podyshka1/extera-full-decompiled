package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal.Streams;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class TreeTypeAdapter extends SerializationDelegatingTypeAdapter {
    private final GsonContextImpl context;
    private volatile TypeAdapter delegate;
    final Gson gson;
    private final boolean nullSafe;
    private final JsonSerializer serializer;
    private final TypeAdapterFactory skipPastForGetDelegateAdapter;
    private final TypeToken typeToken;

    public TreeTypeAdapter(JsonSerializer jsonSerializer, JsonDeserializer jsonDeserializer, Gson gson, TypeToken typeToken, TypeAdapterFactory typeAdapterFactory, boolean z) {
        this.context = new GsonContextImpl();
        this.serializer = jsonSerializer;
        this.gson = gson;
        this.typeToken = typeToken;
        this.skipPastForGetDelegateAdapter = typeAdapterFactory;
        this.nullSafe = z;
    }

    public TreeTypeAdapter(JsonSerializer jsonSerializer, JsonDeserializer jsonDeserializer, Gson gson, TypeToken typeToken, TypeAdapterFactory typeAdapterFactory) {
        this(jsonSerializer, jsonDeserializer, gson, typeToken, typeAdapterFactory, true);
    }

    @Override // com.google.gson.TypeAdapter
    public Object read(JsonReader jsonReader) {
        return delegate().read(jsonReader);
    }

    @Override // com.google.gson.TypeAdapter
    public void write(JsonWriter jsonWriter, Object obj) {
        JsonSerializer jsonSerializer = this.serializer;
        if (jsonSerializer == null) {
            delegate().write(jsonWriter, obj);
        } else if (this.nullSafe && obj == null) {
            jsonWriter.nullValue();
        } else {
            Streams.write(jsonSerializer.serialize(obj, this.typeToken.getType(), this.context), jsonWriter);
        }
    }

    private TypeAdapter delegate() {
        TypeAdapter typeAdapter = this.delegate;
        if (typeAdapter != null) {
            return typeAdapter;
        }
        TypeAdapter delegateAdapter = this.gson.getDelegateAdapter(this.skipPastForGetDelegateAdapter, this.typeToken);
        this.delegate = delegateAdapter;
        return delegateAdapter;
    }

    @Override // com.google.gson.internal.bind.SerializationDelegatingTypeAdapter
    public TypeAdapter getSerializationDelegate() {
        return this.serializer != null ? this : delegate();
    }

    public static TypeAdapterFactory newFactoryWithMatchRawType(TypeToken typeToken, Object obj) {
        return new SingleTypeFactory(obj, typeToken, typeToken.getType() == typeToken.getRawType(), null);
    }

    public static TypeAdapterFactory newTypeHierarchyFactory(Class cls, Object obj) {
        return new SingleTypeFactory(obj, null, false, cls);
    }

    private static final class SingleTypeFactory implements TypeAdapterFactory {
        private final TypeToken exactType;
        private final Class hierarchyType;
        private final boolean matchRawType;
        private final JsonSerializer serializer;

        SingleTypeFactory(Object obj, TypeToken typeToken, boolean z, Class cls) {
            JsonSerializer jsonSerializer = obj instanceof JsonSerializer ? (JsonSerializer) obj : null;
            this.serializer = jsonSerializer;
            if (jsonSerializer == null) {
                Objects.requireNonNull(obj);
                throw new IllegalArgumentException("Type adapter " + obj.getClass().getName() + " must implement JsonSerializer or JsonDeserializer");
            }
            this.exactType = typeToken;
            this.matchRawType = z;
            this.hierarchyType = cls;
        }

        @Override // com.google.gson.TypeAdapterFactory
        public TypeAdapter create(Gson gson, TypeToken typeToken) {
            boolean zIsAssignableFrom;
            TypeToken typeToken2 = this.exactType;
            if (typeToken2 != null) {
                zIsAssignableFrom = typeToken2.equals(typeToken) || (this.matchRawType && this.exactType.getType() == typeToken.getRawType());
            } else {
                zIsAssignableFrom = this.hierarchyType.isAssignableFrom(typeToken.getRawType());
            }
            if (zIsAssignableFrom) {
                return new TreeTypeAdapter(this.serializer, null, gson, typeToken, this);
            }
            return null;
        }
    }

    private final class GsonContextImpl implements JsonSerializationContext {
        private GsonContextImpl() {
        }

        @Override // com.google.gson.JsonSerializationContext
        public JsonElement serialize(Object obj) {
            return TreeTypeAdapter.this.gson.toJsonTree(obj);
        }
    }
}
