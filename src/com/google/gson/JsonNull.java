package com.google.gson;

/* JADX INFO: loaded from: classes5.dex */
public final class JsonNull extends JsonElement {
    public static final JsonNull INSTANCE = new JsonNull();

    public int hashCode() {
        return JsonNull.class.hashCode();
    }

    public boolean equals(Object obj) {
        return obj instanceof JsonNull;
    }
}
