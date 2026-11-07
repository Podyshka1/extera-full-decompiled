package com.google.firebase.platforminfo;

import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_LibraryVersion extends LibraryVersion {
    private final String libraryName;
    private final String version;

    public AutoValue_LibraryVersion(String str, String str2) {
        if (str == null) {
            f$$ExternalSyntheticBUOutline2.m216m("Null libraryName");
            throw null;
        }
        this.libraryName = str;
        if (str2 == null) {
            f$$ExternalSyntheticBUOutline2.m216m("Null version");
            throw null;
        }
        this.version = str2;
    }

    @Override // com.google.firebase.platforminfo.LibraryVersion
    public String getLibraryName() {
        return this.libraryName;
    }

    @Override // com.google.firebase.platforminfo.LibraryVersion
    public String getVersion() {
        return this.version;
    }

    public String toString() {
        return "LibraryVersion{libraryName=" + this.libraryName + ", version=" + this.version + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof LibraryVersion) {
            LibraryVersion libraryVersion = (LibraryVersion) obj;
            if (this.libraryName.equals(libraryVersion.getLibraryName()) && this.version.equals(libraryVersion.getVersion())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return this.version.hashCode() ^ ((this.libraryName.hashCode() ^ 1000003) * 1000003);
    }
}
