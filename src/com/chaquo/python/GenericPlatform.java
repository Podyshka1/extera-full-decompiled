package com.chaquo.python;

import com.chaquo.python.Python;

/* JADX INFO: loaded from: classes4.dex */
public class GenericPlatform extends Python.Platform {
    private String mPath = System.getenv("PYTHONPATH");

    public GenericPlatform() {
        if (System.getProperty("java.vendor").toLowerCase().contains("android")) {
            throw new RuntimeException("Cannot use GenericPlatform on Android. Call Python.start(new AndroidPlatform(context)) before using Python, or use PyApplication to do this automatically.");
        }
        System.loadLibrary("chaquopy_java");
    }

    @Override // com.chaquo.python.Python.Platform
    public String getPath() {
        return this.mPath;
    }

    public GenericPlatform setPath(String str) {
        this.mPath = str;
        return this;
    }
}
