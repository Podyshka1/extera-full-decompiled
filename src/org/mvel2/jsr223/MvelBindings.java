package org.mvel2.jsr223;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import javax.script.Bindings;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes5.dex */
public class MvelBindings implements Bindings {
    private Map<String, Object> map;

    public MvelBindings(Map<String, Object> map) {
        map.getClass();
        this.map = map;
    }

    public MvelBindings() {
        this(new HashMap());
    }

    public Object put(String str, Object obj) {
        return this.map.put(str, obj);
    }

    public void putAll(Map<? extends String, ? extends Object> map) {
        if (map == null) {
            f$$ExternalSyntheticBUOutline2.m213m("toMerge map is null");
            return;
        }
        for (Map.Entry<? extends String, ? extends Object> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    public void clear() {
        this.map.clear();
    }

    public boolean containsKey(Object obj) {
        return this.map.containsKey(obj);
    }

    public boolean containsValue(Object obj) {
        return this.map.containsValue(obj);
    }

    public Set<Map.Entry<String, Object>> entrySet() {
        return this.map.entrySet();
    }

    public Object get(Object obj) {
        return this.map.get(obj);
    }

    public boolean isEmpty() {
        return this.map.isEmpty();
    }

    public Set<String> keySet() {
        return this.map.keySet();
    }

    public Object remove(Object obj) {
        return this.map.remove(obj);
    }

    public int size() {
        return this.map.size();
    }

    public Collection<Object> values() {
        return this.map.values();
    }
}
