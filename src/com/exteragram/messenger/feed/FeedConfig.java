package com.exteragram.messenger.feed;

import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.FileLog;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0012\n\u0002\u0010\u001e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b\u0013\u0018\u0000 Y2\u00020\u0001:\u0003Z[YB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001d\u0010\n\u001a\u00020\t2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u001d\u0010\u000e\u001a\u00020\t2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u001f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\r0\f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u001d\u0010\u0015\u001a\u00020\u00102\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\r\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u0018\u0010\u0019J\u0015\u0010\u001b\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u0017¢\u0006\u0004\b\u001b\u0010\u001cJ\u0015\u0010\u001e\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u0007¢\u0006\u0004\b\u001e\u0010\u001fJ\u0015\u0010 \u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u0007¢\u0006\u0004\b \u0010\u001fJ\u001d\u0010\"\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010!\u001a\u00020\u0017¢\u0006\u0004\b\"\u0010#J\u0013\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b$\u0010%J\u001b\u0010'\u001a\u00020\t2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b'\u0010\u000bJ\r\u0010(\u001a\u00020\t¢\u0006\u0004\b(\u0010)J\u001b\u0010+\u001a\u00020\t2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00070*¢\u0006\u0004\b+\u0010,J\r\u0010-\u001a\u00020\u0002¢\u0006\u0004\b-\u0010.J\r\u00100\u001a\u00020/¢\u0006\u0004\b0\u00101J\u0013\u00102\u001a\b\u0012\u0004\u0012\u00020\r0\f¢\u0006\u0004\b2\u00103J\u0013\u00104\u001a\b\u0012\u0004\u0012\u00020\r0\f¢\u0006\u0004\b4\u00103J\u0017\u00106\u001a\u0004\u0018\u00010\r2\u0006\u00105\u001a\u00020\u0002¢\u0006\u0004\b6\u00107J\u000f\u00108\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b8\u00109J\r\u0010:\u001a\u00020\u0002¢\u0006\u0004\b:\u0010.J\r\u0010;\u001a\u00020\u0002¢\u0006\u0004\b;\u0010.J\u0015\u0010<\u001a\u00020\u00172\u0006\u00105\u001a\u00020\u0002¢\u0006\u0004\b<\u0010=J3\u0010A\u001a\u00020\r2\u0006\u00105\u001a\u00020\u00022\u0006\u0010>\u001a\u00020\u00102\u0006\u0010?\u001a\u00020\u00072\f\u0010@\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\bA\u0010BJ\u001d\u0010D\u001a\u00020\u00172\u0006\u00105\u001a\u00020\u00022\u0006\u0010C\u001a\u00020\u0017¢\u0006\u0004\bD\u0010EJ\u0015\u0010F\u001a\u00020\t2\u0006\u00105\u001a\u00020\u0002¢\u0006\u0004\bF\u0010\u0005J\u001b\u0010G\u001a\u00020\t2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00020\f¢\u0006\u0004\bG\u0010\u000fJ\u001b\u0010H\u001a\u00020\t2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\bH\u0010\u000bR\u0014\u0010J\u001a\u00020I8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bJ\u0010KR\u001c\u0010L\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010MR\u0016\u0010N\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010OR\u0016\u0010P\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010QR\u0016\u0010R\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bR\u0010QR\u001c\u0010S\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bS\u0010TR\u0018\u0010U\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bU\u0010VR\u0016\u0010W\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010QR\u0016\u0010X\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010Q¨\u0006\\"}, d2 = {"Lcom/exteragram/messenger/feed/FeedConfig;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "account", "<init>", "(I)V", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "updated", _UrlKt.FRAGMENT_ENCODE_SET, "applyExcluded", "(Ljava/util/Set;)V", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/feed/FeedConfig$Category;", "applyCategories", "(Ljava/util/List;)V", _UrlKt.FRAGMENT_ENCODE_SET, "json", "readCategories", "(Ljava/lang/String;)Ljava/util/List;", "list", "writeCategories", "(Ljava/util/List;)Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "isIncludeArchived", "()Z", "value", "setIncludeArchived", "(Z)V", "dialogId", "isExcluded", "(J)Z", "isShownInFeed", "excluded", "setExcluded", "(JZ)V", "getExcludedSnapshot", "()Ljava/util/Set;", "ids", "removeExcluded", "clearExcluded", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "excludeAll", "(Ljava/util/Collection;)V", "getGeneration", "()I", "Lcom/exteragram/messenger/feed/FeedConfig$Snapshot;", "snapshot", "()Lcom/exteragram/messenger/feed/FeedConfig$Snapshot;", "getCategories", "()Ljava/util/List;", "getVisibleCategories", "id", "getCategory", "(I)Lcom/exteragram/messenger/feed/FeedConfig$Category;", "getSelectedCategory", "()Lcom/exteragram/messenger/feed/FeedConfig$Category;", "getSelectedCategoryId", "getCategoriesVersion", "selectCategory", "(I)Z", "title", "emojiId", "channels", "saveCategory", "(ILjava/lang/String;JLjava/util/Set;)Lcom/exteragram/messenger/feed/FeedConfig$Category;", "hidden", "setCategoryHidden", "(IZ)Z", "deleteCategory", "reorderCategories", "removeFromCategories", "Landroid/content/SharedPreferences;", "preferences", "Landroid/content/SharedPreferences;", "excludedChannels", "Ljava/util/Set;", "includeArchived", "Z", "generation", "I", "baseGeneration", "categories", "Ljava/util/List;", "selectedCategory", "Lcom/exteragram/messenger/feed/FeedConfig$Category;", "categoriesVersion", "nextCategoryId", "Companion", "Snapshot", "Category", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nFeedConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FeedConfig.kt\ncom/exteragram/messenger/feed/FeedConfig\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 SharedPreferences.kt\nandroidx/core/content/SharedPreferencesKt\n*L\n1#1,342:1\n1651#2:343\n1915#2:344\n1916#2:346\n1652#2:347\n296#2,2:348\n1661#2,3:369\n832#2:378\n862#2,2:379\n296#2,2:381\n363#2,7:395\n363#2,7:402\n832#2:409\n862#2,2:410\n1220#2,2:412\n1249#2,4:414\n1642#2,10:418\n1915#2:428\n1916#2:430\n1652#2:431\n873#2,2:432\n2792#2,2:434\n1807#2,3:436\n2794#2:439\n1586#2:440\n1661#2,2:441\n1807#2,3:443\n1663#2:446\n296#2,2:448\n1915#2:462\n1915#2,2:463\n1916#2:465\n1#3:345\n1#3:350\n1#3:429\n1#3:447\n41#4,12:351\n41#4,6:363\n47#4,6:372\n41#4,12:383\n41#4,12:450\n*S KotlinDebug\n*F\n+ 1 FeedConfig.kt\ncom/exteragram/messenger/feed/FeedConfig\n*L\n73#1:343\n73#1:344\n73#1:346\n73#1:347\n76#1:348,2\n159#1:369,3\n176#1:378\n176#1:379,2\n180#1:381,2\n213#1:395,7\n225#1:402,7\n237#1:409\n237#1:410,2\n246#1:412,2\n246#1:414,4\n247#1:418,10\n247#1:428\n247#1:430\n247#1:431\n248#1:432,2\n257#1:434,2\n257#1:436,3\n257#1:439\n260#1:440\n260#1:441,2\n261#1:443,3\n260#1:446\n267#1:448,2\n308#1:462\n313#1:463,2\n308#1:465\n73#1:345\n247#1:429\n92#1:351,12\n159#1:363,6\n159#1:372,6\n204#1:383,12\n274#1:450,12\n*E\n"})
public final class FeedConfig {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final FeedConfig[] instances = new FeedConfig[16];
    private static final Object[] lockObjects;
    private volatile int baseGeneration;
    private volatile List<Category> categories;
    private volatile int categoriesVersion;
    private volatile Set<Long> excludedChannels;
    private volatile int generation;
    private volatile boolean includeArchived;
    private int nextCategoryId;
    private final SharedPreferences preferences;
    private volatile Category selectedCategory;

    public /* synthetic */ FeedConfig(int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(i);
    }

    @JvmStatic
    public static final FeedConfig getInstance(int i) {
        return INSTANCE.getInstance(i);
    }

    private FeedConfig(int i) {
        Set<Long> setEmptySet;
        Object next;
        SharedPreferences sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("feedconfig" + i, 0);
        this.preferences = sharedPreferences;
        this.excludedChannels = SetsKt.emptySet();
        this.categories = CollectionsKt.emptyList();
        this.nextCategoryId = 2;
        this.includeArchived = sharedPreferences.getBoolean("includeArchived", false);
        Integer num = null;
        Set<String> stringSet = sharedPreferences.getStringSet("excludedChannels", null);
        if (stringSet != null) {
            setEmptySet = new HashSet<>();
            Iterator<T> it = stringSet.iterator();
            while (it.hasNext()) {
                Long longOrNull = StringsKt.toLongOrNull((String) it.next());
                if (longOrNull != null) {
                    setEmptySet.add(longOrNull);
                }
            }
        } else {
            setEmptySet = SetsKt.emptySet();
        }
        this.excludedChannels = setEmptySet;
        this.categories = readCategories(this.preferences.getString("categories", null));
        int i2 = this.preferences.getInt("selectedCategory", 0);
        Iterator<T> it2 = this.categories.iterator();
        while (true) {
            if (!it2.hasNext()) {
                next = null;
                break;
            }
            next = it2.next();
            Category category = (Category) next;
            if (category.getId() == i2 && !category.getIsHidden()) {
                break;
            }
        }
        this.selectedCategory = (Category) next;
        int i3 = this.preferences.getInt("nextCategoryId", 2);
        Iterator<T> it3 = this.categories.iterator();
        if (it3.hasNext()) {
            Integer numValueOf = Integer.valueOf(((Category) it3.next()).getId());
            loop2: while (true) {
                num = numValueOf;
                while (it3.hasNext()) {
                    numValueOf = Integer.valueOf(((Category) it3.next()).getId());
                    if (num.compareTo(numValueOf) < 0) {
                        break;
                    }
                }
            }
        }
        this.nextCategoryId = Math.max(i3, (num != null ? num.intValue() : 0) + 1);
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\"\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0011\b\u0086\b\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000e\u001a\u00020\u00022\b\u0010\r\u001a\u0004\u0018\u00010\u0000¢\u0006\u0004\b\u000e\u0010\u000fJ\u0015\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u0005¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0014\u001a\u00020\u0013HÖ\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\u0016\u0010\u0017J\u001a\u0010\u0018\u001a\u00020\u00022\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0018\u0010\u0019R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u001d\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u001f\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u001d\u001a\u0004\b \u0010\u001fR\u0017\u0010\t\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010!\u001a\u0004\b\"\u0010\u0017R\u0017\u0010\n\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\n\u0010!\u001a\u0004\b#\u0010\u0017¨\u0006$"}, d2 = {"Lcom/exteragram/messenger/feed/FeedConfig$Snapshot;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "includeArchived", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "excludedChannels", "categoryChannels", _UrlKt.FRAGMENT_ENCODE_SET, "generation", "baseGeneration", "<init>", "(ZLjava/util/Set;Ljava/util/Set;II)V", "other", "hasSameFilter", "(Lcom/exteragram/messenger/feed/FeedConfig$Snapshot;)Z", "dialogId", "isIncluded", "(J)Z", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", "hashCode", "()I", "equals", "(Ljava/lang/Object;)Z", "Z", "getIncludeArchived", "()Z", "Ljava/util/Set;", "getExcludedChannels", "()Ljava/util/Set;", "getCategoryChannels", "I", "getGeneration", "getBaseGeneration", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final /* data */ class Snapshot {
        private final int baseGeneration;
        private final Set<Long> categoryChannels;
        private final Set<Long> excludedChannels;
        private final int generation;
        private final boolean includeArchived;

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Snapshot)) {
                return false;
            }
            Snapshot snapshot = (Snapshot) other;
            return this.includeArchived == snapshot.includeArchived && Intrinsics.areEqual(this.excludedChannels, snapshot.excludedChannels) && Intrinsics.areEqual(this.categoryChannels, snapshot.categoryChannels) && this.generation == snapshot.generation && this.baseGeneration == snapshot.baseGeneration;
        }

        public int hashCode() {
            int iHashCode = ((Boolean.hashCode(this.includeArchived) * 31) + this.excludedChannels.hashCode()) * 31;
            Set<Long> set = this.categoryChannels;
            return ((((iHashCode + (set == null ? 0 : set.hashCode())) * 31) + Integer.hashCode(this.generation)) * 31) + Integer.hashCode(this.baseGeneration);
        }

        public String toString() {
            return "Snapshot(includeArchived=" + this.includeArchived + ", excludedChannels=" + this.excludedChannels + ", categoryChannels=" + this.categoryChannels + ", generation=" + this.generation + ", baseGeneration=" + this.baseGeneration + ")";
        }

        public Snapshot(boolean z, Set<Long> set, Set<Long> set2, int i, int i2) {
            this.includeArchived = z;
            this.excludedChannels = set;
            this.categoryChannels = set2;
            this.generation = i;
            this.baseGeneration = i2;
        }

        public final boolean getIncludeArchived() {
            return this.includeArchived;
        }

        public final int getGeneration() {
            return this.generation;
        }

        public final int getBaseGeneration() {
            return this.baseGeneration;
        }

        public final boolean hasSameFilter(Snapshot other) {
            if (other != null && this.includeArchived == other.includeArchived && Intrinsics.areEqual(this.categoryChannels, other.categoryChannels)) {
                return this.categoryChannels != null || Intrinsics.areEqual(this.excludedChannels, other.excludedChannels);
            }
            return false;
        }

        public final boolean isIncluded(long dialogId) {
            Set<Long> set = this.categoryChannels;
            return set != null ? set.contains(Long.valueOf(dialogId)) : !this.excludedChannels.contains(Long.valueOf(dialogId));
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0019\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJH\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00062\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\b2\b\b\u0002\u0010\u000b\u001a\u00020\nHÆ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u001a\u0010\u0015\u001a\u00020\n2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0015\u0010\u0016R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0017\u001a\u0004\b\u0018\u0010\u0013R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0019\u001a\u0004\b\u001a\u0010\u0011R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u001d\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\u001e\u001a\u0004\b\u001f\u0010 R\u0017\u0010\u000b\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\u000b\u0010!\u001a\u0004\b\u000b\u0010\"¨\u0006#"}, d2 = {"Lcom/exteragram/messenger/feed/FeedConfig$Category;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "id", _UrlKt.FRAGMENT_ENCODE_SET, "title", _UrlKt.FRAGMENT_ENCODE_SET, "emojiId", _UrlKt.FRAGMENT_ENCODE_SET, "channels", _UrlKt.FRAGMENT_ENCODE_SET, "isHidden", "<init>", "(ILjava/lang/String;JLjava/util/Set;Z)V", "copy", "(ILjava/lang/String;JLjava/util/Set;Z)Lcom/exteragram/messenger/feed/FeedConfig$Category;", "toString", "()Ljava/lang/String;", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "I", "getId", "Ljava/lang/String;", "getTitle", "J", "getEmojiId", "()J", "Ljava/util/Set;", "getChannels", "()Ljava/util/Set;", "Z", "()Z", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final /* data */ class Category {
        private final Set<Long> channels;
        private final long emojiId;
        private final int id;
        private final boolean isHidden;
        private final String title;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Category copy$default(Category category, int i, String str, long j, Set set, boolean z, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = category.id;
            }
            if ((i2 & 2) != 0) {
                str = category.title;
            }
            if ((i2 & 4) != 0) {
                j = category.emojiId;
            }
            if ((i2 & 8) != 0) {
                set = category.channels;
            }
            if ((i2 & 16) != 0) {
                z = category.isHidden;
            }
            long j2 = j;
            return category.copy(i, str, j2, set, z);
        }

        public final Category copy(int id, String title, long emojiId, Set<Long> channels, boolean isHidden) {
            return new Category(id, title, emojiId, channels, isHidden);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Category)) {
                return false;
            }
            Category category = (Category) other;
            return this.id == category.id && Intrinsics.areEqual(this.title, category.title) && this.emojiId == category.emojiId && Intrinsics.areEqual(this.channels, category.channels) && this.isHidden == category.isHidden;
        }

        public int hashCode() {
            return (((((((Integer.hashCode(this.id) * 31) + this.title.hashCode()) * 31) + Long.hashCode(this.emojiId)) * 31) + this.channels.hashCode()) * 31) + Boolean.hashCode(this.isHidden);
        }

        public String toString() {
            return "Category(id=" + this.id + ", title=" + this.title + ", emojiId=" + this.emojiId + ", channels=" + this.channels + ", isHidden=" + this.isHidden + ")";
        }

        public Category(int i, String str, long j, Set<Long> set, boolean z) {
            this.id = i;
            this.title = str;
            this.emojiId = j;
            this.channels = set;
            this.isHidden = z;
        }

        public final int getId() {
            return this.id;
        }

        public final String getTitle() {
            return this.title;
        }

        public final long getEmojiId() {
            return this.emojiId;
        }

        public final Set<Long> getChannels() {
            return this.channels;
        }

        /* JADX INFO: renamed from: isHidden, reason: from getter */
        public final boolean getIsHidden() {
            return this.isHidden;
        }
    }

    /* JADX INFO: renamed from: isIncludeArchived, reason: from getter */
    public final boolean getIncludeArchived() {
        return this.includeArchived;
    }

    public final synchronized void setIncludeArchived(boolean value) {
        if (this.includeArchived == value) {
            return;
        }
        this.includeArchived = value;
        this.generation++;
        this.baseGeneration++;
        SharedPreferences.Editor editorEdit = this.preferences.edit();
        editorEdit.putBoolean("includeArchived", value);
        editorEdit.apply();
    }

    public final boolean isExcluded(long dialogId) {
        return this.excludedChannels.contains(Long.valueOf(dialogId));
    }

    public final boolean isShownInFeed(long dialogId) {
        Set<Long> channels;
        Category category = this.selectedCategory;
        return (category == null || (channels = category.getChannels()) == null) ? !this.excludedChannels.contains(Long.valueOf(dialogId)) : channels.contains(Long.valueOf(dialogId));
    }

    public final synchronized void setExcluded(long dialogId, boolean excluded) {
        boolean zRemove;
        try {
            HashSet hashSet = new HashSet(this.excludedChannels);
            if (excluded) {
                zRemove = hashSet.add(Long.valueOf(dialogId));
            } else {
                zRemove = hashSet.remove(Long.valueOf(dialogId));
            }
            if (zRemove) {
                applyExcluded(hashSet);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final Set<Long> getExcludedSnapshot() {
        return this.excludedChannels;
    }

    public final synchronized void removeExcluded(Set<Long> ids) {
        if (ids.isEmpty()) {
            return;
        }
        HashSet hashSet = new HashSet(this.excludedChannels);
        if (hashSet.removeAll(ids)) {
            applyExcluded(hashSet);
        }
    }

    public final synchronized void clearExcluded() {
        if (this.excludedChannels.isEmpty()) {
            return;
        }
        applyExcluded(SetsKt.emptySet());
    }

    public final synchronized void excludeAll(Collection<Long> ids) {
        HashSet hashSet = new HashSet(this.excludedChannels);
        if (hashSet.addAll(ids)) {
            applyExcluded(hashSet);
        }
    }

    private final void applyExcluded(Set<Long> updated) {
        this.excludedChannels = updated;
        if (this.selectedCategory == null) {
            this.generation++;
        }
        SharedPreferences.Editor editorEdit = this.preferences.edit();
        HashSet hashSet = new HashSet();
        Iterator<T> it = updated.iterator();
        while (it.hasNext()) {
            hashSet.add(String.valueOf(((Number) it.next()).longValue()));
        }
        editorEdit.putStringSet("excludedChannels", hashSet);
        editorEdit.apply();
    }

    public final int getGeneration() {
        return this.generation;
    }

    public final synchronized Snapshot snapshot() {
        boolean z;
        Set<Long> set;
        Category category;
        try {
            z = this.includeArchived;
            set = this.excludedChannels;
            category = this.selectedCategory;
        } catch (Throwable th) {
            throw th;
        }
        return new Snapshot(z, set, category != null ? category.getChannels() : null, this.generation, this.baseGeneration);
    }

    public final List<Category> getCategories() {
        return this.categories;
    }

    public final List<Category> getVisibleCategories() {
        List<Category> list = this.categories;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (!((Category) obj).getIsHidden()) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public final Category getCategory(int id) {
        Object next;
        Iterator<T> it = this.categories.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (((Category) next).getId() == id) {
                break;
            }
        }
        return (Category) next;
    }

    public final Category getSelectedCategory() {
        return this.selectedCategory;
    }

    public final int getSelectedCategoryId() {
        Category category = this.selectedCategory;
        if (category != null) {
            return category.getId();
        }
        return 0;
    }

    public final int getCategoriesVersion() {
        return this.categoriesVersion;
    }

    public final synchronized boolean selectCategory(int id) {
        Category category;
        if (id != 0) {
            try {
                category = getCategory(id);
                if (category != null) {
                    if (category.getIsHidden()) {
                        category = null;
                    }
                    if (category == null) {
                    }
                }
                return false;
            } finally {
            }
        }
        category = null;
        Integer numValueOf = category != null ? Integer.valueOf(category.getId()) : null;
        Category category2 = this.selectedCategory;
        if (Intrinsics.areEqual(numValueOf, category2 != null ? Integer.valueOf(category2.getId()) : null)) {
            return false;
        }
        this.selectedCategory = category;
        this.generation++;
        this.categoriesVersion++;
        SharedPreferences.Editor editorEdit = this.preferences.edit();
        editorEdit.putInt("selectedCategory", category != null ? category.getId() : 0);
        editorEdit.apply();
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x000e A[Catch: all -> 0x000b, TryCatch #0 {all -> 0x000b, blocks: (B:4:0x0003, B:10:0x0015, B:12:0x0023, B:15:0x002d, B:17:0x0040, B:23:0x0055, B:25:0x005c, B:24:0x0059, B:20:0x004f, B:9:0x000e), top: B:30:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized Category saveCategory(int id, String title, long emojiId, Set<Long> channels) {
        Category category;
        if (id > 0) {
            try {
                if (getCategory(id) == null) {
                    id = this.nextCategoryId;
                    this.nextCategoryId = id + 1;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        int i = id;
        HashSet hashSet = new HashSet(channels);
        Category category2 = getCategory(i);
        int i2 = 0;
        category = new Category(i, title, emojiId, hashSet, category2 != null ? category2.getIsHidden() : false);
        ArrayList arrayList = new ArrayList(this.categories);
        int size = arrayList.size();
        int i3 = 0;
        while (true) {
            if (i3 >= size) {
                i2 = -1;
                break;
            }
            Object obj = arrayList.get(i3);
            i3++;
            if (((Category) obj).getId() == i) {
                break;
            }
            i2++;
        }
        if (i2 >= 0) {
            arrayList.set(i2, category);
        } else {
            arrayList.add(category);
        }
        applyCategories(arrayList);
        return category;
    }

    public final synchronized boolean setCategoryHidden(int id, boolean hidden) {
        try {
            Iterator<Category> it = this.categories.iterator();
            int i = 0;
            while (true) {
                if (!it.hasNext()) {
                    i = -1;
                    break;
                }
                if (it.next().getId() == id) {
                    break;
                }
                i++;
            }
            if (i >= 0 && this.categories.get(i).getIsHidden() != hidden) {
                ArrayList arrayList = new ArrayList(this.categories);
                arrayList.set(i, Category.copy$default(this.categories.get(i), 0, null, 0L, null, hidden, 15, null));
                applyCategories(arrayList);
                return true;
            }
            return false;
        } finally {
        }
    }

    public final synchronized void deleteCategory(int id) {
        try {
            List<Category> list = this.categories;
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (((Category) obj).getId() != id) {
                    arrayList.add(obj);
                }
            }
            if (arrayList.size() == this.categories.size()) {
                return;
            }
            applyCategories(arrayList);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void reorderCategories(List<Integer> ids) {
        try {
            List<Category> list = this.categories;
            LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(list, 10)), 16));
            for (Object obj : list) {
                linkedHashMap.put(Integer.valueOf(((Category) obj).getId()), obj);
            }
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = ids.iterator();
            while (it.hasNext()) {
                Category category = (Category) linkedHashMap.get(Integer.valueOf(((Number) it.next()).intValue()));
                if (category != null) {
                    arrayList.add(category);
                }
            }
            List<Category> mutableList = CollectionsKt.toMutableList((Collection) arrayList);
            List<Category> list2 = mutableList;
            for (Object obj2 : this.categories) {
                if (!ids.contains(Integer.valueOf(((Category) obj2).getId()))) {
                    list2.add(obj2);
                }
            }
            if (Intrinsics.areEqual(mutableList, this.categories)) {
                return;
            }
            applyCategories(mutableList);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void removeFromCategories(Set<Long> ids) {
        try {
            if (!ids.isEmpty()) {
                List<Category> list = this.categories;
                if (!(list instanceof Collection) || !list.isEmpty()) {
                    Iterator<T> it = list.iterator();
                    while (it.hasNext()) {
                        Set<Long> channels = ((Category) it.next()).getChannels();
                        if (channels == null || !channels.isEmpty()) {
                            Iterator<T> it2 = channels.iterator();
                            while (it2.hasNext()) {
                                if (ids.contains(Long.valueOf(((Number) it2.next()).longValue()))) {
                                    List<Category> list2 = this.categories;
                                    ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
                                    for (Category categoryCopy$default : list2) {
                                        Set<Long> channels2 = categoryCopy$default.getChannels();
                                        if (channels2 == null || !channels2.isEmpty()) {
                                            Iterator<T> it3 = channels2.iterator();
                                            while (true) {
                                                if (it3.hasNext()) {
                                                    if (ids.contains(Long.valueOf(((Number) it3.next()).longValue()))) {
                                                        categoryCopy$default = Category.copy$default(categoryCopy$default, 0, null, 0L, SetsKt.minus((Set) categoryCopy$default.getChannels(), (Iterable) ids), false, 23, null);
                                                        break;
                                                    }
                                                } else {
                                                    break;
                                                }
                                            }
                                        }
                                        arrayList.add(categoryCopy$default);
                                    }
                                    applyCategories(arrayList);
                                    return;
                                }
                            }
                        }
                    }
                }
            }
        } finally {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x006b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void applyCategories(List<Category> updated) {
        Category category;
        Object next;
        Category category2 = this.selectedCategory;
        if (category2 != null) {
            Iterator<T> it = updated.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                Category category3 = (Category) next;
                if (category3.getId() == category2.getId() && !category3.getIsHidden()) {
                    break;
                }
            }
            category = (Category) next;
        } else {
            category = null;
        }
        this.categories = updated;
        this.selectedCategory = category;
        this.categoriesVersion++;
        if (Intrinsics.areEqual(category2 != null ? Integer.valueOf(category2.getId()) : null, category != null ? Integer.valueOf(category.getId()) : null)) {
            if (!Intrinsics.areEqual(category2 != null ? category2.getChannels() : null, category != null ? category.getChannels() : null)) {
            }
        } else {
            this.generation++;
        }
        SharedPreferences.Editor editorEdit = this.preferences.edit();
        editorEdit.putString("categories", writeCategories(updated));
        editorEdit.putInt("selectedCategory", category != null ? category.getId() : 0);
        editorEdit.putInt("nextCategoryId", this.nextCategoryId);
        editorEdit.apply();
    }

    private final List<Category> readCategories(String json) {
        if (json == null || json.length() == 0) {
            return CollectionsKt.emptyList();
        }
        try {
            JSONArray jSONArray = new JSONArray(json);
            ArrayList arrayList = new ArrayList(jSONArray.length());
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("channels");
                HashSet hashSet = new HashSet();
                if (jSONArrayOptJSONArray != null) {
                    int length2 = jSONArrayOptJSONArray.length();
                    for (int i2 = 0; i2 < length2; i2++) {
                        hashSet.add(Long.valueOf(jSONArrayOptJSONArray.getLong(i2)));
                    }
                }
                arrayList.add(new Category(jSONObject.getInt("id"), jSONObject.optString("title"), jSONObject.optLong("emoji"), hashSet, jSONObject.optBoolean("hidden")));
            }
            return arrayList;
        } catch (Exception e) {
            FileLog.m1040e(e);
            return CollectionsKt.emptyList();
        }
    }

    private final String writeCategories(List<Category> list) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        for (Category category : list) {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", category.getId());
            jSONObject.put("title", category.getTitle());
            jSONObject.put("emoji", category.getEmojiId());
            JSONArray jSONArray2 = new JSONArray();
            Iterator<T> it = category.getChannels().iterator();
            while (it.hasNext()) {
                jSONArray2.put(((Number) it.next()).longValue());
            }
            Unit unit = Unit.INSTANCE;
            jSONObject.put("channels", jSONArray2);
            if (category.getIsHidden()) {
                jSONObject.put("hidden", true);
            }
            jSONArray.put(jSONObject);
        }
        return jSONArray.toString();
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\fH\u0007R\u0018\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0007R\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00010\u0005X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\t¨\u0006\r"}, d2 = {"Lcom/exteragram/messenger/feed/FeedConfig$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "instances", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/feed/FeedConfig;", "[Lcom/exteragram/messenger/feed/FeedConfig;", "lockObjects", "[Ljava/lang/Object;", "getInstance", "num", _UrlKt.FRAGMENT_ENCODE_SET, "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final FeedConfig getInstance(int num) {
            FeedConfig feedConfig;
            FeedConfig feedConfig2 = FeedConfig.instances[num];
            if (feedConfig2 != null) {
                return feedConfig2;
            }
            synchronized (FeedConfig.lockObjects[num]) {
                try {
                    feedConfig = FeedConfig.instances[num];
                    if (feedConfig == null) {
                        feedConfig = new FeedConfig(num, null);
                        FeedConfig.instances[num] = feedConfig;
                    }
                    Unit unit = Unit.INSTANCE;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return feedConfig;
        }
    }

    static {
        Object[] objArr = new Object[16];
        for (int i = 0; i < 16; i++) {
            objArr[i] = new Object();
        }
        lockObjects = objArr;
    }
}
