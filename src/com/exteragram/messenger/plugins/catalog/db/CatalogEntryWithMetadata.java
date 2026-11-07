package com.exteragram.messenger.plugins.catalog.db;

import kotlin.Metadata;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/exteragram/messenger/plugins/catalog/db/CatalogEntryWithMetadata;", _UrlKt.FRAGMENT_ENCODE_SET, "entry", "Lcom/exteragram/messenger/plugins/catalog/db/CatalogEntryEntity;", "metadata", "Lcom/exteragram/messenger/plugins/catalog/db/PluginMetadataEntity;", "<init>", "(Lcom/exteragram/messenger/plugins/catalog/db/CatalogEntryEntity;Lcom/exteragram/messenger/plugins/catalog/db/PluginMetadataEntity;)V", "getEntry", "()Lcom/exteragram/messenger/plugins/catalog/db/CatalogEntryEntity;", "getMetadata", "()Lcom/exteragram/messenger/plugins/catalog/db/PluginMetadataEntity;", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public final class CatalogEntryWithMetadata {
    private final CatalogEntryEntity entry;
    private final PluginMetadataEntity metadata;

    public CatalogEntryWithMetadata(CatalogEntryEntity catalogEntryEntity, PluginMetadataEntity pluginMetadataEntity) {
        this.entry = catalogEntryEntity;
        this.metadata = pluginMetadataEntity;
    }

    public final CatalogEntryEntity getEntry() {
        return this.entry;
    }

    public final PluginMetadataEntity getMetadata() {
        return this.metadata;
    }
}
