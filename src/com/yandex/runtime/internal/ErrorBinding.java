package com.yandex.runtime.internal;

import com.yandex.runtime.Error;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class ErrorBinding implements Error {
    private final NativeObject nativeObject;

    @Override // com.yandex.runtime.Error
    public native boolean isValid();

    public ErrorBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
