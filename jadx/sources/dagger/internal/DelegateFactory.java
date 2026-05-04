package dagger.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class DelegateFactory implements Provider {
    private Provider delegate;

    @Override // javax.inject.Provider
    public Object get() {
        Provider provider = this.delegate;
        if (provider == null) {
            throw new IllegalStateException();
        }
        return provider.get();
    }

    public static void setDelegate(Provider provider, Provider provider2) {
        setDelegateInternal((DelegateFactory) provider, provider2);
    }

    private static void setDelegateInternal(DelegateFactory delegateFactory, Provider provider) {
        Preconditions.checkNotNull(provider);
        if (delegateFactory.delegate != null) {
            throw new IllegalStateException();
        }
        delegateFactory.delegate = provider;
    }
}
