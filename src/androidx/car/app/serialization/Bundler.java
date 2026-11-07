package androidx.car.app.serialization;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcelable;
import android.util.ArrayMap;
import android.util.Log;
import androidx.core.app.Person;
import androidx.core.graphics.drawable.IconCompat;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Bundler {
    private static final Map<Class<?>, String> UNOBFUSCATED_TYPE_NAMES = initUnobfuscatedTypeNames();
    private static final Map<Integer, String> BUNDLED_TYPE_NAMES = initBundledTypeNames();

    public static Bundle toBundle(Object obj) {
        String unobfuscatedClassName = getUnobfuscatedClassName(obj.getClass());
        if (Log.isLoggable("CarApp.Bun", 3)) {
            Log.d("CarApp.Bun", "Bundling " + unobfuscatedClassName);
        }
        return toBundle(obj, unobfuscatedClassName, Trace.create());
    }

    private static Bundle toBundle(Object obj, String str, Trace trace) throws CycleDetectedBundlerException {
        if (obj != null && trace.find(obj)) {
            throw new CycleDetectedBundlerException("Found cycle while bundling type ".concat(obj.getClass().getSimpleName()), trace);
        }
        Trace traceFromParent = Trace.fromParent(obj, str, trace);
        try {
            if (obj == null) {
                throw new TracedBundlerException("Bundling of null object is not supported", traceFromParent);
            }
            if (obj instanceof IconCompat) {
                Bundle bundleSerializeImage = serializeImage((IconCompat) obj);
                if (traceFromParent != null) {
                    traceFromParent.close();
                }
                return bundleSerializeImage;
            }
            if (!isPrimitiveType(obj) && !(obj instanceof Parcelable)) {
                if (obj instanceof IInterface) {
                    Bundle bundleSerializeIInterface = serializeIInterface((IInterface) obj);
                    if (traceFromParent != null) {
                        traceFromParent.close();
                    }
                    return bundleSerializeIInterface;
                }
                if (obj instanceof IBinder) {
                    Bundle bundleSerializeIBinder = serializeIBinder((IBinder) obj);
                    if (traceFromParent != null) {
                        traceFromParent.close();
                    }
                    return bundleSerializeIBinder;
                }
                if (obj instanceof Map) {
                    Bundle bundleSerializeMap = serializeMap((Map) obj, traceFromParent);
                    if (traceFromParent != null) {
                        traceFromParent.close();
                    }
                    return bundleSerializeMap;
                }
                if (obj instanceof List) {
                    Bundle bundleSerializeList = serializeList((List) obj, traceFromParent);
                    if (traceFromParent != null) {
                        traceFromParent.close();
                    }
                    return bundleSerializeList;
                }
                if (obj instanceof Set) {
                    Bundle bundleSerializeSet = serializeSet((Set) obj, traceFromParent);
                    if (traceFromParent != null) {
                        traceFromParent.close();
                    }
                    return bundleSerializeSet;
                }
                if (obj.getClass().isEnum()) {
                    Bundle bundleSerializeEnum = serializeEnum(obj, traceFromParent);
                    if (traceFromParent != null) {
                        traceFromParent.close();
                    }
                    return bundleSerializeEnum;
                }
                if (obj instanceof Class) {
                    Bundle bundleSerializeClass = serializeClass((Class) obj);
                    if (traceFromParent != null) {
                        traceFromParent.close();
                    }
                    return bundleSerializeClass;
                }
                if (obj.getClass().isArray()) {
                    throw new TracedBundlerException("Object serializing contains an array, use a list or a set instead", traceFromParent);
                }
                if (obj instanceof Person) {
                    Bundle bundleSerializePerson = serializePerson((Person) obj);
                    if (traceFromParent != null) {
                        traceFromParent.close();
                    }
                    return bundleSerializePerson;
                }
                Bundle bundleSerializeObject = serializeObject(obj, traceFromParent);
                if (traceFromParent != null) {
                    traceFromParent.close();
                }
                return bundleSerializeObject;
            }
            Bundle bundleSerializePrimitive = serializePrimitive(obj, traceFromParent);
            if (traceFromParent != null) {
                traceFromParent.close();
            }
            return bundleSerializePrimitive;
        } catch (Throwable th) {
            if (traceFromParent != null) {
                try {
                    traceFromParent.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public static Object fromBundle(Bundle bundle) {
        if (Log.isLoggable("CarApp.Bun", 3)) {
            Log.d("CarApp.Bun", "Unbundling " + getBundledTypeName(bundle.getInt("tag_class_type")));
        }
        return fromBundle(bundle, Trace.create());
    }

    private static Object fromBundle(Bundle bundle, Trace trace) {
        ClassLoader classLoader = Bundler.class.getClassLoader();
        Objects.requireNonNull(classLoader);
        bundle.setClassLoader(classLoader);
        int i = bundle.getInt("tag_class_type");
        Trace traceFromParent = Trace.fromParent(bundle, Trace.bundleToString(bundle), trace);
        try {
            switch (i) {
                case 0:
                    Object objDeserializePrimitive = deserializePrimitive(bundle, traceFromParent);
                    if (traceFromParent != null) {
                        traceFromParent.close();
                    }
                    return objDeserializePrimitive;
                case 1:
                    Object objDeserializeIInterface = deserializeIInterface(bundle, traceFromParent);
                    if (traceFromParent != null) {
                        traceFromParent.close();
                    }
                    return objDeserializeIInterface;
                case 2:
                    Object objDeserializeMap = deserializeMap(bundle, traceFromParent);
                    if (traceFromParent != null) {
                        traceFromParent.close();
                    }
                    return objDeserializeMap;
                case 3:
                    Object objDeserializeSet = deserializeSet(bundle, traceFromParent);
                    if (traceFromParent != null) {
                        traceFromParent.close();
                    }
                    return objDeserializeSet;
                case 4:
                    Object objDeserializeList = deserializeList(bundle, traceFromParent);
                    if (traceFromParent != null) {
                        traceFromParent.close();
                    }
                    return objDeserializeList;
                case 5:
                    Object objDeserializeObject = deserializeObject(bundle, traceFromParent);
                    if (traceFromParent != null) {
                        traceFromParent.close();
                    }
                    return objDeserializeObject;
                case 6:
                    Object objDeserializeImage = deserializeImage(bundle, traceFromParent);
                    if (traceFromParent != null) {
                        traceFromParent.close();
                    }
                    return objDeserializeImage;
                case 7:
                    Object objDeserializeEnum = deserializeEnum(bundle, traceFromParent);
                    if (traceFromParent != null) {
                        traceFromParent.close();
                    }
                    return objDeserializeEnum;
                case 8:
                    Object objDeserializeClass = deserializeClass(bundle, traceFromParent);
                    if (traceFromParent != null) {
                        traceFromParent.close();
                    }
                    return objDeserializeClass;
                case 9:
                    Object objDeserializeIBinder = deserializeIBinder(bundle, traceFromParent);
                    if (traceFromParent != null) {
                        traceFromParent.close();
                    }
                    return objDeserializeIBinder;
                case 10:
                    Object objDeserializePerson = deserializePerson(bundle);
                    if (traceFromParent != null) {
                        traceFromParent.close();
                    }
                    return objDeserializePerson;
                default:
                    throw new TracedBundlerException("Unsupported class type in bundle: " + i, traceFromParent);
            }
        } catch (Throwable th) {
            if (traceFromParent != null) {
                try {
                    traceFromParent.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    private static Bundle serializePrimitive(Object obj, Trace trace) throws TracedBundlerException {
        Bundle bundle = new Bundle(2);
        bundle.putInt("tag_class_type", 0);
        if (obj instanceof Boolean) {
            bundle.putBoolean("tag_value", ((Boolean) obj).booleanValue());
            return bundle;
        }
        if (obj instanceof Byte) {
            bundle.putByte("tag_value", ((Byte) obj).byteValue());
            return bundle;
        }
        if (obj instanceof Character) {
            bundle.putChar("tag_value", ((Character) obj).charValue());
            return bundle;
        }
        if (obj instanceof Short) {
            bundle.putShort("tag_value", ((Short) obj).shortValue());
            return bundle;
        }
        if (obj instanceof Integer) {
            bundle.putInt("tag_value", ((Integer) obj).intValue());
            return bundle;
        }
        if (obj instanceof Long) {
            bundle.putLong("tag_value", ((Long) obj).longValue());
            return bundle;
        }
        if (obj instanceof Double) {
            bundle.putDouble("tag_value", ((Double) obj).doubleValue());
            return bundle;
        }
        if (obj instanceof Float) {
            bundle.putFloat("tag_value", ((Float) obj).floatValue());
            return bundle;
        }
        if (obj instanceof String) {
            bundle.putString("tag_value", (String) obj);
            return bundle;
        }
        if (obj instanceof Parcelable) {
            bundle.putParcelable("tag_value", (Parcelable) obj);
            return bundle;
        }
        throw new TracedBundlerException("Unsupported primitive type: ".concat(obj.getClass().getName()), trace);
    }

    private static Bundle serializeIInterface(IInterface iInterface) {
        Bundle bundle = new Bundle(3);
        String name = iInterface.getClass().getName();
        bundle.putInt("tag_class_type", 1);
        bundle.putBinder("tag_value", iInterface.asBinder());
        bundle.putString("tag_class_name", name);
        return bundle;
    }

    private static Bundle serializeIBinder(IBinder iBinder) {
        Bundle bundle = new Bundle(2);
        bundle.putInt("tag_class_type", 9);
        bundle.putBinder("tag_value", iBinder);
        return bundle;
    }

    private static Bundle serializeMap(Map<Object, Object> map, Trace trace) {
        Bundle bundle = new Bundle(2);
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        int i = 0;
        for (Map.Entry<Object, Object> entry : map.entrySet()) {
            Bundle bundle2 = new Bundle(2);
            bundle2.putBundle("tag_1", toBundle(entry.getKey(), "<key " + i + ">", trace));
            if (entry.getValue() != null) {
                bundle2.putBundle("tag_2", toBundle(entry.getValue(), "<value " + i + ">", trace));
            }
            i++;
            arrayList.add(bundle2);
        }
        bundle.putInt("tag_class_type", 2);
        bundle.putParcelableArrayList("tag_value", arrayList);
        return bundle;
    }

    private static Bundle serializeList(List<Object> list, Trace trace) {
        Bundle bundleSerializeCollection = serializeCollection(list, trace);
        bundleSerializeCollection.putInt("tag_class_type", 4);
        return bundleSerializeCollection;
    }

    private static Bundle serializeSet(Set<Object> set, Trace trace) {
        Bundle bundleSerializeCollection = serializeCollection(set, trace);
        bundleSerializeCollection.putInt("tag_class_type", 3);
        return bundleSerializeCollection;
    }

    private static Bundle serializeCollection(Collection<Object> collection, Trace trace) {
        Bundle bundle = new Bundle(2);
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        Iterator<Object> it = collection.iterator();
        int i = 0;
        while (it.hasNext()) {
            arrayList.add(toBundle(it.next(), "<item " + i + ">", trace));
            i++;
        }
        bundle.putParcelableArrayList("tag_value", arrayList);
        return bundle;
    }

    private static Bundle serializeEnum(Object obj, Trace trace) throws TracedBundlerException {
        Bundle bundle = new Bundle(3);
        bundle.putInt("tag_class_type", 7);
        try {
            bundle.putString("tag_value", (String) getClassOrSuperclassMethod(obj.getClass(), "name", trace).invoke(obj, null));
            bundle.putString("tag_class_name", obj.getClass().getName());
            return bundle;
        } catch (ReflectiveOperationException e) {
            throw new TracedBundlerException("Enum missing name method", trace, e);
        }
    }

    private static Bundle serializeClass(Class<?> cls) {
        Bundle bundle = new Bundle(2);
        bundle.putInt("tag_class_type", 8);
        bundle.putString("tag_value", cls.getName());
        return bundle;
    }

    private static Bundle serializeImage(IconCompat iconCompat) {
        Bundle bundle = new Bundle(2);
        bundle.putInt("tag_class_type", 6);
        bundle.putBundle("tag_value", iconCompat.toBundle());
        return bundle;
    }

    private static Bundle serializePerson(Person person) {
        Bundle bundle = person.toBundle();
        bundle.putInt("tag_class_type", 10);
        return bundle;
    }

    private static Bundle serializeObject(Object obj, Trace trace) throws TracedBundlerException {
        String name = obj.getClass().getName();
        try {
            obj.getClass().getDeclaredConstructor(null);
            List<Field> fields = getFields(obj.getClass());
            Bundle bundle = new Bundle(fields.size() + 2);
            bundle.putInt("tag_class_type", 5);
            bundle.putString("tag_class_name", name);
            for (Field field : fields) {
                field.setAccessible(true);
                String fieldName = getFieldName(field);
                try {
                    Object obj2 = field.get(obj);
                    if (obj2 != null) {
                        bundle.putParcelable(fieldName, toBundle(obj2, field.getName(), trace));
                    }
                } catch (IllegalAccessException e) {
                    throw new TracedBundlerException("Field is not accessible: " + fieldName, trace, e);
                }
            }
            return bundle;
        } catch (NoSuchMethodException e2) {
            throw new TracedBundlerException("Class to deserialize is missing a no args constructor: ".concat(name), trace, e2);
        }
    }

    private static Object deserializePrimitive(Bundle bundle, Trace trace) throws TracedBundlerException {
        Object obj = bundle.get("tag_value");
        if (obj != null) {
            return obj;
        }
        throw new TracedBundlerException("Bundle is missing the primitive value", trace);
    }

    private static Object deserializeIInterface(Bundle bundle, Trace trace) throws TracedBundlerException {
        IBinder binder = bundle.getBinder("tag_value");
        if (binder == null) {
            throw new TracedBundlerException("Bundle is missing the binder", trace);
        }
        String string = bundle.getString("tag_class_name");
        if (string == null) {
            throw new TracedBundlerException("Bundle is missing IInterface class name", trace);
        }
        try {
            Object objInvoke = getClassOrSuperclassMethod(Class.forName(string), "asInterface", trace).invoke(null, binder);
            if (objInvoke != null) {
                return objInvoke;
            }
            throw new TracedBundlerException("Failed to get interface from binder", trace);
        } catch (ClassNotFoundException e) {
            throw new TracedBundlerException("Binder for unknown IInterface: ".concat(string), trace, e);
        } catch (ReflectiveOperationException e2) {
            throw new TracedBundlerException("Method to create IInterface from a Binder is not accessible for interface: ".concat(string), trace, e2);
        }
    }

    private static Object deserializeIBinder(Bundle bundle, Trace trace) throws TracedBundlerException {
        IBinder binder = bundle.getBinder("tag_value");
        if (binder != null) {
            return binder;
        }
        throw new TracedBundlerException("Bundle is missing the binder", trace);
    }

    private static Object deserializeMap(Bundle bundle, Trace trace) throws TracedBundlerException {
        ArrayList parcelableArrayList = bundle.getParcelableArrayList("tag_value");
        if (parcelableArrayList == null) {
            throw new TracedBundlerException("Bundle is missing the map", trace);
        }
        HashMap map = new HashMap();
        int size = parcelableArrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = parcelableArrayList.get(i);
            i++;
            Bundle bundle2 = (Bundle) ((Parcelable) obj);
            Bundle bundle3 = bundle2.getBundle("tag_1");
            Bundle bundle4 = bundle2.getBundle("tag_2");
            if (bundle3 == null) {
                throw new TracedBundlerException("Bundle is missing key", trace);
            }
            map.put(fromBundle(bundle3, trace), bundle4 == null ? null : fromBundle(bundle4, trace));
        }
        return map;
    }

    private static Object deserializeSet(Bundle bundle, Trace trace) {
        return deserializeCollection(bundle, new HashSet(), trace);
    }

    private static Object deserializeList(Bundle bundle, Trace trace) {
        return deserializeCollection(bundle, new ArrayList(), trace);
    }

    private static Object deserializeCollection(Bundle bundle, Collection<Object> collection, Trace trace) throws TracedBundlerException {
        ArrayList parcelableArrayList = bundle.getParcelableArrayList("tag_value");
        if (parcelableArrayList == null) {
            throw new TracedBundlerException("Bundle is missing the collection", trace);
        }
        int size = parcelableArrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = parcelableArrayList.get(i);
            i++;
            collection.add(fromBundle((Bundle) ((Parcelable) obj), trace));
        }
        return collection;
    }

    private static Object deserializeEnum(Bundle bundle, Trace trace) throws TracedBundlerException {
        String string = bundle.getString("tag_value");
        if (string == null) {
            throw new TracedBundlerException("Missing enum name [" + string + "]", trace);
        }
        String string2 = bundle.getString("tag_class_name");
        if (string2 == null) {
            throw new TracedBundlerException("Missing enum className [" + string2 + "]", trace);
        }
        try {
            return getClassOrSuperclassMethod(Class.forName(string2), "valueOf", trace).invoke(null, string);
        } catch (ClassNotFoundException e) {
            throw new TracedBundlerException("Enum class [" + string2 + "] not found", trace, e);
        } catch (IllegalArgumentException e2) {
            throw new TracedBundlerException("Enum value [" + string + "] does not exist in enum class [" + string2 + "]", trace, e2);
        } catch (ReflectiveOperationException e3) {
            throw new TracedBundlerException("Enum of class [" + string2 + "] missing valueOf method", trace, e3);
        }
    }

    private static Object deserializeClass(Bundle bundle, Trace trace) throws TracedBundlerException {
        String string = bundle.getString("tag_value");
        if (string == null) {
            throw new TracedBundlerException("Class is missing the class name", trace);
        }
        try {
            return Class.forName(string);
        } catch (ClassNotFoundException e) {
            throw new TracedBundlerException("Class name is unknown: ".concat(string), trace, e);
        }
    }

    private static Object deserializeImage(Bundle bundle, Trace trace) throws TracedBundlerException {
        Bundle bundle2 = bundle.getBundle("tag_value");
        if (bundle2 == null) {
            throw new TracedBundlerException("IconCompat bundle is null", trace);
        }
        IconCompat iconCompatCreateFromBundle = IconCompat.createFromBundle(bundle2);
        if (iconCompatCreateFromBundle != null) {
            return iconCompatCreateFromBundle;
        }
        throw new TracedBundlerException("Failed to create IconCompat from bundle", trace);
    }

    private static Object deserializePerson(Bundle bundle) {
        return Person.fromBundle(bundle);
    }

    private static Object deserializeObject(Bundle bundle, Trace trace) throws TracedBundlerException {
        String string = bundle.getString("tag_class_name");
        if (string == null) {
            throw new TracedBundlerException("Bundle is missing the class name", trace);
        }
        try {
            Class<?> cls = Class.forName(string);
            Constructor<?> declaredConstructor = cls.getDeclaredConstructor(null);
            declaredConstructor.setAccessible(true);
            Object objNewInstance = declaredConstructor.newInstance(null);
            for (Field field : getFields(cls)) {
                field.setAccessible(true);
                String fieldName = getFieldName(field);
                Object obj = bundle.get(fieldName);
                if (obj == null) {
                    obj = bundle.get(fieldName.replaceAll("androidx.core.graphics.drawable.IconCompat", "android.support.v4.graphics.drawable.IconCompat"));
                }
                if (obj instanceof Bundle) {
                    field.set(objNewInstance, fromBundle((Bundle) obj, trace));
                } else if (obj == null && Log.isLoggable("CarApp.Bun", 3)) {
                    Log.d("CarApp.Bun", "Value is null for field: " + field);
                }
            }
            return objNewInstance;
        } catch (ClassNotFoundException e) {
            throw new TracedBundlerException("Object for unknown class: ".concat(string), trace, e);
        } catch (IllegalArgumentException e2) {
            throw new TracedBundlerException("Failed to deserialize class: ".concat(string), trace, e2);
        } catch (NoSuchMethodException e3) {
            throw new TracedBundlerException("Object missing no args constructor: ".concat(string), trace, e3);
        } catch (ReflectiveOperationException e4) {
            throw new TracedBundlerException("Constructor or field is not accessible: ".concat(string), trace, e4);
        }
    }

    public static String getFieldName(Field field) {
        return getFieldName(field.getDeclaringClass().getName(), field.getName());
    }

    public static String getFieldName(String str, String str2) {
        return str + str2;
    }

    private static List<Field> getFields(Class<?> cls) {
        ArrayList arrayList = new ArrayList();
        if (cls != null && cls != Object.class) {
            for (Field field : cls.getDeclaredFields()) {
                if (!Modifier.isStatic(field.getModifiers())) {
                    arrayList.add(field);
                }
            }
            arrayList.addAll(getFields(cls.getSuperclass()));
        }
        return arrayList;
    }

    private static Method getClassOrSuperclassMethod(Class<?> cls, String str, Trace trace) throws TracedBundlerException {
        if (cls == null || cls == Object.class) {
            throw new TracedBundlerException("No method " + str + " in class " + cls, trace);
        }
        for (Method method : cls.getDeclaredMethods()) {
            if (method.getName().equals(str)) {
                method.setAccessible(true);
                return method;
            }
        }
        return getClassOrSuperclassMethod(cls.getSuperclass(), str, trace);
    }

    public static String getUnobfuscatedClassName(Class<?> cls) {
        String str = UNOBFUSCATED_TYPE_NAMES.get(cls);
        if (str == null) {
            if (List.class.isAssignableFrom(cls)) {
                return "<List>";
            }
            if (Map.class.isAssignableFrom(cls)) {
                return "<Map>";
            }
            if (Set.class.isAssignableFrom(cls)) {
                return "<Set>";
            }
        }
        return str == null ? cls.getSimpleName() : str;
    }

    public static String getBundledTypeName(int i) {
        String str = BUNDLED_TYPE_NAMES.get(Integer.valueOf(i));
        return str == null ? "unknown" : str;
    }

    private static Map<Integer, String> initBundledTypeNames() {
        ArrayMap arrayMap = new ArrayMap();
        arrayMap.put(0, "primitive");
        arrayMap.put(1, "iInterface");
        arrayMap.put(9, "iBinder");
        arrayMap.put(2, "map");
        arrayMap.put(3, "set");
        arrayMap.put(4, "list");
        arrayMap.put(5, "object");
        arrayMap.put(6, "image");
        return arrayMap;
    }

    private static Map<Class<?>, String> initUnobfuscatedTypeNames() {
        ArrayMap arrayMap = new ArrayMap();
        arrayMap.put(Boolean.class, "bool");
        arrayMap.put(Byte.class, "byte");
        arrayMap.put(Short.class, "short");
        arrayMap.put(Integer.class, "int");
        arrayMap.put(Long.class, "long");
        arrayMap.put(Double.class, "double");
        arrayMap.put(Float.class, "float");
        arrayMap.put(String.class, "string");
        arrayMap.put(Parcelable.class, "parcelable");
        arrayMap.put(Map.class, "map");
        arrayMap.put(List.class, "list");
        arrayMap.put(IconCompat.class, "image");
        return arrayMap;
    }

    public static boolean isPrimitiveType(Object obj) {
        return (obj instanceof Boolean) || (obj instanceof Byte) || (obj instanceof Character) || (obj instanceof Short) || (obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Double) || (obj instanceof Float) || (obj instanceof String);
    }

    public static class Frame {
        private final String mDisplay;
        private final Object mObj;

        public Frame(Object obj, String str) {
            this.mObj = obj;
            this.mDisplay = str;
        }

        public Object getObj() {
            return this.mObj;
        }

        public String toString() {
            return toFlatString();
        }

        public String toFlatString() {
            return "[" + this.mDisplay + ", " + Bundler.getUnobfuscatedClassName(this.mObj.getClass()) + "]";
        }

        public String toTraceString() {
            return Bundler.getUnobfuscatedClassName(this.mObj.getClass()) + " " + this.mDisplay;
        }
    }

    public static class Trace implements AutoCloseable {
        private final ArrayDeque<Frame> mFrames;
        private String[] mIndents;

        public static Trace create() {
            return new Trace(null, _UrlKt.FRAGMENT_ENCODE_SET, new ArrayDeque());
        }

        public static Trace fromParent(Object obj, String str, Trace trace) {
            return new Trace(obj, str, trace.mFrames);
        }

        public static String bundleToString(Bundle bundle) {
            return Bundler.getBundledTypeName(bundle.getInt("tag_class_type"));
        }

        @Override // java.lang.AutoCloseable
        public void close() {
            this.mFrames.removeFirst();
        }

        public boolean find(Object obj) {
            Iterator<Frame> it = this.mFrames.iterator();
            while (it.hasNext()) {
                if (it.next().getObj() == obj) {
                    return true;
                }
            }
            return false;
        }

        public String toFlatString() {
            StringBuilder sb = new StringBuilder();
            int iMin = Math.min(this.mFrames.size(), 8);
            Iterator<Frame> itDescendingIterator = this.mFrames.descendingIterator();
            while (itDescendingIterator.hasNext()) {
                int i = iMin - 1;
                if (iMin <= 0) {
                    break;
                }
                sb.append(itDescendingIterator.next().toFlatString());
                iMin = i;
            }
            if (itDescendingIterator.hasNext()) {
                sb.append("[...]");
            }
            return sb.toString();
        }

        private String getIndent(int i) {
            int iMin = Math.min(i, 11);
            if (this.mIndents == null) {
                this.mIndents = new String[12];
            }
            String strRepeatChar = this.mIndents[iMin];
            if (strRepeatChar == null) {
                strRepeatChar = repeatChar(' ', iMin);
                if (iMin == 11) {
                    strRepeatChar = strRepeatChar + "...";
                }
                this.mIndents[iMin] = strRepeatChar;
            }
            return strRepeatChar;
        }

        private static String repeatChar(char c2, int i) {
            char[] cArr = new char[i];
            Arrays.fill(cArr, c2);
            return new String(cArr);
        }

        private Trace(Object obj, String str, ArrayDeque<Frame> arrayDeque) {
            this.mFrames = arrayDeque;
            if (obj != null) {
                Frame frame = new Frame(obj, str);
                arrayDeque.addFirst(frame);
                if (Log.isLoggable("CarApp.Bun", 2)) {
                    Log.v("CarApp.Bun", getIndent(arrayDeque.size()) + frame.toTraceString());
                }
            }
        }
    }

    public static class TracedBundlerException extends BundlerException {
        public TracedBundlerException(String str, Trace trace) {
            super(str + ", frames: " + trace.toFlatString());
        }

        public TracedBundlerException(String str, Trace trace, Throwable th) {
            super(str + ", frames: " + trace.toFlatString(), th);
        }
    }

    public static class CycleDetectedBundlerException extends TracedBundlerException {
        public CycleDetectedBundlerException(String str, Trace trace) {
            super(str, trace);
        }
    }
}
