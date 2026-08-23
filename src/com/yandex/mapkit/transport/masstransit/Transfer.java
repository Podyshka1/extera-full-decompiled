package com.yandex.mapkit.transport.masstransit;

import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.ClassHandler;
import com.yandex.runtime.bindings.Serializable;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class Transfer implements Serializable {
    private List<ConstructionSegment> constructions;
    private boolean constructions__is_initialized;
    private NativeObject nativeObject;
    private TransferStop transferStop;
    private boolean transferStop__is_initialized;

    private native List<ConstructionSegment> getConstructions__Native();

    private native TransferStop getTransferStop__Native();

    private native NativeObject init(List<ConstructionSegment> list, TransferStop transferStop);

    public Transfer() {
        this.constructions__is_initialized = false;
        this.transferStop__is_initialized = false;
    }

    public Transfer(List<ConstructionSegment> list, TransferStop transferStop) {
        this.constructions__is_initialized = false;
        this.transferStop__is_initialized = false;
        if (list == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"constructions\" cannot be null");
            throw null;
        }
        if (transferStop == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"transferStop\" cannot be null");
            throw null;
        }
        this.nativeObject = init(list, transferStop);
        this.constructions = list;
        this.constructions__is_initialized = true;
        this.transferStop = transferStop;
        this.transferStop__is_initialized = true;
    }

    private Transfer(NativeObject nativeObject) {
        this.constructions__is_initialized = false;
        this.transferStop__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized List<ConstructionSegment> getConstructions() {
        try {
            if (!this.constructions__is_initialized) {
                this.constructions = getConstructions__Native();
                this.constructions__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.constructions;
    }

    public synchronized TransferStop getTransferStop() {
        try {
            if (!this.transferStop__is_initialized) {
                this.transferStop = getTransferStop__Native();
                this.transferStop__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.transferStop;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.constructions = archive.add((List) this.constructions, false, (ArchivingHandler) new ClassHandler(ConstructionSegment.class));
            this.constructions__is_initialized = true;
            TransferStop transferStop = (TransferStop) archive.add(this.transferStop, false, (Class<TransferStop>) TransferStop.class);
            this.transferStop = transferStop;
            this.transferStop__is_initialized = true;
            this.nativeObject = init(this.constructions, transferStop);
            return;
        }
        archive.add((List) getConstructions(), false, (ArchivingHandler) new ClassHandler(ConstructionSegment.class));
        archive.add(getTransferStop(), false, (Class<TransferStop>) TransferStop.class);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::transport::masstransit::Transfer";
    }
}
