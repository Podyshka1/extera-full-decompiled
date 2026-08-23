package com.yandex.runtime.internal;

import java.io.File;

/* JADX INFO: loaded from: classes5.dex */
class AvailableSpace {
    public static long getAvailableSpaceOnFilesystem(String str) {
        return new File(str).getUsableSpace();
    }
}
