package androidx.car.app.managers;

import com.sun.jna.Native$$ExternalSyntheticBUOutline0;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class ManagerCache {
    private final Map<Class<?>, Manager> mValues = new HashMap();
    private final Map<Class<?>, RuntimeException> mExceptions = new HashMap();
    private final Map<Class<?>, ManagerFactory<? extends Manager>> mFactories = new HashMap();
    private final Map<String, Class<?>> mClassByName = new HashMap();
    private final Map<Class<?>, String> mNameByClass = new HashMap();

    public <T extends Manager> void addFactory(Class<T> cls, String str, ManagerFactory<T> managerFactory) {
        this.mFactories.put(cls, managerFactory);
        if (str != null) {
            this.mClassByName.put(str, cls);
            this.mNameByClass.put(cls, str);
        }
    }

    public <T> T getOrCreate(Class<T> cls) {
        RuntimeException runtimeException = this.mExceptions.get(cls);
        if (runtimeException != null) {
            throw runtimeException;
        }
        T t = (T) this.mValues.get(cls);
        if (t != null) {
            return t;
        }
        ManagerFactory<? extends Manager> managerFactory = this.mFactories.get(cls);
        if (managerFactory == null) {
            Native$$ExternalSyntheticBUOutline0.m512m("The class '", cls, "' does not correspond to a car service");
            return null;
        }
        try {
            T t2 = (T) managerFactory.create();
            this.mValues.put((Class<?>) cls, (Manager) t2);
            return t2;
        } catch (RuntimeException e) {
            this.mExceptions.put(cls, e);
            throw e;
        }
    }
}
