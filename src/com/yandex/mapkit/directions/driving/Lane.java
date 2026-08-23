package com.yandex.mapkit.directions.driving;

import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.EnumHandler;
import com.yandex.runtime.bindings.Serializable;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class Lane implements Serializable {
    private List<LaneDirection> directions;
    private boolean directions__is_initialized;
    private LaneDirection highlightedDirection;
    private boolean highlightedDirection__is_initialized;
    private LaneKind laneKind;
    private boolean laneKind__is_initialized;
    private NativeObject nativeObject;

    private native List<LaneDirection> getDirections__Native();

    private native LaneDirection getHighlightedDirection__Native();

    private native LaneKind getLaneKind__Native();

    private native NativeObject init(LaneKind laneKind, List<LaneDirection> list, LaneDirection laneDirection);

    public Lane() {
        this.laneKind__is_initialized = false;
        this.directions__is_initialized = false;
        this.highlightedDirection__is_initialized = false;
    }

    public Lane(LaneKind laneKind, List<LaneDirection> list, LaneDirection laneDirection) {
        this.laneKind__is_initialized = false;
        this.directions__is_initialized = false;
        this.highlightedDirection__is_initialized = false;
        if (laneKind == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"laneKind\" cannot be null");
            throw null;
        }
        if (list == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"directions\" cannot be null");
            throw null;
        }
        this.nativeObject = init(laneKind, list, laneDirection);
        this.laneKind = laneKind;
        this.laneKind__is_initialized = true;
        this.directions = list;
        this.directions__is_initialized = true;
        this.highlightedDirection = laneDirection;
        this.highlightedDirection__is_initialized = true;
    }

    private Lane(NativeObject nativeObject) {
        this.laneKind__is_initialized = false;
        this.directions__is_initialized = false;
        this.highlightedDirection__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized LaneKind getLaneKind() {
        try {
            if (!this.laneKind__is_initialized) {
                this.laneKind = getLaneKind__Native();
                this.laneKind__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.laneKind;
    }

    public synchronized List<LaneDirection> getDirections() {
        try {
            if (!this.directions__is_initialized) {
                this.directions = getDirections__Native();
                this.directions__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.directions;
    }

    public synchronized LaneDirection getHighlightedDirection() {
        try {
            if (!this.highlightedDirection__is_initialized) {
                this.highlightedDirection = getHighlightedDirection__Native();
                this.highlightedDirection__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.highlightedDirection;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.laneKind = (LaneKind) archive.add(this.laneKind, false, (Class<LaneKind>) LaneKind.class);
            this.laneKind__is_initialized = true;
            this.directions = archive.add((List) this.directions, false, (ArchivingHandler) new EnumHandler(LaneDirection.class));
            this.directions__is_initialized = true;
            LaneDirection laneDirection = (LaneDirection) archive.add(this.highlightedDirection, true, (Class<LaneDirection>) LaneDirection.class);
            this.highlightedDirection = laneDirection;
            this.highlightedDirection__is_initialized = true;
            this.nativeObject = init(this.laneKind, this.directions, laneDirection);
            return;
        }
        archive.add(getLaneKind(), false, (Class<LaneKind>) LaneKind.class);
        archive.add((List) getDirections(), false, (ArchivingHandler) new EnumHandler(LaneDirection.class));
        archive.add(getHighlightedDirection(), true, (Class<LaneDirection>) LaneDirection.class);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::directions::driving::Lane";
    }
}
