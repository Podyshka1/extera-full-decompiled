package com.yandex.mapkit.search;

import com.yandex.mapkit.LocalizedValue;
import com.yandex.mapkit.SpannableString;
import com.yandex.mapkit.geometry.Point;
import com.yandex.runtime.KeyValuePair;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.ClassHandler;
import com.yandex.runtime.bindings.Serializable;
import com.yandex.runtime.bindings.StringHandler;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class SuggestItem implements Serializable {
    private Action action;
    private boolean action__is_initialized;
    private BusinessContext businessContext;
    private boolean businessContext__is_initialized;
    private Point center;
    private boolean center__is_initialized;
    private String displayText;
    private boolean displayText__is_initialized;
    private LocalizedValue distance;
    private boolean distance__is_initialized;
    private boolean isOffline;
    private boolean isOffline__is_initialized;
    private boolean isPersonal;
    private boolean isPersonal__is_initialized;
    private boolean isWordItem;
    private boolean isWordItem__is_initialized;
    private String link;
    private boolean link__is_initialized;
    private String logId;
    private boolean logId__is_initialized;
    private NativeObject nativeObject;
    private List<KeyValuePair> properties;
    private boolean properties__is_initialized;
    private String searchText;
    private boolean searchText__is_initialized;
    private SpannableString subtitle;
    private boolean subtitle__is_initialized;
    private List<String> tags;
    private boolean tags__is_initialized;
    private SpannableString title;
    private boolean title__is_initialized;
    private Type type;
    private boolean type__is_initialized;
    private String uri;
    private boolean uri__is_initialized;

    public enum Action {
        SEARCH,
        SUBSTITUTE,
        FOLLOW_LINK
    }

    public enum BusinessContext {
        BUSINESS_CONTEXT_UNKNOWN,
        BUSINESS_CONTEXT_ORG1,
        BUSINESS_CONTEXT_RUBRIC,
        BUSINESS_CONTEXT_CHAIN
    }

    public enum Type {
        UNKNOWN,
        TOPONYM,
        BUSINESS,
        TRANSIT,
        LINK
    }

    private native Action getAction__Native();

    private native BusinessContext getBusinessContext__Native();

    private native Point getCenter__Native();

    private native String getDisplayText__Native();

    private native LocalizedValue getDistance__Native();

    private native boolean getIsOffline__Native();

    private native boolean getIsPersonal__Native();

    private native boolean getIsWordItem__Native();

    private native String getLink__Native();

    private native String getLogId__Native();

    private native List<KeyValuePair> getProperties__Native();

    private native String getSearchText__Native();

    private native SpannableString getSubtitle__Native();

    private native List<String> getTags__Native();

    private native SpannableString getTitle__Native();

    private native Type getType__Native();

    private native String getUri__Native();

    private native NativeObject init(Type type, SpannableString spannableString, SpannableString spannableString2, List<String> list, String str, String str2, String str3, String str4, LocalizedValue localizedValue, boolean z, Action action, String str5, boolean z2, boolean z3, List<KeyValuePair> list2, Point point, BusinessContext businessContext);

    public SuggestItem() {
        this.type__is_initialized = false;
        this.title__is_initialized = false;
        this.subtitle__is_initialized = false;
        this.tags__is_initialized = false;
        this.searchText__is_initialized = false;
        this.displayText__is_initialized = false;
        this.uri__is_initialized = false;
        this.link__is_initialized = false;
        this.distance__is_initialized = false;
        this.isPersonal__is_initialized = false;
        this.action__is_initialized = false;
        this.logId__is_initialized = false;
        this.isOffline__is_initialized = false;
        this.isWordItem__is_initialized = false;
        this.properties__is_initialized = false;
        this.center__is_initialized = false;
        this.businessContext__is_initialized = false;
    }

    public SuggestItem(Type type, SpannableString spannableString, SpannableString spannableString2, List<String> list, String str, String str2, String str3, String str4, LocalizedValue localizedValue, boolean z, Action action, String str5, boolean z2, boolean z3, List<KeyValuePair> list2, Point point, BusinessContext businessContext) {
        this.type__is_initialized = false;
        this.title__is_initialized = false;
        this.subtitle__is_initialized = false;
        this.tags__is_initialized = false;
        this.searchText__is_initialized = false;
        this.displayText__is_initialized = false;
        this.uri__is_initialized = false;
        this.link__is_initialized = false;
        this.distance__is_initialized = false;
        this.isPersonal__is_initialized = false;
        this.action__is_initialized = false;
        this.logId__is_initialized = false;
        this.isOffline__is_initialized = false;
        this.isWordItem__is_initialized = false;
        this.properties__is_initialized = false;
        this.center__is_initialized = false;
        this.businessContext__is_initialized = false;
        if (type == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"type\" cannot be null");
            throw null;
        }
        if (spannableString == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"title\" cannot be null");
            throw null;
        }
        if (list == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"tags\" cannot be null");
            throw null;
        }
        if (str == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"searchText\" cannot be null");
            throw null;
        }
        if (action == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"action\" cannot be null");
            throw null;
        }
        if (list2 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"properties\" cannot be null");
            throw null;
        }
        this.nativeObject = init(type, spannableString, spannableString2, list, str, str2, str3, str4, localizedValue, z, action, str5, z2, z3, list2, point, businessContext);
        this.type = type;
        this.type__is_initialized = true;
        this.title = spannableString;
        this.title__is_initialized = true;
        this.subtitle = spannableString2;
        this.subtitle__is_initialized = true;
        this.tags = list;
        this.tags__is_initialized = true;
        this.searchText = str;
        this.searchText__is_initialized = true;
        this.displayText = str2;
        this.displayText__is_initialized = true;
        this.uri = str3;
        this.uri__is_initialized = true;
        this.link = str4;
        this.link__is_initialized = true;
        this.distance = localizedValue;
        this.distance__is_initialized = true;
        this.isPersonal = z;
        this.isPersonal__is_initialized = true;
        this.action = action;
        this.action__is_initialized = true;
        this.logId = str5;
        this.logId__is_initialized = true;
        this.isOffline = z2;
        this.isOffline__is_initialized = true;
        this.isWordItem = z3;
        this.isWordItem__is_initialized = true;
        this.properties = list2;
        this.properties__is_initialized = true;
        this.center = point;
        this.center__is_initialized = true;
        this.businessContext = businessContext;
        this.businessContext__is_initialized = true;
    }

    private SuggestItem(NativeObject nativeObject) {
        this.type__is_initialized = false;
        this.title__is_initialized = false;
        this.subtitle__is_initialized = false;
        this.tags__is_initialized = false;
        this.searchText__is_initialized = false;
        this.displayText__is_initialized = false;
        this.uri__is_initialized = false;
        this.link__is_initialized = false;
        this.distance__is_initialized = false;
        this.isPersonal__is_initialized = false;
        this.action__is_initialized = false;
        this.logId__is_initialized = false;
        this.isOffline__is_initialized = false;
        this.isWordItem__is_initialized = false;
        this.properties__is_initialized = false;
        this.center__is_initialized = false;
        this.businessContext__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized Type getType() {
        try {
            if (!this.type__is_initialized) {
                this.type = getType__Native();
                this.type__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.type;
    }

    public synchronized SpannableString getTitle() {
        try {
            if (!this.title__is_initialized) {
                this.title = getTitle__Native();
                this.title__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.title;
    }

    public synchronized SpannableString getSubtitle() {
        try {
            if (!this.subtitle__is_initialized) {
                this.subtitle = getSubtitle__Native();
                this.subtitle__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.subtitle;
    }

    public synchronized List<String> getTags() {
        try {
            if (!this.tags__is_initialized) {
                this.tags = getTags__Native();
                this.tags__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.tags;
    }

    public synchronized String getSearchText() {
        try {
            if (!this.searchText__is_initialized) {
                this.searchText = getSearchText__Native();
                this.searchText__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.searchText;
    }

    public synchronized String getDisplayText() {
        try {
            if (!this.displayText__is_initialized) {
                this.displayText = getDisplayText__Native();
                this.displayText__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.displayText;
    }

    public synchronized String getUri() {
        try {
            if (!this.uri__is_initialized) {
                this.uri = getUri__Native();
                this.uri__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.uri;
    }

    public synchronized String getLink() {
        try {
            if (!this.link__is_initialized) {
                this.link = getLink__Native();
                this.link__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.link;
    }

    public synchronized LocalizedValue getDistance() {
        try {
            if (!this.distance__is_initialized) {
                this.distance = getDistance__Native();
                this.distance__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.distance;
    }

    public synchronized boolean getIsPersonal() {
        try {
            if (!this.isPersonal__is_initialized) {
                this.isPersonal = getIsPersonal__Native();
                this.isPersonal__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.isPersonal;
    }

    public synchronized Action getAction() {
        try {
            if (!this.action__is_initialized) {
                this.action = getAction__Native();
                this.action__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.action;
    }

    public synchronized String getLogId() {
        try {
            if (!this.logId__is_initialized) {
                this.logId = getLogId__Native();
                this.logId__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.logId;
    }

    public synchronized boolean getIsOffline() {
        try {
            if (!this.isOffline__is_initialized) {
                this.isOffline = getIsOffline__Native();
                this.isOffline__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.isOffline;
    }

    public synchronized boolean getIsWordItem() {
        try {
            if (!this.isWordItem__is_initialized) {
                this.isWordItem = getIsWordItem__Native();
                this.isWordItem__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.isWordItem;
    }

    public synchronized List<KeyValuePair> getProperties() {
        try {
            if (!this.properties__is_initialized) {
                this.properties = getProperties__Native();
                this.properties__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.properties;
    }

    public synchronized Point getCenter() {
        try {
            if (!this.center__is_initialized) {
                this.center = getCenter__Native();
                this.center__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.center;
    }

    public synchronized BusinessContext getBusinessContext() {
        try {
            if (!this.businessContext__is_initialized) {
                this.businessContext = getBusinessContext__Native();
                this.businessContext__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.businessContext;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.type = (Type) archive.add(this.type, false, (Class<Type>) Type.class);
            this.type__is_initialized = true;
            this.title = (SpannableString) archive.add(this.title, false, (Class<SpannableString>) SpannableString.class);
            this.title__is_initialized = true;
            this.subtitle = (SpannableString) archive.add(this.subtitle, true, (Class<SpannableString>) SpannableString.class);
            this.subtitle__is_initialized = true;
            this.tags = archive.add((List) this.tags, false, (ArchivingHandler) new StringHandler());
            this.tags__is_initialized = true;
            this.searchText = archive.add(this.searchText, false);
            this.searchText__is_initialized = true;
            this.displayText = archive.add(this.displayText, true);
            this.displayText__is_initialized = true;
            this.uri = archive.add(this.uri, true);
            this.uri__is_initialized = true;
            this.link = archive.add(this.link, true);
            this.link__is_initialized = true;
            this.distance = (LocalizedValue) archive.add(this.distance, true, (Class<LocalizedValue>) LocalizedValue.class);
            this.distance__is_initialized = true;
            this.isPersonal = archive.add(this.isPersonal);
            this.isPersonal__is_initialized = true;
            this.action = (Action) archive.add(this.action, false, (Class<Action>) Action.class);
            this.action__is_initialized = true;
            this.logId = archive.add(this.logId, true);
            this.logId__is_initialized = true;
            this.isOffline = archive.add(this.isOffline);
            this.isOffline__is_initialized = true;
            this.isWordItem = archive.add(this.isWordItem);
            this.isWordItem__is_initialized = true;
            this.properties = archive.add((List) this.properties, false, (ArchivingHandler) new ClassHandler(KeyValuePair.class));
            this.properties__is_initialized = true;
            this.center = (Point) archive.add(this.center, true, (Class<Point>) Point.class);
            this.center__is_initialized = true;
            BusinessContext businessContext = (BusinessContext) archive.add(this.businessContext, true, (Class<BusinessContext>) BusinessContext.class);
            this.businessContext = businessContext;
            this.businessContext__is_initialized = true;
            this.nativeObject = init(this.type, this.title, this.subtitle, this.tags, this.searchText, this.displayText, this.uri, this.link, this.distance, this.isPersonal, this.action, this.logId, this.isOffline, this.isWordItem, this.properties, this.center, businessContext);
            return;
        }
        archive.add(getType(), false, (Class<Type>) Type.class);
        archive.add(getTitle(), false, (Class<SpannableString>) SpannableString.class);
        archive.add(getSubtitle(), true, (Class<SpannableString>) SpannableString.class);
        archive.add((List) getTags(), false, (ArchivingHandler) new StringHandler());
        archive.add(getSearchText(), false);
        archive.add(getDisplayText(), true);
        archive.add(getUri(), true);
        archive.add(getLink(), true);
        archive.add(getDistance(), true, (Class<LocalizedValue>) LocalizedValue.class);
        archive.add(getIsPersonal());
        archive.add(getAction(), false, (Class<Action>) Action.class);
        archive.add(getLogId(), true);
        archive.add(getIsOffline());
        archive.add(getIsWordItem());
        archive.add((List) getProperties(), false, (ArchivingHandler) new ClassHandler(KeyValuePair.class));
        archive.add(getCenter(), true, (Class<Point>) Point.class);
        archive.add(getBusinessContext(), true, (Class<BusinessContext>) BusinessContext.class);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::search::SuggestItem";
    }
}
