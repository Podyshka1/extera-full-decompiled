package com.google.firebase.inject;

/* JADX INFO: loaded from: classes.dex */
public interface Deferred {

    public interface DeferredHandler {
        void handle(Provider provider);
    }

    void whenAvailable(DeferredHandler deferredHandler);
}
