package com.google.gson;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class JsonArray extends JsonElement implements Iterable<JsonElement> {
    private final ArrayList<JsonElement> elements = new ArrayList<>();

    public void add(JsonElement jsonElement) {
        if (jsonElement == null) {
            jsonElement = JsonNull.INSTANCE;
        }
        this.elements.add(jsonElement);
    }

    public int size() {
        return this.elements.size();
    }

    @Override // java.lang.Iterable
    public Iterator<JsonElement> iterator() {
        return this.elements.iterator();
    }

    private JsonElement getAsSingleElement() {
        int size = this.elements.size();
        if (size == 1) {
            return this.elements.get(0);
        }
        JsonArray$$ExternalSyntheticBUOutline0.m458m("Array must have size 1, but has size ", size);
        return null;
    }

    @Override // com.google.gson.JsonElement
    public String getAsString() {
        return getAsSingleElement().getAsString();
    }

    @Override // com.google.gson.JsonElement
    public float getAsFloat() {
        return getAsSingleElement().getAsFloat();
    }

    @Override // com.google.gson.JsonElement
    public long getAsLong() {
        return getAsSingleElement().getAsLong();
    }

    @Override // com.google.gson.JsonElement
    public int getAsInt() {
        return getAsSingleElement().getAsInt();
    }

    @Override // com.google.gson.JsonElement
    public boolean getAsBoolean() {
        return getAsSingleElement().getAsBoolean();
    }

    public boolean equals(Object obj) {
        if (obj != this) {
            return (obj instanceof JsonArray) && ((JsonArray) obj).elements.equals(this.elements);
        }
        return true;
    }

    public int hashCode() {
        return this.elements.hashCode();
    }
}
