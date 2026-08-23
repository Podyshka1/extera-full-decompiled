package com.yandex.mapkit.search;

import com.yandex.mapkit.geometry.Point;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.Serializable;
import com.yandex.runtime.bindings.StringHandler;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class PlaceInfo implements Serializable {
    private String address;
    private boolean address__is_initialized;
    private String category;
    private boolean category__is_initialized;
    private String logId;
    private boolean logId__is_initialized;
    private String name;
    private boolean name__is_initialized;
    private NativeObject nativeObject;
    private String photoUrlTemplate;
    private boolean photoUrlTemplate__is_initialized;
    private Point point;
    private boolean point__is_initialized;
    private Float rating;
    private boolean rating__is_initialized;
    private String shortName;
    private boolean shortName__is_initialized;
    private List<String> tag;
    private boolean tag__is_initialized;
    private String uri;
    private boolean uri__is_initialized;
    private WorkingHours workingHours;
    private boolean workingHours__is_initialized;

    private native String getAddress__Native();

    private native String getCategory__Native();

    private native String getLogId__Native();

    private native String getName__Native();

    private native String getPhotoUrlTemplate__Native();

    private native Point getPoint__Native();

    private native Float getRating__Native();

    private native String getShortName__Native();

    private native List<String> getTag__Native();

    private native String getUri__Native();

    private native WorkingHours getWorkingHours__Native();

    private native NativeObject init(String str, String str2, String str3, String str4, Point point, String str5, String str6, Float f, WorkingHours workingHours, String str7, List<String> list);

    public PlaceInfo() {
        this.name__is_initialized = false;
        this.uri__is_initialized = false;
        this.photoUrlTemplate__is_initialized = false;
        this.logId__is_initialized = false;
        this.point__is_initialized = false;
        this.category__is_initialized = false;
        this.shortName__is_initialized = false;
        this.rating__is_initialized = false;
        this.workingHours__is_initialized = false;
        this.address__is_initialized = false;
        this.tag__is_initialized = false;
    }

    public PlaceInfo(String str, String str2, String str3, String str4, Point point, String str5, String str6, Float f, WorkingHours workingHours, String str7, List<String> list) {
        this.name__is_initialized = false;
        this.uri__is_initialized = false;
        this.photoUrlTemplate__is_initialized = false;
        this.logId__is_initialized = false;
        this.point__is_initialized = false;
        this.category__is_initialized = false;
        this.shortName__is_initialized = false;
        this.rating__is_initialized = false;
        this.workingHours__is_initialized = false;
        this.address__is_initialized = false;
        this.tag__is_initialized = false;
        if (str == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"name\" cannot be null");
            throw null;
        }
        if (list == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"tag\" cannot be null");
            throw null;
        }
        this.nativeObject = init(str, str2, str3, str4, point, str5, str6, f, workingHours, str7, list);
        this.name = str;
        this.name__is_initialized = true;
        this.uri = str2;
        this.uri__is_initialized = true;
        this.photoUrlTemplate = str3;
        this.photoUrlTemplate__is_initialized = true;
        this.logId = str4;
        this.logId__is_initialized = true;
        this.point = point;
        this.point__is_initialized = true;
        this.category = str5;
        this.category__is_initialized = true;
        this.shortName = str6;
        this.shortName__is_initialized = true;
        this.rating = f;
        this.rating__is_initialized = true;
        this.workingHours = workingHours;
        this.workingHours__is_initialized = true;
        this.address = str7;
        this.address__is_initialized = true;
        this.tag = list;
        this.tag__is_initialized = true;
    }

    private PlaceInfo(NativeObject nativeObject) {
        this.name__is_initialized = false;
        this.uri__is_initialized = false;
        this.photoUrlTemplate__is_initialized = false;
        this.logId__is_initialized = false;
        this.point__is_initialized = false;
        this.category__is_initialized = false;
        this.shortName__is_initialized = false;
        this.rating__is_initialized = false;
        this.workingHours__is_initialized = false;
        this.address__is_initialized = false;
        this.tag__is_initialized = false;
        this.nativeObject = nativeObject;
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

    public synchronized String getPhotoUrlTemplate() {
        try {
            if (!this.photoUrlTemplate__is_initialized) {
                this.photoUrlTemplate = getPhotoUrlTemplate__Native();
                this.photoUrlTemplate__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.photoUrlTemplate;
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

    public synchronized Point getPoint() {
        try {
            if (!this.point__is_initialized) {
                this.point = getPoint__Native();
                this.point__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.point;
    }

    public synchronized String getCategory() {
        try {
            if (!this.category__is_initialized) {
                this.category = getCategory__Native();
                this.category__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.category;
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

    public synchronized Float getRating() {
        try {
            if (!this.rating__is_initialized) {
                this.rating = getRating__Native();
                this.rating__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.rating;
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

    public synchronized String getAddress() {
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

    public synchronized List<String> getTag() {
        try {
            if (!this.tag__is_initialized) {
                this.tag = getTag__Native();
                this.tag__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.tag;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.name = archive.add(this.name, false);
            this.name__is_initialized = true;
            this.uri = archive.add(this.uri, true);
            this.uri__is_initialized = true;
            this.photoUrlTemplate = archive.add(this.photoUrlTemplate, true);
            this.photoUrlTemplate__is_initialized = true;
            this.logId = archive.add(this.logId, true);
            this.logId__is_initialized = true;
            this.point = (Point) archive.add(this.point, true, (Class<Point>) Point.class);
            this.point__is_initialized = true;
            this.category = archive.add(this.category, true);
            this.category__is_initialized = true;
            this.shortName = archive.add(this.shortName, true);
            this.shortName__is_initialized = true;
            this.rating = archive.add(this.rating, true);
            this.rating__is_initialized = true;
            this.workingHours = (WorkingHours) archive.add(this.workingHours, true, (Class<WorkingHours>) WorkingHours.class);
            this.workingHours__is_initialized = true;
            this.address = archive.add(this.address, true);
            this.address__is_initialized = true;
            List<String> listAdd = archive.add((List) this.tag, false, (ArchivingHandler) new StringHandler());
            this.tag = listAdd;
            this.tag__is_initialized = true;
            this.nativeObject = init(this.name, this.uri, this.photoUrlTemplate, this.logId, this.point, this.category, this.shortName, this.rating, this.workingHours, this.address, listAdd);
            return;
        }
        archive.add(getName(), false);
        archive.add(getUri(), true);
        archive.add(getPhotoUrlTemplate(), true);
        archive.add(getLogId(), true);
        archive.add(getPoint(), true, (Class<Point>) Point.class);
        archive.add(getCategory(), true);
        archive.add(getShortName(), true);
        archive.add(getRating(), true);
        archive.add(getWorkingHours(), true, (Class<WorkingHours>) WorkingHours.class);
        archive.add(getAddress(), true);
        archive.add((List) getTag(), false, (ArchivingHandler) new StringHandler());
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::search::PlaceInfo";
    }
}
