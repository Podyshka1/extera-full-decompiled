package androidx.fragment.app;

import androidx.collection.SimpleArrayMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class FragmentFactory {
    private static final SimpleArrayMap<ClassLoader, SimpleArrayMap<String, Class<?>>> sClassCacheMap = new SimpleArrayMap<>();

    public abstract Fragment instantiate(ClassLoader classLoader, String str);

    private static Class<?> loadClass(ClassLoader classLoader, String str) throws ClassNotFoundException {
        SimpleArrayMap<ClassLoader, SimpleArrayMap<String, Class<?>>> simpleArrayMap = sClassCacheMap;
        SimpleArrayMap<String, Class<?>> simpleArrayMap2 = simpleArrayMap.get(classLoader);
        if (simpleArrayMap2 == null) {
            simpleArrayMap2 = new SimpleArrayMap<>();
            simpleArrayMap.put(classLoader, simpleArrayMap2);
        }
        Class<?> cls = simpleArrayMap2.get(str);
        if (cls != null) {
            return cls;
        }
        Class<?> cls2 = Class.forName(str, false, classLoader);
        simpleArrayMap2.put(str, cls2);
        return cls2;
    }

    public static boolean isFragmentClass(ClassLoader classLoader, String str) {
        try {
            return Fragment.class.isAssignableFrom(loadClass(classLoader, str));
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public static Class<? extends Fragment> loadFragmentClass(ClassLoader classLoader, String str) {
        try {
            return loadClass(classLoader, str);
        } catch (ClassCastException e) {
            Fragment$$ExternalSyntheticBUOutline1.m148m(str, ": make sure class is a valid subclass of Fragment", e);
            return null;
        } catch (ClassNotFoundException e2) {
            Fragment$$ExternalSyntheticBUOutline1.m148m(str, ": make sure class name exists", e2);
            return null;
        }
    }
}
