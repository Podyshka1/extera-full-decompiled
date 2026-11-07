package com.chaquo.python;

import java.lang.ref.PhantomReference;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.lang.reflect.UndeclaredThrowableException;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes.dex */
public class PyObject extends AbstractMap<String, PyObject> implements AutoCloseable {
    private static final Map<Long, Ref> cache = new HashMap();
    public long addr;
    private final Ref ref = new Ref(this);

    private native long callAttrThrowsNative(String str, Object... objArr);

    private native long callThrowsNative(Object... objArr);

    private static native void closeNative(long j, long j2);

    private native boolean containsKeyNative(String str);

    /* JADX INFO: Access modifiers changed from: private */
    public native List<String> dir();

    private static native long fromJavaNative(Object obj);

    private native long getNative(String str);

    private native long putNative(String str, Object obj);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void releaseNative(long[] jArr, int i);

    private native long removeNative(String str);

    private native long typeNative();

    @Override // java.util.AbstractMap, java.util.Map
    public native boolean equals(Object obj);

    @Override // java.util.AbstractMap, java.util.Map
    public native int hashCode();

    public native long id();

    public native String repr();

    public native boolean toBoolean();

    public native byte toByte();

    public native char toChar();

    public native double toDouble();

    public native float toFloat();

    public native int toInt();

    public native <T> T toJava(Class<T> cls);

    public native long toLong();

    public native short toShort();

    @Override // java.util.AbstractMap
    public native String toString();

    public static PyObject getInstance(long j) {
        PyObject pyObject;
        if (j == 0) {
            return null;
        }
        Map<Long, Ref> map = cache;
        synchronized (map) {
            try {
                Ref ref = map.get(Long.valueOf(j));
                if (ref != null && (pyObject = ref.weak.get()) != null) {
                    ref.count++;
                    return pyObject;
                }
                PyObject pyObject2 = new PyObject(j);
                map.put(Long.valueOf(j), pyObject2.ref);
                pyObject2.ref.add();
                return pyObject2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private PyObject(long j) {
        this.addr = j;
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        long jTake;
        if (this.addr == 0) {
            return;
        }
        synchronized (cache) {
            jTake = this.ref.take();
        }
        if (jTake != 0) {
            closeNative(this.ref.addr, jTake);
        }
        this.addr = 0L;
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static final class Ref extends PhantomReference<PyObject> {
        private static final int BATCH_SIZE = 1024;
        private static Ref head;
        private static final ReferenceQueue<PyObject> queue = new ReferenceQueue<>();
        private static Thread releaser;
        final long addr;
        long count;
        private Ref next;
        private Ref prev;
        final WeakReference<PyObject> weak;

        public Ref(PyObject pyObject) {
            super(pyObject, queue);
            this.count = 1L;
            this.addr = pyObject.addr;
            this.weak = new WeakReference<>(pyObject);
        }

        public void add() {
            Ref ref = head;
            this.next = ref;
            if (ref != null) {
                ref.prev = this;
            }
            head = this;
            if (releaser == null) {
                Thread thread = new Thread(new Runnable() { // from class: com.chaquo.python.PyObject.Ref.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Ref.releaseLoop();
                    }
                }, "PyObject releaser");
                thread.setDaemon(true);
                thread.start();
                releaser = thread;
            }
        }

        public long take() {
            clear();
            long j = this.count;
            if (j != 0) {
                this.count = 0L;
                Ref ref = this.prev;
                Ref ref2 = this.next;
                if (ref != null) {
                    ref.next = ref2;
                } else {
                    head = ref2;
                }
                Ref ref3 = this.next;
                if (ref3 != null) {
                    ref3.prev = ref;
                }
                this.next = null;
                this.prev = null;
                if (PyObject.cache.get(Long.valueOf(this.addr)) == this) {
                    PyObject.cache.remove(Long.valueOf(this.addr));
                }
            }
            return j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void releaseLoop() {
            int i;
            long[] jArr = new long[2048];
            while (true) {
                try {
                    Reference<? extends PyObject> referenceRemove = queue.remove();
                    synchronized (PyObject.cache) {
                        i = 0;
                        do {
                            try {
                                Ref ref = (Ref) referenceRemove;
                                long jTake = ref.take();
                                if (jTake != 0) {
                                    int i2 = i + 1;
                                    jArr[i] = ref.addr;
                                    i += 2;
                                    jArr[i2] = jTake;
                                }
                                if (i >= 2048) {
                                    break;
                                } else {
                                    referenceRemove = queue.poll();
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        } while (referenceRemove != null);
                    }
                    if (i != 0) {
                        PyObject.releaseNative(jArr, i / 2);
                    }
                } catch (InterruptedException unused) {
                    continue;
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
            }
        }
    }

    public static PyObject fromJava(Object obj) {
        return getInstance(fromJavaNative(obj));
    }

    public List<PyObject> asList() {
        return new PyList(this);
    }

    public Map<PyObject, PyObject> asMap() {
        return new PyMap(this);
    }

    public Set<PyObject> asSet() {
        return new PySet(this);
    }

    public PyObject type() {
        PyObject pyObject = getInstance(typeNative());
        Objects.requireNonNull(pyObject);
        return pyObject;
    }

    public PyObject call(Object... objArr) {
        try {
            return callThrows(objArr);
        } catch (PyException e) {
            throw e;
        } catch (Throwable th) {
            throw new PyException(th);
        }
    }

    public PyObject callThrows(Object... objArr) {
        return getInstance(callThrowsNative(objArr));
    }

    public PyObject callAttr(String str, Object... objArr) {
        try {
            return callAttrThrows(str, objArr);
        } catch (PyException e) {
            throw e;
        } catch (Throwable th) {
            throw new PyException(th);
        }
    }

    public PyObject callAttrThrows(String str, Object... objArr) {
        return getInstance(callAttrThrowsNative(str, objArr));
    }

    public static PyObject _chaquopyCall(StaticProxy staticProxy, String str, Object... objArr) {
        try {
            return fromJava(staticProxy).callAttrThrows(str, objArr);
        } catch (Error | RuntimeException e) {
            throw e;
        } catch (Throwable th) {
            throw new UndeclaredThrowableException(th);
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        super.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return containsKeyNative((String) obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(Object obj) {
        return super.containsValue(fromJava(obj));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public PyObject get(Object obj) {
        return getInstance(getNative((String) obj));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public PyObject put(String str, PyObject pyObject) {
        return put(str, (Object) pyObject);
    }

    public PyObject put(String str, Object obj) {
        return getInstance(putNative(str, obj));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public PyObject remove(Object obj) {
        return getInstance(removeNative((String) obj));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<String> keySet() {
        return super.keySet();
    }

    /* JADX INFO: renamed from: com.chaquo.python.PyObject$1 */
    /* JADX INFO: loaded from: classes4.dex */
    public class C11861 extends AbstractSet<Map.Entry<String, PyObject>> {
        public C11861() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return PyObject.this.dir().size();
        }

        /* JADX INFO: renamed from: com.chaquo.python.PyObject$1$1, reason: invalid class name */
        public class AnonymousClass1 implements Iterator<Map.Entry<String, PyObject>> {

            /* JADX INFO: renamed from: i */
            int f85i = 0;
            List<String> keys;

            public AnonymousClass1() {
                this.keys = PyObject.this.dir();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f85i < this.keys.size();
            }

            @Override // java.util.Iterator
            public Map.Entry<String, PyObject> next() {
                if (!hasNext()) {
                    Utils$$ExternalSyntheticBUOutline0.m1068m();
                    return null;
                }
                Map.Entry<String, PyObject> entry = new Map.Entry<String, PyObject>() { // from class: com.chaquo.python.PyObject.1.1.1
                    String key;

                    {
                        this.key = AnonymousClass1.this.keys.get(AnonymousClass1.this.f85i);
                    }

                    @Override // java.util.Map.Entry
                    public String getKey() {
                        return this.key;
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // java.util.Map.Entry
                    public PyObject getValue() {
                        return PyObject.this.get((Object) this.key);
                    }

                    @Override // java.util.Map.Entry
                    public PyObject setValue(PyObject pyObject) {
                        return PyObject.this.put(this.key, pyObject);
                    }
                };
                this.f85i++;
                return entry;
            }

            @Override // java.util.Iterator
            public void remove() {
                PyObject.this.remove((Object) this.keys.get(this.f85i - 1));
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<String, PyObject>> iterator() {
            return new AnonymousClass1();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<String, PyObject>> entrySet() {
        return new C11861();
    }
}
