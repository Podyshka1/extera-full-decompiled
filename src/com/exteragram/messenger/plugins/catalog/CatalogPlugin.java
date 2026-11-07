package com.exteragram.messenger.plugins.catalog;

import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.plugins.catalog.PluginCategory;
import com.exteragram.messenger.plugins.catalog.db.CatalogEntryEntity;
import com.exteragram.messenger.plugins.catalog.db.CatalogEntryWithMetadata;
import com.exteragram.messenger.plugins.catalog.db.PluginMetadataEntity;
import com.google.android.gms.cast.MediaTrack;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 -2\u00020\u0001:\u0001-Bc\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\b\u0010\f\u001a\u0004\u0018\u00010\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0005\u0012\u0006\u0010\u0010\u001a\u00020\u0005¢\u0006\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0016R\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0016R\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0014R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0011\u0010\u000b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0014R\u0013\u0010\f\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001bR\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u0011\u0010\u000f\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0016R\u0011\u0010\u0010\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0016R\u0013\u0010\"\u001a\u0004\u0018\u00010\n8F¢\u0006\u0006\u001a\u0004\b#\u0010\u001bR\u0011\u0010$\u001a\u00020%8F¢\u0006\u0006\u001a\u0004\b$\u0010&R\u0011\u0010'\u001a\u00020%8F¢\u0006\u0006\u001a\u0004\b'\u0010&R\u0017\u0010(\u001a\b\u0012\u0004\u0012\u00020*0)8F¢\u0006\u0006\u001a\u0004\b+\u0010,¨\u0006."}, d2 = {"Lcom/exteragram/messenger/plugins/catalog/CatalogPlugin;", _UrlKt.FRAGMENT_ENCODE_SET, "repositoryId", _UrlKt.FRAGMENT_ENCODE_SET, "entryId", _UrlKt.FRAGMENT_ENCODE_SET, "date", "updatedAt", "documentId", "fileName", _UrlKt.FRAGMENT_ENCODE_SET, "size", MediaTrack.ROLE_CAPTION, "metadata", "Lcom/exteragram/messenger/plugins/catalog/db/PluginMetadataEntity;", "views", "publishedAt", "<init>", "(JIIIJLjava/lang/String;JLjava/lang/String;Lcom/exteragram/messenger/plugins/catalog/db/PluginMetadataEntity;II)V", "getRepositoryId", "()J", "getEntryId", "()I", "getDate", "getUpdatedAt", "getDocumentId", "getFileName", "()Ljava/lang/String;", "getSize", "getCaption", "getMetadata", "()Lcom/exteragram/messenger/plugins/catalog/db/PluginMetadataEntity;", "getViews", "getPublishedAt", "pluginId", "getPluginId", "isPending", _UrlKt.FRAGMENT_ENCODE_SET, "()Z", "isFailed", "categories", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/plugins/catalog/PluginCategory;", "getCategories", "()Ljava/util/List;", "Companion", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCatalogPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CatalogPlugin.kt\ncom/exteragram/messenger/plugins/catalog/CatalogPlugin\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,68:1\n1#2:69\n*E\n"})
public final class CatalogPlugin {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String caption;
    private final int date;
    private final long documentId;
    private final int entryId;
    private final String fileName;
    private final PluginMetadataEntity metadata;
    private final int publishedAt;
    private final long repositoryId;
    private final long size;
    private final int updatedAt;
    private final int views;

    public CatalogPlugin(long j, int i, int i2, int i3, long j2, String str, long j3, String str2, PluginMetadataEntity pluginMetadataEntity, int i4, int i5) {
        this.repositoryId = j;
        this.entryId = i;
        this.date = i2;
        this.updatedAt = i3;
        this.documentId = j2;
        this.fileName = str;
        this.size = j3;
        this.caption = str2;
        this.metadata = pluginMetadataEntity;
        this.views = i4;
        this.publishedAt = i5;
    }

    public final long getRepositoryId() {
        return this.repositoryId;
    }

    public final int getEntryId() {
        return this.entryId;
    }

    public final int getDate() {
        return this.date;
    }

    public final int getUpdatedAt() {
        return this.updatedAt;
    }

    public final long getDocumentId() {
        return this.documentId;
    }

    public final String getFileName() {
        return this.fileName;
    }

    public final long getSize() {
        return this.size;
    }

    public final String getCaption() {
        return this.caption;
    }

    public final PluginMetadataEntity getMetadata() {
        return this.metadata;
    }

    public final int getViews() {
        return this.views;
    }

    public final int getPublishedAt() {
        return this.publishedAt;
    }

    public final String getPluginId() {
        PluginMetadataEntity pluginMetadataEntity = this.metadata;
        if (pluginMetadataEntity != null) {
            if (pluginMetadataEntity.getError() != null) {
                pluginMetadataEntity = null;
            }
            if (pluginMetadataEntity != null) {
                return pluginMetadataEntity.getPluginId();
            }
        }
        return null;
    }

    public final boolean isPending() {
        return this.metadata == null;
    }

    public final boolean isFailed() {
        PluginMetadataEntity pluginMetadataEntity = this.metadata;
        return (pluginMetadataEntity != null ? pluginMetadataEntity.getError() : null) != null;
    }

    public final List<PluginCategory> getCategories() {
        PluginCategory.Companion companion = PluginCategory.INSTANCE;
        PluginMetadataEntity pluginMetadataEntity = this.metadata;
        String categories = null;
        if (pluginMetadataEntity != null) {
            if (pluginMetadataEntity.getError() != null) {
                pluginMetadataEntity = null;
            }
            if (pluginMetadataEntity != null) {
                categories = pluginMetadataEntity.getCategories();
            }
        }
        return companion.parse(categories);
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u001a\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\t¨\u0006\u000b"}, d2 = {"Lcom/exteragram/messenger/plugins/catalog/CatalogPlugin$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "from", "Lcom/exteragram/messenger/plugins/catalog/CatalogPlugin;", "row", "Lcom/exteragram/messenger/plugins/catalog/db/CatalogEntryWithMetadata;", "latestVersions", _UrlKt.FRAGMENT_ENCODE_SET, PluginsConstants.PLUGINS, "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nCatalogPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CatalogPlugin.kt\ncom/exteragram/messenger/plugins/catalog/CatalogPlugin$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,68:1\n777#2:69\n873#2,2:70\n1661#2,3:72\n1586#2:82\n1661#2,2:83\n1663#2:86\n410#3,7:75\n1#4:85\n*S KotlinDebug\n*F\n+ 1 CatalogPlugin.kt\ncom/exteragram/messenger/plugins/catalog/CatalogPlugin$Companion\n*L\n49#1:69\n49#1:70,2\n49#1:72,3\n60#1:82\n60#1:83,2\n60#1:86\n58#1:75,7\n*E\n"})
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final CatalogPlugin from(CatalogEntryWithMetadata row) {
            CatalogEntryEntity entry = row.getEntry();
            return new CatalogPlugin(entry.getRepositoryId(), entry.getEntryId(), entry.getDate(), entry.getUpdatedAt(), entry.getDocumentId(), entry.getFileName(), entry.getSize(), entry.getCaption(), row.getMetadata(), entry.getViews(), entry.getDate());
        }

        public final List<CatalogPlugin> latestVersions(List<CatalogPlugin> plugins) {
            final Comparator comparator = new Comparator() { // from class: com.exteragram.messenger.plugins.catalog.CatalogPlugin$Companion$latestVersions$$inlined$compareByDescending$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    return ComparisonsKt.compareValues(Integer.valueOf(((CatalogPlugin) t2).getUpdatedAt()), Integer.valueOf(((CatalogPlugin) t).getUpdatedAt()));
                }
            };
            List<CatalogPlugin> listSortedWith = CollectionsKt.sortedWith(plugins, new Comparator() { // from class: com.exteragram.messenger.plugins.catalog.CatalogPlugin$Companion$latestVersions$$inlined$thenByDescending$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    int iCompare = comparator.compare(t, t2);
                    return iCompare != 0 ? iCompare : ComparisonsKt.compareValues(Integer.valueOf(((CatalogPlugin) t2).getEntryId()), Integer.valueOf(((CatalogPlugin) t).getEntryId()));
                }
            });
            ArrayList arrayList = new ArrayList();
            for (Object obj : listSortedWith) {
                if (((CatalogPlugin) obj).getPluginId() != null) {
                    arrayList.add(obj);
                }
            }
            HashSet hashSet = new HashSet();
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj2 = arrayList.get(i);
                i++;
                hashSet.add(((CatalogPlugin) obj2).getFileName().toLowerCase(Locale.ROOT));
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (CatalogPlugin catalogPlugin : listSortedWith) {
                String pluginId = catalogPlugin.getPluginId();
                if (pluginId == null) {
                    String fileName = catalogPlugin.getFileName();
                    Locale locale = Locale.ROOT;
                    if (!hashSet.contains(fileName.toLowerCase(locale))) {
                        pluginId = "file:" + catalogPlugin.getFileName().toLowerCase(locale);
                    }
                }
                Object arrayList2 = linkedHashMap.get(pluginId);
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList();
                    linkedHashMap.put(pluginId, arrayList2);
                }
                ((ArrayList) arrayList2).add(catalogPlugin);
            }
            Collection collectionValues = linkedHashMap.values();
            ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(collectionValues, 10));
            Iterator it = collectionValues.iterator();
            while (it.hasNext()) {
                ArrayList arrayList4 = (ArrayList) it.next();
                CatalogPlugin catalogPlugin2 = (CatalogPlugin) CollectionsKt.first((List) arrayList4);
                long repositoryId = catalogPlugin2.getRepositoryId();
                int entryId = catalogPlugin2.getEntryId();
                int date = catalogPlugin2.getDate();
                int updatedAt = catalogPlugin2.getUpdatedAt();
                long documentId = catalogPlugin2.getDocumentId();
                String fileName2 = catalogPlugin2.getFileName();
                long size2 = catalogPlugin2.getSize();
                String caption = catalogPlugin2.getCaption();
                PluginMetadataEntity metadata = catalogPlugin2.getMetadata();
                Iterator it2 = arrayList4.iterator();
                if (!it2.hasNext()) {
                    Utils$$ExternalSyntheticBUOutline0.m1121m();
                    return null;
                }
                int views = ((CatalogPlugin) it2.next()).getViews();
                while (it2.hasNext()) {
                    Iterator it3 = it;
                    int views2 = ((CatalogPlugin) it2.next()).getViews();
                    if (views < views2) {
                        views = views2;
                    }
                    it = it3;
                }
                Iterator it4 = it;
                Iterator it5 = arrayList4.iterator();
                if (!it5.hasNext()) {
                    Utils$$ExternalSyntheticBUOutline0.m1121m();
                    return null;
                }
                int date2 = ((CatalogPlugin) it5.next()).getDate();
                while (it5.hasNext()) {
                    int date3 = ((CatalogPlugin) it5.next()).getDate();
                    if (date2 > date3) {
                        date2 = date3;
                    }
                }
                arrayList3.add(new CatalogPlugin(repositoryId, entryId, date, updatedAt, documentId, fileName2, size2, caption, metadata, views, date2));
                it = it4;
            }
            return arrayList3;
        }
    }
}
