package androidx.collection;

import androidx.collection.internal.Lock;
import androidx.collection.internal.LruHashMap;
import androidx.collection.internal.RuntimeHelpersKt;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: loaded from: classes.dex */
public class LruCache {
    private int createCount;
    private int evictionCount;
    private int hitCount;
    private final Lock lock;
    private final LruHashMap map;
    private int maxSize;
    private int missCount;
    private int putCount;
    private int size;

    protected Object create(Object key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return null;
    }

    protected void entryRemoved(boolean z, Object key, Object oldValue, Object obj) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(oldValue, "oldValue");
    }

    protected int sizeOf(Object key, Object value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        return 1;
    }

    public LruCache(int i) {
        this.maxSize = i;
        if (!(i > 0)) {
            RuntimeHelpersKt.throwIllegalArgumentException("maxSize <= 0");
        }
        this.map = new LruHashMap(0, 0.75f);
        this.lock = new Lock();
    }

    public final Object get(Object key) {
        Object objPut;
        Intrinsics.checkNotNullParameter(key, "key");
        synchronized (this.lock) {
            Object obj = this.map.get(key);
            if (obj != null) {
                this.hitCount++;
                return obj;
            }
            this.missCount++;
            Object objCreate = create(key);
            if (objCreate == null) {
                return null;
            }
            synchronized (this.lock) {
                try {
                    this.createCount++;
                    objPut = this.map.put(key, objCreate);
                    if (objPut != null) {
                        this.map.put(key, objPut);
                    } else {
                        this.size += safeSizeOf(key, objCreate);
                        Unit unit = Unit.INSTANCE;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (objPut != null) {
                entryRemoved(false, key, objCreate, objPut);
                return objPut;
            }
            trimToSize(this.maxSize);
            return objCreate;
        }
    }

    public final Object put(Object key, Object value) {
        Object objPut;
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        synchronized (this.lock) {
            try {
                this.putCount++;
                this.size += safeSizeOf(key, value);
                objPut = this.map.put(key, value);
                if (objPut != null) {
                    this.size -= safeSizeOf(key, objPut);
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (objPut != null) {
            entryRemoved(false, key, objPut, value);
        }
        trimToSize(this.maxSize);
        return objPut;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0060, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void trimToSize(int i) {
        Object key;
        Object value;
        while (true) {
            synchronized (this.lock) {
                try {
                    if (!(this.size >= 0 && (!this.map.isEmpty() || this.size == 0))) {
                        RuntimeHelpersKt.throwIllegalStateException("LruCache.sizeOf() is reporting inconsistent results!");
                    }
                    if (this.size <= i || this.map.isEmpty()) {
                        break;
                    }
                    Map.Entry entry = (Map.Entry) CollectionsKt.firstOrNull(this.map.getEntries());
                    if (entry == null) {
                        return;
                    }
                    key = entry.getKey();
                    value = entry.getValue();
                    this.map.remove(key);
                    this.size -= safeSizeOf(key, value);
                    this.evictionCount++;
                } catch (Throwable th) {
                    throw th;
                }
            }
            entryRemoved(true, key, value, null);
        }
    }

    public final Object remove(Object key) {
        Object objRemove;
        Intrinsics.checkNotNullParameter(key, "key");
        synchronized (this.lock) {
            try {
                objRemove = this.map.remove(key);
                if (objRemove != null) {
                    this.size -= safeSizeOf(key, objRemove);
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (objRemove != null) {
            entryRemoved(false, key, objRemove, null);
        }
        return objRemove;
    }

    private final int safeSizeOf(Object obj, Object obj2) {
        int iSizeOf = sizeOf(obj, obj2);
        if (!(iSizeOf >= 0)) {
            RuntimeHelpersKt.throwIllegalStateException("Negative size: " + obj + SignatureVisitor.INSTANCEOF + obj2);
        }
        return iSizeOf;
    }

    public final void evictAll() {
        trimToSize(-1);
    }

    public final int size() {
        int i;
        synchronized (this.lock) {
            i = this.size;
        }
        return i;
    }

    public final Map snapshot() {
        LinkedHashMap linkedHashMap;
        synchronized (this.lock) {
            linkedHashMap = new LinkedHashMap(this.map.getEntries().size());
            for (Map.Entry entry : this.map.getEntries()) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return linkedHashMap;
    }

    public String toString() {
        String str;
        synchronized (this.lock) {
            try {
                int i = this.hitCount;
                int i2 = this.missCount + i;
                str = "LruCache[maxSize=" + this.maxSize + ",hits=" + this.hitCount + ",misses=" + this.missCount + ",hitRate=" + (i2 != 0 ? (i * 100) / i2 : 0) + "%]";
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }
}
