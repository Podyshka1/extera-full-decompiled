package com.yandex.runtime.subscription;

import com.yandex.runtime.NativeObject;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Subscription<Listener> {
    private Map<Listener, NativeObject> storage = new WeakHashMap();

    public abstract NativeObject createNativeListener(Listener listener);

    public NativeObject get(Listener listener) {
        NativeObject nativeObjectCreateNativeListener = this.storage.get(listener);
        if (nativeObjectCreateNativeListener == null && listener != null) {
            nativeObjectCreateNativeListener = createNativeListener(listener);
        }
        this.storage.put(listener, nativeObjectCreateNativeListener);
        return nativeObjectCreateNativeListener;
    }
}
