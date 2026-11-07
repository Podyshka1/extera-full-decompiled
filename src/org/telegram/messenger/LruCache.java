package org.telegram.messenger;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import p002c.f$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes.dex */
public class LruCache<T> {
    private final LinkedHashMap<String, T> map;
    private final LinkedHashMap<String, ArrayList<String>> mapFilters;
    private int maxSize;
    private int size;

    public void entryRemoved(boolean z, String str, T t, T t2) {
    }

    public int sizeOf(String str, T t) {
        return 1;
    }

    public LruCache(int i) {
        if (i <= 0) {
            f$$ExternalSyntheticBUOutline1.m215m("maxSize <= 0");
            throw null;
        }
        this.maxSize = i;
        this.map = new LinkedHashMap<>(0, 0.75f, true);
        this.mapFilters = new LinkedHashMap<>();
    }

    public final T get(String str) {
        if (str == null) {
            f$$ExternalSyntheticBUOutline2.m216m("key == null");
            return null;
        }
        synchronized (this) {
            try {
                T t = this.map.get(str);
                if (t != null) {
                    return t;
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public synchronized ArrayList<String> getFilterKeys(String str) {
        ArrayList<String> arrayList = this.mapFilters.get(str);
        if (arrayList == null) {
            return null;
        }
        return new ArrayList<>(arrayList);
    }

    public synchronized void moveToFront(String str) {
        T tRemove = this.map.remove(str);
        if (tRemove != null) {
            this.map.put(str, tRemove);
        }
    }

    public T put(String str, T t) {
        T tPut;
        if (str == null || t == null) {
            f$$ExternalSyntheticBUOutline2.m216m("key == null || value == null");
            return null;
        }
        synchronized (this) {
            try {
                this.size += safeSizeOf(str, t);
                tPut = this.map.put(str, t);
                if (tPut != null) {
                    this.size -= safeSizeOf(str, tPut);
                }
                String[] strArrSplit = str.split("@");
                if (strArrSplit.length > 1) {
                    ArrayList<String> arrayList = this.mapFilters.get(strArrSplit[0]);
                    if (arrayList == null) {
                        arrayList = new ArrayList<>();
                        this.mapFilters.put(strArrSplit[0], arrayList);
                    }
                    if (!arrayList.contains(strArrSplit[1])) {
                        arrayList.add(strArrSplit[1]);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (tPut != null) {
            entryRemoved(false, str, tPut, t);
        }
        trimToSize(this.maxSize, str);
        return tPut;
    }

    private void trimToSize(int i, String str) {
        ArrayList<String> arrayList;
        synchronized (this) {
            try {
                Iterator<Map.Entry<String, T>> it = this.map.entrySet().iterator();
                while (it.hasNext() && this.size > i && !this.map.isEmpty()) {
                    Map.Entry<String, T> next = it.next();
                    String key = next.getKey();
                    if (str == null || !str.equals(key)) {
                        T value = next.getValue();
                        this.size -= safeSizeOf(key, value);
                        it.remove();
                        String[] strArrSplit = key.split("@");
                        if (strArrSplit.length > 1 && (arrayList = this.mapFilters.get(strArrSplit[0])) != null) {
                            arrayList.remove(strArrSplit[1]);
                            if (arrayList.isEmpty()) {
                                this.mapFilters.remove(strArrSplit[0]);
                            }
                        }
                        entryRemoved(true, key, value, null);
                    }
                }
            } finally {
            }
        }
    }

    public final T remove(String str) {
        T tRemove;
        ArrayList<String> arrayList;
        if (str == null) {
            f$$ExternalSyntheticBUOutline2.m216m("key == null");
            return null;
        }
        synchronized (this) {
            try {
                tRemove = this.map.remove(str);
                if (tRemove != null) {
                    this.size -= safeSizeOf(str, tRemove);
                    String[] strArrSplit = str.split("@");
                    if (strArrSplit.length > 1 && (arrayList = this.mapFilters.get(strArrSplit[0])) != null) {
                        arrayList.remove(strArrSplit[1]);
                        if (arrayList.isEmpty()) {
                            this.mapFilters.remove(strArrSplit[0]);
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (tRemove != null) {
            entryRemoved(false, str, tRemove, null);
        }
        return tRemove;
    }

    public synchronized boolean contains(String str) {
        return this.map.containsKey(str);
    }

    private int safeSizeOf(String str, T t) {
        int iSizeOf = sizeOf(str, t);
        if (iSizeOf >= 0) {
            return iSizeOf;
        }
        throw new IllegalStateException("Negative size: " + str + "=" + t);
    }

    public final void evictAll() {
        trimToSize(-1, null);
    }

    public final synchronized int size() {
        return this.size;
    }

    public final synchronized int maxSize() {
        return this.maxSize;
    }

    public final synchronized Set<Map.Entry<String, T>> entrySet() {
        return this.map.entrySet();
    }
}
