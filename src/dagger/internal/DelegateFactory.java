package dagger.internal;

import org.mvel2.asm.MethodWriter$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
public final class DelegateFactory<T> implements Provider {
    private Provider<T> delegate;

    @Override // javax.inject.Provider
    public T get() {
        Provider<T> provider = this.delegate;
        if (provider == null) {
            MethodWriter$$ExternalSyntheticBUOutline0.m1007m();
            return null;
        }
        return provider.get();
    }

    public static <T> void setDelegate(Provider<T> provider, Provider<T> provider2) {
        setDelegateInternal((DelegateFactory) provider, provider2);
    }

    private static <T> void setDelegateInternal(DelegateFactory<T> delegateFactory, Provider<T> provider) {
        Preconditions.checkNotNull(provider);
        if (((DelegateFactory) delegateFactory).delegate != null) {
            MethodWriter$$ExternalSyntheticBUOutline0.m1007m();
        } else {
            ((DelegateFactory) delegateFactory).delegate = provider;
        }
    }
}
