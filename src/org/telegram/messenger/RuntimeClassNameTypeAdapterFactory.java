package org.telegram.messenger;

import com.google.gson.ExclusionStrategy;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.JsonPrimitive;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal.Streams;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.util.LinkedHashMap;
import java.util.Map;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes6.dex */
public final class RuntimeClassNameTypeAdapterFactory<T> implements TypeAdapterFactory {
    private final Class<?> baseType;
    private final ExclusionStrategy exclusionStrategy;
    private final Map<String, Class<?>> labelToSubtype = new LinkedHashMap();
    private final Map<Class<?>, String> subtypeToLabel = new LinkedHashMap();
    private final String typeFieldName;

    private RuntimeClassNameTypeAdapterFactory(Class<?> cls, String str, ExclusionStrategy exclusionStrategy) {
        if (str == null || cls == null) {
            throw null;
        }
        this.baseType = cls;
        this.typeFieldName = str;
        this.exclusionStrategy = exclusionStrategy;
    }

    public static <T> RuntimeClassNameTypeAdapterFactory<T> of(Class<T> cls, String str, ExclusionStrategy exclusionStrategy) {
        return new RuntimeClassNameTypeAdapterFactory<>(cls, str, exclusionStrategy);
    }

    public static <T> RuntimeClassNameTypeAdapterFactory<T> of(Class<T> cls) {
        return new RuntimeClassNameTypeAdapterFactory<>(cls, "class", null);
    }

    public RuntimeClassNameTypeAdapterFactory<T> registerSubtype(Class<? extends T> cls, String str) {
        if (cls == null || str == null) {
            throw null;
        }
        if (this.subtypeToLabel.containsKey(cls) || this.labelToSubtype.containsKey(str)) {
            f$$ExternalSyntheticBUOutline1.m215m("types and labels must be unique");
            return null;
        }
        this.labelToSubtype.put(str, cls);
        this.subtypeToLabel.put(cls, str);
        return this;
    }

    public RuntimeClassNameTypeAdapterFactory<T> registerSubtype(Class<? extends T> cls) {
        return registerSubtype(cls, cls.getSimpleName());
    }

    @Override // com.google.gson.TypeAdapterFactory
    public <R> TypeAdapter<R> create(final Gson gson, final TypeToken<R> typeToken) {
        if (this.exclusionStrategy.shouldSkipClass(typeToken.getRawType().getClass())) {
            return null;
        }
        final LinkedHashMap linkedHashMap = new LinkedHashMap();
        final LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        if (Object.class.isAssignableFrom(typeToken.getRawType())) {
            TypeAdapter<T> delegateAdapter = gson.getDelegateAdapter(this, typeToken);
            linkedHashMap.put(typeToken.getRawType().getSimpleName(), delegateAdapter);
            linkedHashMap2.put(typeToken.getRawType(), delegateAdapter);
        }
        return new TypeAdapter<R>() { // from class: org.telegram.messenger.RuntimeClassNameTypeAdapterFactory.1
            @Override // com.google.gson.TypeAdapter
            public R read(JsonReader jsonReader) {
                JsonElement jsonElement = Streams.parse(jsonReader);
                if (jsonElement.isJsonObject()) {
                    JsonElement jsonElementRemove = jsonElement.getAsJsonObject().remove(RuntimeClassNameTypeAdapterFactory.this.typeFieldName);
                    if (jsonElementRemove == null) {
                        StringBuilder sb = new StringBuilder("cannot deserialize ");
                        sb.append(RuntimeClassNameTypeAdapterFactory.this.baseType);
                        String str = RuntimeClassNameTypeAdapterFactory.this.typeFieldName;
                        sb.append(" because it does not define a field named ");
                        sb.append(str);
                        throw new JsonParseException(sb.toString());
                    }
                    String asString = jsonElementRemove.getAsString();
                    TypeAdapter<T> delegateAdapter2 = (TypeAdapter) linkedHashMap.get(asString);
                    if (delegateAdapter2 == null) {
                        try {
                            delegateAdapter2 = gson.getDelegateAdapter(RuntimeClassNameTypeAdapterFactory.this, TypeToken.get((Class) Class.forName(asString)));
                            if (delegateAdapter2 == null) {
                                throw new JsonParseException("cannot deserialize " + RuntimeClassNameTypeAdapterFactory.this.baseType + " subtype named " + asString + "; did you forget to register a subtype?");
                            }
                        } catch (ClassNotFoundException e) {
                            throw new JsonParseException("Cannot find class " + asString, e);
                        }
                    }
                    return delegateAdapter2.fromJsonTree(jsonElement);
                }
                if (jsonElement.isJsonNull()) {
                    return null;
                }
                TypeAdapter<T> delegateAdapter3 = gson.getDelegateAdapter(RuntimeClassNameTypeAdapterFactory.this, typeToken);
                if (delegateAdapter3 == null) {
                    throw new JsonParseException("cannot deserialize " + RuntimeClassNameTypeAdapterFactory.this.baseType + "; did you forget to register a subtype?");
                }
                return delegateAdapter3.fromJsonTree(jsonElement);
            }

            @Override // com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, R r) {
                Class<?> cls = r.getClass();
                String simpleName = cls.getSimpleName();
                TypeAdapter<R> delegate = getDelegate(cls);
                if (delegate == null) {
                    throw new JsonParseException("cannot serialize " + cls.getSimpleName() + "; did you forget to register a subtype?");
                }
                JsonElement jsonTree = delegate.toJsonTree(r);
                if (!jsonTree.isJsonObject()) {
                    Streams.write(jsonTree, jsonWriter);
                    return;
                }
                JsonObject asJsonObject = jsonTree.getAsJsonObject();
                if (asJsonObject.has(RuntimeClassNameTypeAdapterFactory.this.typeFieldName)) {
                    throw new JsonParseException("cannot serialize " + cls.getSimpleName() + " because it already defines a field named " + RuntimeClassNameTypeAdapterFactory.this.typeFieldName);
                }
                JsonObject jsonObject = new JsonObject();
                jsonObject.add(RuntimeClassNameTypeAdapterFactory.this.typeFieldName, new JsonPrimitive(simpleName));
                for (Map.Entry<String, JsonElement> entry : asJsonObject.entrySet()) {
                    jsonObject.add(entry.getKey(), entry.getValue());
                }
                Streams.write(jsonObject, jsonWriter);
            }

            private TypeAdapter<R> getDelegate(Class<?> cls) {
                TypeAdapter<R> typeAdapter = (TypeAdapter) linkedHashMap2.get(cls);
                if (typeAdapter != null) {
                    return typeAdapter;
                }
                for (Map.Entry entry : linkedHashMap2.entrySet()) {
                    if (((Class) entry.getKey()).isAssignableFrom(cls)) {
                        return (TypeAdapter) entry.getValue();
                    }
                }
                return null;
            }
        }.nullSafe();
    }
}
