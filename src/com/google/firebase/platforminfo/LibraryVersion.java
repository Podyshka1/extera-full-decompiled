package com.google.firebase.platforminfo;

/* JADX INFO: loaded from: classes.dex */
abstract class LibraryVersion {
    public abstract String getLibraryName();

    public abstract String getVersion();

    public static LibraryVersion create(String str, String str2) {
        return new AutoValue_LibraryVersion(str, str2);
    }
}
