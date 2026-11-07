package com.exteragram.messenger.plugins.catalog.db;

import kotlin.Metadata;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\n\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003¢\u0006\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000b¨\u0006\u0010"}, d2 = {"Lcom/exteragram/messenger/plugins/catalog/db/CatalogEntryVersion;", _UrlKt.FRAGMENT_ENCODE_SET, "entryId", _UrlKt.FRAGMENT_ENCODE_SET, "date", "documentId", _UrlKt.FRAGMENT_ENCODE_SET, "updatedAt", "<init>", "(IIJI)V", "getEntryId", "()I", "getDate", "getDocumentId", "()J", "getUpdatedAt", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public final class CatalogEntryVersion {
    private final int date;
    private final long documentId;
    private final int entryId;
    private final int updatedAt;

    public CatalogEntryVersion(int i, int i2, long j, int i3) {
        this.entryId = i;
        this.date = i2;
        this.documentId = j;
        this.updatedAt = i3;
    }

    public final int getEntryId() {
        return this.entryId;
    }

    public final int getDate() {
        return this.date;
    }

    public final long getDocumentId() {
        return this.documentId;
    }

    public final int getUpdatedAt() {
        return this.updatedAt;
    }
}
