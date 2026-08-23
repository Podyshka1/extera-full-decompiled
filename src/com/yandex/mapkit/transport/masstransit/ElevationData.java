package com.yandex.mapkit.transport.masstransit;

import com.yandex.mapkit.LocalizedValue;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.ClassHandler;
import com.yandex.runtime.bindings.Serializable;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class ElevationData implements Serializable {
    private List<ElevationPoint> elevationSegments;
    private boolean elevationSegments__is_initialized;
    private List<InclineSection> inclineSections;
    private boolean inclineSections__is_initialized;
    private LocalizedValue kilocalories;
    private boolean kilocalories__is_initialized;
    private NativeObject nativeObject;
    private LocalizedValue steps;
    private boolean steps__is_initialized;
    private LocalizedValue totalAscent;
    private boolean totalAscent__is_initialized;
    private LocalizedValue totalDescent;
    private boolean totalDescent__is_initialized;

    private native List<ElevationPoint> getElevationSegments__Native();

    private native List<InclineSection> getInclineSections__Native();

    private native LocalizedValue getKilocalories__Native();

    private native LocalizedValue getSteps__Native();

    private native LocalizedValue getTotalAscent__Native();

    private native LocalizedValue getTotalDescent__Native();

    private native NativeObject init(LocalizedValue localizedValue, LocalizedValue localizedValue2, LocalizedValue localizedValue3, LocalizedValue localizedValue4, List<InclineSection> list, List<ElevationPoint> list2);

    public ElevationData() {
        this.totalAscent__is_initialized = false;
        this.totalDescent__is_initialized = false;
        this.steps__is_initialized = false;
        this.kilocalories__is_initialized = false;
        this.inclineSections__is_initialized = false;
        this.elevationSegments__is_initialized = false;
    }

    public ElevationData(LocalizedValue localizedValue, LocalizedValue localizedValue2, LocalizedValue localizedValue3, LocalizedValue localizedValue4, List<InclineSection> list, List<ElevationPoint> list2) {
        this.totalAscent__is_initialized = false;
        this.totalDescent__is_initialized = false;
        this.steps__is_initialized = false;
        this.kilocalories__is_initialized = false;
        this.inclineSections__is_initialized = false;
        this.elevationSegments__is_initialized = false;
        if (localizedValue == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"totalAscent\" cannot be null");
            throw null;
        }
        if (localizedValue2 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"totalDescent\" cannot be null");
            throw null;
        }
        if (localizedValue4 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"kilocalories\" cannot be null");
            throw null;
        }
        if (list == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"inclineSections\" cannot be null");
            throw null;
        }
        if (list2 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"elevationSegments\" cannot be null");
            throw null;
        }
        this.nativeObject = init(localizedValue, localizedValue2, localizedValue3, localizedValue4, list, list2);
        this.totalAscent = localizedValue;
        this.totalAscent__is_initialized = true;
        this.totalDescent = localizedValue2;
        this.totalDescent__is_initialized = true;
        this.steps = localizedValue3;
        this.steps__is_initialized = true;
        this.kilocalories = localizedValue4;
        this.kilocalories__is_initialized = true;
        this.inclineSections = list;
        this.inclineSections__is_initialized = true;
        this.elevationSegments = list2;
        this.elevationSegments__is_initialized = true;
    }

    private ElevationData(NativeObject nativeObject) {
        this.totalAscent__is_initialized = false;
        this.totalDescent__is_initialized = false;
        this.steps__is_initialized = false;
        this.kilocalories__is_initialized = false;
        this.inclineSections__is_initialized = false;
        this.elevationSegments__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized LocalizedValue getTotalAscent() {
        try {
            if (!this.totalAscent__is_initialized) {
                this.totalAscent = getTotalAscent__Native();
                this.totalAscent__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.totalAscent;
    }

    public synchronized LocalizedValue getTotalDescent() {
        try {
            if (!this.totalDescent__is_initialized) {
                this.totalDescent = getTotalDescent__Native();
                this.totalDescent__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.totalDescent;
    }

    public synchronized LocalizedValue getSteps() {
        try {
            if (!this.steps__is_initialized) {
                this.steps = getSteps__Native();
                this.steps__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.steps;
    }

    public synchronized LocalizedValue getKilocalories() {
        try {
            if (!this.kilocalories__is_initialized) {
                this.kilocalories = getKilocalories__Native();
                this.kilocalories__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.kilocalories;
    }

    public synchronized List<InclineSection> getInclineSections() {
        try {
            if (!this.inclineSections__is_initialized) {
                this.inclineSections = getInclineSections__Native();
                this.inclineSections__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.inclineSections;
    }

    public synchronized List<ElevationPoint> getElevationSegments() {
        try {
            if (!this.elevationSegments__is_initialized) {
                this.elevationSegments = getElevationSegments__Native();
                this.elevationSegments__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.elevationSegments;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.totalAscent = (LocalizedValue) archive.add(this.totalAscent, false, (Class<LocalizedValue>) LocalizedValue.class);
            this.totalAscent__is_initialized = true;
            this.totalDescent = (LocalizedValue) archive.add(this.totalDescent, false, (Class<LocalizedValue>) LocalizedValue.class);
            this.totalDescent__is_initialized = true;
            this.steps = (LocalizedValue) archive.add(this.steps, true, (Class<LocalizedValue>) LocalizedValue.class);
            this.steps__is_initialized = true;
            this.kilocalories = (LocalizedValue) archive.add(this.kilocalories, false, (Class<LocalizedValue>) LocalizedValue.class);
            this.kilocalories__is_initialized = true;
            this.inclineSections = archive.add((List) this.inclineSections, false, (ArchivingHandler) new ClassHandler(InclineSection.class));
            this.inclineSections__is_initialized = true;
            List<ElevationPoint> listAdd = archive.add((List) this.elevationSegments, false, (ArchivingHandler) new ClassHandler(ElevationPoint.class));
            this.elevationSegments = listAdd;
            this.elevationSegments__is_initialized = true;
            this.nativeObject = init(this.totalAscent, this.totalDescent, this.steps, this.kilocalories, this.inclineSections, listAdd);
            return;
        }
        archive.add(getTotalAscent(), false, (Class<LocalizedValue>) LocalizedValue.class);
        archive.add(getTotalDescent(), false, (Class<LocalizedValue>) LocalizedValue.class);
        archive.add(getSteps(), true, (Class<LocalizedValue>) LocalizedValue.class);
        archive.add(getKilocalories(), false, (Class<LocalizedValue>) LocalizedValue.class);
        archive.add((List) getInclineSections(), false, (ArchivingHandler) new ClassHandler(InclineSection.class));
        archive.add((List) getElevationSegments(), false, (ArchivingHandler) new ClassHandler(ElevationPoint.class));
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::transport::masstransit::ElevationData";
    }
}
