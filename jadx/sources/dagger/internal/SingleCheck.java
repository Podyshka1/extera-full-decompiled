package dagger.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class SingleCheck implements Provider {
    private static final Object UNINITIALIZED = new Object();
    private volatile Object instance = UNINITIALIZED;
    private volatile Provider provider;

    private SingleCheck(Provider provider) {
        this.provider = provider;
    }

    @Override // javax.inject.Provider
    public Object get() {
        Object obj = this.instance;
        if (obj != UNINITIALIZED) {
            return obj;
        }
        Provider provider = this.provider;
        if (provider == null) {
            return this.instance;
        }
        Object obj2 = provider.get();
        this.instance = obj2;
        this.provider = null;
        return obj2;
    }

    public static Provider provider(Provider provider) {
        return ((provider instanceof SingleCheck) || (provider instanceof DoubleCheck)) ? provider : new SingleCheck((Provider) Preconditions.checkNotNull(provider));
    }
}
