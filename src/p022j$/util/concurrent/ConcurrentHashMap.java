package p022j$.util.concurrent;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamField;
import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.Spliterator;
import java.util.concurrent.ConcurrentMap;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import org.mvel2.asm.signature.SignatureVisitor;
import org.telegram.tgnet.TLObject;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.sun.misc.C2106a;
import p022j$.util.Collection;
import p022j$.util.Spliterator;
import p022j$.util.stream.Stream;

/* JADX INFO: loaded from: classes2.dex */
public class ConcurrentHashMap<K, V> extends AbstractMap<K, V> implements ConcurrentMap<K, V>, Serializable, InterfaceC2266t {

    /* JADX INFO: renamed from: g */
    public static final int f935g = Runtime.getRuntime().availableProcessors();

    /* JADX INFO: renamed from: h */
    public static final C2106a f936h;

    /* JADX INFO: renamed from: i */
    public static final long f937i;

    /* JADX INFO: renamed from: j */
    public static final long f938j;

    /* JADX INFO: renamed from: k */
    public static final long f939k;

    /* JADX INFO: renamed from: l */
    public static final long f940l;

    /* JADX INFO: renamed from: m */
    public static final long f941m;

    /* JADX INFO: renamed from: n */
    public static final int f942n;

    /* JADX INFO: renamed from: o */
    public static final int f943o;
    private static final ObjectStreamField[] serialPersistentFields;
    private static final long serialVersionUID = 7249069246763182397L;

    /* JADX INFO: renamed from: a */
    public volatile transient C2257k[] f944a;

    /* JADX INFO: renamed from: b */
    public volatile transient C2257k[] f945b;
    private volatile transient long baseCount;

    /* JADX INFO: renamed from: c */
    public volatile transient C2249c[] f946c;
    private volatile transient int cellsBusy;

    /* JADX INFO: renamed from: d */
    public transient KeySetView f947d;

    /* JADX INFO: renamed from: e */
    public transient C2264r f948e;

    /* JADX INFO: renamed from: f */
    public transient C2251e f949f;
    private volatile transient int sizeCtl;
    private volatile transient int transferIndex;

    /* JADX INFO: renamed from: i */
    public static final int m828i(int i) {
        return (i ^ (i >>> 16)) & Integer.MAX_VALUE;
    }

    static {
        Class cls = Integer.TYPE;
        serialPersistentFields = new ObjectStreamField[]{new ObjectStreamField("segments", C2259m[].class), new ObjectStreamField("segmentMask", cls), new ObjectStreamField("segmentShift", cls)};
        C2106a c2106a = C2106a.f628b;
        f936h = c2106a;
        f937i = c2106a.m571h(ConcurrentHashMap.class, "sizeCtl");
        f938j = c2106a.m571h(ConcurrentHashMap.class, "transferIndex");
        f939k = c2106a.m571h(ConcurrentHashMap.class, "baseCount");
        f940l = c2106a.m571h(ConcurrentHashMap.class, "cellsBusy");
        f941m = c2106a.m571h(C2249c.class, "value");
        f942n = c2106a.m565a(C2257k[].class);
        int iM566b = c2106a.m566b(C2257k[].class);
        if (((iM566b - 1) & iM566b) != 0) {
            throw new ExceptionInInitializerError("array index scale not a power of two");
        }
        f943o = 31 - Integer.numberOfLeadingZeros(iM566b);
    }

    /* JADX INFO: renamed from: l */
    public static final int m830l(int i) {
        int iNumberOfLeadingZeros = (-1) >>> Integer.numberOfLeadingZeros(i - 1);
        if (iNumberOfLeadingZeros < 0) {
            return 1;
        }
        return iNumberOfLeadingZeros >= 1073741824 ? TLObject.FLAG_30 : iNumberOfLeadingZeros + 1;
    }

    /* JADX INFO: renamed from: c */
    public static Class m826c(Object obj) {
        Type[] actualTypeArguments;
        if (!(obj instanceof Comparable)) {
            return null;
        }
        Class<?> cls = obj.getClass();
        if (cls != String.class) {
            Type[] genericInterfaces = cls.getGenericInterfaces();
            if (genericInterfaces == null) {
                return null;
            }
            for (Type type : genericInterfaces) {
                if (type instanceof ParameterizedType) {
                    ParameterizedType parameterizedType = (ParameterizedType) type;
                    if (parameterizedType.getRawType() != Comparable.class || (actualTypeArguments = parameterizedType.getActualTypeArguments()) == null || actualTypeArguments.length != 1 || actualTypeArguments[0] != cls) {
                    }
                }
            }
            return null;
        }
        return cls;
    }

    /* JADX INFO: renamed from: k */
    public static final C2257k m829k(C2257k[] c2257kArr, int i) {
        return (C2257k) f936h.m570f(c2257kArr, (((long) i) << f943o) + ((long) f942n));
    }

    /* JADX INFO: renamed from: b */
    public static final boolean m825b(C2257k[] c2257kArr, int i, C2257k c2257k) {
        C2106a c2106a = f936h;
        return AbstractC2104a.m532R(c2106a.f629a, c2257kArr, (((long) i) << f943o) + ((long) f942n), c2257k);
    }

    /* JADX INFO: renamed from: h */
    public static final void m827h(C2257k[] c2257kArr, int i, C2257k c2257k) {
        f936h.m573j(c2257kArr, (((long) i) << f943o) + ((long) f942n), c2257k);
    }

    public ConcurrentHashMap() {
    }

    public ConcurrentHashMap(int i) {
        this(i, 0.75f, 1);
    }

    public ConcurrentHashMap(Map<? extends K, ? extends V> map) {
        this.sizeCtl = 16;
        putAll(map);
    }

    public ConcurrentHashMap(int i, float f) {
        this(i, f, 1);
    }

    public ConcurrentHashMap(int i, float f, int i2) {
        if (f <= 0.0f || i < 0 || i2 <= 0) {
            throw new IllegalArgumentException();
        }
        long j = (long) (((double) ((i < i2 ? i2 : i) / f)) + 1.0d);
        this.sizeCtl = j >= 1073741824 ? TLObject.FLAG_30 : m830l((int) j);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        long jM837j = m837j();
        if (jM837j < 0) {
            return 0;
        }
        if (jM837j > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) jM837j;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        return m837j() <= 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        int length;
        C2257k c2257kM829k;
        Object obj2;
        int iM828i = m828i(obj.hashCode());
        C2257k[] c2257kArr = this.f944a;
        if (c2257kArr == null || (length = c2257kArr.length) <= 0 || (c2257kM829k = m829k(c2257kArr, (length - 1) & iM828i)) == null) {
            return null;
        }
        int i = c2257kM829k.f970a;
        if (i == iM828i) {
            Object obj3 = c2257kM829k.f971b;
            if (obj3 == obj || (obj3 != null && obj.equals(obj3))) {
                return (V) c2257kM829k.f972c;
            }
        } else if (i < 0) {
            C2257k c2257kMo848a = c2257kM829k.mo848a(iM828i, obj);
            if (c2257kMo848a != null) {
                return (V) c2257kMo848a.f972c;
            }
            return null;
        }
        while (true) {
            c2257kM829k = c2257kM829k.f973d;
            if (c2257kM829k == null) {
                return null;
            }
            if (c2257kM829k.f970a == iM828i && ((obj2 = c2257kM829k.f971b) == obj || (obj2 != null && obj.equals(obj2)))) {
                break;
            }
        }
        return (V) c2257kM829k.f972c;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(Object obj) {
        obj.getClass();
        C2257k[] c2257kArr = this.f944a;
        if (c2257kArr != null) {
            C2261o c2261o = new C2261o(c2257kArr, c2257kArr.length, 0, c2257kArr.length);
            while (true) {
                C2257k c2257kM849a = c2261o.m849a();
                if (c2257kM849a == null) {
                    break;
                }
                Object obj2 = c2257kM849a.f972c;
                if (obj2 == obj) {
                    return true;
                }
                if (obj2 != null && obj.equals(obj2)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k, V v) {
        return (V) m835f(k, v, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x006a, code lost:
    
        r7 = r6.f972c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x006c, code lost:
    
        if (r11 != false) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x006e, code lost:
    
        r6.f972c = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00a5, code lost:
    
        throw new java.lang.IllegalStateException("Recursive update");
     */
    /* JADX INFO: renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m835f(Object obj, Object obj2, boolean z) {
        Object obj3;
        Object obj4;
        Object obj5;
        Object obj6;
        if (obj == null || obj2 == null) {
            throw null;
        }
        int iM828i = m828i(obj.hashCode());
        C2257k[] c2257kArrM834e = this.f944a;
        int i = 0;
        while (true) {
            if (c2257kArrM834e != null) {
                int length = c2257kArrM834e.length;
                if (length != 0) {
                    int i2 = (length - 1) & iM828i;
                    C2257k c2257kM829k = m829k(c2257kArrM834e, i2);
                    if (c2257kM829k == null) {
                        if (m825b(c2257kArrM834e, i2, new C2257k(iM828i, obj, obj2))) {
                            break;
                        }
                    } else {
                        int i3 = c2257kM829k.f970a;
                        if (i3 == -1) {
                            c2257kArrM834e = m833d(c2257kArrM834e, c2257kM829k);
                        } else {
                            if (z && i3 == iM828i && (((obj5 = c2257kM829k.f971b) == obj || (obj5 != null && obj.equals(obj5))) && (obj6 = c2257kM829k.f972c) != null)) {
                                return obj6;
                            }
                            synchronized (c2257kM829k) {
                                try {
                                    if (m829k(c2257kArrM834e, i2) == c2257kM829k) {
                                        if (i3 < 0) {
                                            if (c2257kM829k instanceof C2262p) {
                                                C2263q c2263qM856e = ((C2262p) c2257kM829k).m856e(iM828i, obj, obj2);
                                                if (c2263qM856e != null) {
                                                    Object obj7 = c2263qM856e.f972c;
                                                    if (!z) {
                                                        c2263qM856e.f972c = obj2;
                                                    }
                                                    obj3 = obj7;
                                                } else {
                                                    obj3 = null;
                                                }
                                                i = 2;
                                            } else if (c2257kM829k instanceof C2258l) {
                                                break;
                                            }
                                        } else {
                                            i = 1;
                                            C2257k c2257k = c2257kM829k;
                                            while (true) {
                                                if (c2257k.f970a == iM828i && ((obj4 = c2257k.f971b) == obj || (obj4 != null && obj.equals(obj4)))) {
                                                    break;
                                                }
                                                C2257k c2257k2 = c2257k.f973d;
                                                if (c2257k2 == null) {
                                                    c2257k.f973d = new C2257k(iM828i, obj, obj2);
                                                    break;
                                                }
                                                i++;
                                                c2257k = c2257k2;
                                            }
                                        }
                                    }
                                    obj3 = null;
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                            if (i != 0) {
                                if (i >= 8) {
                                    m839n(c2257kArrM834e, i2);
                                }
                                if (obj3 != null) {
                                    return obj3;
                                }
                            }
                        }
                    }
                }
            }
            c2257kArrM834e = m834e();
        }
        m832a(1L, i);
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        m840o(map.size());
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            m835f(entry.getKey(), entry.getValue(), false);
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        return (V) m836g(obj, null, null);
    }

    /* JADX INFO: renamed from: g */
    public final Object m836g(Object obj, Object obj2, Object obj3) {
        int length;
        int i;
        C2257k c2257kM829k;
        boolean z;
        Object obj4;
        C2263q c2263qM858b;
        Object obj5;
        int iM828i = m828i(obj.hashCode());
        C2257k[] c2257kArrM833d = this.f944a;
        while (true) {
            if (c2257kArrM833d == null || (length = c2257kArrM833d.length) == 0 || (c2257kM829k = m829k(c2257kArrM833d, (i = (length - 1) & iM828i))) == null) {
                break;
            }
            int i2 = c2257kM829k.f970a;
            if (i2 == -1) {
                c2257kArrM833d = m833d(c2257kArrM833d, c2257kM829k);
            } else {
                synchronized (c2257kM829k) {
                    try {
                        if (m829k(c2257kArrM833d, i) == c2257kM829k) {
                            z = true;
                            if (i2 >= 0) {
                                C2257k c2257k = null;
                                C2257k c2257k2 = c2257kM829k;
                                while (true) {
                                    if (c2257k2.f970a != iM828i || ((obj5 = c2257k2.f971b) != obj && (obj5 == null || !obj.equals(obj5)))) {
                                        C2257k c2257k3 = c2257k2.f973d;
                                        if (c2257k3 == null) {
                                            break;
                                        }
                                        c2257k = c2257k2;
                                        c2257k2 = c2257k3;
                                    }
                                }
                                obj4 = c2257k2.f972c;
                                if (obj3 != null && obj3 != obj4 && (obj4 == null || !obj3.equals(obj4))) {
                                    obj4 = null;
                                } else if (obj2 != null) {
                                    c2257k2.f972c = obj2;
                                } else if (c2257k != null) {
                                    c2257k.f973d = c2257k2.f973d;
                                } else {
                                    m827h(c2257kArrM833d, i, c2257k2.f973d);
                                }
                            } else if (c2257kM829k instanceof C2262p) {
                                C2262p c2262p = (C2262p) c2257kM829k;
                                C2263q c2263q = c2262p.f988e;
                                if (c2263q != null && (c2263qM858b = c2263q.m858b(iM828i, obj, null)) != null) {
                                    obj4 = c2263qM858b.f972c;
                                    if (obj3 == null || obj3 == obj4 || (obj4 != null && obj3.equals(obj4))) {
                                        if (obj2 != null) {
                                            c2263qM858b.f972c = obj2;
                                        } else if (c2262p.m857f(c2263qM858b)) {
                                            m827h(c2257kArrM833d, i, m831p(c2262p.f989f));
                                        }
                                    }
                                }
                                obj4 = null;
                            } else if (c2257kM829k instanceof C2258l) {
                                throw new IllegalStateException("Recursive update");
                            }
                        }
                        z = false;
                        obj4 = null;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (z) {
                    if (obj4 != null) {
                        if (obj2 == null) {
                            m832a(-1L, -1);
                        }
                        return obj4;
                    }
                }
            }
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        C2257k c2257kM829k;
        C2257k c2257k;
        C2257k[] c2257kArrM833d = this.f944a;
        long j = 0;
        loop0: while (true) {
            int i = 0;
            while (c2257kArrM833d != null && i < c2257kArrM833d.length) {
                c2257kM829k = m829k(c2257kArrM833d, i);
                if (c2257kM829k == null) {
                    i++;
                } else {
                    int i2 = c2257kM829k.f970a;
                    if (i2 == -1) {
                        break;
                    }
                    synchronized (c2257kM829k) {
                        try {
                            if (m829k(c2257kArrM833d, i) == c2257kM829k) {
                                if (i2 >= 0) {
                                    c2257k = c2257kM829k;
                                } else {
                                    c2257k = c2257kM829k instanceof C2262p ? ((C2262p) c2257kM829k).f989f : null;
                                }
                                while (c2257k != null) {
                                    j--;
                                    c2257k = c2257k.f973d;
                                }
                                m827h(c2257kArrM833d, i, null);
                                i++;
                            }
                        } finally {
                        }
                    }
                }
            }
            c2257kArrM833d = m833d(c2257kArrM833d, c2257kM829k);
        }
        if (j != 0) {
            m832a(j, -1);
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        KeySetView keySetView = this.f947d;
        if (keySetView != null) {
            return keySetView;
        }
        KeySetView keySetView2 = new KeySetView(this, null);
        this.f947d = keySetView2;
        return keySetView2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<V> values() {
        C2264r c2264r = this.f948e;
        if (c2264r != null) {
            return c2264r;
        }
        C2264r c2264r2 = new C2264r(this);
        this.f948e = c2264r2;
        return c2264r2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        C2251e c2251e = this.f949f;
        if (c2251e != null) {
            return c2251e;
        }
        C2251e c2251e2 = new C2251e(this);
        this.f949f = c2251e2;
        return c2251e2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        C2257k[] c2257kArr = this.f944a;
        int iHashCode = 0;
        if (c2257kArr != null) {
            C2261o c2261o = new C2261o(c2257kArr, c2257kArr.length, 0, c2257kArr.length);
            while (true) {
                C2257k c2257kM849a = c2261o.m849a();
                if (c2257kM849a == null) {
                    break;
                }
                iHashCode += c2257kM849a.f972c.hashCode() ^ c2257kM849a.f971b.hashCode();
            }
        }
        return iHashCode;
    }

    @Override // java.util.AbstractMap
    public final String toString() {
        C2257k[] c2257kArr = this.f944a;
        int length = c2257kArr == null ? 0 : c2257kArr.length;
        C2261o c2261o = new C2261o(c2257kArr, length, 0, length);
        StringBuilder sb = new StringBuilder("{");
        C2257k c2257kM849a = c2261o.m849a();
        if (c2257kM849a != null) {
            while (true) {
                Object obj = c2257kM849a.f971b;
                Object obj2 = c2257kM849a.f972c;
                if (obj == this) {
                    obj = "(this Map)";
                }
                sb.append(obj);
                sb.append(SignatureVisitor.INSTANCEOF);
                if (obj2 == this) {
                    obj2 = "(this Map)";
                }
                sb.append(obj2);
                c2257kM849a = c2261o.m849a();
                if (c2257kM849a == null) {
                    break;
                }
                sb.append(", ");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        V value;
        V v;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        C2257k[] c2257kArr = this.f944a;
        int length = c2257kArr == null ? 0 : c2257kArr.length;
        C2261o c2261o = new C2261o(c2257kArr, length, 0, length);
        while (true) {
            C2257k c2257kM849a = c2261o.m849a();
            if (c2257kM849a != null) {
                Object obj2 = c2257kM849a.f972c;
                Object obj3 = map.get(c2257kM849a.f971b);
                if (obj3 == null || (obj3 != obj2 && !obj3.equals(obj2))) {
                    break;
                }
            } else {
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    K key = entry.getKey();
                    if (key == null || (value = entry.getValue()) == null || (v = get(key)) == null || (value != v && !value.equals(v))) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        int i = 0;
        int i2 = 1;
        while (i2 < 16) {
            i++;
            i2 <<= 1;
        }
        int i3 = 32 - i;
        int i4 = i2 - 1;
        C2259m[] c2259mArr = new C2259m[16];
        for (int i5 = 0; i5 < 16; i5++) {
            c2259mArr[i5] = new C2259m();
        }
        ObjectOutputStream.PutField putFieldPutFields = objectOutputStream.putFields();
        putFieldPutFields.put("segments", c2259mArr);
        putFieldPutFields.put("segmentShift", i3);
        putFieldPutFields.put("segmentMask", i4);
        objectOutputStream.writeFields();
        C2257k[] c2257kArr = this.f944a;
        if (c2257kArr != null) {
            C2261o c2261o = new C2261o(c2257kArr, c2257kArr.length, 0, c2257kArr.length);
            while (true) {
                C2257k c2257kM849a = c2261o.m849a();
                if (c2257kM849a == null) {
                    break;
                }
                objectOutputStream.writeObject(c2257kM849a.f971b);
                objectOutputStream.writeObject(c2257kM849a.f972c);
            }
        }
        objectOutputStream.writeObject(null);
        objectOutputStream.writeObject(null);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        long j;
        long j2;
        Object obj;
        this.sizeCtl = -1;
        objectInputStream.defaultReadObject();
        long j3 = 0;
        long j4 = 0;
        C2257k c2257k = null;
        while (true) {
            Object object = objectInputStream.readObject();
            Object object2 = objectInputStream.readObject();
            j = 1;
            if (object == null || object2 == null) {
                break;
            }
            j4++;
            c2257k = new C2257k(m828i(object.hashCode()), object, object2, c2257k);
        }
        if (j4 == 0) {
            this.sizeCtl = 0;
            return;
        }
        long j5 = (long) (((double) (j4 / 0.75f)) + 1.0d);
        int iM830l = j5 >= 1073741824 ? TLObject.FLAG_30 : m830l((int) j5);
        C2257k[] c2257kArr = new C2257k[iM830l];
        int i = iM830l - 1;
        while (c2257k != null) {
            C2257k c2257k2 = c2257k.f973d;
            int i2 = c2257k.f970a;
            int i3 = i2 & i;
            C2257k c2257kM829k = m829k(c2257kArr, i3);
            boolean z = true;
            if (c2257kM829k == null) {
                j2 = j;
            } else {
                Object obj2 = c2257k.f971b;
                if (c2257kM829k.f970a < 0) {
                    if (((C2262p) c2257kM829k).m856e(i2, obj2, c2257k.f972c) == null) {
                        j3 += j;
                    }
                    j2 = j;
                } else {
                    j2 = j;
                    int i4 = 0;
                    for (C2257k c2257k3 = c2257kM829k; c2257k3 != null; c2257k3 = c2257k3.f973d) {
                        if (c2257k3.f970a == i2 && ((obj = c2257k3.f971b) == obj2 || (obj != null && obj2.equals(obj)))) {
                            z = false;
                            break;
                        }
                        i4++;
                    }
                    if (z && i4 >= 8) {
                        j3 += j2;
                        c2257k.f973d = c2257kM829k;
                        C2257k c2257k4 = c2257k;
                        C2263q c2263q = null;
                        C2263q c2263q2 = null;
                        while (c2257k4 != null) {
                            C2263q c2263q3 = new C2263q(c2257k4.f970a, c2257k4.f971b, c2257k4.f972c, null, null);
                            c2263q3.f994h = c2263q2;
                            if (c2263q2 == null) {
                                c2263q = c2263q3;
                            } else {
                                c2263q2.f973d = c2263q3;
                            }
                            c2257k4 = c2257k4.f973d;
                            c2263q2 = c2263q3;
                        }
                        m827h(c2257kArr, i3, new C2262p(c2263q));
                    }
                }
                z = false;
            }
            if (z) {
                j3 += j2;
                c2257k.f973d = c2257kM829k;
                m827h(c2257kArr, i3, c2257k);
            }
            c2257k = c2257k2;
            j = j2;
        }
        this.f944a = c2257kArr;
        this.sizeCtl = iM830l - (iM830l >>> 2);
        this.baseCount = j3;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, p022j$.util.Map
    public V putIfAbsent(K k, V v) {
        return (V) m835f(k, v, true);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, p022j$.util.Map
    public boolean remove(Object obj, Object obj2) {
        obj.getClass();
        return (obj2 == null || m836g(obj, null, obj2) == null) ? false : true;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, p022j$.util.Map
    public final boolean replace(Object obj, Object obj2, Object obj3) {
        if (obj == null || obj2 == null || obj3 == null) {
            throw null;
        }
        return m836g(obj, obj3, obj2) != null;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, p022j$.util.Map
    public final Object replace(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            throw null;
        }
        return m836g(obj, obj2, null);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, p022j$.util.Map
    public final Object getOrDefault(Object obj, Object obj2) {
        V v = get(obj);
        return v == null ? obj2 : v;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, p022j$.util.Map
    public final void forEach(BiConsumer biConsumer) {
        biConsumer.getClass();
        C2257k[] c2257kArr = this.f944a;
        if (c2257kArr == null) {
            return;
        }
        C2261o c2261o = new C2261o(c2257kArr, c2257kArr.length, 0, c2257kArr.length);
        while (true) {
            C2257k c2257kM849a = c2261o.m849a();
            if (c2257kM849a == null) {
                return;
            } else {
                biConsumer.accept(c2257kM849a.f971b, c2257kM849a.f972c);
            }
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, p022j$.util.Map
    public final void replaceAll(BiFunction biFunction) {
        biFunction.getClass();
        C2257k[] c2257kArr = this.f944a;
        if (c2257kArr == null) {
            return;
        }
        C2261o c2261o = new C2261o(c2257kArr, c2257kArr.length, 0, c2257kArr.length);
        while (true) {
            C2257k c2257kM849a = c2261o.m849a();
            if (c2257kM849a == null) {
                return;
            }
            Object obj = c2257kM849a.f972c;
            Object obj2 = c2257kM849a.f971b;
            do {
                Object objApply = biFunction.apply(obj2, obj);
                objApply.getClass();
                if (m836g(obj2, objApply, obj) == null) {
                    obj = get(obj2);
                }
            } while (obj != null);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x008c, code lost:
    
        r5 = r5.f972c;
     */
    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, p022j$.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object computeIfAbsent(Object obj, Function function) {
        C2263q c2263qM858b;
        Object obj2;
        Object obj3;
        Object obj4;
        if (obj == null || function == null) {
            throw null;
        }
        int iM828i = m828i(obj.hashCode());
        C2257k[] c2257kArrM834e = this.f944a;
        Object objApply = null;
        int i = 0;
        while (true) {
            if (c2257kArrM834e != null) {
                int length = c2257kArrM834e.length;
                if (length != 0) {
                    int i2 = (length - 1) & iM828i;
                    C2257k c2257kM829k = m829k(c2257kArrM834e, i2);
                    boolean z = true;
                    if (c2257kM829k == null) {
                        C2258l c2258l = new C2258l();
                        synchronized (c2258l) {
                            try {
                                if (m825b(c2257kArrM834e, i2, c2258l)) {
                                    try {
                                        objApply = function.apply(obj);
                                        m827h(c2257kArrM834e, i2, objApply != null ? new C2257k(iM828i, obj, objApply) : null);
                                        i = 1;
                                    } catch (Throwable th) {
                                        m827h(c2257kArrM834e, i2, null);
                                        throw th;
                                    }
                                }
                            } finally {
                            }
                        }
                        if (i != 0) {
                        }
                    } else {
                        int i3 = c2257kM829k.f970a;
                        if (i3 == -1) {
                            c2257kArrM834e = m833d(c2257kArrM834e, c2257kM829k);
                        } else {
                            if (i3 == iM828i && (((obj3 = c2257kM829k.f971b) == obj || (obj3 != null && obj.equals(obj3))) && (obj4 = c2257kM829k.f972c) != null)) {
                                return obj4;
                            }
                            synchronized (c2257kM829k) {
                                try {
                                    if (m829k(c2257kArrM834e, i2) == c2257kM829k) {
                                        if (i3 >= 0) {
                                            C2257k c2257k = c2257kM829k;
                                            i = 1;
                                            while (true) {
                                                if (c2257k.f970a == iM828i && ((obj2 = c2257k.f971b) == obj || (obj2 != null && obj.equals(obj2)))) {
                                                    break;
                                                }
                                                C2257k c2257k2 = c2257k.f973d;
                                                if (c2257k2 == null) {
                                                    Object objApply2 = function.apply(obj);
                                                    if (objApply2 == null) {
                                                        z = false;
                                                    } else {
                                                        if (c2257k.f973d != null) {
                                                            throw new IllegalStateException("Recursive update");
                                                        }
                                                        c2257k.f973d = new C2257k(iM828i, obj, objApply2);
                                                    }
                                                    objApply = objApply2;
                                                } else {
                                                    i++;
                                                    c2257k = c2257k2;
                                                }
                                            }
                                        } else if (c2257kM829k instanceof C2262p) {
                                            C2262p c2262p = (C2262p) c2257kM829k;
                                            C2263q c2263q = c2262p.f988e;
                                            if (c2263q != null && (c2263qM858b = c2263q.m858b(iM828i, obj, null)) != null) {
                                                z = false;
                                                objApply = c2263qM858b.f972c;
                                            } else {
                                                objApply = function.apply(obj);
                                                if (objApply != null) {
                                                    c2262p.m856e(iM828i, obj, objApply);
                                                } else {
                                                    z = false;
                                                }
                                            }
                                            i = 2;
                                        } else if (c2257kM829k instanceof C2258l) {
                                            throw new IllegalStateException("Recursive update");
                                        }
                                    }
                                    z = false;
                                } finally {
                                }
                            }
                            if (i != 0) {
                                if (i >= 8) {
                                    m839n(c2257kArrM834e, i2);
                                }
                                if (!z) {
                                    return objApply;
                                }
                            }
                        }
                    }
                }
            }
            c2257kArrM834e = m834e();
        }
        if (objApply != null) {
            m832a(1L, i);
        }
        return objApply;
    }

    /* JADX WARN: Code restructure failed: missing block: B:61:0x00aa, code lost:
    
        throw new java.lang.IllegalStateException("Recursive update");
     */
    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, p022j$.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object computeIfPresent(Object obj, BiFunction biFunction) {
        C2263q c2263qM858b;
        Object obj2;
        if (obj == null || biFunction == null) {
            throw null;
        }
        int iM828i = m828i(obj.hashCode());
        C2257k[] c2257kArrM834e = this.f944a;
        int i = 0;
        Object objApply = null;
        int i2 = 0;
        while (true) {
            if (c2257kArrM834e != null) {
                int length = c2257kArrM834e.length;
                if (length != 0) {
                    int i3 = (length - 1) & iM828i;
                    C2257k c2257kM829k = m829k(c2257kArrM834e, i3);
                    if (c2257kM829k == null) {
                        break;
                    }
                    int i4 = c2257kM829k.f970a;
                    if (i4 == -1) {
                        c2257kArrM834e = m833d(c2257kArrM834e, c2257kM829k);
                    } else {
                        synchronized (c2257kM829k) {
                            try {
                                if (m829k(c2257kArrM834e, i3) == c2257kM829k) {
                                    if (i4 >= 0) {
                                        i2 = 1;
                                        C2257k c2257k = null;
                                        C2257k c2257k2 = c2257kM829k;
                                        while (true) {
                                            if (c2257k2.f970a != iM828i || ((obj2 = c2257k2.f971b) != obj && (obj2 == null || !obj.equals(obj2)))) {
                                                C2257k c2257k3 = c2257k2.f973d;
                                                if (c2257k3 == null) {
                                                    break;
                                                }
                                                i2++;
                                                c2257k = c2257k2;
                                                c2257k2 = c2257k3;
                                            }
                                        }
                                        objApply = biFunction.apply(obj, c2257k2.f972c);
                                        if (objApply != null) {
                                            c2257k2.f972c = objApply;
                                        } else {
                                            C2257k c2257k4 = c2257k2.f973d;
                                            if (c2257k != null) {
                                                c2257k.f973d = c2257k4;
                                            } else {
                                                m827h(c2257kArrM834e, i3, c2257k4);
                                            }
                                            i = -1;
                                        }
                                    } else if (c2257kM829k instanceof C2262p) {
                                        C2262p c2262p = (C2262p) c2257kM829k;
                                        C2263q c2263q = c2262p.f988e;
                                        if (c2263q != null && (c2263qM858b = c2263q.m858b(iM828i, obj, null)) != null) {
                                            objApply = biFunction.apply(obj, c2263qM858b.f972c);
                                            if (objApply != null) {
                                                c2263qM858b.f972c = objApply;
                                            } else {
                                                if (c2262p.m857f(c2263qM858b)) {
                                                    m827h(c2257kArrM834e, i3, m831p(c2262p.f989f));
                                                }
                                                i = -1;
                                            }
                                        }
                                        i2 = 2;
                                    } else if (c2257kM829k instanceof C2258l) {
                                        break;
                                    }
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        if (i2 != 0) {
                            break;
                        }
                    }
                }
            }
            c2257kArrM834e = m834e();
        }
        if (i != 0) {
            m832a(i, i2);
        }
        return objApply;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, p022j$.util.Map
    public final Object compute(Object obj, BiFunction biFunction) {
        C2257k c2257k;
        Object objApply;
        Object obj2;
        if (obj == null || biFunction == null) {
            throw null;
        }
        int iM828i = m828i(obj.hashCode());
        C2257k[] c2257kArrM834e = this.f944a;
        int i = 0;
        Object objApply2 = null;
        int i2 = 0;
        while (true) {
            if (c2257kArrM834e != null) {
                int length = c2257kArrM834e.length;
                if (length != 0) {
                    int i3 = (length - 1) & iM828i;
                    C2257k c2257kM829k = m829k(c2257kArrM834e, i3);
                    if (c2257kM829k == null) {
                        C2258l c2258l = new C2258l();
                        synchronized (c2258l) {
                            try {
                                if (m825b(c2257kArrM834e, i3, c2258l)) {
                                    try {
                                        objApply2 = biFunction.apply(obj, null);
                                        if (objApply2 != null) {
                                            c2257k = new C2257k(iM828i, obj, objApply2);
                                            i2 = 1;
                                        } else {
                                            c2257k = null;
                                        }
                                        m827h(c2257kArrM834e, i3, c2257k);
                                        i = 1;
                                    } catch (Throwable th) {
                                        m827h(c2257kArrM834e, i3, null);
                                        throw th;
                                    }
                                }
                            } finally {
                            }
                        }
                        if (i != 0) {
                        }
                    } else {
                        int i4 = c2257kM829k.f970a;
                        if (i4 == -1) {
                            c2257kArrM834e = m833d(c2257kArrM834e, c2257kM829k);
                        } else {
                            synchronized (c2257kM829k) {
                                try {
                                    if (m829k(c2257kArrM834e, i3) == c2257kM829k) {
                                        if (i4 >= 0) {
                                            C2257k c2257k2 = null;
                                            C2257k c2257k3 = c2257kM829k;
                                            i = 1;
                                            while (true) {
                                                if (c2257k3.f970a == iM828i && ((obj2 = c2257k3.f971b) == obj || (obj2 != null && obj.equals(obj2)))) {
                                                    break;
                                                }
                                                C2257k c2257k4 = c2257k3.f973d;
                                                if (c2257k4 == null) {
                                                    objApply = biFunction.apply(obj, null);
                                                    if (objApply != null) {
                                                        if (c2257k3.f973d != null) {
                                                            throw new IllegalStateException("Recursive update");
                                                        }
                                                        c2257k3.f973d = new C2257k(iM828i, obj, objApply);
                                                        i2 = 1;
                                                    }
                                                } else {
                                                    i++;
                                                    c2257k2 = c2257k3;
                                                    c2257k3 = c2257k4;
                                                }
                                            }
                                            Object objApply3 = biFunction.apply(obj, c2257k3.f972c);
                                            if (objApply3 != null) {
                                                c2257k3.f972c = objApply3;
                                                objApply2 = objApply3;
                                            } else {
                                                C2257k c2257k5 = c2257k3.f973d;
                                                if (c2257k2 != null) {
                                                    c2257k2.f973d = c2257k5;
                                                } else {
                                                    m827h(c2257kArrM834e, i3, c2257k5);
                                                }
                                                objApply2 = objApply3;
                                                i2 = -1;
                                            }
                                        } else if (c2257kM829k instanceof C2262p) {
                                            C2262p c2262p = (C2262p) c2257kM829k;
                                            C2263q c2263q = c2262p.f988e;
                                            C2263q c2263qM858b = c2263q != null ? c2263q.m858b(iM828i, obj, null) : null;
                                            objApply = biFunction.apply(obj, c2263qM858b == null ? null : c2263qM858b.f972c);
                                            if (objApply != null) {
                                                if (c2263qM858b != null) {
                                                    c2263qM858b.f972c = objApply;
                                                } else {
                                                    c2262p.m856e(iM828i, obj, objApply);
                                                    i2 = 1;
                                                }
                                            } else if (c2263qM858b != null) {
                                                if (c2262p.m857f(c2263qM858b)) {
                                                    m827h(c2257kArrM834e, i3, m831p(c2262p.f989f));
                                                }
                                                i2 = -1;
                                            }
                                            i = 1;
                                            objApply2 = objApply;
                                        } else if (c2257kM829k instanceof C2258l) {
                                            throw new IllegalStateException("Recursive update");
                                        }
                                    }
                                } finally {
                                }
                            }
                            if (i != 0) {
                                if (i >= 8) {
                                    m839n(c2257kArrM834e, i3);
                                }
                            }
                        }
                    }
                }
            }
            c2257kArrM834e = m834e();
        }
        if (i2 != 0) {
            m832a(i2, i);
        }
        return objApply2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:69:0x00dd, code lost:
    
        throw new java.lang.IllegalStateException("Recursive update");
     */
    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, p022j$.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object merge(Object obj, Object obj2, BiFunction biFunction) {
        int i;
        Object obj3;
        Object obj4 = obj2;
        if (obj == null || obj4 == null || biFunction == null) {
            throw null;
        }
        int iM828i = m828i(obj.hashCode());
        C2257k[] c2257kArrM834e = this.f944a;
        int i2 = 0;
        Object obj5 = null;
        int i3 = 0;
        while (true) {
            if (c2257kArrM834e != null) {
                int length = c2257kArrM834e.length;
                if (length != 0) {
                    int i4 = (length - 1) & iM828i;
                    C2257k c2257kM829k = m829k(c2257kArrM834e, i4);
                    i = 1;
                    if (c2257kM829k == null) {
                        if (m825b(c2257kArrM834e, i4, new C2257k(iM828i, obj, obj4))) {
                            break;
                        }
                    } else {
                        int i5 = c2257kM829k.f970a;
                        if (i5 == -1) {
                            c2257kArrM834e = m833d(c2257kArrM834e, c2257kM829k);
                        } else {
                            synchronized (c2257kM829k) {
                                try {
                                    if (m829k(c2257kArrM834e, i4) == c2257kM829k) {
                                        if (i5 >= 0) {
                                            C2257k c2257k = null;
                                            C2257k c2257k2 = c2257kM829k;
                                            i2 = 1;
                                            while (true) {
                                                if (c2257k2.f970a != iM828i || ((obj3 = c2257k2.f971b) != obj && (obj3 == null || !obj.equals(obj3)))) {
                                                    C2257k c2257k3 = c2257k2.f973d;
                                                    if (c2257k3 == null) {
                                                        c2257k2.f973d = new C2257k(iM828i, obj, obj4);
                                                        obj5 = obj4;
                                                        i3 = 1;
                                                        break;
                                                    }
                                                    i2++;
                                                    c2257k = c2257k2;
                                                    c2257k2 = c2257k3;
                                                }
                                            }
                                            Object objApply = biFunction.apply(c2257k2.f972c, obj4);
                                            if (objApply != null) {
                                                c2257k2.f972c = objApply;
                                                obj5 = objApply;
                                            } else {
                                                C2257k c2257k4 = c2257k2.f973d;
                                                if (c2257k != null) {
                                                    c2257k.f973d = c2257k4;
                                                } else {
                                                    m827h(c2257kArrM834e, i4, c2257k4);
                                                }
                                                obj5 = objApply;
                                                i3 = -1;
                                            }
                                        } else if (c2257kM829k instanceof C2262p) {
                                            C2262p c2262p = (C2262p) c2257kM829k;
                                            C2263q c2263q = c2262p.f988e;
                                            C2263q c2263qM858b = c2263q == null ? null : c2263q.m858b(iM828i, obj, null);
                                            Object objApply2 = c2263qM858b == null ? obj4 : biFunction.apply(c2263qM858b.f972c, obj4);
                                            if (objApply2 != null) {
                                                if (c2263qM858b != null) {
                                                    c2263qM858b.f972c = objApply2;
                                                } else {
                                                    c2262p.m856e(iM828i, obj, objApply2);
                                                    i3 = 1;
                                                }
                                            } else if (c2263qM858b != null) {
                                                if (c2262p.m857f(c2263qM858b)) {
                                                    m827h(c2257kArrM834e, i4, m831p(c2262p.f989f));
                                                }
                                                i3 = -1;
                                            }
                                            i2 = 2;
                                            obj5 = objApply2;
                                        } else if (c2257kM829k instanceof C2258l) {
                                            break;
                                        }
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                            if (i2 != 0) {
                                if (i2 >= 8) {
                                    m839n(c2257kArrM834e, i4);
                                }
                                i = i3;
                                obj4 = obj5;
                            }
                        }
                    }
                }
            }
            c2257kArrM834e = m834e();
        }
        if (i != 0) {
            m832a(i, i2);
        }
        return obj4;
    }

    public static <K> KeySetView<K, Boolean> newKeySet(int i) {
        return new KeySetView<>(new ConcurrentHashMap(i), Boolean.TRUE);
    }

    /* JADX INFO: renamed from: e */
    public final C2257k[] m834e() {
        while (true) {
            C2257k[] c2257kArr = this.f944a;
            if (c2257kArr != null && c2257kArr.length != 0) {
                return c2257kArr;
            }
            int i = this.sizeCtl;
            if (i < 0) {
                Thread.yield();
            } else if (f936h.m567c(this, f937i, i, -1)) {
                try {
                    C2257k[] c2257kArr2 = this.f944a;
                    if (c2257kArr2 == null || c2257kArr2.length == 0) {
                        int i2 = i > 0 ? i : 16;
                        C2257k[] c2257kArr3 = new C2257k[i2];
                        this.f944a = c2257kArr3;
                        i = i2 - (i2 >>> 2);
                        c2257kArr2 = c2257kArr3;
                    }
                    this.sizeCtl = i;
                    return c2257kArr2;
                } catch (Throwable th) {
                    this.sizeCtl = i;
                    throw th;
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:97:0x0140, code lost:
    
        if (r1.f946c != r6) goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0142, code lost:
    
        r1.f946c = (p022j$.util.concurrent.C2249c[]) java.util.Arrays.copyOf(r6, r7 << 1);
     */
    /* JADX WARN: Removed duplicated region for block: B:146:0x01ab A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:159:0x00c2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0019  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00fd  */
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m832a(long j, int i) {
        boolean zM568d;
        boolean z;
        int length;
        boolean z2;
        int length2;
        int length3;
        C2249c c2249c;
        long jM837j;
        C2257k[] c2257kArr;
        int length4;
        C2257k[] c2257kArr2;
        ConcurrentHashMap<K, V> concurrentHashMap = this;
        C2249c[] c2249cArr = concurrentHashMap.f946c;
        if (c2249cArr == null) {
            C2106a c2106a = f936h;
            long j2 = f939k;
            long j3 = concurrentHashMap.baseCount;
            jM837j = j3 + j;
            if (!c2106a.m568d(concurrentHashMap, j2, j3, jM837j)) {
                if (c2249cArr == null || (length3 = c2249cArr.length - 1) < 0 || (c2249c = c2249cArr[length3 & ((ThreadLocalRandom) ThreadLocalRandom.f953f.get()).f956b]) == null) {
                    zM568d = true;
                } else {
                    C2106a c2106a2 = f936h;
                    long j4 = f941m;
                    long j5 = c2249c.value;
                    zM568d = c2106a2.m568d(c2249c, j4, j5, j5 + j);
                    if (zM568d) {
                        if (i <= 1) {
                            return;
                        } else {
                            jM837j = concurrentHashMap.m837j();
                        }
                    }
                }
                C2267u c2267u = ThreadLocalRandom.f953f;
                int i2 = ((ThreadLocalRandom) c2267u.get()).f956b;
                if (i2 == 0) {
                    ThreadLocalRandom.m841d();
                    i2 = ((ThreadLocalRandom) c2267u.get()).f956b;
                    zM568d = true;
                }
                boolean z3 = zM568d;
                int i3 = i2;
                while (true) {
                    boolean z4 = false;
                    while (true) {
                        C2249c[] c2249cArr2 = concurrentHashMap.f946c;
                        if (c2249cArr2 != null && (length = c2249cArr2.length) > 0) {
                            C2249c c2249c2 = c2249cArr2[(length - 1) & i3];
                            if (c2249c2 != null) {
                                if (z3) {
                                    C2106a c2106a3 = f936h;
                                    long j6 = f941m;
                                    long j7 = c2249c2.value;
                                    if (c2106a3.m568d(c2249c2, j6, j7, j7 + j)) {
                                        return;
                                    }
                                    if (concurrentHashMap.f946c == c2249cArr2 && length < f935g) {
                                        if (!z4) {
                                            z4 = true;
                                        } else if (concurrentHashMap.cellsBusy == 0 && c2106a3.m567c(concurrentHashMap, f940l, 0, 1)) {
                                            try {
                                                break;
                                            } finally {
                                            }
                                        }
                                    }
                                } else {
                                    z3 = true;
                                }
                                int i4 = (i3 << 13) ^ i3;
                                int i5 = i4 ^ (i4 >>> 17);
                                int i6 = i5 ^ (i5 << 5);
                                ((ThreadLocalRandom) ThreadLocalRandom.f953f.get()).f956b = i6;
                                i3 = i6;
                                concurrentHashMap = this;
                            } else if (concurrentHashMap.cellsBusy == 0) {
                                C2249c c2249c3 = new C2249c(j);
                                if (concurrentHashMap.cellsBusy == 0 && f936h.m567c(concurrentHashMap, f940l, 0, 1)) {
                                    try {
                                        C2249c[] c2249cArr3 = concurrentHashMap.f946c;
                                        if (c2249cArr3 == null || (length2 = c2249cArr3.length) <= 0) {
                                            z2 = false;
                                            if (!z2) {
                                                return;
                                            }
                                        } else {
                                            int i7 = (length2 - 1) & i3;
                                            if (c2249cArr3[i7] == null) {
                                                c2249cArr3[i7] = c2249c3;
                                                z2 = true;
                                            }
                                            if (!z2) {
                                            }
                                        }
                                    } finally {
                                    }
                                }
                            }
                            z4 = false;
                            int i42 = (i3 << 13) ^ i3;
                            int i52 = i42 ^ (i42 >>> 17);
                            int i62 = i52 ^ (i52 << 5);
                            ((ThreadLocalRandom) ThreadLocalRandom.f953f.get()).f956b = i62;
                            i3 = i62;
                            concurrentHashMap = this;
                        } else {
                            if (concurrentHashMap.cellsBusy == 0 && concurrentHashMap.f946c == c2249cArr2 && f936h.m567c(concurrentHashMap, f940l, 0, 1)) {
                                try {
                                    if (concurrentHashMap.f946c == c2249cArr2) {
                                        C2249c[] c2249cArr4 = new C2249c[2];
                                        c2249cArr4[i3 & 1] = new C2249c(j);
                                        concurrentHashMap.f946c = c2249cArr4;
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    if (z) {
                                        return;
                                    }
                                } finally {
                                }
                            } else {
                                C2106a c2106a4 = f936h;
                                long j8 = f939k;
                                long j9 = concurrentHashMap.baseCount;
                                if (c2106a4.m568d(concurrentHashMap, j8, j9, j9 + j)) {
                                    return;
                                }
                            }
                            concurrentHashMap = this;
                        }
                    }
                }
            }
        }
        if (i < 0) {
            return;
        }
        while (true) {
            int i8 = concurrentHashMap.sizeCtl;
            if (jM837j < i8 || (c2257kArr = concurrentHashMap.f944a) == null || (length4 = c2257kArr.length) >= 1073741824) {
                return;
            }
            int iNumberOfLeadingZeros = Integer.numberOfLeadingZeros(length4) | 32768;
            if (i8 < 0) {
                if ((i8 >>> 16) != iNumberOfLeadingZeros || i8 == iNumberOfLeadingZeros + 1 || i8 == iNumberOfLeadingZeros + 65535 || (c2257kArr2 = concurrentHashMap.f945b) == null || concurrentHashMap.transferIndex <= 0) {
                    return;
                }
                if (f936h.m567c(concurrentHashMap, f937i, i8, i8 + 1)) {
                    concurrentHashMap.m838m(c2257kArr, c2257kArr2);
                }
            } else if (f936h.m567c(concurrentHashMap, f937i, i8, (iNumberOfLeadingZeros << 16) + 2)) {
                concurrentHashMap.m838m(c2257kArr, null);
            }
            jM837j = concurrentHashMap.m837j();
        }
    }

    /* JADX INFO: renamed from: d */
    public final C2257k[] m833d(C2257k[] c2257kArr, C2257k c2257k) {
        int i;
        if (c2257k instanceof C2253g) {
            C2257k[] c2257kArr2 = ((C2253g) c2257k).f963e;
            int iNumberOfLeadingZeros = Integer.numberOfLeadingZeros(c2257kArr.length) | 32768;
            while (c2257kArr2 == this.f945b && this.f944a == c2257kArr && (i = this.sizeCtl) < 0 && (i >>> 16) == iNumberOfLeadingZeros && i != iNumberOfLeadingZeros + 1 && i != 65535 + iNumberOfLeadingZeros && this.transferIndex > 0) {
                if (f936h.m567c(this, f937i, i, i + 1)) {
                    m838m(c2257kArr, c2257kArr2);
                    break;
                }
            }
            return c2257kArr2;
        }
        return this.f944a;
    }

    /* JADX INFO: renamed from: o */
    public final void m840o(int i) {
        int length;
        int iM830l = i >= 536870912 ? 1073741824 : m830l(i + (i >>> 1) + 1);
        while (true) {
            int i2 = this.sizeCtl;
            if (i2 < 0) {
                break;
            }
            C2257k[] c2257kArr = this.f944a;
            if (c2257kArr == null || (length = c2257kArr.length) == 0) {
                int i3 = i2 > iM830l ? i2 : iM830l;
                if (f936h.m567c(this, f937i, i2, -1)) {
                    try {
                        if (this.f944a == c2257kArr) {
                            this.f944a = new C2257k[i3];
                            i2 = i3 - (i3 >>> 2);
                        }
                    } finally {
                        this.sizeCtl = i2;
                    }
                } else {
                    continue;
                }
            } else if (iM830l <= i2 || length >= 1073741824) {
                break;
            } else if (c2257kArr == this.f944a) {
                if (f936h.m567c(this, f937i, i2, ((Integer.numberOfLeadingZeros(length) | 32768) << 16) + 2)) {
                    m838m(c2257kArr, null);
                }
            }
        }
    }

    /* JADX INFO: renamed from: m */
    public final void m838m(C2257k[] c2257kArr, C2257k[] c2257kArr2) {
        C2257k[] c2257kArr3;
        int i;
        int i2;
        int i3;
        int i4;
        boolean z;
        char c;
        int i5;
        int i6;
        C2257k c2262p;
        C2257k c2262p2;
        C2257k c2257k;
        int i7;
        ConcurrentHashMap<K, V> concurrentHashMap = this;
        int length = c2257kArr.length;
        int i8 = f935g;
        boolean z2 = true;
        int i9 = i8 > 1 ? (length >>> 3) / i8 : length;
        char c2 = 16;
        int i10 = i9 < 16 ? 16 : i9;
        if (c2257kArr2 == null) {
            try {
                C2257k[] c2257kArr4 = new C2257k[length << 1];
                concurrentHashMap.f945b = c2257kArr4;
                concurrentHashMap.transferIndex = length;
                c2257kArr3 = c2257kArr4;
            } catch (Throwable unused) {
                concurrentHashMap.sizeCtl = Integer.MAX_VALUE;
                return;
            }
        } else {
            c2257kArr3 = c2257kArr2;
        }
        int length2 = c2257kArr3.length;
        C2253g c2253g = new C2253g(c2257kArr3);
        boolean zM825b = true;
        int i11 = 0;
        int i12 = 0;
        boolean z3 = false;
        while (true) {
            if (zM825b) {
                int i13 = i11 - 1;
                if (i13 >= i12 || z3) {
                    i12 = i12;
                    i11 = i13;
                    zM825b = false;
                } else {
                    int i14 = concurrentHashMap.transferIndex;
                    if (i14 <= 0) {
                        i11 = -1;
                    } else {
                        C2106a c2106a = f936h;
                        int i15 = i12;
                        long j = f938j;
                        if (i14 > i10) {
                            i2 = i15;
                            i3 = i14 - i10;
                            i = i13;
                        } else {
                            i = i13;
                            i2 = i15;
                            i3 = 0;
                        }
                        boolean zM567c = c2106a.m567c(concurrentHashMap, j, i14, i3);
                        i12 = i3;
                        if (zM567c) {
                            i11 = i14 - 1;
                        } else {
                            i12 = i2;
                            i11 = i;
                        }
                    }
                    zM825b = false;
                }
            } else {
                int i16 = i12;
                C2263q c2263q = null;
                C2257k c2257k2 = null;
                if (i11 < 0 || i11 >= length || (i6 = i11 + length) >= length2) {
                    i4 = length;
                    z = z2;
                    c = c2;
                    i5 = i10;
                    if (z3) {
                        concurrentHashMap.f945b = null;
                        concurrentHashMap.f944a = c2257kArr3;
                        concurrentHashMap.sizeCtl = (i4 << 1) - (i4 >>> 1);
                        return;
                    }
                    int i17 = i11;
                    C2106a c2106a2 = f936h;
                    long j2 = f937i;
                    int i18 = concurrentHashMap.sizeCtl;
                    if (!c2106a2.m567c(concurrentHashMap, j2, i18, i18 - 1)) {
                        i11 = i17;
                    } else {
                        if (i18 - 2 != ((Integer.numberOfLeadingZeros(i4) | 32768) << 16)) {
                            return;
                        }
                        zM825b = z;
                        z3 = zM825b;
                        i11 = i4;
                    }
                } else {
                    C2257k c2257kM829k = m829k(c2257kArr, i11);
                    if (c2257kM829k == null) {
                        zM825b = m825b(c2257kArr, i11, c2253g);
                        i4 = length;
                        z = z2;
                        c = c2;
                        i5 = i10;
                    } else {
                        z = z2;
                        int i19 = c2257kM829k.f970a;
                        if (i19 == -1) {
                            i4 = length;
                            c = c2;
                            i5 = i10;
                            zM825b = z;
                        } else {
                            synchronized (c2257kM829k) {
                                try {
                                    if (m829k(c2257kArr, i11) == c2257kM829k) {
                                        if (i19 >= 0) {
                                            int i20 = i19 & length;
                                            C2257k c2257k3 = c2257kM829k.f973d;
                                            C2257k c2257k4 = c2257kM829k;
                                            while (c2257k3 != null) {
                                                char c3 = c2;
                                                int i21 = c2257k3.f970a & length;
                                                if (i21 != i20) {
                                                    c2257k4 = c2257k3;
                                                    i20 = i21;
                                                }
                                                c2257k3 = c2257k3.f973d;
                                                c2 = c3;
                                            }
                                            c = c2;
                                            if (i20 == 0) {
                                                c2257k = null;
                                                c2257k2 = c2257k4;
                                            } else {
                                                c2257k = c2257k4;
                                            }
                                            C2257k c2257k5 = c2257kM829k;
                                            while (c2257k5 != c2257k4) {
                                                int i22 = c2257k5.f970a;
                                                Object obj = c2257k5.f971b;
                                                int i23 = length;
                                                Object obj2 = c2257k5.f972c;
                                                if ((i22 & i23) == 0) {
                                                    i7 = i10;
                                                    c2257k2 = new C2257k(i22, obj, obj2, c2257k2);
                                                } else {
                                                    i7 = i10;
                                                    c2257k = new C2257k(i22, obj, obj2, c2257k);
                                                }
                                                c2257k5 = c2257k5.f973d;
                                                length = i23;
                                                i10 = i7;
                                            }
                                            i4 = length;
                                            i5 = i10;
                                            m827h(c2257kArr3, i11, c2257k2);
                                            m827h(c2257kArr3, i6, c2257k);
                                            m827h(c2257kArr, i11, c2253g);
                                        } else {
                                            i4 = length;
                                            c = c2;
                                            i5 = i10;
                                            if (c2257kM829k instanceof C2262p) {
                                                C2262p c2262p3 = (C2262p) c2257kM829k;
                                                C2263q c2263q2 = null;
                                                C2263q c2263q3 = null;
                                                C2257k c2257k6 = c2262p3.f989f;
                                                int i24 = 0;
                                                int i25 = 0;
                                                C2263q c2263q4 = null;
                                                while (c2257k6 != null) {
                                                    C2262p c2262p4 = c2262p3;
                                                    int i26 = c2257k6.f970a;
                                                    C2263q c2263q5 = new C2263q(i26, c2257k6.f971b, c2257k6.f972c, null, null);
                                                    if ((i26 & i4) == 0) {
                                                        c2263q5.f994h = c2263q3;
                                                        if (c2263q3 == null) {
                                                            c2263q = c2263q5;
                                                        } else {
                                                            c2263q3.f973d = c2263q5;
                                                        }
                                                        i24++;
                                                        c2263q3 = c2263q5;
                                                    } else {
                                                        c2263q5.f994h = c2263q2;
                                                        if (c2263q2 == null) {
                                                            c2263q4 = c2263q5;
                                                        } else {
                                                            c2263q2.f973d = c2263q5;
                                                        }
                                                        i25++;
                                                        c2263q2 = c2263q5;
                                                    }
                                                    c2257k6 = c2257k6.f973d;
                                                    c2262p3 = c2262p4;
                                                }
                                                C2262p c2262p5 = c2262p3;
                                                if (i24 <= 6) {
                                                    c2262p = m831p(c2263q);
                                                } else {
                                                    c2262p = i25 != 0 ? new C2262p(c2263q) : c2262p5;
                                                }
                                                if (i25 <= 6) {
                                                    c2262p2 = m831p(c2263q4);
                                                } else {
                                                    c2262p2 = i24 != 0 ? new C2262p(c2263q4) : c2262p5;
                                                }
                                                m827h(c2257kArr3, i11, c2262p);
                                                m827h(c2257kArr3, i6, c2262p2);
                                                m827h(c2257kArr, i11, c2253g);
                                            }
                                        }
                                        zM825b = z;
                                    } else {
                                        i4 = length;
                                        c = c2;
                                        i5 = i10;
                                    }
                                } finally {
                                }
                            }
                        }
                    }
                }
                concurrentHashMap = this;
                i12 = i16;
                z2 = z;
                c2 = c;
                length = i4;
                i10 = i5;
            }
        }
    }

    /* JADX INFO: renamed from: j */
    public final long m837j() {
        C2249c[] c2249cArr = this.f946c;
        long j = this.baseCount;
        if (c2249cArr != null) {
            for (C2249c c2249c : c2249cArr) {
                if (c2249c != null) {
                    j += c2249c.value;
                }
            }
        }
        return j;
    }

    /* JADX INFO: renamed from: n */
    public final void m839n(C2257k[] c2257kArr, int i) {
        int length = c2257kArr.length;
        if (length < 64) {
            m840o(length << 1);
            return;
        }
        C2257k c2257kM829k = m829k(c2257kArr, i);
        if (c2257kM829k == null || c2257kM829k.f970a < 0) {
            return;
        }
        synchronized (c2257kM829k) {
            try {
                if (m829k(c2257kArr, i) == c2257kM829k) {
                    C2263q c2263q = null;
                    C2263q c2263q2 = null;
                    C2257k c2257k = c2257kM829k;
                    while (c2257k != null) {
                        C2263q c2263q3 = new C2263q(c2257k.f970a, c2257k.f971b, c2257k.f972c, null, null);
                        c2263q3.f994h = c2263q2;
                        if (c2263q2 == null) {
                            c2263q = c2263q3;
                        } else {
                            c2263q2.f973d = c2263q3;
                        }
                        c2257k = c2257k.f973d;
                        c2263q2 = c2263q3;
                    }
                    m827h(c2257kArr, i, new C2262p(c2263q));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: p */
    public static C2257k m831p(C2263q c2263q) {
        C2257k c2257k = null;
        C2257k c2257k2 = null;
        for (C2257k c2257k3 = c2263q; c2257k3 != null; c2257k3 = c2257k3.f973d) {
            C2257k c2257k4 = new C2257k(c2257k3.f970a, c2257k3.f971b, c2257k3.f972c);
            if (c2257k2 == null) {
                c2257k = c2257k4;
            } else {
                c2257k2.f973d = c2257k4;
            }
            c2257k2 = c2257k4;
        }
        return c2257k;
    }

    public static class KeySetView<K, V> extends AbstractC2248b implements Set<K>, Serializable, p022j$.util.Set<K> {
        private static final long serialVersionUID = 7249069246763182397L;

        /* JADX INFO: renamed from: b */
        public final Object f950b;

        @Override // java.util.Collection, p022j$.util.Collection
        public final /* synthetic */ Stream parallelStream() {
            return Collection.CC.$default$parallelStream(this);
        }

        @Override // java.util.Collection
        public final /* synthetic */ java.util.stream.Stream parallelStream() {
            return Stream.Wrapper.convert(Collection.CC.$default$parallelStream(this));
        }

        @Override // java.util.Collection, p022j$.util.Collection
        public final /* synthetic */ boolean removeIf(Predicate predicate) {
            return Collection.CC.$default$removeIf(this, predicate);
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set
        public final /* synthetic */ Spliterator spliterator() {
            return Spliterator.Wrapper.convert(spliterator());
        }

        @Override // java.util.Collection, p022j$.util.Collection
        public final /* synthetic */ Stream stream() {
            return Collection.CC.$default$stream(this);
        }

        @Override // java.util.Collection
        public final /* synthetic */ java.util.stream.Stream stream() {
            return Stream.Wrapper.convert(Collection.CC.$default$stream(this));
        }

        @Override // java.util.Collection, p022j$.util.Collection
        public final /* synthetic */ Object[] toArray(IntFunction intFunction) {
            return toArray((Object[]) intFunction.apply(0));
        }

        public KeySetView(ConcurrentHashMap concurrentHashMap, Object obj) {
            super(concurrentHashMap);
            this.f950b = obj;
        }

        @Override // p022j$.util.concurrent.AbstractC2248b, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return this.f960a.containsKey(obj);
        }

        @Override // p022j$.util.concurrent.AbstractC2248b, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            return this.f960a.remove(obj) != null;
        }

        @Override // p022j$.util.concurrent.AbstractC2248b, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            ConcurrentHashMap concurrentHashMap = this.f960a;
            C2257k[] c2257kArr = concurrentHashMap.f944a;
            int length = c2257kArr == null ? 0 : c2257kArr.length;
            return new C2254h(c2257kArr, length, length, concurrentHashMap, 0);
        }

        @Override // java.util.Collection, java.util.Set
        public final boolean add(Object obj) {
            Object obj2 = this.f950b;
            if (obj2 != null) {
                return this.f960a.m835f(obj, obj2, true) == null;
            }
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection, java.util.Set
        public final boolean addAll(java.util.Collection collection) {
            Object obj = this.f950b;
            if (obj == null) {
                throw new UnsupportedOperationException();
            }
            Iterator it = collection.iterator();
            boolean z = false;
            while (it.hasNext()) {
                if (this.f960a.m835f(it.next(), obj, true) == null) {
                    z = true;
                }
            }
            return z;
        }

        @Override // java.util.Collection, java.util.Set
        public final int hashCode() {
            Object it = iterator();
            int iHashCode = 0;
            while (((AbstractC2247a) it).hasNext()) {
                iHashCode += ((C2254h) it).next().hashCode();
            }
            return iHashCode;
        }

        @Override // java.util.Collection, java.util.Set
        public final boolean equals(Object obj) {
            if (!(obj instanceof Set)) {
                return false;
            }
            Set set = (Set) obj;
            if (set != this) {
                return containsAll(set) && set.containsAll(this);
            }
            return true;
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set, p022j$.util.Collection
        public final p022j$.util.Spliterator spliterator() {
            ConcurrentHashMap concurrentHashMap = this.f960a;
            long jM837j = concurrentHashMap.m837j();
            C2257k[] c2257kArr = concurrentHashMap.f944a;
            int length = c2257kArr == null ? 0 : c2257kArr.length;
            return new C2255i(c2257kArr, length, 0, length, jM837j < 0 ? 0L : jM837j, 0);
        }

        @Override // java.lang.Iterable, p022j$.util.Collection, p022j$.lang.InterfaceC2105a
        public final void forEach(Consumer consumer) {
            consumer.getClass();
            C2257k[] c2257kArr = this.f960a.f944a;
            if (c2257kArr == null) {
                return;
            }
            C2261o c2261o = new C2261o(c2257kArr, c2257kArr.length, 0, c2257kArr.length);
            while (true) {
                C2257k c2257kM849a = c2261o.m849a();
                if (c2257kM849a == null) {
                    return;
                } else {
                    consumer.accept(c2257kM849a.f971b);
                }
            }
        }
    }
}
