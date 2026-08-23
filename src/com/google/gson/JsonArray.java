package com.google.gson;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class JsonArray extends JsonElement implements Iterable {
    private final ArrayList elements = new ArrayList();

    public void add(JsonElement jsonElement) {
        if (jsonElement == null) {
            jsonElement = JsonNull.INSTANCE;
        }
        this.elements.add(jsonElement);
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return this.elements.iterator();
    }

    private JsonElement getAsSingleElement() {
        int size = this.elements.size();
        if (size == 1) {
            return (JsonElement) this.elements.get(0);
        }
        throw new IllegalStateException("Array must have size 1, but has size " + size);
    }

    @Override // com.google.gson.JsonElement
    public String getAsString() {
        return getAsSingleElement().getAsString();
    }

    @Override // com.google.gson.JsonElement
    public long getAsLong() {
        return getAsSingleElement().getAsLong();
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
