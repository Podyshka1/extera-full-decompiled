package com.exteragram.messenger.icons;

import android.util.SparseIntArray;
import java.io.File;
import java.util.Map;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class IconPack {
    public static final Companion Companion = new Companion(null);
    private final String author;
    private final Map icons;

    /* JADX INFO: renamed from: id */
    private final String f296id;
    private final File location;
    private final String name;
    private final SparseIntArray preinstalledMap;
    private final String version;

    public static /* synthetic */ IconPack copy$default(IconPack iconPack, String str, String str2, String str3, String str4, Map map, SparseIntArray sparseIntArray, File file, int i, Object obj) {
        if ((i & 1) != 0) {
            str = iconPack.f296id;
        }
        if ((i & 2) != 0) {
            str2 = iconPack.name;
        }
        if ((i & 4) != 0) {
            str3 = iconPack.author;
        }
        if ((i & 8) != 0) {
            str4 = iconPack.version;
        }
        if ((i & 16) != 0) {
            map = iconPack.icons;
        }
        if ((i & 32) != 0) {
            sparseIntArray = iconPack.preinstalledMap;
        }
        if ((i & 64) != 0) {
            file = iconPack.location;
        }
        SparseIntArray sparseIntArray2 = sparseIntArray;
        File file2 = file;
        Map map2 = map;
        String str5 = str3;
        return iconPack.copy(str, str2, str5, str4, map2, sparseIntArray2, file2);
    }

    public final IconPack copy(String id, String name, String author, String version, Map icons, SparseIntArray sparseIntArray, File file) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(author, "author");
        Intrinsics.checkNotNullParameter(version, "version");
        Intrinsics.checkNotNullParameter(icons, "icons");
        return new IconPack(id, name, author, version, icons, sparseIntArray, file);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IconPack)) {
            return false;
        }
        IconPack iconPack = (IconPack) obj;
        return Intrinsics.areEqual(this.f296id, iconPack.f296id) && Intrinsics.areEqual(this.name, iconPack.name) && Intrinsics.areEqual(this.author, iconPack.author) && Intrinsics.areEqual(this.version, iconPack.version) && Intrinsics.areEqual(this.icons, iconPack.icons) && Intrinsics.areEqual(this.preinstalledMap, iconPack.preinstalledMap) && Intrinsics.areEqual(this.location, iconPack.location);
    }

    public int hashCode() {
        int iHashCode = ((((((((this.f296id.hashCode() * 31) + this.name.hashCode()) * 31) + this.author.hashCode()) * 31) + this.version.hashCode()) * 31) + this.icons.hashCode()) * 31;
        SparseIntArray sparseIntArray = this.preinstalledMap;
        int iHashCode2 = (iHashCode + (sparseIntArray == null ? 0 : sparseIntArray.hashCode())) * 31;
        File file = this.location;
        return iHashCode2 + (file != null ? file.hashCode() : 0);
    }

    public String toString() {
        return "IconPack(id=" + this.f296id + ", name=" + this.name + ", author=" + this.author + ", version=" + this.version + ", icons=" + this.icons + ", preinstalledMap=" + this.preinstalledMap + ", location=" + this.location + ')';
    }

    public IconPack(String id, String name, String author, String version, Map icons, SparseIntArray sparseIntArray, File file) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(author, "author");
        Intrinsics.checkNotNullParameter(version, "version");
        Intrinsics.checkNotNullParameter(icons, "icons");
        this.f296id = id;
        this.name = name;
        this.author = author;
        this.version = version;
        this.icons = icons;
        this.preinstalledMap = sparseIntArray;
        this.location = file;
    }

    public final String getId() {
        return this.f296id;
    }

    public final String getName() {
        return this.name;
    }

    public final String getAuthor() {
        return this.author;
    }

    public /* synthetic */ IconPack(String str, String str2, String str3, String str4, Map map, SparseIntArray sparseIntArray, File file, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, (i & 8) != 0 ? "1.0" : str4, (i & 16) != 0 ? MapsKt.emptyMap() : map, (i & 32) != 0 ? null : sparseIntArray, (i & 64) != 0 ? null : file);
    }

    public final String getVersion() {
        return this.version;
    }

    public final Map getIcons() {
        return this.icons;
    }

    public final SparseIntArray getPreinstalledMap() {
        return this.preinstalledMap;
    }

    public final File getLocation() {
        return this.location;
    }

    public final boolean isBase() {
        return StringsKt.startsWith$default(this.f296id, "base.", false, 2, (Object) null);
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
