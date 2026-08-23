package com.yandex.mapkit.search;

import com.yandex.mapkit.BaseMetadata;
import com.yandex.mapkit.LocalizedValue;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.ClassHandler;
import com.yandex.runtime.bindings.Serializable;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class BusinessObjectMetadata implements BaseMetadata, Serializable {
    private Address address;
    private boolean address__is_initialized;
    private List<Category> categories;
    private boolean categories__is_initialized;
    private List<Chain> chains;
    private boolean chains__is_initialized;
    private Closed closed;
    private boolean closed__is_initialized;
    private LocalizedValue distance;
    private boolean distance__is_initialized;
    private List<FeatureGroup> featureGroups;
    private boolean featureGroups__is_initialized;
    private List<Feature> features;
    private boolean features__is_initialized;
    private FeatureSet importantFeatures;
    private boolean importantFeatures__is_initialized;
    private String indoorLevel;
    private boolean indoorLevel__is_initialized;
    private List<SearchLink> links;
    private boolean links__is_initialized;
    private String name;
    private boolean name__is_initialized;
    private NativeObject nativeObject;
    private String oid;
    private boolean oid__is_initialized;
    private List<Phone> phones;
    private boolean phones__is_initialized;
    private Precision precision;
    private boolean precision__is_initialized;
    private Properties properties;
    private boolean properties__is_initialized;
    private String seoname;
    private boolean seoname__is_initialized;
    private String shortName;
    private boolean shortName__is_initialized;
    private Boolean unreliable;
    private boolean unreliable__is_initialized;
    private WorkingHours workingHours;
    private boolean workingHours__is_initialized;

    private native Address getAddress__Native();

    private native List<Category> getCategories__Native();

    private native List<Chain> getChains__Native();

    private native Closed getClosed__Native();

    private native LocalizedValue getDistance__Native();

    private native List<FeatureGroup> getFeatureGroups__Native();

    private native List<Feature> getFeatures__Native();

    private native FeatureSet getImportantFeatures__Native();

    private native String getIndoorLevel__Native();

    private native List<SearchLink> getLinks__Native();

    private native String getName__Native();

    private native String getOid__Native();

    private native List<Phone> getPhones__Native();

    private native Precision getPrecision__Native();

    private native Properties getProperties__Native();

    private native String getSeoname__Native();

    private native String getShortName__Native();

    private native Boolean getUnreliable__Native();

    private native WorkingHours getWorkingHours__Native();

    private native NativeObject init(String str, String str2, Address address, List<Category> list, List<Phone> list2, WorkingHours workingHours, Precision precision, List<Feature> list3, FeatureSet featureSet, List<SearchLink> list4, LocalizedValue localizedValue, List<Chain> list5, Closed closed, Boolean bool, String str3, String str4, Properties properties, List<FeatureGroup> list6, String str5);

    public BusinessObjectMetadata() {
        this.oid__is_initialized = false;
        this.name__is_initialized = false;
        this.address__is_initialized = false;
        this.categories__is_initialized = false;
        this.phones__is_initialized = false;
        this.workingHours__is_initialized = false;
        this.precision__is_initialized = false;
        this.features__is_initialized = false;
        this.importantFeatures__is_initialized = false;
        this.links__is_initialized = false;
        this.distance__is_initialized = false;
        this.chains__is_initialized = false;
        this.closed__is_initialized = false;
        this.unreliable__is_initialized = false;
        this.seoname__is_initialized = false;
        this.shortName__is_initialized = false;
        this.properties__is_initialized = false;
        this.featureGroups__is_initialized = false;
        this.indoorLevel__is_initialized = false;
    }

    public BusinessObjectMetadata(String str, String str2, Address address, List<Category> list, List<Phone> list2, WorkingHours workingHours, Precision precision, List<Feature> list3, FeatureSet featureSet, List<SearchLink> list4, LocalizedValue localizedValue, List<Chain> list5, Closed closed, Boolean bool, String str3, String str4, Properties properties, List<FeatureGroup> list6, String str5) {
        this.oid__is_initialized = false;
        this.name__is_initialized = false;
        this.address__is_initialized = false;
        this.categories__is_initialized = false;
        this.phones__is_initialized = false;
        this.workingHours__is_initialized = false;
        this.precision__is_initialized = false;
        this.features__is_initialized = false;
        this.importantFeatures__is_initialized = false;
        this.links__is_initialized = false;
        this.distance__is_initialized = false;
        this.chains__is_initialized = false;
        this.closed__is_initialized = false;
        this.unreliable__is_initialized = false;
        this.seoname__is_initialized = false;
        this.shortName__is_initialized = false;
        this.properties__is_initialized = false;
        this.featureGroups__is_initialized = false;
        this.indoorLevel__is_initialized = false;
        if (str == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"oid\" cannot be null");
            throw null;
        }
        if (str2 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"name\" cannot be null");
            throw null;
        }
        if (address == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"address\" cannot be null");
            throw null;
        }
        if (list == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"categories\" cannot be null");
            throw null;
        }
        if (list2 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"phones\" cannot be null");
            throw null;
        }
        if (list3 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"features\" cannot be null");
            throw null;
        }
        if (list4 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"links\" cannot be null");
            throw null;
        }
        if (list5 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"chains\" cannot be null");
            throw null;
        }
        if (list6 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"featureGroups\" cannot be null");
            throw null;
        }
        this.nativeObject = init(str, str2, address, list, list2, workingHours, precision, list3, featureSet, list4, localizedValue, list5, closed, bool, str3, str4, properties, list6, str5);
        this.oid = str;
        this.oid__is_initialized = true;
        this.name = str2;
        this.name__is_initialized = true;
        this.address = address;
        this.address__is_initialized = true;
        this.categories = list;
        this.categories__is_initialized = true;
        this.phones = list2;
        this.phones__is_initialized = true;
        this.workingHours = workingHours;
        this.workingHours__is_initialized = true;
        this.precision = precision;
        this.precision__is_initialized = true;
        this.features = list3;
        this.features__is_initialized = true;
        this.importantFeatures = featureSet;
        this.importantFeatures__is_initialized = true;
        this.links = list4;
        this.links__is_initialized = true;
        this.distance = localizedValue;
        this.distance__is_initialized = true;
        this.chains = list5;
        this.chains__is_initialized = true;
        this.closed = closed;
        this.closed__is_initialized = true;
        this.unreliable = bool;
        this.unreliable__is_initialized = true;
        this.seoname = str3;
        this.seoname__is_initialized = true;
        this.shortName = str4;
        this.shortName__is_initialized = true;
        this.properties = properties;
        this.properties__is_initialized = true;
        this.featureGroups = list6;
        this.featureGroups__is_initialized = true;
        this.indoorLevel = str5;
        this.indoorLevel__is_initialized = true;
    }

    private BusinessObjectMetadata(NativeObject nativeObject) {
        this.oid__is_initialized = false;
        this.name__is_initialized = false;
        this.address__is_initialized = false;
        this.categories__is_initialized = false;
        this.phones__is_initialized = false;
        this.workingHours__is_initialized = false;
        this.precision__is_initialized = false;
        this.features__is_initialized = false;
        this.importantFeatures__is_initialized = false;
        this.links__is_initialized = false;
        this.distance__is_initialized = false;
        this.chains__is_initialized = false;
        this.closed__is_initialized = false;
        this.unreliable__is_initialized = false;
        this.seoname__is_initialized = false;
        this.shortName__is_initialized = false;
        this.properties__is_initialized = false;
        this.featureGroups__is_initialized = false;
        this.indoorLevel__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized String getOid() {
        try {
            if (!this.oid__is_initialized) {
                this.oid = getOid__Native();
                this.oid__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.oid;
    }

    public synchronized String getName() {
        try {
            if (!this.name__is_initialized) {
                this.name = getName__Native();
                this.name__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.name;
    }

    public synchronized Address getAddress() {
        try {
            if (!this.address__is_initialized) {
                this.address = getAddress__Native();
                this.address__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.address;
    }

    public synchronized List<Category> getCategories() {
        try {
            if (!this.categories__is_initialized) {
                this.categories = getCategories__Native();
                this.categories__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.categories;
    }

    public synchronized List<Phone> getPhones() {
        try {
            if (!this.phones__is_initialized) {
                this.phones = getPhones__Native();
                this.phones__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.phones;
    }

    public synchronized WorkingHours getWorkingHours() {
        try {
            if (!this.workingHours__is_initialized) {
                this.workingHours = getWorkingHours__Native();
                this.workingHours__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.workingHours;
    }

    public synchronized Precision getPrecision() {
        try {
            if (!this.precision__is_initialized) {
                this.precision = getPrecision__Native();
                this.precision__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.precision;
    }

    public synchronized List<Feature> getFeatures() {
        try {
            if (!this.features__is_initialized) {
                this.features = getFeatures__Native();
                this.features__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.features;
    }

    public synchronized FeatureSet getImportantFeatures() {
        try {
            if (!this.importantFeatures__is_initialized) {
                this.importantFeatures = getImportantFeatures__Native();
                this.importantFeatures__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.importantFeatures;
    }

    public synchronized List<SearchLink> getLinks() {
        try {
            if (!this.links__is_initialized) {
                this.links = getLinks__Native();
                this.links__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.links;
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

    public synchronized List<Chain> getChains() {
        try {
            if (!this.chains__is_initialized) {
                this.chains = getChains__Native();
                this.chains__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.chains;
    }

    public synchronized Closed getClosed() {
        try {
            if (!this.closed__is_initialized) {
                this.closed = getClosed__Native();
                this.closed__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.closed;
    }

    public synchronized Boolean getUnreliable() {
        try {
            if (!this.unreliable__is_initialized) {
                this.unreliable = getUnreliable__Native();
                this.unreliable__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.unreliable;
    }

    public synchronized String getSeoname() {
        try {
            if (!this.seoname__is_initialized) {
                this.seoname = getSeoname__Native();
                this.seoname__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.seoname;
    }

    public synchronized String getShortName() {
        try {
            if (!this.shortName__is_initialized) {
                this.shortName = getShortName__Native();
                this.shortName__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.shortName;
    }

    public synchronized Properties getProperties() {
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

    public synchronized List<FeatureGroup> getFeatureGroups() {
        try {
            if (!this.featureGroups__is_initialized) {
                this.featureGroups = getFeatureGroups__Native();
                this.featureGroups__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.featureGroups;
    }

    public synchronized String getIndoorLevel() {
        try {
            if (!this.indoorLevel__is_initialized) {
                this.indoorLevel = getIndoorLevel__Native();
                this.indoorLevel__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.indoorLevel;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.oid = archive.add(this.oid, false);
            this.oid__is_initialized = true;
            this.name = archive.add(this.name, false);
            this.name__is_initialized = true;
            this.address = (Address) archive.add(this.address, false, (Class<Address>) Address.class);
            this.address__is_initialized = true;
            this.categories = archive.add((List) this.categories, false, (ArchivingHandler) new ClassHandler(Category.class));
            this.categories__is_initialized = true;
            this.phones = archive.add((List) this.phones, false, (ArchivingHandler) new ClassHandler(Phone.class));
            this.phones__is_initialized = true;
            this.workingHours = (WorkingHours) archive.add(this.workingHours, true, (Class<WorkingHours>) WorkingHours.class);
            this.workingHours__is_initialized = true;
            this.precision = (Precision) archive.add(this.precision, true, (Class<Precision>) Precision.class);
            this.precision__is_initialized = true;
            this.features = archive.add((List) this.features, false, (ArchivingHandler) new ClassHandler(Feature.class));
            this.features__is_initialized = true;
            this.importantFeatures = (FeatureSet) archive.add(this.importantFeatures, true, (Class<FeatureSet>) FeatureSet.class);
            this.importantFeatures__is_initialized = true;
            this.links = archive.add((List) this.links, false, (ArchivingHandler) new ClassHandler(SearchLink.class));
            this.links__is_initialized = true;
            this.distance = (LocalizedValue) archive.add(this.distance, true, (Class<LocalizedValue>) LocalizedValue.class);
            this.distance__is_initialized = true;
            this.chains = archive.add((List) this.chains, false, (ArchivingHandler) new ClassHandler(Chain.class));
            this.chains__is_initialized = true;
            this.closed = (Closed) archive.add(this.closed, true, (Class<Closed>) Closed.class);
            this.closed__is_initialized = true;
            this.unreliable = archive.add(this.unreliable, true);
            this.unreliable__is_initialized = true;
            this.seoname = archive.add(this.seoname, true);
            this.seoname__is_initialized = true;
            this.shortName = archive.add(this.shortName, true);
            this.shortName__is_initialized = true;
            this.properties = (Properties) archive.add(this.properties, true, (Class<Properties>) Properties.class);
            this.properties__is_initialized = true;
            this.featureGroups = archive.add((List) this.featureGroups, false, (ArchivingHandler) new ClassHandler(FeatureGroup.class));
            this.featureGroups__is_initialized = true;
            String strAdd = archive.add(this.indoorLevel, true);
            this.indoorLevel = strAdd;
            this.indoorLevel__is_initialized = true;
            this.nativeObject = init(this.oid, this.name, this.address, this.categories, this.phones, this.workingHours, this.precision, this.features, this.importantFeatures, this.links, this.distance, this.chains, this.closed, this.unreliable, this.seoname, this.shortName, this.properties, this.featureGroups, strAdd);
            return;
        }
        archive.add(getOid(), false);
        archive.add(getName(), false);
        archive.add(getAddress(), false, (Class<Address>) Address.class);
        archive.add((List) getCategories(), false, (ArchivingHandler) new ClassHandler(Category.class));
        archive.add((List) getPhones(), false, (ArchivingHandler) new ClassHandler(Phone.class));
        archive.add(getWorkingHours(), true, (Class<WorkingHours>) WorkingHours.class);
        archive.add(getPrecision(), true, (Class<Precision>) Precision.class);
        archive.add((List) getFeatures(), false, (ArchivingHandler) new ClassHandler(Feature.class));
        archive.add(getImportantFeatures(), true, (Class<FeatureSet>) FeatureSet.class);
        archive.add((List) getLinks(), false, (ArchivingHandler) new ClassHandler(SearchLink.class));
        archive.add(getDistance(), true, (Class<LocalizedValue>) LocalizedValue.class);
        archive.add((List) getChains(), false, (ArchivingHandler) new ClassHandler(Chain.class));
        archive.add(getClosed(), true, (Class<Closed>) Closed.class);
        archive.add(getUnreliable(), true);
        archive.add(getSeoname(), true);
        archive.add(getShortName(), true);
        archive.add(getProperties(), true, (Class<Properties>) Properties.class);
        archive.add((List) getFeatureGroups(), false, (ArchivingHandler) new ClassHandler(FeatureGroup.class));
        archive.add(getIndoorLevel(), true);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::search::BusinessObjectMetadata";
    }
}
