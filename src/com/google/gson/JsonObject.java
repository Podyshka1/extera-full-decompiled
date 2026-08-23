package com.google.gson;

import com.google.gson.internal.LinkedTreeMap;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public final class JsonObject extends JsonElement {
    private final LinkedTreeMap members = new LinkedTreeMap(false);

    public void add(String str, JsonElement jsonElement) {
        LinkedTreeMap linkedTreeMap = this.members;
        if (jsonElement == null) {
            jsonElement = JsonNull.INSTANCE;
        }
        linkedTreeMap.put(str, jsonElement);
    }

    public JsonElement remove(String str) {
        return (JsonElement) this.members.remove(str);
    }

    public void addProperty(String str, String str2) {
        add(str, str2 == null ? JsonNull.INSTANCE : new JsonPrimitive(str2));
    }

    public Set entrySet() {
        return this.members.entrySet();
    }

    public Set keySet() {
        return this.members.keySet();
    }

    public int size() {
        return this.members.size();
    }

    public boolean isEmpty() {
        return this.members.isEmpty();
    }

    public boolean has(String str) {
        return this.members.containsKey(str);
    }

    public JsonElement get(String str) {
        return (JsonElement) this.members.get(str);
    }

    public JsonArray getAsJsonArray(String str) {
        return (JsonArray) this.members.get(str);
    }

    public JsonObject getAsJsonObject(String str) {
        return (JsonObject) this.members.get(str);
    }

    public boolean equals(Object obj) {
        if (obj != this) {
            return (obj instanceof JsonObject) && ((JsonObject) obj).members.equals(this.members);
        }
        return true;
    }

    public int hashCode() {
        return this.members.hashCode();
    }
}
