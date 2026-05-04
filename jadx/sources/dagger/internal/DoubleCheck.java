package dagger.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class DoubleCheck implements Provider {
    private static final Object UNINITIALIZED = new Object();
    private volatile Object instance = UNINITIALIZED;
    private volatile Provider provider;

    private DoubleCheck(Provider provider) {
        this.provider = provider;
    }

    @Override // javax.inject.Provider
    public Object get() {
        Object obj = this.instance;
        return obj == UNINITIALIZED ? getSynchronized() : obj;
    }

    private synchronized Object getSynchronized() {
        Object obj;
        obj = this.instance;
        if (obj == UNINITIALIZED) {
            obj = this.provider.get();
            this.instance = reentrantCheck(this.instance, obj);
            this.provider = null;
        }
        return obj;
    }

    private static Object reentrantCheck(Object obj, Object obj2) {
        if (obj == UNINITIALIZED || obj == obj2) {
            return obj2;
        }
        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj + " & " + obj2 + ". This is likely due to a circular dependency.");
    }

    public static Provider provider(Provider provider) {
        Preconditions.checkNotNull(provider);
        return provider instanceof DoubleCheck ? provider : new DoubleCheck(provider);
    }
}
