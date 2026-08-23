package com.google.firebase.platforminfo;

import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
abstract class LibraryVersion {
    @Nonnull
    public abstract String getLibraryName();

    @Nonnull
    public abstract String getVersion();

    public static LibraryVersion create(String str, String str2) {
        return new AutoValue_LibraryVersion(str, str2);
    }
}
