package com.sun.jna;

import com.sun.jna.Structure;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Modifier;
import java.nio.Buffer;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.CharCodeKt$$ExternalSyntheticBUOutline0;
import kotlin.UByte;
import okhttp3.internal.url._UrlKt;
import okio.Buffer$$ExternalSyntheticBUOutline4;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.mvel2.MVEL;
import org.scilab.forge.jlatexmath.TeXSymbolParser;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Structure {
    public static final int ALIGN_DEFAULT = 0;
    public static final int ALIGN_GNUC = 2;
    public static final int ALIGN_MSVC = 3;
    public static final int ALIGN_NONE = 1;
    protected static final int CALCULATE_SIZE = -1;
    private int actualAlignType;
    private int alignType;
    private Structure[] array;
    private boolean autoRead;
    private boolean autoWrite;
    private String encoding;
    private Pointer memory;
    private final Map<String, NativeStringTracking> nativeStrings;
    private boolean readCalled;
    private int size;
    private int structAlignment;
    private Map<String, StructField> structFields;
    private long typeInfo;
    private TypeMapper typeMapper;
    private static final Logger LOG = Logger.getLogger(Structure.class.getName());
    static final ReentrantReadWriteLock cacheStructureLock = new ReentrantReadWriteLock();
    static final Map<Class<?>, LayoutInfo> layoutInfo = new WeakHashMap();
    static final Map<Class<?>, List<String>> fieldOrder = new WeakHashMap();
    static final Map<Class<?>, List<Field>> fieldList = new WeakHashMap();
    static final Map<Class<?>, Boolean> validationMap = new WeakHashMap();
    private static final ThreadLocal<Map<Pointer, Structure>> reads = new ThreadLocal<Map<Pointer, Structure>>() { // from class: com.sun.jna.Structure.1
        @Override // java.lang.ThreadLocal
        public synchronized Map<Pointer, Structure> initialValue() {
            return new HashMap();
        }
    };
    private static final ThreadLocal<Set<Structure>> busy = new ThreadLocal<Set<Structure>>() { // from class: com.sun.jna.Structure.2
        @Override // java.lang.ThreadLocal
        public synchronized Set<Structure> initialValue() {
            return new StructureSet();
        }
    };
    private static final Pointer PLACEHOLDER_MEMORY = new Pointer(0) { // from class: com.sun.jna.Structure.3
        @Override // com.sun.jna.Pointer
        public Pointer share(long j, long j2) {
            return this;
        }
    };

    public interface ByReference {
    }

    public interface ByValue {
    }

    @Target({ElementType.TYPE})
    @Documented
    @Retention(RetentionPolicy.RUNTIME)
    public @interface FieldOrder {
        String[] value();
    }

    public static class NativeStringTracking {
        private NativeString peer;
        private final Object value;

        public NativeStringTracking(Object obj) {
            this.value = obj;
        }
    }

    public Structure() {
        this(0);
    }

    public Structure(TypeMapper typeMapper) {
        this(null, 0, typeMapper);
    }

    public Structure(int i) {
        this((Pointer) null, i);
    }

    public Structure(int i, TypeMapper typeMapper) {
        this(null, i, typeMapper);
    }

    public Structure(Pointer pointer) {
        this(pointer, 0);
    }

    public Structure(Pointer pointer, int i) {
        this(pointer, i, null);
    }

    public Structure(Pointer pointer, int i, TypeMapper typeMapper) {
        this.size = -1;
        this.nativeStrings = new HashMap(8);
        this.autoRead = true;
        this.autoWrite = true;
        setAlignType(i);
        setStringEncoding(Native.getStringEncoding(getClass()));
        initializeTypeMapper(typeMapper);
        validateFields();
        if (pointer != null) {
            useMemory(pointer, 0, true);
        } else {
            allocateMemory(-1);
        }
        initializeFields();
    }

    public Map<String, StructField> fields() {
        return this.structFields;
    }

    public TypeMapper getTypeMapper() {
        return this.typeMapper;
    }

    private void initializeTypeMapper(TypeMapper typeMapper) {
        if (typeMapper == null) {
            typeMapper = Native.getTypeMapper(getClass());
        }
        this.typeMapper = typeMapper;
        layoutChanged();
    }

    private void layoutChanged() {
        if (this.size != -1) {
            this.size = -1;
            if (this.memory instanceof AutoAllocated) {
                this.memory = null;
            }
            ensureAllocated();
        }
    }

    public void setStringEncoding(String str) {
        this.encoding = str;
    }

    public String getStringEncoding() {
        return this.encoding;
    }

    public void setAlignType(int i) {
        this.alignType = i;
        if (i == 0 && (i = Native.getStructureAlignment(getClass())) == 0) {
            i = Platform.isWindows() ? 3 : 2;
        }
        this.actualAlignType = i;
        layoutChanged();
    }

    public Memory autoAllocate(int i) {
        return new AutoAllocated(i);
    }

    public void useMemory(Pointer pointer) {
        useMemory(pointer, 0);
    }

    public void useMemory(Pointer pointer, int i) {
        useMemory(pointer, i, false);
    }

    public void useMemory(Pointer pointer, int i, boolean z) {
        try {
            this.nativeStrings.clear();
            if ((this instanceof ByValue) && !z) {
                int size = size();
                byte[] bArr = new byte[size];
                pointer.read(0L, bArr, 0, size);
                this.memory.write(0L, bArr, 0, size);
            } else {
                if (this.size == -1) {
                    this.size = calculateSize(false);
                }
                int i2 = this.size;
                if (i2 != -1) {
                    this.memory = pointer.share(i, i2);
                } else {
                    this.memory = pointer.share(i);
                }
            }
            this.array = null;
            this.readCalled = false;
        } catch (IndexOutOfBoundsException e) {
            throw new IllegalArgumentException("Structure exceeds provided memory bounds", e);
        }
    }

    public void ensureAllocated() {
        ensureAllocated(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ensureAllocated(boolean z) {
        if (this.memory == null) {
            allocateMemory(z);
            return;
        }
        if (this.size == -1) {
            int iCalculateSize = calculateSize(true, z);
            this.size = iCalculateSize;
            Pointer pointer = this.memory;
            if (pointer instanceof AutoAllocated) {
                return;
            }
            try {
                this.memory = pointer.share(0L, iCalculateSize);
            } catch (IndexOutOfBoundsException e) {
                throw new IllegalArgumentException("Structure exceeds provided memory bounds", e);
            }
        }
    }

    public void allocateMemory() {
        allocateMemory(false);
    }

    private void allocateMemory(boolean z) {
        allocateMemory(calculateSize(true, z));
    }

    public void allocateMemory(int i) {
        if (i == -1) {
            i = calculateSize(false);
        } else if (i <= 0) {
            CharCodeKt$$ExternalSyntheticBUOutline0.m752m("Structure size must be greater than zero: ", i);
            return;
        }
        if (i != -1) {
            Pointer pointer = this.memory;
            if (pointer == null || (pointer instanceof AutoAllocated)) {
                this.memory = autoAllocate(i);
            }
            this.size = i;
        }
    }

    public int size() {
        ensureAllocated();
        return this.size;
    }

    public void clear() {
        ensureAllocated();
        this.nativeStrings.clear();
        this.memory.clear(size());
    }

    public Pointer getPointer() {
        ensureAllocated();
        return this.memory;
    }

    public static class StructureSet extends AbstractCollection<Structure> implements Set<Structure> {
        private int count;
        Structure[] elements;

        private void ensureCapacity(int i) {
            Structure[] structureArr = this.elements;
            if (structureArr == null) {
                this.elements = new Structure[(i * 3) / 2];
            } else if (structureArr.length < i) {
                Structure[] structureArr2 = new Structure[(i * 3) / 2];
                System.arraycopy(structureArr, 0, structureArr2, 0, structureArr.length);
                this.elements = structureArr2;
            }
        }

        public Structure[] getElements() {
            return this.elements;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.count;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return indexOf((Structure) obj) != -1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean add(Structure structure) {
            if (contains(structure)) {
                return false;
            }
            ensureCapacity(this.count + 1);
            Structure[] structureArr = this.elements;
            int i = this.count;
            this.count = i + 1;
            structureArr[i] = structure;
            return true;
        }

        private int indexOf(Structure structure) {
            for (int i = 0; i < this.count; i++) {
                Structure structure2 = this.elements[i];
                if (structure == structure2 || (structure.getClass() == structure2.getClass() && structure.size() == structure2.size() && structure.getPointer().equals(structure2.getPointer()))) {
                    return i;
                }
            }
            return -1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            int iIndexOf = indexOf((Structure) obj);
            if (iIndexOf == -1) {
                return false;
            }
            int i = this.count - 1;
            this.count = i;
            if (i >= 0) {
                Structure[] structureArr = this.elements;
                structureArr[iIndexOf] = structureArr[i];
                structureArr[i] = null;
            }
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Structure> iterator() {
            int i = this.count;
            Structure[] structureArr = new Structure[i];
            if (i > 0) {
                System.arraycopy(this.elements, 0, structureArr, 0, i);
            }
            return Arrays.asList(structureArr).iterator();
        }
    }

    public static Set<Structure> busy() {
        return busy.get();
    }

    public static Map<Pointer, Structure> reading() {
        return reads.get();
    }

    public void conditionalAutoRead() {
        if (this.readCalled) {
            return;
        }
        autoRead();
    }

    public void read() {
        if (this.memory == PLACEHOLDER_MEMORY) {
            return;
        }
        this.readCalled = true;
        ensureAllocated();
        if (busy().add(this)) {
            boolean z = this instanceof ByReference;
            if (z) {
                reading().put(getPointer(), this);
            }
            try {
                Iterator<StructField> it = fields().values().iterator();
                while (it.hasNext()) {
                    readField(it.next());
                }
            } finally {
                busy().remove(this);
                if (z && reading().get(getPointer()) == this) {
                    reading().remove(getPointer());
                }
            }
        }
    }

    public int fieldOffset(String str) {
        ensureAllocated();
        StructField structField = fields().get(str);
        if (structField == null) {
            Native$$ExternalSyntheticBUOutline5.m470m("No such field: ", str);
            return 0;
        }
        return structField.offset;
    }

    public Object readField(String str) {
        ensureAllocated();
        StructField structField = fields().get(str);
        if (structField == null) {
            Native$$ExternalSyntheticBUOutline5.m470m("No such field: ", str);
            return null;
        }
        return readField(structField);
    }

    public Object getFieldValue(Field field) {
        try {
            return field.get(this);
        } catch (Exception e) {
            Structure$$ExternalSyntheticBUOutline1.m472m("Exception reading field '", field.getName(), "' in ", this.getClass(), e);
            return null;
        }
    }

    public void setFieldValue(Field field, Object obj) {
        setFieldValue(field, obj, false);
    }

    private void setFieldValue(Field field, Object obj, boolean z) {
        try {
            field.set(this, obj);
        } catch (IllegalAccessException e) {
            if (!Modifier.isFinal(field.getModifiers())) {
                Structure$$ExternalSyntheticBUOutline1.m472m("Unexpectedly unable to write to field '", field.getName(), "' within ", getClass(), e);
                return;
            }
            if (z) {
                throw new UnsupportedOperationException("This VM does not support Structures with final fields (field '" + field.getName() + "' within " + getClass() + ")", e);
            }
            throw new UnsupportedOperationException("Attempt to write to read-only field '" + field.getName() + "' within " + getClass(), e);
        }
    }

    public static <T extends Structure> T updateStructureByReference(Class<T> cls, T t, Pointer pointer) {
        if (pointer == null) {
            return null;
        }
        if (t == null || !pointer.equals(t.getPointer())) {
            T t2 = (T) reading().get(pointer);
            if (t2 != null && cls.equals(t2.getClass())) {
                t2.autoRead();
                return t2;
            }
            T t3 = (T) newInstance(cls, pointer);
            t3.conditionalAutoRead();
            return t3;
        }
        t.autoRead();
        return t;
    }

    public Object readField(StructField structField) {
        int i = structField.offset;
        Class<?> clsNativeType = structField.type;
        FromNativeConverter fromNativeConverter = structField.readConverter;
        if (fromNativeConverter != null) {
            clsNativeType = fromNativeConverter.nativeType();
        }
        Object value = null;
        Object fieldValue = (Structure.class.isAssignableFrom(clsNativeType) || Callback.class.isAssignableFrom(clsNativeType) || (Platform.HAS_BUFFERS && Buffer.class.isAssignableFrom(clsNativeType)) || Pointer.class.isAssignableFrom(clsNativeType) || NativeMapped.class.isAssignableFrom(clsNativeType) || clsNativeType.isArray()) ? getFieldValue(structField.field) : null;
        Pointer pointer = this.memory;
        if (clsNativeType == String.class) {
            Pointer pointer2 = pointer.getPointer(i);
            if (pointer2 != null) {
                value = pointer2.getString(0L, this.encoding);
            }
        } else {
            value = pointer.getValue(i, clsNativeType, fieldValue);
        }
        if (fromNativeConverter != null) {
            Object objFromNative = fromNativeConverter.fromNative(value, structField.context);
            if (fieldValue == null || !fieldValue.equals(objFromNative)) {
                fieldValue = objFromNative;
            }
        } else {
            fieldValue = value;
        }
        if (clsNativeType.equals(String.class) || clsNativeType.equals(WString.class)) {
            if (fieldValue != null) {
                NativeStringTracking nativeStringTracking = new NativeStringTracking(fieldValue);
                NativeStringTracking nativeStringTrackingPut = this.nativeStrings.put(structField.name, nativeStringTracking);
                if (nativeStringTrackingPut != null) {
                    nativeStringTracking.peer = nativeStringTrackingPut.peer;
                }
            } else {
                this.nativeStrings.remove(structField.name);
            }
        }
        setFieldValue(structField.field, fieldValue, true);
        return fieldValue;
    }

    public void write() {
        if (this.memory == PLACEHOLDER_MEMORY) {
            return;
        }
        ensureAllocated();
        if (this instanceof ByValue) {
            getTypeInfo();
        }
        if (busy().add(this)) {
            try {
                for (StructField structField : fields().values()) {
                    if (!structField.isVolatile) {
                        writeField(structField);
                    }
                }
            } finally {
                busy().remove(this);
            }
        }
    }

    public void writeField(String str) {
        ensureAllocated();
        StructField structField = fields().get(str);
        if (structField == null) {
            Native$$ExternalSyntheticBUOutline5.m470m("No such field: ", str);
        } else {
            writeField(structField);
        }
    }

    public void writeField(String str, Object obj) {
        ensureAllocated();
        StructField structField = fields().get(str);
        if (structField == null) {
            Native$$ExternalSyntheticBUOutline5.m470m("No such field: ", str);
        } else {
            setFieldValue(structField.field, obj);
            writeField(structField, obj);
        }
    }

    public void writeField(StructField structField) {
        if (structField.isReadOnly) {
            return;
        }
        writeField(structField, getFieldValue(structField.field));
    }

    private void writeField(StructField structField, Object obj) {
        NativeString nativeString;
        String str;
        int i = structField.offset;
        Class<?> clsNativeType = structField.type;
        ToNativeConverter toNativeConverter = structField.writeConverter;
        if (toNativeConverter != null) {
            obj = toNativeConverter.toNative(obj, new StructureWriteContext(this, structField.field));
            clsNativeType = toNativeConverter.nativeType();
        }
        if (String.class == clsNativeType || WString.class == clsNativeType) {
            if (obj != null) {
                NativeStringTracking nativeStringTracking = new NativeStringTracking(obj);
                NativeStringTracking nativeStringTrackingPut = this.nativeStrings.put(structField.name, nativeStringTracking);
                if (nativeStringTrackingPut == null || !obj.equals(nativeStringTrackingPut.value)) {
                    if (clsNativeType == WString.class) {
                        nativeString = new NativeString(obj.toString(), true);
                    } else {
                        nativeString = new NativeString(obj.toString(), this.encoding);
                    }
                    nativeStringTracking.peer = nativeString;
                    obj = nativeString.getPointer();
                } else {
                    nativeStringTracking.peer = nativeStringTrackingPut.peer;
                    return;
                }
            } else {
                this.nativeStrings.remove(structField.name);
            }
        }
        try {
            this.memory.setValue(i, obj, clsNativeType);
        } catch (IllegalArgumentException e) {
            StringBuilder sb = new StringBuilder("Structure field \"");
            sb.append(structField.name);
            sb.append("\" was declared as ");
            sb.append(structField.type);
            if (structField.type == clsNativeType) {
                str = _UrlKt.FRAGMENT_ENCODE_SET;
            } else {
                str = " (native type " + clsNativeType + ")";
            }
            sb.append(str);
            sb.append(", which is not supported within a Structure");
            throw new IllegalArgumentException(sb.toString(), e);
        }
    }

    public List<String> getFieldOrder() {
        LinkedList linkedList = new LinkedList();
        for (Class<?> superclass = getClass(); superclass != Structure.class; superclass = superclass.getSuperclass()) {
            FieldOrder fieldOrder2 = (FieldOrder) superclass.getAnnotation(FieldOrder.class);
            if (fieldOrder2 != null) {
                linkedList.addAll(0, Arrays.asList(fieldOrder2.value()));
            }
        }
        return Collections.unmodifiableList(linkedList);
    }

    public void sortFields(List<Field> list, List<String> list2) {
        for (int i = 0; i < list2.size(); i++) {
            String str = list2.get(i);
            int i2 = 0;
            while (true) {
                if (i2 >= list.size()) {
                    break;
                }
                if (str.equals(list.get(i2).getName())) {
                    Collections.swap(list, i, i2);
                    break;
                }
                i2++;
            }
        }
    }

    public List<Field> getFieldList() {
        final Class<?> cls = getClass();
        ReentrantReadWriteLock reentrantReadWriteLock = cacheStructureLock;
        reentrantReadWriteLock.readLock().lock();
        try {
            Map<Class<?>, List<Field>> map = fieldList;
            List<Field> list = map.get(cls);
            if (list != null) {
                reentrantReadWriteLock.readLock().unlock();
                return list;
            }
            reentrantReadWriteLock.readLock().unlock();
            reentrantReadWriteLock.writeLock().lock();
            try {
                List<Field> listComputeIfAbsent = map.computeIfAbsent(cls, new java.util.function.Function() { // from class: com.sun.jna.Structure$$ExternalSyntheticLambda5
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return Structure.$r8$lambda$9lm3vt8_J3MWcupjbgJuDluOqOY(cls, (Class) obj);
                    }
                });
                reentrantReadWriteLock.writeLock().unlock();
                return listComputeIfAbsent;
            } catch (Throwable th) {
                cacheStructureLock.writeLock().unlock();
                throw th;
            }
        } catch (Throwable th2) {
            cacheStructureLock.readLock().unlock();
            throw th2;
        }
    }

    public static /* synthetic */ List $r8$lambda$9lm3vt8_J3MWcupjbgJuDluOqOY(Class cls, Class cls2) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        while (!cls.equals(Structure.class)) {
            for (Field field : cls.getDeclaredFields()) {
                int modifiers = field.getModifiers();
                if (!Modifier.isStatic(modifiers) && Modifier.isPublic(modifiers)) {
                    arrayList2.add(field);
                }
            }
            arrayList.addAll(0, arrayList2);
            arrayList2.clear();
            cls = cls.getSuperclass();
        }
        return arrayList;
    }

    private List<String> fieldOrder() {
        Class<?> cls = getClass();
        ReentrantReadWriteLock reentrantReadWriteLock = cacheStructureLock;
        reentrantReadWriteLock.readLock().lock();
        try {
            Map<Class<?>, List<String>> map = fieldOrder;
            List<String> list = map.get(cls);
            if (list != null) {
                reentrantReadWriteLock.readLock().unlock();
                return list;
            }
            reentrantReadWriteLock.readLock().unlock();
            reentrantReadWriteLock.writeLock().lock();
            try {
                List<String> listComputeIfAbsent = map.computeIfAbsent(cls, new java.util.function.Function() { // from class: com.sun.jna.Structure$$ExternalSyntheticLambda3
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return this.f$0.getFieldOrder();
                    }
                });
                reentrantReadWriteLock.writeLock().unlock();
                return listComputeIfAbsent;
            } catch (Throwable th) {
                cacheStructureLock.writeLock().unlock();
                throw th;
            }
        } catch (Throwable th2) {
            cacheStructureLock.readLock().unlock();
            throw th2;
        }
    }

    public static List<String> createFieldsOrder(List<String> list, String... strArr) {
        return createFieldsOrder(list, (List<String>) Arrays.asList(strArr));
    }

    public static List<String> createFieldsOrder(List<String> list, List<String> list2) {
        ArrayList arrayList = new ArrayList(list.size() + list2.size());
        arrayList.addAll(list);
        arrayList.addAll(list2);
        return Collections.unmodifiableList(arrayList);
    }

    public static List<String> createFieldsOrder(String str) {
        return Collections.unmodifiableList(Collections.singletonList(str));
    }

    public static List<String> createFieldsOrder(String... strArr) {
        return Collections.unmodifiableList(Arrays.asList(strArr));
    }

    private static <T extends Comparable<T>> List<T> sort(Collection<? extends T> collection) {
        ArrayList arrayList = new ArrayList(collection);
        Collections.sort(arrayList);
        return arrayList;
    }

    public List<Field> getFields(boolean z) {
        String str;
        ArrayList arrayList = new ArrayList(getFieldList());
        HashSet hashSet = new HashSet();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            hashSet.add(((Field) obj).getName());
        }
        List<String> listFieldOrder = fieldOrder();
        if (listFieldOrder.size() == arrayList.size() || arrayList.size() <= 1) {
            if (!new HashSet(listFieldOrder).equals(hashSet)) {
                StringBuilder sb = new StringBuilder("Structure.getFieldOrder() on ");
                sb.append(getClass());
                sb.append(" returns names (");
                sb.append(sort(listFieldOrder));
                List listSort = sort(hashSet);
                sb.append(") which do not match declared field names (");
                sb.append(listSort);
                sb.append(")");
                throw new Error(sb.toString());
            }
            sortFields(arrayList, listFieldOrder);
            return arrayList;
        }
        if (!z) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder("Structure.getFieldOrder() on ");
        sb2.append(getClass());
        if (listFieldOrder.size() < arrayList.size()) {
            str = " does not provide enough";
        } else {
            str = " provides too many";
        }
        sb2.append(str);
        sb2.append(" names [");
        sb2.append(listFieldOrder.size());
        sb2.append("] (");
        sb2.append(sort(listFieldOrder));
        sb2.append(") to match declared fields [");
        sb2.append(arrayList.size());
        sb2.append("] (");
        sb2.append(sort(hashSet));
        sb2.append(")");
        throw new Error(sb2.toString());
    }

    public int calculateSize(boolean z) {
        return calculateSize(z, false);
    }

    public static int size(Class<? extends Structure> cls) {
        return size(cls, null);
    }

    public static <T extends Structure> int size(Class<T> cls, T t) {
        ReentrantReadWriteLock reentrantReadWriteLock = cacheStructureLock;
        reentrantReadWriteLock.readLock().lock();
        try {
            LayoutInfo layoutInfo2 = layoutInfo.get(cls);
            reentrantReadWriteLock.readLock().unlock();
            int i = (layoutInfo2 == null || layoutInfo2.variable) ? -1 : layoutInfo2.size;
            if (i != -1) {
                return i;
            }
            if (t == null) {
                t = (T) newInstance(cls, PLACEHOLDER_MEMORY);
            }
            return t.size();
        } catch (Throwable th) {
            cacheStructureLock.readLock().unlock();
            throw th;
        }
    }

    public int calculateSize(boolean z, boolean z2) {
        Class<?> cls = getClass();
        ReentrantReadWriteLock reentrantReadWriteLock = cacheStructureLock;
        reentrantReadWriteLock.readLock().lock();
        try {
            Map<Class<?>, LayoutInfo> map = layoutInfo;
            LayoutInfo layoutInfoDeriveLayout = map.get(cls);
            reentrantReadWriteLock.readLock().unlock();
            if (layoutInfoDeriveLayout == null || this.alignType != layoutInfoDeriveLayout.alignType || this.typeMapper != layoutInfoDeriveLayout.typeMapper) {
                layoutInfoDeriveLayout = deriveLayout(z, z2);
            }
            if (layoutInfoDeriveLayout == null) {
                return -1;
            }
            this.structAlignment = layoutInfoDeriveLayout.alignment;
            this.structFields = layoutInfoDeriveLayout.fields;
            if (!layoutInfoDeriveLayout.variable) {
                reentrantReadWriteLock.readLock().lock();
                try {
                    if (!map.containsKey(cls) || this.alignType != 0 || this.typeMapper != null) {
                        reentrantReadWriteLock.readLock().unlock();
                        reentrantReadWriteLock.writeLock().lock();
                        map.put(cls, layoutInfoDeriveLayout);
                        reentrantReadWriteLock.readLock().lock();
                        reentrantReadWriteLock.writeLock().unlock();
                    }
                    reentrantReadWriteLock.readLock().unlock();
                } finally {
                }
            }
            return layoutInfoDeriveLayout.size;
        } finally {
        }
    }

    public static class LayoutInfo {
        private int alignType;
        private int alignment;
        private final Map<String, StructField> fields;
        private int size;
        private TypeMapper typeMapper;
        private boolean variable;

        private LayoutInfo() {
            this.size = -1;
            this.alignment = 1;
            this.fields = Collections.synchronizedMap(new LinkedHashMap());
            this.alignType = 0;
        }
    }

    private void validateField(String str, Class<?> cls) {
        ToNativeConverter toNativeConverter;
        TypeMapper typeMapper = this.typeMapper;
        if (typeMapper != null && (toNativeConverter = typeMapper.getToNativeConverter(cls)) != null) {
            validateField(str, toNativeConverter.nativeType());
            return;
        }
        if (cls.isArray()) {
            validateField(str, cls.getComponentType());
            return;
        }
        try {
            getNativeSize(cls);
        } catch (IllegalArgumentException e) {
            StringBuilder sb = new StringBuilder("Invalid Structure field in ");
            sb.append(getClass());
            sb.append(", field name '");
            sb.append(str);
            sb.append("' (");
            sb.append(cls);
            String message = e.getMessage();
            sb.append("): ");
            sb.append(message);
            throw new IllegalArgumentException(sb.toString(), e);
        }
    }

    private void validateFields() {
        ReentrantReadWriteLock reentrantReadWriteLock = cacheStructureLock;
        reentrantReadWriteLock.readLock().lock();
        try {
            Map<Class<?>, Boolean> map = validationMap;
            if (map.containsKey(getClass())) {
                reentrantReadWriteLock.readLock().unlock();
                return;
            }
            reentrantReadWriteLock.readLock().unlock();
            reentrantReadWriteLock.writeLock().lock();
            try {
                map.computeIfAbsent(getClass(), new java.util.function.Function() { // from class: com.sun.jna.Structure$$ExternalSyntheticLambda4
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return Structure.$r8$lambda$sGfNwEHp_1PyC3MjWDlWDhZGVOM(this.f$0, (Class) obj);
                    }
                });
                reentrantReadWriteLock.writeLock().unlock();
            } catch (Throwable th) {
                cacheStructureLock.writeLock().unlock();
                throw th;
            }
        } catch (Throwable th2) {
            cacheStructureLock.readLock().unlock();
            throw th2;
        }
    }

    public static /* synthetic */ Boolean $r8$lambda$sGfNwEHp_1PyC3MjWDlWDhZGVOM(Structure structure, Class cls) {
        for (Field field : structure.getFieldList()) {
            structure.validateField(field.getName(), field.getType());
        }
        return Boolean.TRUE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private LayoutInfo deriveLayout(boolean z, boolean z2) {
        LayoutInfo layoutInfo2;
        Class<?> clsNativeType;
        List<Field> fields = getFields(z);
        LayoutInfo layoutInfo3 = null;
        Object[] objArr = 0;
        if (fields == null) {
            return null;
        }
        LayoutInfo layoutInfo4 = new LayoutInfo();
        layoutInfo4.alignType = this.alignType;
        layoutInfo4.typeMapper = this.typeMapper;
        boolean z3 = true;
        int iMax = 0;
        for (Field field : fields) {
            int modifiers = field.getModifiers();
            Class<?> type = field.getType();
            if (type.isArray()) {
                layoutInfo4.variable = true;
            }
            StructField structField = new StructField();
            structField.isVolatile = Modifier.isVolatile(modifiers);
            boolean zIsFinal = Modifier.isFinal(modifiers);
            structField.isReadOnly = zIsFinal;
            if (zIsFinal) {
                if (!Platform.RO_FIELDS) {
                    Structure$$ExternalSyntheticBUOutline0.m471m("This VM does not support read-only fields (field '", field.getName(), "' within ", getClass(), ")");
                    return layoutInfo3;
                }
                field.setAccessible(true);
            }
            structField.field = field;
            structField.name = field.getName();
            structField.type = type;
            if (Callback.class.isAssignableFrom(type) && !type.isInterface()) {
                Native$$ExternalSyntheticBUOutline2.m467m("Structure Callback field '", field.getName(), "' must be an interface");
                return layoutInfo3;
            }
            if (type.isArray() && Structure.class.equals(type.getComponentType())) {
                f$$ExternalSyntheticBUOutline1.m178m("Nested Structure arrays must use a derived Structure type so that the size of the elements can be determined");
                return layoutInfo3;
            }
            if (Modifier.isPublic(field.getModifiers())) {
                Object fieldValue = getFieldValue(structField.field);
                if (fieldValue == null && type.isArray()) {
                    if (!z) {
                        return layoutInfo3;
                    }
                    Segment$$ExternalSyntheticBUOutline1.m848m("Array fields must be initialized");
                    return layoutInfo3;
                }
                if (NativeMapped.class.isAssignableFrom(type)) {
                    NativeMappedConverter nativeMappedConverter = NativeMappedConverter.getInstance(type);
                    clsNativeType = nativeMappedConverter.nativeType();
                    structField.writeConverter = nativeMappedConverter;
                    structField.readConverter = nativeMappedConverter;
                    structField.context = new StructureReadContext(this, field);
                    layoutInfo2 = layoutInfo3;
                } else {
                    TypeMapper typeMapper = this.typeMapper;
                    if (typeMapper != null) {
                        ToNativeConverter toNativeConverter = typeMapper.getToNativeConverter(type);
                        FromNativeConverter fromNativeConverter = this.typeMapper.getFromNativeConverter(type);
                        if (toNativeConverter == null || fromNativeConverter == null) {
                            layoutInfo2 = layoutInfo3;
                            if (toNativeConverter != null || fromNativeConverter != null) {
                                Buffer$$ExternalSyntheticBUOutline4.m837m("Structures require bidirectional type conversion for ", type);
                                return layoutInfo2;
                            }
                        } else {
                            layoutInfo2 = layoutInfo3;
                            fieldValue = toNativeConverter.toNative(fieldValue, new StructureWriteContext(this, structField.field));
                            Class cls = fieldValue != null ? fieldValue.getClass() : Pointer.class;
                            structField.writeConverter = toNativeConverter;
                            structField.readConverter = fromNativeConverter;
                            structField.context = new StructureReadContext(this, field);
                            clsNativeType = cls;
                        }
                    } else {
                        layoutInfo2 = layoutInfo3;
                    }
                    clsNativeType = type;
                }
                if (fieldValue == null) {
                    fieldValue = initializeField(structField.field, type);
                }
                try {
                    structField.size = getNativeSize(clsNativeType, fieldValue);
                    int nativeAlignment = getNativeAlignment(clsNativeType, fieldValue, z3);
                    if (nativeAlignment != 0) {
                        layoutInfo4.alignment = Math.max(layoutInfo4.alignment, nativeAlignment);
                        int i = iMax % nativeAlignment;
                        if (i != 0) {
                            iMax += nativeAlignment - i;
                        }
                        if (this instanceof Union) {
                            structField.offset = 0;
                            iMax = Math.max(iMax, structField.size);
                        } else {
                            structField.offset = iMax;
                            iMax += structField.size;
                        }
                        layoutInfo4.fields.put(structField.name, structField);
                    } else {
                        throw new Error("Field alignment is zero for field '" + structField.name + "' within " + getClass());
                    }
                } catch (IllegalArgumentException e) {
                    if (!z && this.typeMapper == null) {
                        return layoutInfo2;
                    }
                    StringBuilder sb = new StringBuilder("Invalid Structure field in ");
                    sb.append(getClass());
                    sb.append(", field name '");
                    sb.append(structField.name);
                    sb.append("' (");
                    sb.append(structField.type);
                    String message = e.getMessage();
                    sb.append("): ");
                    sb.append(message);
                    throw new IllegalArgumentException(sb.toString(), e);
                }
            } else {
                layoutInfo2 = layoutInfo3;
            }
            z3 = false;
            layoutInfo3 = layoutInfo2;
        }
        LayoutInfo layoutInfo5 = layoutInfo3;
        if (iMax > 0) {
            int iAddPadding = addPadding(iMax, layoutInfo4.alignment);
            if ((this instanceof ByValue) && !z2) {
                getTypeInfo();
            }
            layoutInfo4.size = iAddPadding;
            return layoutInfo4;
        }
        Native$$ExternalSyntheticBUOutline2.m467m("Structure ", getClass(), " has unknown or zero size (ensure all fields are public)");
        return layoutInfo5;
    }

    private void initializeFields() {
        for (Field field : getFieldList()) {
            try {
                if (field.get(this) == null) {
                    initializeField(field, field.getType());
                }
            } catch (Exception e) {
                Structure$$ExternalSyntheticBUOutline1.m472m("Exception reading field '", field.getName(), "' in ", getClass(), e);
                return;
            }
        }
    }

    private Object initializeField(Field field, Class<?> cls) {
        if (Structure.class.isAssignableFrom(cls) && !ByReference.class.isAssignableFrom(cls)) {
            try {
                Structure structureNewInstance = newInstance((Class<Structure>) cls, PLACEHOLDER_MEMORY);
                setFieldValue(field, structureNewInstance);
                return structureNewInstance;
            } catch (IllegalArgumentException e) {
                throw new IllegalArgumentException("Can't determine size of nested structure", e);
            }
        }
        if (!NativeMapped.class.isAssignableFrom(cls)) {
            return null;
        }
        NativeMapped nativeMappedDefaultValue = NativeMappedConverter.getInstance(cls).defaultValue();
        setFieldValue(field, nativeMappedDefaultValue);
        return nativeMappedDefaultValue;
    }

    private int addPadding(int i) {
        return addPadding(i, this.structAlignment);
    }

    private int addPadding(int i, int i2) {
        int i3;
        return (this.actualAlignType == 1 || (i3 = i % i2) == 0) ? i : i + (i2 - i3);
    }

    public int getStructAlignment() {
        if (this.size == -1) {
            calculateSize(true);
        }
        return this.structAlignment;
    }

    public int getNativeAlignment(Class<?> cls, Object obj, boolean z) {
        if (NativeMapped.class.isAssignableFrom(cls)) {
            NativeMappedConverter nativeMappedConverter = NativeMappedConverter.getInstance(cls);
            Class<?> clsNativeType = nativeMappedConverter.nativeType();
            obj = nativeMappedConverter.toNative(obj, new ToNativeContext());
            cls = clsNativeType;
        }
        int nativeSize = Native.getNativeSize(cls, obj);
        if (!cls.isPrimitive() && Long.class != cls && Integer.class != cls && Short.class != cls && Character.class != cls && Byte.class != cls && Boolean.class != cls && Float.class != cls && Double.class != cls) {
            if ((Pointer.class.isAssignableFrom(cls) && !Function.class.isAssignableFrom(cls)) || ((Platform.HAS_BUFFERS && Buffer.class.isAssignableFrom(cls)) || Callback.class.isAssignableFrom(cls) || WString.class == cls || String.class == cls)) {
                nativeSize = Native.POINTER_SIZE;
            } else if (Structure.class.isAssignableFrom(cls)) {
                if (ByReference.class.isAssignableFrom(cls)) {
                    nativeSize = Native.POINTER_SIZE;
                } else {
                    if (obj == null) {
                        obj = newInstance(cls, PLACEHOLDER_MEMORY);
                    }
                    nativeSize = ((Structure) obj).getStructAlignment();
                }
            } else if (cls.isArray()) {
                nativeSize = getNativeAlignment(cls.getComponentType(), null, z);
            } else {
                Native$$ExternalSyntheticBUOutline0.m465m("Type ", cls, " has unknown native alignment");
                return 0;
            }
        }
        int i = this.actualAlignType;
        if (i == 1) {
            return 1;
        }
        if (i == 3) {
            return Math.min(8, nativeSize);
        }
        if (i == 2) {
            if (!z || !Platform.isMac() || !Platform.isPPC()) {
                nativeSize = Math.min(Native.MAX_ALIGNMENT, nativeSize);
            }
            if (!z && Platform.isAIX() && (cls == Double.TYPE || cls == Double.class)) {
                return 4;
            }
        }
        return nativeSize;
    }

    public String toString() {
        return toString(Boolean.getBoolean("jna.dump_memory"));
    }

    public String toString(boolean z) {
        return toString(0, true, z);
    }

    private String format(Class<?> cls) {
        String name = cls.getName();
        return name.substring(name.lastIndexOf(".") + 1);
    }

    private String toString(int i, boolean z, boolean z2) {
        String strConcat;
        String str;
        String strConcat2;
        ensureAllocated();
        String strLineSeparator = System.lineSeparator();
        String str2 = format(getClass()) + "(" + getPointer() + ")";
        if (!(getPointer() instanceof Memory)) {
            str2 = str2 + " (" + size() + " bytes)";
        }
        String strConcat3 = _UrlKt.FRAGMENT_ENCODE_SET;
        for (int i2 = 0; i2 < i; i2++) {
            strConcat3 = strConcat3.concat("  ");
        }
        if (!z) {
            strConcat = "...}";
        } else {
            Iterator<StructField> it = fields().values().iterator();
            String str3 = strLineSeparator;
            while (it.hasNext()) {
                StructField next = it.next();
                Object fieldValue = getFieldValue(next.field);
                String str4 = format(next.type);
                String str5 = str3 + strConcat3;
                if (!next.type.isArray() || fieldValue == null) {
                    str = _UrlKt.FRAGMENT_ENCODE_SET;
                } else {
                    str4 = format(next.type.getComponentType());
                    str = "[" + Array.getLength(fieldValue) + "]";
                }
                String strConcat4 = str5.concat(String.format("  %s %s%s@0x%X", str4, next.name, str, Integer.valueOf(next.offset)));
                if (fieldValue instanceof Structure) {
                    fieldValue = ((Structure) fieldValue).toString(i + 1, !(fieldValue instanceof ByReference), z2);
                }
                String strConcat5 = strConcat4.concat("=");
                if (fieldValue instanceof Long) {
                    strConcat2 = strConcat5.concat(String.format("0x%08X", (Long) fieldValue));
                } else if (fieldValue instanceof Integer) {
                    strConcat2 = strConcat5.concat(String.format("0x%04X", (Integer) fieldValue));
                } else if (fieldValue instanceof Short) {
                    strConcat2 = strConcat5.concat(String.format("0x%02X", (Short) fieldValue));
                } else if (fieldValue instanceof Byte) {
                    strConcat2 = strConcat5.concat(String.format("0x%01X", (Byte) fieldValue));
                } else {
                    strConcat2 = strConcat5 + String.valueOf(fieldValue).trim();
                }
                String str6 = strConcat2 + strLineSeparator;
                if (!it.hasNext()) {
                    str6 = str6 + strConcat3 + "}";
                }
                str3 = str6;
            }
            strConcat = str3;
        }
        if (i == 0 && z2) {
            String strConcat6 = strConcat + strLineSeparator + "memory dump" + strLineSeparator;
            byte[] byteArray = getPointer().getByteArray(0L, size());
            for (int i3 = 0; i3 < byteArray.length; i3++) {
                int i4 = i3 % 4;
                if (i4 == 0) {
                    strConcat6 = strConcat6.concat("[");
                }
                byte b2 = byteArray[i3];
                if (b2 >= 0 && b2 < 16) {
                    strConcat6 = strConcat6.concat(MVEL.VERSION_SUB);
                }
                strConcat6 = strConcat6 + Integer.toHexString(byteArray[i3] & UByte.MAX_VALUE);
                if (i4 == 3 && i3 < byteArray.length - 1) {
                    strConcat6 = strConcat6 + "]" + strLineSeparator;
                }
            }
            strConcat = strConcat6.concat("]");
        }
        return str2 + " {" + strConcat;
    }

    public Structure[] toArray(Structure[] structureArr) {
        ensureAllocated();
        Pointer pointer = this.memory;
        if (pointer instanceof AutoAllocated) {
            int length = structureArr.length * size();
            if (((Memory) pointer).size() < length) {
                useMemory(autoAllocate(length));
            }
        }
        structureArr[0] = this;
        int size = size();
        for (int i = 1; i < structureArr.length; i++) {
            Structure structureNewInstance = newInstance((Class<Structure>) getClass(), this.memory.share(i * size, size));
            structureArr[i] = structureNewInstance;
            structureNewInstance.conditionalAutoRead();
        }
        if (!(this instanceof ByValue)) {
            this.array = structureArr;
        }
        return structureArr;
    }

    public Structure[] toArray(int i) {
        return toArray((Structure[]) Array.newInstance(getClass(), i));
    }

    private Class<?> baseClass() {
        if (((this instanceof ByReference) || (this instanceof ByValue)) && Structure.class.isAssignableFrom(getClass().getSuperclass())) {
            return getClass().getSuperclass();
        }
        return getClass();
    }

    public boolean dataEquals(Structure structure) {
        return dataEquals(structure, false);
    }

    public boolean dataEquals(Structure structure, boolean z) {
        if (z) {
            structure.getPointer().clear(structure.size());
            structure.write();
            getPointer().clear(size());
            write();
        }
        byte[] byteArray = structure.getPointer().getByteArray(0L, structure.size());
        byte[] byteArray2 = getPointer().getByteArray(0L, size());
        if (byteArray.length != byteArray2.length) {
            return false;
        }
        for (int i = 0; i < byteArray.length; i++) {
            if (byteArray[i] != byteArray2[i]) {
                return false;
            }
        }
        return true;
    }

    public boolean equals(Object obj) {
        return (obj instanceof Structure) && obj.getClass() == getClass() && ((Structure) obj).getPointer().equals(getPointer());
    }

    public int hashCode() {
        if (getPointer() != null) {
            return getPointer().hashCode();
        }
        return getClass().hashCode();
    }

    public void cacheTypeInfo(Pointer pointer) {
        this.typeInfo = pointer.peer;
    }

    public FFIType getFieldTypeInfo(StructField structField) {
        ToNativeConverter toNativeConverter;
        Class<?> clsNativeType = structField.type;
        Object fieldValue = getFieldValue(structField.field);
        TypeMapper typeMapper = this.typeMapper;
        if (typeMapper != null && (toNativeConverter = typeMapper.getToNativeConverter(clsNativeType)) != null) {
            clsNativeType = toNativeConverter.nativeType();
            fieldValue = toNativeConverter.toNative(fieldValue, new ToNativeContext());
        }
        return FFIType.get(fieldValue, clsNativeType);
    }

    public Pointer getTypeInfo() {
        Pointer pointer = getTypeInfo(this).getPointer();
        cacheTypeInfo(pointer);
        return pointer;
    }

    public void setAutoSynch(boolean z) {
        setAutoRead(z);
        setAutoWrite(z);
    }

    public void setAutoRead(boolean z) {
        this.autoRead = z;
    }

    public boolean getAutoRead() {
        return this.autoRead;
    }

    public void setAutoWrite(boolean z) {
        this.autoWrite = z;
    }

    public boolean getAutoWrite() {
        return this.autoWrite;
    }

    public static FFIType getTypeInfo(Object obj) {
        return FFIType.get(obj);
    }

    private static <T extends Structure> T newInstance(Class<T> cls, long j) {
        try {
            T t = (T) newInstance(cls, j == 0 ? PLACEHOLDER_MEMORY : new Pointer(j));
            if (j != 0) {
                t.conditionalAutoRead();
            }
            return t;
        } catch (Throwable th) {
            LOG.log(Level.WARNING, "JNA: Error creating structure", th);
            return null;
        }
    }

    public static <T extends Structure> T newInstance(Class<T> cls, Pointer pointer) {
        try {
            Constructor pointerConstructor = getPointerConstructor(cls);
            if (pointerConstructor != null) {
                return (T) pointerConstructor.newInstance(pointer);
            }
        } catch (IllegalAccessException e) {
            throw new IllegalArgumentException("Instantiation of " + cls + " (Pointer) not allowed, is it public?", e);
        } catch (InstantiationException e2) {
            throw new IllegalArgumentException("Can't instantiate " + cls, e2);
        } catch (SecurityException unused) {
        } catch (InvocationTargetException e3) {
            throw new IllegalArgumentException("Exception thrown while instantiating an instance of " + cls, e3);
        }
        T t = (T) newInstance(cls);
        if (pointer != PLACEHOLDER_MEMORY) {
            t.useMemory(pointer);
        }
        return t;
    }

    public static <T extends Structure> T newInstance(Class<T> cls) {
        T t = (T) Klass.newInstance(cls);
        if (t instanceof ByValue) {
            t.allocateMemory();
        }
        return t;
    }

    private static <T> Constructor<T> getPointerConstructor(Class<T> cls) {
        for (Object obj : cls.getConstructors()) {
            Constructor<T> constructor = (Constructor<T>) obj;
            Class<?>[] parameterTypes = constructor.getParameterTypes();
            if (parameterTypes.length == 1 && parameterTypes[0].equals(Pointer.class)) {
                return constructor;
            }
        }
        return null;
    }

    public static class StructField {
        public FromNativeContext context;
        public Field field;
        public boolean isReadOnly;
        public boolean isVolatile;
        public String name;
        public FromNativeConverter readConverter;
        public Class<?> type;
        public ToNativeConverter writeConverter;
        public int size = -1;
        public int offset = -1;

        public String toString() {
            return this.name + "@" + this.offset + "[" + this.size + "] (" + this.type + ")";
        }
    }

    @FieldOrder({"size", "alignment", TeXSymbolParser.TYPE_ATTR, "elements"})
    public static class FFIType extends Structure {
        private static final int FFI_TYPE_STRUCT = 13;
        private static final Map<Pointer, FFIType> ffiTypeInfo;
        private static final Map<Class, Map<Integer, FFIType>> typeInfoMap = new WeakHashMap();
        private static final Map<Class, FFIType> unionHelper = new WeakHashMap();
        public short alignment;
        public Pointer elements;
        public size_t size;
        public short type;

        public static class size_t extends IntegerType {
            private static final long serialVersionUID = 1;

            public size_t() {
                this(0L);
            }

            public size_t(long j) {
                super(Native.SIZE_T_SIZE, j);
            }
        }

        static {
            HashMap map = new HashMap();
            ffiTypeInfo = map;
            if (Native.POINTER_SIZE != 0) {
                if (FFITypes.ffi_type_void != null) {
                    map.put(FFITypes.ffi_type_void, (FFIType) Structure.newInstance(FFIType.class, FFITypes.ffi_type_void));
                    map.put(FFITypes.ffi_type_float, (FFIType) Structure.newInstance(FFIType.class, FFITypes.ffi_type_float));
                    map.put(FFITypes.ffi_type_double, (FFIType) Structure.newInstance(FFIType.class, FFITypes.ffi_type_double));
                    map.put(FFITypes.ffi_type_longdouble, (FFIType) Structure.newInstance(FFIType.class, FFITypes.ffi_type_longdouble));
                    map.put(FFITypes.ffi_type_uint8, (FFIType) Structure.newInstance(FFIType.class, FFITypes.ffi_type_uint8));
                    map.put(FFITypes.ffi_type_sint8, (FFIType) Structure.newInstance(FFIType.class, FFITypes.ffi_type_sint8));
                    map.put(FFITypes.ffi_type_uint16, (FFIType) Structure.newInstance(FFIType.class, FFITypes.ffi_type_uint16));
                    map.put(FFITypes.ffi_type_sint16, (FFIType) Structure.newInstance(FFIType.class, FFITypes.ffi_type_sint16));
                    map.put(FFITypes.ffi_type_uint32, (FFIType) Structure.newInstance(FFIType.class, FFITypes.ffi_type_uint32));
                    map.put(FFITypes.ffi_type_sint32, (FFIType) Structure.newInstance(FFIType.class, FFITypes.ffi_type_sint32));
                    map.put(FFITypes.ffi_type_uint64, (FFIType) Structure.newInstance(FFIType.class, FFITypes.ffi_type_uint64));
                    map.put(FFITypes.ffi_type_sint64, (FFIType) Structure.newInstance(FFIType.class, FFITypes.ffi_type_sint64));
                    map.put(FFITypes.ffi_type_pointer, (FFIType) Structure.newInstance(FFIType.class, FFITypes.ffi_type_pointer));
                    Iterator it = map.values().iterator();
                    while (it.hasNext()) {
                        ((FFIType) it.next()).read();
                    }
                    Map<Pointer, FFIType> map2 = ffiTypeInfo;
                    storeTypeInfo(Void.TYPE, map2.get(FFITypes.ffi_type_void));
                    storeTypeInfo(Void.class, map2.get(FFITypes.ffi_type_void));
                    storeTypeInfo(Float.TYPE, map2.get(FFITypes.ffi_type_float));
                    storeTypeInfo(Float.class, map2.get(FFITypes.ffi_type_float));
                    storeTypeInfo(Double.TYPE, map2.get(FFITypes.ffi_type_double));
                    storeTypeInfo(Double.class, map2.get(FFITypes.ffi_type_double));
                    storeTypeInfo(Long.TYPE, map2.get(FFITypes.ffi_type_sint64));
                    storeTypeInfo(Long.class, map2.get(FFITypes.ffi_type_sint64));
                    storeTypeInfo(Integer.TYPE, map2.get(FFITypes.ffi_type_sint32));
                    storeTypeInfo(Integer.class, map2.get(FFITypes.ffi_type_sint32));
                    storeTypeInfo(Short.TYPE, map2.get(FFITypes.ffi_type_sint16));
                    storeTypeInfo(Short.class, map2.get(FFITypes.ffi_type_sint16));
                    FFIType fFIType = map2.get(Native.WCHAR_SIZE == 2 ? FFITypes.ffi_type_uint16 : FFITypes.ffi_type_uint32);
                    storeTypeInfo(Character.TYPE, fFIType);
                    storeTypeInfo(Character.class, fFIType);
                    storeTypeInfo(Byte.TYPE, map2.get(FFITypes.ffi_type_sint8));
                    storeTypeInfo(Byte.class, map2.get(FFITypes.ffi_type_sint8));
                    storeTypeInfo(Pointer.class, map2.get(FFITypes.ffi_type_pointer));
                    storeTypeInfo(String.class, map2.get(FFITypes.ffi_type_pointer));
                    storeTypeInfo(WString.class, map2.get(FFITypes.ffi_type_pointer));
                    storeTypeInfo(Boolean.TYPE, map2.get(FFITypes.ffi_type_uint32));
                    storeTypeInfo(Boolean.class, map2.get(FFITypes.ffi_type_uint32));
                    return;
                }
                throw new Error("FFI types not initialized");
            }
            throw new Error("Native library not initialized");
        }

        public static class FFITypes {
            private static Pointer ffi_type_double;
            private static Pointer ffi_type_float;
            private static Pointer ffi_type_longdouble;
            private static Pointer ffi_type_pointer;
            private static Pointer ffi_type_sint16;
            private static Pointer ffi_type_sint32;
            private static Pointer ffi_type_sint64;
            private static Pointer ffi_type_sint8;
            private static Pointer ffi_type_uint16;
            private static Pointer ffi_type_uint32;
            private static Pointer ffi_type_uint64;
            private static Pointer ffi_type_uint8;
            private static Pointer ffi_type_void;

            private FFITypes() {
            }
        }

        private static boolean isIntegerType(FFIType fFIType) {
            Pointer pointer = fFIType.getPointer();
            return pointer.equals(FFITypes.ffi_type_uint8) || pointer.equals(FFITypes.ffi_type_sint8) || pointer.equals(FFITypes.ffi_type_uint16) || pointer.equals(FFITypes.ffi_type_sint16) || pointer.equals(FFITypes.ffi_type_uint32) || pointer.equals(FFITypes.ffi_type_sint32) || pointer.equals(FFITypes.ffi_type_uint64) || pointer.equals(FFITypes.ffi_type_sint64) || pointer.equals(FFITypes.ffi_type_pointer);
        }

        private static boolean isFloatType(FFIType fFIType) {
            Pointer pointer = fFIType.getPointer();
            return pointer.equals(FFITypes.ffi_type_float) || pointer.equals(FFITypes.ffi_type_double);
        }

        public FFIType(FFIType fFIType) {
            this.type = (short) 13;
            this.size = fFIType.size;
            this.alignment = fFIType.alignment;
            this.type = fFIType.type;
            this.elements = fFIType.elements;
        }

        public FFIType() {
            this.type = (short) 13;
        }

        public FFIType(Structure structure) {
            Pointer[] pointerArr;
            int i;
            this.type = (short) 13;
            structure.ensureAllocated(true);
            int i2 = 0;
            if (structure instanceof Union) {
                int i3 = 0;
                boolean z = false;
                FFIType fFIType = null;
                for (StructField structField : structure.fields().values()) {
                    FFIType fieldTypeInfo = structure.getFieldTypeInfo(structField);
                    z = isIntegerType(fieldTypeInfo) ? true : z;
                    if (fFIType == null || i3 < (i = structField.size) || (i3 == i && Structure.class.isAssignableFrom(structField.type))) {
                        i3 = structField.size;
                        fFIType = fieldTypeInfo;
                    }
                }
                if (((Platform.isIntel() && Platform.is64Bit() && !Platform.isWindows()) || Platform.isARM() || Platform.isLoongArch()) && z && isFloatType(fFIType)) {
                    FFIType fFIType2 = new FFIType(fFIType);
                    if (fFIType2.size.intValue() == 4) {
                        fFIType2.type = ffiTypeInfo.get(FFITypes.ffi_type_uint32).type;
                    } else if (fFIType2.size.intValue() == 8) {
                        fFIType2.type = ffiTypeInfo.get(FFITypes.ffi_type_uint64).type;
                    }
                    fFIType2.write();
                    fFIType = fFIType2;
                }
                pointerArr = new Pointer[]{fFIType.getPointer(), null};
                unionHelper.put(structure.getClass(), fFIType);
            } else {
                pointerArr = new Pointer[structure.fields().size() + 1];
                Iterator<StructField> it = structure.fields().values().iterator();
                while (it.hasNext()) {
                    pointerArr[i2] = structure.getFieldTypeInfo(it.next()).getPointer();
                    i2++;
                }
            }
            init(pointerArr);
            write();
        }

        public FFIType(Object obj, Class<?> cls) {
            this.type = (short) 13;
            int length = Array.getLength(obj);
            Pointer[] pointerArr = new Pointer[length + 1];
            Pointer pointer = get(null, cls.getComponentType()).getPointer();
            for (int i = 0; i < length; i++) {
                pointerArr[i] = pointer;
            }
            init(pointerArr);
            write();
        }

        private void init(Pointer[] pointerArr) {
            Memory memory = new Memory(Native.POINTER_SIZE * pointerArr.length);
            this.elements = memory;
            memory.write(0L, pointerArr, 0, pointerArr.length);
            write();
        }

        public static FFIType get(Object obj) {
            if (obj == null) {
                return getTypeInfo(Pointer.class, 0);
            }
            if (obj instanceof Class) {
                return get(null, (Class) obj);
            }
            return get(obj, obj.getClass());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static FFIType get(Object obj, Class<?> cls) {
            ToNativeConverter toNativeConverter;
            TypeMapper typeMapper = Native.getTypeMapper(cls);
            if (typeMapper != null && (toNativeConverter = typeMapper.getToNativeConverter(cls)) != null) {
                cls = toNativeConverter.nativeType();
            }
            FFIType typeInfo = getTypeInfo(cls, cls.isArray() ? Array.getLength(obj) : 0);
            if (typeInfo != null) {
                return typeInfo;
            }
            ReentrantReadWriteLock reentrantReadWriteLock = Structure.cacheStructureLock;
            reentrantReadWriteLock.writeLock().lock();
            try {
                if ((Platform.HAS_BUFFERS && Buffer.class.isAssignableFrom(cls)) || Callback.class.isAssignableFrom(cls)) {
                    Map<Class, Map<Integer, FFIType>> map = typeInfoMap;
                    map.put(cls, map.get(Pointer.class));
                    FFIType fFIType = map.get(Pointer.class).get(0);
                    reentrantReadWriteLock.writeLock().unlock();
                    return fFIType;
                }
                if (!Structure.class.isAssignableFrom(cls)) {
                    reentrantReadWriteLock.writeLock().unlock();
                    if (NativeMapped.class.isAssignableFrom(cls)) {
                        NativeMappedConverter nativeMappedConverter = NativeMappedConverter.getInstance(cls);
                        return get(nativeMappedConverter.toNative(obj, new ToNativeContext()), nativeMappedConverter.nativeType());
                    }
                    if (!cls.isArray()) {
                        Native$$ExternalSyntheticBUOutline5.m470m("Unsupported type ", cls);
                        return null;
                    }
                    FFIType fFIType2 = new FFIType(obj, cls);
                    storeTypeInfo(cls, Array.getLength(obj), fFIType2);
                    return fFIType2;
                }
                if (obj == null) {
                    obj = Structure.newInstance(cls, Structure.PLACEHOLDER_MEMORY);
                }
                if (!ByReference.class.isAssignableFrom(cls)) {
                    FFIType fFIType3 = new FFIType((Structure) obj);
                    storeTypeInfo(cls, fFIType3);
                    reentrantReadWriteLock.writeLock().unlock();
                    return fFIType3;
                }
                Map<Class, Map<Integer, FFIType>> map2 = typeInfoMap;
                map2.put(cls, map2.get(Pointer.class));
                FFIType fFIType4 = map2.get(Pointer.class).get(0);
                reentrantReadWriteLock.writeLock().unlock();
                return fFIType4;
            } catch (Throwable th) {
                Structure.cacheStructureLock.writeLock().unlock();
                throw th;
            }
        }

        private static FFIType getTypeInfo(Class cls, int i) {
            ReentrantReadWriteLock reentrantReadWriteLock = Structure.cacheStructureLock;
            reentrantReadWriteLock.readLock().lock();
            try {
                Map<Integer, FFIType> map = typeInfoMap.get(cls);
                if (map == null) {
                    reentrantReadWriteLock.readLock().unlock();
                    return null;
                }
                FFIType fFIType = map.get(Integer.valueOf(i));
                reentrantReadWriteLock.readLock().unlock();
                return fFIType;
            } catch (Throwable th) {
                Structure.cacheStructureLock.readLock().unlock();
                throw th;
            }
        }

        private static void storeTypeInfo(Class cls, FFIType fFIType) {
            storeTypeInfo(cls, 0, fFIType);
        }

        private static void storeTypeInfo(Class cls, int i, FFIType fFIType) {
            ReentrantReadWriteLock reentrantReadWriteLock = Structure.cacheStructureLock;
            reentrantReadWriteLock.writeLock().lock();
            try {
                typeInfoMap.computeIfAbsent(cls, new java.util.function.Function() { // from class: com.sun.jna.Structure$FFIType$$ExternalSyntheticLambda0
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return Structure.FFIType.$r8$lambda$b_ne5t9lqNZj68Q2cYte0XRI88Y((Class) obj);
                    }
                }).put(Integer.valueOf(i), fFIType);
                reentrantReadWriteLock.writeLock().unlock();
            } catch (Throwable th) {
                Structure.cacheStructureLock.writeLock().unlock();
                throw th;
            }
        }

        public static /* synthetic */ Map $r8$lambda$b_ne5t9lqNZj68Q2cYte0XRI88Y(Class cls) {
            return new HashMap();
        }
    }

    public static class AutoAllocated extends Memory {
        public AutoAllocated(int i) {
            super(i);
            super.clear();
        }

        @Override // com.sun.jna.Memory, com.sun.jna.Pointer
        public String toString() {
            return "auto-" + super.toString();
        }
    }

    private static void structureArrayCheck(Structure[] structureArr) {
        if (ByReference[].class.isAssignableFrom(structureArr.getClass())) {
            return;
        }
        Pointer pointer = structureArr[0].getPointer();
        int size = structureArr[0].size();
        for (int i = 1; i < structureArr.length; i++) {
            if (structureArr[i].getPointer().peer != pointer.peer + ((long) (size * i))) {
                Structure$$ExternalSyntheticBUOutline2.m473m("Structure array elements must use contiguous memory (bad backing address at Structure array index ", i, ")");
                return;
            }
        }
    }

    public static void autoRead(Structure[] structureArr) {
        structureArrayCheck(structureArr);
        Structure structure = structureArr[0];
        if (structure.array == structureArr) {
            structure.autoRead();
            return;
        }
        for (Structure structure2 : structureArr) {
            if (structure2 != null) {
                structure2.autoRead();
            }
        }
    }

    public void autoRead() {
        if (!getAutoRead()) {
            return;
        }
        read();
        if (this.array == null) {
            return;
        }
        int i = 1;
        while (true) {
            Structure[] structureArr = this.array;
            if (i >= structureArr.length) {
                return;
            }
            structureArr[i].autoRead();
            i++;
        }
    }

    public static void autoWrite(Structure[] structureArr) {
        structureArrayCheck(structureArr);
        Structure structure = structureArr[0];
        if (structure.array == structureArr) {
            structure.autoWrite();
            return;
        }
        for (Structure structure2 : structureArr) {
            if (structure2 != null) {
                structure2.autoWrite();
            }
        }
    }

    public void autoWrite() {
        if (!getAutoWrite()) {
            return;
        }
        write();
        if (this.array == null) {
            return;
        }
        int i = 1;
        while (true) {
            Structure[] structureArr = this.array;
            if (i >= structureArr.length) {
                return;
            }
            structureArr[i].autoWrite();
            i++;
        }
    }

    public int getNativeSize(Class<?> cls) {
        return getNativeSize(cls, null);
    }

    public int getNativeSize(Class<?> cls, Object obj) {
        return Native.getNativeSize(cls, obj);
    }

    public static void validate(Class<? extends Structure> cls) {
        try {
            cls.getConstructor(null);
        } catch (NoSuchMethodException | SecurityException unused) {
            f$$ExternalSyntheticBUOutline1.m178m("No suitable constructor found for class: ".concat(cls.getName()));
        }
    }
}
