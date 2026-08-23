package com.yandex.mapkit.navigation.automotive.layer;

import com.yandex.mapkit.directions.driving.Summary;
import com.yandex.mapkit.directions.driving.Weight;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.Serializable;
import com.yandex.runtime.bindings.StringHandler;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class RouteSummaryBalloon implements Serializable {
    private NativeObject nativeObject;
    private Weight relativeWeight;
    private boolean relativeWeight__is_initialized;
    private Summary summary;
    private boolean summary__is_initialized;
    private List<String> tags;
    private boolean tags__is_initialized;

    private native Weight getRelativeWeight__Native();

    private native Summary getSummary__Native();

    private native List<String> getTags__Native();

    private native NativeObject init(Summary summary, List<String> list, Weight weight);

    public RouteSummaryBalloon() {
        this.summary__is_initialized = false;
        this.tags__is_initialized = false;
        this.relativeWeight__is_initialized = false;
    }

    public RouteSummaryBalloon(Summary summary, List<String> list, Weight weight) {
        this.summary__is_initialized = false;
        this.tags__is_initialized = false;
        this.relativeWeight__is_initialized = false;
        if (summary == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"summary\" cannot be null");
            throw null;
        }
        if (list == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"tags\" cannot be null");
            throw null;
        }
        this.nativeObject = init(summary, list, weight);
        this.summary = summary;
        this.summary__is_initialized = true;
        this.tags = list;
        this.tags__is_initialized = true;
        this.relativeWeight = weight;
        this.relativeWeight__is_initialized = true;
    }

    private RouteSummaryBalloon(NativeObject nativeObject) {
        this.summary__is_initialized = false;
        this.tags__is_initialized = false;
        this.relativeWeight__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized Summary getSummary() {
        try {
            if (!this.summary__is_initialized) {
                this.summary = getSummary__Native();
                this.summary__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.summary;
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

    public synchronized Weight getRelativeWeight() {
        try {
            if (!this.relativeWeight__is_initialized) {
                this.relativeWeight = getRelativeWeight__Native();
                this.relativeWeight__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.relativeWeight;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.summary = (Summary) archive.add(this.summary, false, (Class<Summary>) Summary.class);
            this.summary__is_initialized = true;
            this.tags = archive.add((List) this.tags, false, (ArchivingHandler) new StringHandler());
            this.tags__is_initialized = true;
            Weight weight = (Weight) archive.add(this.relativeWeight, true, (Class<Weight>) Weight.class);
            this.relativeWeight = weight;
            this.relativeWeight__is_initialized = true;
            this.nativeObject = init(this.summary, this.tags, weight);
            return;
        }
        archive.add(getSummary(), false, (Class<Summary>) Summary.class);
        archive.add((List) getTags(), false, (ArchivingHandler) new StringHandler());
        archive.add(getRelativeWeight(), true, (Class<Weight>) Weight.class);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::navigation::automotive::layer::RouteSummaryBalloon";
    }
}
