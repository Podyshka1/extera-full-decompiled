package com.google.firebase.components;

import com.google.firebase.inject.Deferred;
import com.google.firebase.inject.Provider;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
class OptionalProvider<T> implements Provider<T>, Deferred<T> {
    private volatile Provider<T> delegate;
    private Deferred.DeferredHandler<T> handler;
    private static final Deferred.DeferredHandler<Object> NOOP_HANDLER = new Deferred.DeferredHandler() { // from class: com.google.firebase.components.OptionalProvider$$ExternalSyntheticLambda0
        @Override // com.google.firebase.inject.Deferred.DeferredHandler
        public final void handle(Provider provider) {
            OptionalProvider.$r8$lambda$ytZhMnMbf78qjlsbWoYlWtBGovI(provider);
        }
    };
    private static final Provider<Object> EMPTY_PROVIDER = new Provider() { // from class: com.google.firebase.components.OptionalProvider$$ExternalSyntheticLambda1
        @Override // com.google.firebase.inject.Provider
        public final Object get() {
            return OptionalProvider.$r8$lambda$42DdGLxm8XDmnYxP5XsnqhLiudg();
        }
    };

    public static /* synthetic */ void $r8$lambda$ytZhMnMbf78qjlsbWoYlWtBGovI(Provider provider) {
    }

    public static /* synthetic */ Object $r8$lambda$42DdGLxm8XDmnYxP5XsnqhLiudg() {
        return null;
    }

    private OptionalProvider(Deferred.DeferredHandler<T> deferredHandler, Provider<T> provider) {
        this.handler = deferredHandler;
        this.delegate = provider;
    }

    public static <T> OptionalProvider<T> empty() {
        return new OptionalProvider<>(NOOP_HANDLER, EMPTY_PROVIDER);
    }

    public static <T> OptionalProvider<T> of(Provider<T> provider) {
        return new OptionalProvider<>(null, provider);
    }

    @Override // com.google.firebase.inject.Provider
    public T get() {
        return this.delegate.get();
    }

    public void set(Provider<T> provider) {
        Deferred.DeferredHandler<T> deferredHandler;
        if (this.delegate != EMPTY_PROVIDER) {
            Segment$$ExternalSyntheticBUOutline1.m925m("provide() can be called only once.");
            return;
        }
        synchronized (this) {
            deferredHandler = this.handler;
            this.handler = null;
            this.delegate = provider;
        }
        deferredHandler.handle(provider);
    }

    @Override // com.google.firebase.inject.Deferred
    public void whenAvailable(final Deferred.DeferredHandler<T> deferredHandler) {
        Provider<T> provider;
        Provider<T> provider2;
        Provider<T> provider3 = this.delegate;
        Provider<Object> provider4 = EMPTY_PROVIDER;
        if (provider3 != provider4) {
            deferredHandler.handle(provider3);
            return;
        }
        synchronized (this) {
            provider = this.delegate;
            if (provider != provider4) {
                provider2 = provider;
            } else {
                final Deferred.DeferredHandler<T> deferredHandler2 = this.handler;
                this.handler = new Deferred.DeferredHandler() { // from class: com.google.firebase.components.OptionalProvider$$ExternalSyntheticLambda2
                    @Override // com.google.firebase.inject.Deferred.DeferredHandler
                    public final void handle(Provider provider5) {
                        OptionalProvider.m2991$r8$lambda$SG6J0sYOwGLatJJ8BJZBQOrQm8(deferredHandler2, deferredHandler, provider5);
                    }
                };
                provider2 = null;
            }
        }
        if (provider2 != null) {
            deferredHandler.handle(provider);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$SG6J0sYOwGLatJJ8BJZBQ-OrQm8, reason: not valid java name */
    public static /* synthetic */ void m2991$r8$lambda$SG6J0sYOwGLatJJ8BJZBQOrQm8(Deferred.DeferredHandler deferredHandler, Deferred.DeferredHandler deferredHandler2, Provider provider) {
        deferredHandler.handle(provider);
        deferredHandler2.handle(provider);
    }
}
