package com.google.firebase.components;

import com.google.firebase.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public class Lazy implements Provider {
    private static final Object UNINITIALIZED = new Object();
    private volatile Object instance = UNINITIALIZED;
    private volatile Provider provider;

    public Lazy(Provider provider) {
        this.provider = provider;
    }

    @Override // com.google.firebase.inject.Provider
    public Object get() {
        Object obj;
        Object obj2 = this.instance;
        Object obj3 = UNINITIALIZED;
        if (obj2 != obj3) {
            return obj2;
        }
        synchronized (this) {
            try {
                obj = this.instance;
                if (obj == obj3) {
                    obj = this.provider.get();
                    this.instance = obj;
                    this.provider = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }
}
