package j$.util.concurrent;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.sun.misc.C1967a;
import j$.util.Collection;
import j$.util.Spliterator;
import j$.util.stream.Stream;
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

/* JADX INFO: loaded from: classes2.dex */
public class ConcurrentHashMap<K, V> extends AbstractMap<K, V> implements ConcurrentMap<K, V>, Serializable, InterfaceC2124t {

    /* JADX INFO: renamed from: g */
    public static final int f700g = Runtime.getRuntime().availableProcessors();

    /* JADX INFO: renamed from: h */
    public static final C1967a f701h;

    /* JADX INFO: renamed from: i */
    public static final long f702i;

    /* JADX INFO: renamed from: j */
    public static final long f703j;

    /* JADX INFO: renamed from: k */
    public static final long f704k;

    /* JADX INFO: renamed from: l */
    public static final long f705l;

    /* JADX INFO: renamed from: m */
    public static final long f706m;

    /* JADX INFO: renamed from: n */
    public static final int f707n;

    /* JADX INFO: renamed from: o */
    public static final int f708o;
    private static final ObjectStreamField[] serialPersistentFields;
    private static final long serialVersionUID = 7249069246763182397L;

    /* JADX INFO: renamed from: a */
    public volatile transient C2115k[] f709a;

    /* JADX INFO: renamed from: b */
    public volatile transient C2115k[] f710b;
    private volatile transient long baseCount;

    /* JADX INFO: renamed from: c */
    public volatile transient C2107c[] f711c;
    private volatile transient int cellsBusy;

    /* JADX INFO: renamed from: d */
    public transient KeySetView f712d;

    /* JADX INFO: renamed from: e */
    public transient C2122r f713e;

    /* JADX INFO: renamed from: f */
    public transient C2109e f714f;
    private volatile transient int sizeCtl;
    private volatile transient int transferIndex;

    /* JADX INFO: renamed from: i */
    public static final int m702i(int i) {
        return (i ^ (i >>> 16)) & Integer.MAX_VALUE;
    }

    static {
        Class cls = Integer.TYPE;
        serialPersistentFields = new ObjectStreamField[]{new ObjectStreamField("segments", C2117m[].class), new ObjectStreamField("segmentMask", cls), new ObjectStreamField("segmentShift", cls)};
        C1967a c1967a = C1967a.f396b;
        f701h = c1967a;
        f702i = c1967a.m451h(ConcurrentHashMap.class, "sizeCtl");
        f703j = c1967a.m451h(ConcurrentHashMap.class, "transferIndex");
        f704k = c1967a.m451h(ConcurrentHashMap.class, "baseCount");
        f705l = c1967a.m451h(ConcurrentHashMap.class, "cellsBusy");
        f706m = c1967a.m451h(C2107c.class, "value");
        f707n = c1967a.m445a(C2115k[].class);
        int iM446b = c1967a.m446b(C2115k[].class);
        if (((iM446b - 1) & iM446b) != 0) {
            throw new ExceptionInInitializerError("array index scale not a power of two");
        }
        f708o = 31 - Integer.numberOfLeadingZeros(iM446b);
    }

    /* JADX INFO: renamed from: l */
    public static final int m704l(int i) {
        int iNumberOfLeadingZeros = (-1) >>> Integer.numberOfLeadingZeros(i - 1);
        if (iNumberOfLeadingZeros < 0) {
            return 1;
        }
        return iNumberOfLeadingZeros >= 1073741824 ? TLObject.FLAG_30 : iNumberOfLeadingZeros + 1;
    }

    /* JADX INFO: renamed from: c */
    public static Class m700c(Object obj) {
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
    public static final C2115k m703k(C2115k[] c2115kArr, int i) {
        return (C2115k) f701h.m450f(c2115kArr, (((long) i) << f708o) + ((long) f707n));
    }

    /* JADX INFO: renamed from: b */
    public static final boolean m699b(C2115k[] c2115kArr, int i, C2115k c2115k) {
        C1967a c1967a = f701h;
        return AbstractC1965a.m412R(c1967a.f397a, c2115kArr, (((long) i) << f708o) + ((long) f707n), c2115k);
    }

    /* JADX INFO: renamed from: h */
    public static final void m701h(C2115k[] c2115kArr, int i, C2115k c2115k) {
        f701h.m453j(c2115kArr, (((long) i) << f708o) + ((long) f707n), c2115k);
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
        this.sizeCtl = j >= 1073741824 ? TLObject.FLAG_30 : m704l((int) j);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        long jM711j = m711j();
        if (jM711j < 0) {
            return 0;
        }
        if (jM711j > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) jM711j;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        return m711j() <= 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        int length;
        C2115k c2115kM703k;
        Object obj2;
        int iM702i = m702i(obj.hashCode());
        C2115k[] c2115kArr = this.f709a;
        if (c2115kArr == null || (length = c2115kArr.length) <= 0 || (c2115kM703k = m703k(c2115kArr, (length - 1) & iM702i)) == null) {
            return null;
        }
        int i = c2115kM703k.f735a;
        if (i == iM702i) {
            Object obj3 = c2115kM703k.f736b;
            if (obj3 == obj || (obj3 != null && obj.equals(obj3))) {
                return (V) c2115kM703k.f737c;
            }
        } else if (i < 0) {
            C2115k c2115kMo722a = c2115kM703k.mo722a(iM702i, obj);
            if (c2115kMo722a != null) {
                return (V) c2115kMo722a.f737c;
            }
            return null;
        }
        while (true) {
            c2115kM703k = c2115kM703k.f738d;
            if (c2115kM703k == null) {
                return null;
            }
            if (c2115kM703k.f735a == iM702i && ((obj2 = c2115kM703k.f736b) == obj || (obj2 != null && obj.equals(obj2)))) {
                break;
            }
        }
        return (V) c2115kM703k.f737c;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(Object obj) {
        obj.getClass();
        C2115k[] c2115kArr = this.f709a;
        if (c2115kArr != null) {
            C2119o c2119o = new C2119o(c2115kArr, c2115kArr.length, 0, c2115kArr.length);
            while (true) {
                C2115k c2115kM723a = c2119o.m723a();
                if (c2115kM723a == null) {
                    break;
                }
                Object obj2 = c2115kM723a.f737c;
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
        return (V) m709f(k, v, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x006a, code lost:
    
        r7 = r6.f737c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x006c, code lost:
    
        if (r11 != false) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x006e, code lost:
    
        r6.f737c = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00a5, code lost:
    
        throw new java.lang.IllegalStateException("Recursive update");
     */
    /* JADX INFO: renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m709f(Object obj, Object obj2, boolean z) {
        Object obj3;
        Object obj4;
        Object obj5;
        Object obj6;
        if (obj == null || obj2 == null) {
            throw null;
        }
        int iM702i = m702i(obj.hashCode());
        C2115k[] c2115kArrM708e = this.f709a;
        int i = 0;
        while (true) {
            if (c2115kArrM708e != null) {
                int length = c2115kArrM708e.length;
                if (length != 0) {
                    int i2 = (length - 1) & iM702i;
                    C2115k c2115kM703k = m703k(c2115kArrM708e, i2);
                    if (c2115kM703k == null) {
                        if (m699b(c2115kArrM708e, i2, new C2115k(iM702i, obj, obj2))) {
                            break;
                        }
                    } else {
                        int i3 = c2115kM703k.f735a;
                        if (i3 == -1) {
                            c2115kArrM708e = m707d(c2115kArrM708e, c2115kM703k);
                        } else {
                            if (z && i3 == iM702i && (((obj5 = c2115kM703k.f736b) == obj || (obj5 != null && obj.equals(obj5))) && (obj6 = c2115kM703k.f737c) != null)) {
                                return obj6;
                            }
                            synchronized (c2115kM703k) {
                                try {
                                    if (m703k(c2115kArrM708e, i2) == c2115kM703k) {
                                        if (i3 < 0) {
                                            if (c2115kM703k instanceof C2120p) {
                                                C2121q c2121qM730e = ((C2120p) c2115kM703k).m730e(iM702i, obj, obj2);
                                                if (c2121qM730e != null) {
                                                    Object obj7 = c2121qM730e.f737c;
                                                    if (!z) {
                                                        c2121qM730e.f737c = obj2;
                                                    }
                                                    obj3 = obj7;
                                                } else {
                                                    obj3 = null;
                                                }
                                                i = 2;
                                            } else if (c2115kM703k instanceof C2116l) {
                                                break;
                                            }
                                        } else {
                                            i = 1;
                                            C2115k c2115k = c2115kM703k;
                                            while (true) {
                                                if (c2115k.f735a == iM702i && ((obj4 = c2115k.f736b) == obj || (obj4 != null && obj.equals(obj4)))) {
                                                    break;
                                                }
                                                C2115k c2115k2 = c2115k.f738d;
                                                if (c2115k2 == null) {
                                                    c2115k.f738d = new C2115k(iM702i, obj, obj2);
                                                    break;
                                                }
                                                i++;
                                                c2115k = c2115k2;
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
                                    m713n(c2115kArrM708e, i2);
                                }
                                if (obj3 != null) {
                                    return obj3;
                                }
                            }
                        }
                    }
                }
            }
            c2115kArrM708e = m708e();
        }
        m706a(1L, i);
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        m714o(map.size());
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            m709f(entry.getKey(), entry.getValue(), false);
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        return (V) m710g(obj, null, null);
    }

    /* JADX INFO: renamed from: g */
    public final Object m710g(Object obj, Object obj2, Object obj3) {
        int length;
        int i;
        C2115k c2115kM703k;
        boolean z;
        Object obj4;
        C2121q c2121qM732b;
        Object obj5;
        int iM702i = m702i(obj.hashCode());
        C2115k[] c2115kArrM707d = this.f709a;
        while (true) {
            if (c2115kArrM707d == null || (length = c2115kArrM707d.length) == 0 || (c2115kM703k = m703k(c2115kArrM707d, (i = (length - 1) & iM702i))) == null) {
                break;
            }
            int i2 = c2115kM703k.f735a;
            if (i2 == -1) {
                c2115kArrM707d = m707d(c2115kArrM707d, c2115kM703k);
            } else {
                synchronized (c2115kM703k) {
                    try {
                        if (m703k(c2115kArrM707d, i) == c2115kM703k) {
                            z = true;
                            if (i2 >= 0) {
                                C2115k c2115k = null;
                                C2115k c2115k2 = c2115kM703k;
                                while (true) {
                                    if (c2115k2.f735a != iM702i || ((obj5 = c2115k2.f736b) != obj && (obj5 == null || !obj.equals(obj5)))) {
                                        C2115k c2115k3 = c2115k2.f738d;
                                        if (c2115k3 == null) {
                                            break;
                                        }
                                        c2115k = c2115k2;
                                        c2115k2 = c2115k3;
                                    }
                                }
                                obj4 = c2115k2.f737c;
                                if (obj3 != null && obj3 != obj4 && (obj4 == null || !obj3.equals(obj4))) {
                                    obj4 = null;
                                } else if (obj2 != null) {
                                    c2115k2.f737c = obj2;
                                } else if (c2115k != null) {
                                    c2115k.f738d = c2115k2.f738d;
                                } else {
                                    m701h(c2115kArrM707d, i, c2115k2.f738d);
                                }
                            } else if (c2115kM703k instanceof C2120p) {
                                C2120p c2120p = (C2120p) c2115kM703k;
                                C2121q c2121q = c2120p.f753e;
                                if (c2121q != null && (c2121qM732b = c2121q.m732b(iM702i, obj, null)) != null) {
                                    obj4 = c2121qM732b.f737c;
                                    if (obj3 == null || obj3 == obj4 || (obj4 != null && obj3.equals(obj4))) {
                                        if (obj2 != null) {
                                            c2121qM732b.f737c = obj2;
                                        } else if (c2120p.m731f(c2121qM732b)) {
                                            m701h(c2115kArrM707d, i, m705p(c2120p.f754f));
                                        }
                                    }
                                }
                                obj4 = null;
                            } else if (c2115kM703k instanceof C2116l) {
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
                            m706a(-1L, -1);
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
        C2115k c2115kM703k;
        C2115k c2115k;
        C2115k[] c2115kArrM707d = this.f709a;
        long j = 0;
        loop0: while (true) {
            int i = 0;
            while (c2115kArrM707d != null && i < c2115kArrM707d.length) {
                c2115kM703k = m703k(c2115kArrM707d, i);
                if (c2115kM703k == null) {
                    i++;
                } else {
                    int i2 = c2115kM703k.f735a;
                    if (i2 == -1) {
                        break;
                    }
                    synchronized (c2115kM703k) {
                        try {
                            if (m703k(c2115kArrM707d, i) == c2115kM703k) {
                                if (i2 >= 0) {
                                    c2115k = c2115kM703k;
                                } else {
                                    c2115k = c2115kM703k instanceof C2120p ? ((C2120p) c2115kM703k).f754f : null;
                                }
                                while (c2115k != null) {
                                    j--;
                                    c2115k = c2115k.f738d;
                                }
                                m701h(c2115kArrM707d, i, null);
                                i++;
                            }
                        } finally {
                        }
                    }
                }
            }
            c2115kArrM707d = m707d(c2115kArrM707d, c2115kM703k);
        }
        if (j != 0) {
            m706a(j, -1);
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        KeySetView keySetView = this.f712d;
        if (keySetView != null) {
            return keySetView;
        }
        KeySetView keySetView2 = new KeySetView(this, null);
        this.f712d = keySetView2;
        return keySetView2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<V> values() {
        C2122r c2122r = this.f713e;
        if (c2122r != null) {
            return c2122r;
        }
        C2122r c2122r2 = new C2122r(this);
        this.f713e = c2122r2;
        return c2122r2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        C2109e c2109e = this.f714f;
        if (c2109e != null) {
            return c2109e;
        }
        C2109e c2109e2 = new C2109e(this);
        this.f714f = c2109e2;
        return c2109e2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        C2115k[] c2115kArr = this.f709a;
        int iHashCode = 0;
        if (c2115kArr != null) {
            C2119o c2119o = new C2119o(c2115kArr, c2115kArr.length, 0, c2115kArr.length);
            while (true) {
                C2115k c2115kM723a = c2119o.m723a();
                if (c2115kM723a == null) {
                    break;
                }
                iHashCode += c2115kM723a.f737c.hashCode() ^ c2115kM723a.f736b.hashCode();
            }
        }
        return iHashCode;
    }

    @Override // java.util.AbstractMap
    public final String toString() {
        C2115k[] c2115kArr = this.f709a;
        int length = c2115kArr == null ? 0 : c2115kArr.length;
        C2119o c2119o = new C2119o(c2115kArr, length, 0, length);
        StringBuilder sb = new StringBuilder("{");
        C2115k c2115kM723a = c2119o.m723a();
        if (c2115kM723a != null) {
            while (true) {
                Object obj = c2115kM723a.f736b;
                Object obj2 = c2115kM723a.f737c;
                if (obj == this) {
                    obj = "(this Map)";
                }
                sb.append(obj);
                sb.append(SignatureVisitor.INSTANCEOF);
                if (obj2 == this) {
                    obj2 = "(this Map)";
                }
                sb.append(obj2);
                c2115kM723a = c2119o.m723a();
                if (c2115kM723a == null) {
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
        C2115k[] c2115kArr = this.f709a;
        int length = c2115kArr == null ? 0 : c2115kArr.length;
        C2119o c2119o = new C2119o(c2115kArr, length, 0, length);
        while (true) {
            C2115k c2115kM723a = c2119o.m723a();
            if (c2115kM723a != null) {
                Object obj2 = c2115kM723a.f737c;
                Object obj3 = map.get(c2115kM723a.f736b);
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
        C2117m[] c2117mArr = new C2117m[16];
        for (int i5 = 0; i5 < 16; i5++) {
            c2117mArr[i5] = new C2117m();
        }
        ObjectOutputStream.PutField putFieldPutFields = objectOutputStream.putFields();
        putFieldPutFields.put("segments", c2117mArr);
        putFieldPutFields.put("segmentShift", i3);
        putFieldPutFields.put("segmentMask", i4);
        objectOutputStream.writeFields();
        C2115k[] c2115kArr = this.f709a;
        if (c2115kArr != null) {
            C2119o c2119o = new C2119o(c2115kArr, c2115kArr.length, 0, c2115kArr.length);
            while (true) {
                C2115k c2115kM723a = c2119o.m723a();
                if (c2115kM723a == null) {
                    break;
                }
                objectOutputStream.writeObject(c2115kM723a.f736b);
                objectOutputStream.writeObject(c2115kM723a.f737c);
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
        C2115k c2115k = null;
        while (true) {
            Object object = objectInputStream.readObject();
            Object object2 = objectInputStream.readObject();
            j = 1;
            if (object == null || object2 == null) {
                break;
            }
            j4++;
            c2115k = new C2115k(m702i(object.hashCode()), object, object2, c2115k);
        }
        if (j4 == 0) {
            this.sizeCtl = 0;
            return;
        }
        long j5 = (long) (((double) (j4 / 0.75f)) + 1.0d);
        int iM704l = j5 >= 1073741824 ? TLObject.FLAG_30 : m704l((int) j5);
        C2115k[] c2115kArr = new C2115k[iM704l];
        int i = iM704l - 1;
        while (c2115k != null) {
            C2115k c2115k2 = c2115k.f738d;
            int i2 = c2115k.f735a;
            int i3 = i2 & i;
            C2115k c2115kM703k = m703k(c2115kArr, i3);
            boolean z = true;
            if (c2115kM703k == null) {
                j2 = j;
            } else {
                Object obj2 = c2115k.f736b;
                if (c2115kM703k.f735a < 0) {
                    if (((C2120p) c2115kM703k).m730e(i2, obj2, c2115k.f737c) == null) {
                        j3 += j;
                    }
                    j2 = j;
                } else {
                    j2 = j;
                    int i4 = 0;
                    for (C2115k c2115k3 = c2115kM703k; c2115k3 != null; c2115k3 = c2115k3.f738d) {
                        if (c2115k3.f735a == i2 && ((obj = c2115k3.f736b) == obj2 || (obj != null && obj2.equals(obj)))) {
                            z = false;
                            break;
                        }
                        i4++;
                    }
                    if (z && i4 >= 8) {
                        j3 += j2;
                        c2115k.f738d = c2115kM703k;
                        C2115k c2115k4 = c2115k;
                        C2121q c2121q = null;
                        C2121q c2121q2 = null;
                        while (c2115k4 != null) {
                            C2121q c2121q3 = new C2121q(c2115k4.f735a, c2115k4.f736b, c2115k4.f737c, null, null);
                            c2121q3.f759h = c2121q2;
                            if (c2121q2 == null) {
                                c2121q = c2121q3;
                            } else {
                                c2121q2.f738d = c2121q3;
                            }
                            c2115k4 = c2115k4.f738d;
                            c2121q2 = c2121q3;
                        }
                        m701h(c2115kArr, i3, new C2120p(c2121q));
                    }
                }
                z = false;
            }
            if (z) {
                j3 += j2;
                c2115k.f738d = c2115kM703k;
                m701h(c2115kArr, i3, c2115k);
            }
            c2115k = c2115k2;
            j = j2;
        }
        this.f709a = c2115kArr;
        this.sizeCtl = iM704l - (iM704l >>> 2);
        this.baseCount = j3;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    public V putIfAbsent(K k, V v) {
        return (V) m709f(k, v, true);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    public boolean remove(Object obj, Object obj2) {
        obj.getClass();
        return (obj2 == null || m710g(obj, null, obj2) == null) ? false : true;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    public final boolean replace(Object obj, Object obj2, Object obj3) {
        if (obj == null || obj2 == null || obj3 == null) {
            throw null;
        }
        return m710g(obj, obj3, obj2) != null;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    public final Object replace(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            throw null;
        }
        return m710g(obj, obj2, null);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    public final Object getOrDefault(Object obj, Object obj2) {
        V v = get(obj);
        return v == null ? obj2 : v;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    public final void forEach(BiConsumer biConsumer) {
        biConsumer.getClass();
        C2115k[] c2115kArr = this.f709a;
        if (c2115kArr == null) {
            return;
        }
        C2119o c2119o = new C2119o(c2115kArr, c2115kArr.length, 0, c2115kArr.length);
        while (true) {
            C2115k c2115kM723a = c2119o.m723a();
            if (c2115kM723a == null) {
                return;
            } else {
                biConsumer.accept(c2115kM723a.f736b, c2115kM723a.f737c);
            }
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    public final void replaceAll(BiFunction biFunction) {
        biFunction.getClass();
        C2115k[] c2115kArr = this.f709a;
        if (c2115kArr == null) {
            return;
        }
        C2119o c2119o = new C2119o(c2115kArr, c2115kArr.length, 0, c2115kArr.length);
        while (true) {
            C2115k c2115kM723a = c2119o.m723a();
            if (c2115kM723a == null) {
                return;
            }
            Object obj = c2115kM723a.f737c;
            Object obj2 = c2115kM723a.f736b;
            do {
                Object objApply = biFunction.apply(obj2, obj);
                objApply.getClass();
                if (m710g(obj2, objApply, obj) == null) {
                    obj = get(obj2);
                }
            } while (obj != null);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x008c, code lost:
    
        r5 = r5.f737c;
     */
    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object computeIfAbsent(Object obj, Function function) {
        C2121q c2121qM732b;
        Object obj2;
        Object obj3;
        Object obj4;
        if (obj == null || function == null) {
            throw null;
        }
        int iM702i = m702i(obj.hashCode());
        C2115k[] c2115kArrM708e = this.f709a;
        Object objApply = null;
        int i = 0;
        while (true) {
            if (c2115kArrM708e != null) {
                int length = c2115kArrM708e.length;
                if (length != 0) {
                    int i2 = (length - 1) & iM702i;
                    C2115k c2115kM703k = m703k(c2115kArrM708e, i2);
                    boolean z = true;
                    if (c2115kM703k == null) {
                        C2116l c2116l = new C2116l();
                        synchronized (c2116l) {
                            try {
                                if (m699b(c2115kArrM708e, i2, c2116l)) {
                                    try {
                                        objApply = function.apply(obj);
                                        m701h(c2115kArrM708e, i2, objApply != null ? new C2115k(iM702i, obj, objApply) : null);
                                        i = 1;
                                    } catch (Throwable th) {
                                        m701h(c2115kArrM708e, i2, null);
                                        throw th;
                                    }
                                }
                            } finally {
                            }
                        }
                        if (i != 0) {
                        }
                    } else {
                        int i3 = c2115kM703k.f735a;
                        if (i3 == -1) {
                            c2115kArrM708e = m707d(c2115kArrM708e, c2115kM703k);
                        } else {
                            if (i3 == iM702i && (((obj3 = c2115kM703k.f736b) == obj || (obj3 != null && obj.equals(obj3))) && (obj4 = c2115kM703k.f737c) != null)) {
                                return obj4;
                            }
                            synchronized (c2115kM703k) {
                                try {
                                    if (m703k(c2115kArrM708e, i2) == c2115kM703k) {
                                        if (i3 >= 0) {
                                            C2115k c2115k = c2115kM703k;
                                            i = 1;
                                            while (true) {
                                                if (c2115k.f735a == iM702i && ((obj2 = c2115k.f736b) == obj || (obj2 != null && obj.equals(obj2)))) {
                                                    break;
                                                }
                                                C2115k c2115k2 = c2115k.f738d;
                                                if (c2115k2 == null) {
                                                    Object objApply2 = function.apply(obj);
                                                    if (objApply2 == null) {
                                                        z = false;
                                                    } else {
                                                        if (c2115k.f738d != null) {
                                                            throw new IllegalStateException("Recursive update");
                                                        }
                                                        c2115k.f738d = new C2115k(iM702i, obj, objApply2);
                                                    }
                                                    objApply = objApply2;
                                                } else {
                                                    i++;
                                                    c2115k = c2115k2;
                                                }
                                            }
                                        } else if (c2115kM703k instanceof C2120p) {
                                            C2120p c2120p = (C2120p) c2115kM703k;
                                            C2121q c2121q = c2120p.f753e;
                                            if (c2121q != null && (c2121qM732b = c2121q.m732b(iM702i, obj, null)) != null) {
                                                z = false;
                                                objApply = c2121qM732b.f737c;
                                            } else {
                                                objApply = function.apply(obj);
                                                if (objApply != null) {
                                                    c2120p.m730e(iM702i, obj, objApply);
                                                } else {
                                                    z = false;
                                                }
                                            }
                                            i = 2;
                                        } else if (c2115kM703k instanceof C2116l) {
                                            throw new IllegalStateException("Recursive update");
                                        }
                                    }
                                    z = false;
                                } finally {
                                }
                            }
                            if (i != 0) {
                                if (i >= 8) {
                                    m713n(c2115kArrM708e, i2);
                                }
                                if (!z) {
                                    return objApply;
                                }
                            }
                        }
                    }
                }
            }
            c2115kArrM708e = m708e();
        }
        if (objApply != null) {
            m706a(1L, i);
        }
        return objApply;
    }

    /* JADX WARN: Code restructure failed: missing block: B:61:0x00aa, code lost:
    
        throw new java.lang.IllegalStateException("Recursive update");
     */
    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object computeIfPresent(Object obj, BiFunction biFunction) {
        C2121q c2121qM732b;
        Object obj2;
        if (obj == null || biFunction == null) {
            throw null;
        }
        int iM702i = m702i(obj.hashCode());
        C2115k[] c2115kArrM708e = this.f709a;
        int i = 0;
        Object objApply = null;
        int i2 = 0;
        while (true) {
            if (c2115kArrM708e != null) {
                int length = c2115kArrM708e.length;
                if (length != 0) {
                    int i3 = (length - 1) & iM702i;
                    C2115k c2115kM703k = m703k(c2115kArrM708e, i3);
                    if (c2115kM703k == null) {
                        break;
                    }
                    int i4 = c2115kM703k.f735a;
                    if (i4 == -1) {
                        c2115kArrM708e = m707d(c2115kArrM708e, c2115kM703k);
                    } else {
                        synchronized (c2115kM703k) {
                            try {
                                if (m703k(c2115kArrM708e, i3) == c2115kM703k) {
                                    if (i4 >= 0) {
                                        i2 = 1;
                                        C2115k c2115k = null;
                                        C2115k c2115k2 = c2115kM703k;
                                        while (true) {
                                            if (c2115k2.f735a != iM702i || ((obj2 = c2115k2.f736b) != obj && (obj2 == null || !obj.equals(obj2)))) {
                                                C2115k c2115k3 = c2115k2.f738d;
                                                if (c2115k3 == null) {
                                                    break;
                                                }
                                                i2++;
                                                c2115k = c2115k2;
                                                c2115k2 = c2115k3;
                                            }
                                        }
                                        objApply = biFunction.apply(obj, c2115k2.f737c);
                                        if (objApply != null) {
                                            c2115k2.f737c = objApply;
                                        } else {
                                            C2115k c2115k4 = c2115k2.f738d;
                                            if (c2115k != null) {
                                                c2115k.f738d = c2115k4;
                                            } else {
                                                m701h(c2115kArrM708e, i3, c2115k4);
                                            }
                                            i = -1;
                                        }
                                    } else if (c2115kM703k instanceof C2120p) {
                                        C2120p c2120p = (C2120p) c2115kM703k;
                                        C2121q c2121q = c2120p.f753e;
                                        if (c2121q != null && (c2121qM732b = c2121q.m732b(iM702i, obj, null)) != null) {
                                            objApply = biFunction.apply(obj, c2121qM732b.f737c);
                                            if (objApply != null) {
                                                c2121qM732b.f737c = objApply;
                                            } else {
                                                if (c2120p.m731f(c2121qM732b)) {
                                                    m701h(c2115kArrM708e, i3, m705p(c2120p.f754f));
                                                }
                                                i = -1;
                                            }
                                        }
                                        i2 = 2;
                                    } else if (c2115kM703k instanceof C2116l) {
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
            c2115kArrM708e = m708e();
        }
        if (i != 0) {
            m706a(i, i2);
        }
        return objApply;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    public final Object compute(Object obj, BiFunction biFunction) {
        C2115k c2115k;
        Object objApply;
        Object obj2;
        if (obj == null || biFunction == null) {
            throw null;
        }
        int iM702i = m702i(obj.hashCode());
        C2115k[] c2115kArrM708e = this.f709a;
        int i = 0;
        Object objApply2 = null;
        int i2 = 0;
        while (true) {
            if (c2115kArrM708e != null) {
                int length = c2115kArrM708e.length;
                if (length != 0) {
                    int i3 = (length - 1) & iM702i;
                    C2115k c2115kM703k = m703k(c2115kArrM708e, i3);
                    if (c2115kM703k == null) {
                        C2116l c2116l = new C2116l();
                        synchronized (c2116l) {
                            try {
                                if (m699b(c2115kArrM708e, i3, c2116l)) {
                                    try {
                                        objApply2 = biFunction.apply(obj, null);
                                        if (objApply2 != null) {
                                            c2115k = new C2115k(iM702i, obj, objApply2);
                                            i2 = 1;
                                        } else {
                                            c2115k = null;
                                        }
                                        m701h(c2115kArrM708e, i3, c2115k);
                                        i = 1;
                                    } catch (Throwable th) {
                                        m701h(c2115kArrM708e, i3, null);
                                        throw th;
                                    }
                                }
                            } finally {
                            }
                        }
                        if (i != 0) {
                        }
                    } else {
                        int i4 = c2115kM703k.f735a;
                        if (i4 == -1) {
                            c2115kArrM708e = m707d(c2115kArrM708e, c2115kM703k);
                        } else {
                            synchronized (c2115kM703k) {
                                try {
                                    if (m703k(c2115kArrM708e, i3) == c2115kM703k) {
                                        if (i4 >= 0) {
                                            C2115k c2115k2 = null;
                                            C2115k c2115k3 = c2115kM703k;
                                            i = 1;
                                            while (true) {
                                                if (c2115k3.f735a == iM702i && ((obj2 = c2115k3.f736b) == obj || (obj2 != null && obj.equals(obj2)))) {
                                                    break;
                                                }
                                                C2115k c2115k4 = c2115k3.f738d;
                                                if (c2115k4 == null) {
                                                    objApply = biFunction.apply(obj, null);
                                                    if (objApply != null) {
                                                        if (c2115k3.f738d != null) {
                                                            throw new IllegalStateException("Recursive update");
                                                        }
                                                        c2115k3.f738d = new C2115k(iM702i, obj, objApply);
                                                        i2 = 1;
                                                    }
                                                } else {
                                                    i++;
                                                    c2115k2 = c2115k3;
                                                    c2115k3 = c2115k4;
                                                }
                                            }
                                            Object objApply3 = biFunction.apply(obj, c2115k3.f737c);
                                            if (objApply3 != null) {
                                                c2115k3.f737c = objApply3;
                                                objApply2 = objApply3;
                                            } else {
                                                C2115k c2115k5 = c2115k3.f738d;
                                                if (c2115k2 != null) {
                                                    c2115k2.f738d = c2115k5;
                                                } else {
                                                    m701h(c2115kArrM708e, i3, c2115k5);
                                                }
                                                objApply2 = objApply3;
                                                i2 = -1;
                                            }
                                        } else if (c2115kM703k instanceof C2120p) {
                                            C2120p c2120p = (C2120p) c2115kM703k;
                                            C2121q c2121q = c2120p.f753e;
                                            C2121q c2121qM732b = c2121q != null ? c2121q.m732b(iM702i, obj, null) : null;
                                            objApply = biFunction.apply(obj, c2121qM732b == null ? null : c2121qM732b.f737c);
                                            if (objApply != null) {
                                                if (c2121qM732b != null) {
                                                    c2121qM732b.f737c = objApply;
                                                } else {
                                                    c2120p.m730e(iM702i, obj, objApply);
                                                    i2 = 1;
                                                }
                                            } else if (c2121qM732b != null) {
                                                if (c2120p.m731f(c2121qM732b)) {
                                                    m701h(c2115kArrM708e, i3, m705p(c2120p.f754f));
                                                }
                                                i2 = -1;
                                            }
                                            i = 1;
                                            objApply2 = objApply;
                                        } else if (c2115kM703k instanceof C2116l) {
                                            throw new IllegalStateException("Recursive update");
                                        }
                                    }
                                } finally {
                                }
                            }
                            if (i != 0) {
                                if (i >= 8) {
                                    m713n(c2115kArrM708e, i3);
                                }
                            }
                        }
                    }
                }
            }
            c2115kArrM708e = m708e();
        }
        if (i2 != 0) {
            m706a(i2, i);
        }
        return objApply2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:69:0x00dd, code lost:
    
        throw new java.lang.IllegalStateException("Recursive update");
     */
    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
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
        int iM702i = m702i(obj.hashCode());
        C2115k[] c2115kArrM708e = this.f709a;
        int i2 = 0;
        Object obj5 = null;
        int i3 = 0;
        while (true) {
            if (c2115kArrM708e != null) {
                int length = c2115kArrM708e.length;
                if (length != 0) {
                    int i4 = (length - 1) & iM702i;
                    C2115k c2115kM703k = m703k(c2115kArrM708e, i4);
                    i = 1;
                    if (c2115kM703k == null) {
                        if (m699b(c2115kArrM708e, i4, new C2115k(iM702i, obj, obj4))) {
                            break;
                        }
                    } else {
                        int i5 = c2115kM703k.f735a;
                        if (i5 == -1) {
                            c2115kArrM708e = m707d(c2115kArrM708e, c2115kM703k);
                        } else {
                            synchronized (c2115kM703k) {
                                try {
                                    if (m703k(c2115kArrM708e, i4) == c2115kM703k) {
                                        if (i5 >= 0) {
                                            C2115k c2115k = null;
                                            C2115k c2115k2 = c2115kM703k;
                                            i2 = 1;
                                            while (true) {
                                                if (c2115k2.f735a != iM702i || ((obj3 = c2115k2.f736b) != obj && (obj3 == null || !obj.equals(obj3)))) {
                                                    C2115k c2115k3 = c2115k2.f738d;
                                                    if (c2115k3 == null) {
                                                        c2115k2.f738d = new C2115k(iM702i, obj, obj4);
                                                        obj5 = obj4;
                                                        i3 = 1;
                                                        break;
                                                    }
                                                    i2++;
                                                    c2115k = c2115k2;
                                                    c2115k2 = c2115k3;
                                                }
                                            }
                                            Object objApply = biFunction.apply(c2115k2.f737c, obj4);
                                            if (objApply != null) {
                                                c2115k2.f737c = objApply;
                                                obj5 = objApply;
                                            } else {
                                                C2115k c2115k4 = c2115k2.f738d;
                                                if (c2115k != null) {
                                                    c2115k.f738d = c2115k4;
                                                } else {
                                                    m701h(c2115kArrM708e, i4, c2115k4);
                                                }
                                                obj5 = objApply;
                                                i3 = -1;
                                            }
                                        } else if (c2115kM703k instanceof C2120p) {
                                            C2120p c2120p = (C2120p) c2115kM703k;
                                            C2121q c2121q = c2120p.f753e;
                                            C2121q c2121qM732b = c2121q == null ? null : c2121q.m732b(iM702i, obj, null);
                                            Object objApply2 = c2121qM732b == null ? obj4 : biFunction.apply(c2121qM732b.f737c, obj4);
                                            if (objApply2 != null) {
                                                if (c2121qM732b != null) {
                                                    c2121qM732b.f737c = objApply2;
                                                } else {
                                                    c2120p.m730e(iM702i, obj, objApply2);
                                                    i3 = 1;
                                                }
                                            } else if (c2121qM732b != null) {
                                                if (c2120p.m731f(c2121qM732b)) {
                                                    m701h(c2115kArrM708e, i4, m705p(c2120p.f754f));
                                                }
                                                i3 = -1;
                                            }
                                            i2 = 2;
                                            obj5 = objApply2;
                                        } else if (c2115kM703k instanceof C2116l) {
                                            break;
                                        }
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                            if (i2 != 0) {
                                if (i2 >= 8) {
                                    m713n(c2115kArrM708e, i4);
                                }
                                i = i3;
                                obj4 = obj5;
                            }
                        }
                    }
                }
            }
            c2115kArrM708e = m708e();
        }
        if (i != 0) {
            m706a(i, i2);
        }
        return obj4;
    }

    public static <K> KeySetView<K, Boolean> newKeySet(int i) {
        return new KeySetView<>(new ConcurrentHashMap(i), Boolean.TRUE);
    }

    /* JADX INFO: renamed from: e */
    public final C2115k[] m708e() {
        while (true) {
            C2115k[] c2115kArr = this.f709a;
            if (c2115kArr != null && c2115kArr.length != 0) {
                return c2115kArr;
            }
            int i = this.sizeCtl;
            if (i < 0) {
                Thread.yield();
            } else if (f701h.m447c(this, f702i, i, -1)) {
                try {
                    C2115k[] c2115kArr2 = this.f709a;
                    if (c2115kArr2 == null || c2115kArr2.length == 0) {
                        int i2 = i > 0 ? i : 16;
                        C2115k[] c2115kArr3 = new C2115k[i2];
                        this.f709a = c2115kArr3;
                        i = i2 - (i2 >>> 2);
                        c2115kArr2 = c2115kArr3;
                    }
                    this.sizeCtl = i;
                    return c2115kArr2;
                } catch (Throwable th) {
                    this.sizeCtl = i;
                    throw th;
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:97:0x0140, code lost:
    
        if (r1.f711c != r6) goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0142, code lost:
    
        r1.f711c = (j$.util.concurrent.C2107c[]) java.util.Arrays.copyOf(r6, r7 << 1);
     */
    /* JADX WARN: Removed duplicated region for block: B:146:0x01ab A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:159:0x00c2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0019  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00fd  */
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m706a(long j, int i) {
        boolean zM448d;
        boolean z;
        int length;
        boolean z2;
        int length2;
        int length3;
        C2107c c2107c;
        long jM711j;
        C2115k[] c2115kArr;
        int length4;
        C2115k[] c2115kArr2;
        ConcurrentHashMap<K, V> concurrentHashMap = this;
        C2107c[] c2107cArr = concurrentHashMap.f711c;
        if (c2107cArr == null) {
            C1967a c1967a = f701h;
            long j2 = f704k;
            long j3 = concurrentHashMap.baseCount;
            jM711j = j3 + j;
            if (!c1967a.m448d(concurrentHashMap, j2, j3, jM711j)) {
                if (c2107cArr == null || (length3 = c2107cArr.length - 1) < 0 || (c2107c = c2107cArr[length3 & ((ThreadLocalRandom) ThreadLocalRandom.f718f.get()).f721b]) == null) {
                    zM448d = true;
                } else {
                    C1967a c1967a2 = f701h;
                    long j4 = f706m;
                    long j5 = c2107c.value;
                    zM448d = c1967a2.m448d(c2107c, j4, j5, j5 + j);
                    if (zM448d) {
                        if (i <= 1) {
                            return;
                        } else {
                            jM711j = concurrentHashMap.m711j();
                        }
                    }
                }
                C2125u c2125u = ThreadLocalRandom.f718f;
                int i2 = ((ThreadLocalRandom) c2125u.get()).f721b;
                if (i2 == 0) {
                    ThreadLocalRandom.m715d();
                    i2 = ((ThreadLocalRandom) c2125u.get()).f721b;
                    zM448d = true;
                }
                boolean z3 = zM448d;
                int i3 = i2;
                while (true) {
                    boolean z4 = false;
                    while (true) {
                        C2107c[] c2107cArr2 = concurrentHashMap.f711c;
                        if (c2107cArr2 != null && (length = c2107cArr2.length) > 0) {
                            C2107c c2107c2 = c2107cArr2[(length - 1) & i3];
                            if (c2107c2 != null) {
                                if (z3) {
                                    C1967a c1967a3 = f701h;
                                    long j6 = f706m;
                                    long j7 = c2107c2.value;
                                    if (c1967a3.m448d(c2107c2, j6, j7, j7 + j)) {
                                        return;
                                    }
                                    if (concurrentHashMap.f711c == c2107cArr2 && length < f700g) {
                                        if (!z4) {
                                            z4 = true;
                                        } else if (concurrentHashMap.cellsBusy == 0 && c1967a3.m447c(concurrentHashMap, f705l, 0, 1)) {
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
                                ((ThreadLocalRandom) ThreadLocalRandom.f718f.get()).f721b = i6;
                                i3 = i6;
                                concurrentHashMap = this;
                            } else if (concurrentHashMap.cellsBusy == 0) {
                                C2107c c2107c3 = new C2107c(j);
                                if (concurrentHashMap.cellsBusy == 0 && f701h.m447c(concurrentHashMap, f705l, 0, 1)) {
                                    try {
                                        C2107c[] c2107cArr3 = concurrentHashMap.f711c;
                                        if (c2107cArr3 == null || (length2 = c2107cArr3.length) <= 0) {
                                            z2 = false;
                                            if (!z2) {
                                                return;
                                            }
                                        } else {
                                            int i7 = (length2 - 1) & i3;
                                            if (c2107cArr3[i7] == null) {
                                                c2107cArr3[i7] = c2107c3;
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
                            ((ThreadLocalRandom) ThreadLocalRandom.f718f.get()).f721b = i62;
                            i3 = i62;
                            concurrentHashMap = this;
                        } else {
                            if (concurrentHashMap.cellsBusy == 0 && concurrentHashMap.f711c == c2107cArr2 && f701h.m447c(concurrentHashMap, f705l, 0, 1)) {
                                try {
                                    if (concurrentHashMap.f711c == c2107cArr2) {
                                        C2107c[] c2107cArr4 = new C2107c[2];
                                        c2107cArr4[i3 & 1] = new C2107c(j);
                                        concurrentHashMap.f711c = c2107cArr4;
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
                                C1967a c1967a4 = f701h;
                                long j8 = f704k;
                                long j9 = concurrentHashMap.baseCount;
                                if (c1967a4.m448d(concurrentHashMap, j8, j9, j9 + j)) {
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
            if (jM711j < i8 || (c2115kArr = concurrentHashMap.f709a) == null || (length4 = c2115kArr.length) >= 1073741824) {
                return;
            }
            int iNumberOfLeadingZeros = Integer.numberOfLeadingZeros(length4) | 32768;
            if (i8 < 0) {
                if ((i8 >>> 16) != iNumberOfLeadingZeros || i8 == iNumberOfLeadingZeros + 1 || i8 == iNumberOfLeadingZeros + 65535 || (c2115kArr2 = concurrentHashMap.f710b) == null || concurrentHashMap.transferIndex <= 0) {
                    return;
                }
                if (f701h.m447c(concurrentHashMap, f702i, i8, i8 + 1)) {
                    concurrentHashMap.m712m(c2115kArr, c2115kArr2);
                }
            } else if (f701h.m447c(concurrentHashMap, f702i, i8, (iNumberOfLeadingZeros << 16) + 2)) {
                concurrentHashMap.m712m(c2115kArr, null);
            }
            jM711j = concurrentHashMap.m711j();
        }
    }

    /* JADX INFO: renamed from: d */
    public final C2115k[] m707d(C2115k[] c2115kArr, C2115k c2115k) {
        int i;
        if (c2115k instanceof C2111g) {
            C2115k[] c2115kArr2 = ((C2111g) c2115k).f728e;
            int iNumberOfLeadingZeros = Integer.numberOfLeadingZeros(c2115kArr.length) | 32768;
            while (c2115kArr2 == this.f710b && this.f709a == c2115kArr && (i = this.sizeCtl) < 0 && (i >>> 16) == iNumberOfLeadingZeros && i != iNumberOfLeadingZeros + 1 && i != 65535 + iNumberOfLeadingZeros && this.transferIndex > 0) {
                if (f701h.m447c(this, f702i, i, i + 1)) {
                    m712m(c2115kArr, c2115kArr2);
                    break;
                }
            }
            return c2115kArr2;
        }
        return this.f709a;
    }

    /* JADX INFO: renamed from: o */
    public final void m714o(int i) {
        int length;
        int iM704l = i >= 536870912 ? 1073741824 : m704l(i + (i >>> 1) + 1);
        while (true) {
            int i2 = this.sizeCtl;
            if (i2 < 0) {
                break;
            }
            C2115k[] c2115kArr = this.f709a;
            if (c2115kArr == null || (length = c2115kArr.length) == 0) {
                int i3 = i2 > iM704l ? i2 : iM704l;
                if (f701h.m447c(this, f702i, i2, -1)) {
                    try {
                        if (this.f709a == c2115kArr) {
                            this.f709a = new C2115k[i3];
                            i2 = i3 - (i3 >>> 2);
                        }
                    } finally {
                        this.sizeCtl = i2;
                    }
                } else {
                    continue;
                }
            } else if (iM704l <= i2 || length >= 1073741824) {
                break;
            } else if (c2115kArr == this.f709a) {
                if (f701h.m447c(this, f702i, i2, ((Integer.numberOfLeadingZeros(length) | 32768) << 16) + 2)) {
                    m712m(c2115kArr, null);
                }
            }
        }
    }

    /* JADX INFO: renamed from: m */
    public final void m712m(C2115k[] c2115kArr, C2115k[] c2115kArr2) {
        C2115k[] c2115kArr3;
        int i;
        int i2;
        int i3;
        int i4;
        boolean z;
        char c;
        int i5;
        int i6;
        C2115k c2120p;
        C2115k c2120p2;
        C2115k c2115k;
        int i7;
        ConcurrentHashMap<K, V> concurrentHashMap = this;
        int length = c2115kArr.length;
        int i8 = f700g;
        boolean z2 = true;
        int i9 = i8 > 1 ? (length >>> 3) / i8 : length;
        char c2 = 16;
        int i10 = i9 < 16 ? 16 : i9;
        if (c2115kArr2 == null) {
            try {
                C2115k[] c2115kArr4 = new C2115k[length << 1];
                concurrentHashMap.f710b = c2115kArr4;
                concurrentHashMap.transferIndex = length;
                c2115kArr3 = c2115kArr4;
            } catch (Throwable unused) {
                concurrentHashMap.sizeCtl = Integer.MAX_VALUE;
                return;
            }
        } else {
            c2115kArr3 = c2115kArr2;
        }
        int length2 = c2115kArr3.length;
        C2111g c2111g = new C2111g(c2115kArr3);
        boolean zM699b = true;
        int i11 = 0;
        int i12 = 0;
        boolean z3 = false;
        while (true) {
            if (zM699b) {
                int i13 = i11 - 1;
                if (i13 >= i12 || z3) {
                    i12 = i12;
                    i11 = i13;
                    zM699b = false;
                } else {
                    int i14 = concurrentHashMap.transferIndex;
                    if (i14 <= 0) {
                        i11 = -1;
                    } else {
                        C1967a c1967a = f701h;
                        int i15 = i12;
                        long j = f703j;
                        if (i14 > i10) {
                            i2 = i15;
                            i3 = i14 - i10;
                            i = i13;
                        } else {
                            i = i13;
                            i2 = i15;
                            i3 = 0;
                        }
                        boolean zM447c = c1967a.m447c(concurrentHashMap, j, i14, i3);
                        i12 = i3;
                        if (zM447c) {
                            i11 = i14 - 1;
                        } else {
                            i12 = i2;
                            i11 = i;
                        }
                    }
                    zM699b = false;
                }
            } else {
                int i16 = i12;
                C2121q c2121q = null;
                C2115k c2115k2 = null;
                if (i11 < 0 || i11 >= length || (i6 = i11 + length) >= length2) {
                    i4 = length;
                    z = z2;
                    c = c2;
                    i5 = i10;
                    if (z3) {
                        concurrentHashMap.f710b = null;
                        concurrentHashMap.f709a = c2115kArr3;
                        concurrentHashMap.sizeCtl = (i4 << 1) - (i4 >>> 1);
                        return;
                    }
                    int i17 = i11;
                    C1967a c1967a2 = f701h;
                    long j2 = f702i;
                    int i18 = concurrentHashMap.sizeCtl;
                    if (!c1967a2.m447c(concurrentHashMap, j2, i18, i18 - 1)) {
                        i11 = i17;
                    } else {
                        if (i18 - 2 != ((Integer.numberOfLeadingZeros(i4) | 32768) << 16)) {
                            return;
                        }
                        zM699b = z;
                        z3 = zM699b;
                        i11 = i4;
                    }
                } else {
                    C2115k c2115kM703k = m703k(c2115kArr, i11);
                    if (c2115kM703k == null) {
                        zM699b = m699b(c2115kArr, i11, c2111g);
                        i4 = length;
                        z = z2;
                        c = c2;
                        i5 = i10;
                    } else {
                        z = z2;
                        int i19 = c2115kM703k.f735a;
                        if (i19 == -1) {
                            i4 = length;
                            c = c2;
                            i5 = i10;
                            zM699b = z;
                        } else {
                            synchronized (c2115kM703k) {
                                try {
                                    if (m703k(c2115kArr, i11) == c2115kM703k) {
                                        if (i19 >= 0) {
                                            int i20 = i19 & length;
                                            C2115k c2115k3 = c2115kM703k.f738d;
                                            C2115k c2115k4 = c2115kM703k;
                                            while (c2115k3 != null) {
                                                char c3 = c2;
                                                int i21 = c2115k3.f735a & length;
                                                if (i21 != i20) {
                                                    c2115k4 = c2115k3;
                                                    i20 = i21;
                                                }
                                                c2115k3 = c2115k3.f738d;
                                                c2 = c3;
                                            }
                                            c = c2;
                                            if (i20 == 0) {
                                                c2115k = null;
                                                c2115k2 = c2115k4;
                                            } else {
                                                c2115k = c2115k4;
                                            }
                                            C2115k c2115k5 = c2115kM703k;
                                            while (c2115k5 != c2115k4) {
                                                int i22 = c2115k5.f735a;
                                                Object obj = c2115k5.f736b;
                                                int i23 = length;
                                                Object obj2 = c2115k5.f737c;
                                                if ((i22 & i23) == 0) {
                                                    i7 = i10;
                                                    c2115k2 = new C2115k(i22, obj, obj2, c2115k2);
                                                } else {
                                                    i7 = i10;
                                                    c2115k = new C2115k(i22, obj, obj2, c2115k);
                                                }
                                                c2115k5 = c2115k5.f738d;
                                                length = i23;
                                                i10 = i7;
                                            }
                                            i4 = length;
                                            i5 = i10;
                                            m701h(c2115kArr3, i11, c2115k2);
                                            m701h(c2115kArr3, i6, c2115k);
                                            m701h(c2115kArr, i11, c2111g);
                                        } else {
                                            i4 = length;
                                            c = c2;
                                            i5 = i10;
                                            if (c2115kM703k instanceof C2120p) {
                                                C2120p c2120p3 = (C2120p) c2115kM703k;
                                                C2121q c2121q2 = null;
                                                C2121q c2121q3 = null;
                                                C2115k c2115k6 = c2120p3.f754f;
                                                int i24 = 0;
                                                int i25 = 0;
                                                C2121q c2121q4 = null;
                                                while (c2115k6 != null) {
                                                    C2120p c2120p4 = c2120p3;
                                                    int i26 = c2115k6.f735a;
                                                    C2121q c2121q5 = new C2121q(i26, c2115k6.f736b, c2115k6.f737c, null, null);
                                                    if ((i26 & i4) == 0) {
                                                        c2121q5.f759h = c2121q3;
                                                        if (c2121q3 == null) {
                                                            c2121q = c2121q5;
                                                        } else {
                                                            c2121q3.f738d = c2121q5;
                                                        }
                                                        i24++;
                                                        c2121q3 = c2121q5;
                                                    } else {
                                                        c2121q5.f759h = c2121q2;
                                                        if (c2121q2 == null) {
                                                            c2121q4 = c2121q5;
                                                        } else {
                                                            c2121q2.f738d = c2121q5;
                                                        }
                                                        i25++;
                                                        c2121q2 = c2121q5;
                                                    }
                                                    c2115k6 = c2115k6.f738d;
                                                    c2120p3 = c2120p4;
                                                }
                                                C2120p c2120p5 = c2120p3;
                                                if (i24 <= 6) {
                                                    c2120p = m705p(c2121q);
                                                } else {
                                                    c2120p = i25 != 0 ? new C2120p(c2121q) : c2120p5;
                                                }
                                                if (i25 <= 6) {
                                                    c2120p2 = m705p(c2121q4);
                                                } else {
                                                    c2120p2 = i24 != 0 ? new C2120p(c2121q4) : c2120p5;
                                                }
                                                m701h(c2115kArr3, i11, c2120p);
                                                m701h(c2115kArr3, i6, c2120p2);
                                                m701h(c2115kArr, i11, c2111g);
                                            }
                                        }
                                        zM699b = z;
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
    public final long m711j() {
        C2107c[] c2107cArr = this.f711c;
        long j = this.baseCount;
        if (c2107cArr != null) {
            for (C2107c c2107c : c2107cArr) {
                if (c2107c != null) {
                    j += c2107c.value;
                }
            }
        }
        return j;
    }

    /* JADX INFO: renamed from: n */
    public final void m713n(C2115k[] c2115kArr, int i) {
        int length = c2115kArr.length;
        if (length < 64) {
            m714o(length << 1);
            return;
        }
        C2115k c2115kM703k = m703k(c2115kArr, i);
        if (c2115kM703k == null || c2115kM703k.f735a < 0) {
            return;
        }
        synchronized (c2115kM703k) {
            try {
                if (m703k(c2115kArr, i) == c2115kM703k) {
                    C2121q c2121q = null;
                    C2121q c2121q2 = null;
                    C2115k c2115k = c2115kM703k;
                    while (c2115k != null) {
                        C2121q c2121q3 = new C2121q(c2115k.f735a, c2115k.f736b, c2115k.f737c, null, null);
                        c2121q3.f759h = c2121q2;
                        if (c2121q2 == null) {
                            c2121q = c2121q3;
                        } else {
                            c2121q2.f738d = c2121q3;
                        }
                        c2115k = c2115k.f738d;
                        c2121q2 = c2121q3;
                    }
                    m701h(c2115kArr, i, new C2120p(c2121q));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: p */
    public static C2115k m705p(C2121q c2121q) {
        C2115k c2115k = null;
        C2115k c2115k2 = null;
        for (C2115k c2115k3 = c2121q; c2115k3 != null; c2115k3 = c2115k3.f738d) {
            C2115k c2115k4 = new C2115k(c2115k3.f735a, c2115k3.f736b, c2115k3.f737c);
            if (c2115k2 == null) {
                c2115k = c2115k4;
            } else {
                c2115k2.f738d = c2115k4;
            }
            c2115k2 = c2115k4;
        }
        return c2115k;
    }

    public static class KeySetView<K, V> extends AbstractC2106b implements Set<K>, Serializable, j$.util.Set<K> {
        private static final long serialVersionUID = 7249069246763182397L;

        /* JADX INFO: renamed from: b */
        public final Object f715b;

        @Override // java.util.Collection, j$.util.Collection
        public final /* synthetic */ Stream parallelStream() {
            return Collection.CC.$default$parallelStream(this);
        }

        @Override // java.util.Collection
        public final /* synthetic */ java.util.stream.Stream parallelStream() {
            return Stream.Wrapper.convert(Collection.CC.$default$parallelStream(this));
        }

        @Override // java.util.Collection, j$.util.Collection
        public final /* synthetic */ boolean removeIf(Predicate predicate) {
            return Collection.CC.$default$removeIf(this, predicate);
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set
        public final /* synthetic */ Spliterator spliterator() {
            return Spliterator.Wrapper.convert(spliterator());
        }

        @Override // java.util.Collection, j$.util.Collection
        public final /* synthetic */ Stream stream() {
            return Collection.CC.$default$stream(this);
        }

        @Override // java.util.Collection
        public final /* synthetic */ java.util.stream.Stream stream() {
            return Stream.Wrapper.convert(Collection.CC.$default$stream(this));
        }

        @Override // java.util.Collection, j$.util.Collection
        public final /* synthetic */ Object[] toArray(IntFunction intFunction) {
            return toArray((Object[]) intFunction.apply(0));
        }

        public KeySetView(ConcurrentHashMap concurrentHashMap, Object obj) {
            super(concurrentHashMap);
            this.f715b = obj;
        }

        @Override // j$.util.concurrent.AbstractC2106b, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return this.f725a.containsKey(obj);
        }

        @Override // j$.util.concurrent.AbstractC2106b, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            return this.f725a.remove(obj) != null;
        }

        @Override // j$.util.concurrent.AbstractC2106b, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            ConcurrentHashMap concurrentHashMap = this.f725a;
            C2115k[] c2115kArr = concurrentHashMap.f709a;
            int length = c2115kArr == null ? 0 : c2115kArr.length;
            return new C2112h(c2115kArr, length, length, concurrentHashMap, 0);
        }

        @Override // java.util.Collection, java.util.Set
        public final boolean add(Object obj) {
            Object obj2 = this.f715b;
            if (obj2 != null) {
                return this.f725a.m709f(obj, obj2, true) == null;
            }
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection, java.util.Set
        public final boolean addAll(java.util.Collection collection) {
            Object obj = this.f715b;
            if (obj == null) {
                throw new UnsupportedOperationException();
            }
            Iterator it = collection.iterator();
            boolean z = false;
            while (it.hasNext()) {
                if (this.f725a.m709f(it.next(), obj, true) == null) {
                    z = true;
                }
            }
            return z;
        }

        @Override // java.util.Collection, java.util.Set
        public final int hashCode() {
            Object it = iterator();
            int iHashCode = 0;
            while (((AbstractC2105a) it).hasNext()) {
                iHashCode += ((C2112h) it).next().hashCode();
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

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set, j$.util.Collection
        public final j$.util.Spliterator spliterator() {
            ConcurrentHashMap concurrentHashMap = this.f725a;
            long jM711j = concurrentHashMap.m711j();
            C2115k[] c2115kArr = concurrentHashMap.f709a;
            int length = c2115kArr == null ? 0 : c2115kArr.length;
            return new C2113i(c2115kArr, length, 0, length, jM711j < 0 ? 0L : jM711j, 0);
        }

        @Override // java.lang.Iterable, j$.util.Collection, j$.lang.InterfaceC1966a
        public final void forEach(Consumer consumer) {
            consumer.getClass();
            C2115k[] c2115kArr = this.f725a.f709a;
            if (c2115kArr == null) {
                return;
            }
            C2119o c2119o = new C2119o(c2115kArr, c2115kArr.length, 0, c2115kArr.length);
            while (true) {
                C2115k c2115kM723a = c2119o.m723a();
                if (c2115kM723a == null) {
                    return;
                } else {
                    consumer.accept(c2115kM723a.f736b);
                }
            }
        }
    }
}
