package com.yandex.mapkit.transport.masstransit.internal;

import com.yandex.mapkit.BaseMetadata;
import com.yandex.mapkit.transport.masstransit.SectionMetadata;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class SectionMetadataInternal implements BaseMetadata, Serializable {
    private boolean isPassThroughTransportSection;
    private boolean isPassThroughTransportSection__is_initialized;
    private SectionMetadata metadata;
    private boolean metadata__is_initialized;
    private NativeObject nativeObject;

    private native boolean getIsPassThroughTransportSection__Native();

    private native SectionMetadata getMetadata__Native();

    private native NativeObject init(SectionMetadata sectionMetadata, boolean z);

    public SectionMetadataInternal() {
        this.metadata__is_initialized = false;
        this.isPassThroughTransportSection__is_initialized = false;
    }

    public SectionMetadataInternal(SectionMetadata sectionMetadata, boolean z) {
        this.metadata__is_initialized = false;
        this.isPassThroughTransportSection__is_initialized = false;
        if (sectionMetadata == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"metadata\" cannot be null");
            throw null;
        }
        this.nativeObject = init(sectionMetadata, z);
        this.metadata = sectionMetadata;
        this.metadata__is_initialized = true;
        this.isPassThroughTransportSection = z;
        this.isPassThroughTransportSection__is_initialized = true;
    }

    private SectionMetadataInternal(NativeObject nativeObject) {
        this.metadata__is_initialized = false;
        this.isPassThroughTransportSection__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized SectionMetadata getMetadata() {
        try {
            if (!this.metadata__is_initialized) {
                this.metadata = getMetadata__Native();
                this.metadata__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.metadata;
    }

    public synchronized boolean getIsPassThroughTransportSection() {
        try {
            if (!this.isPassThroughTransportSection__is_initialized) {
                this.isPassThroughTransportSection = getIsPassThroughTransportSection__Native();
                this.isPassThroughTransportSection__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.isPassThroughTransportSection;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.metadata = (SectionMetadata) archive.add(this.metadata, false, (Class<SectionMetadata>) SectionMetadata.class);
            this.metadata__is_initialized = true;
            boolean zAdd = archive.add(this.isPassThroughTransportSection);
            this.isPassThroughTransportSection = zAdd;
            this.isPassThroughTransportSection__is_initialized = true;
            this.nativeObject = init(this.metadata, zAdd);
            return;
        }
        archive.add(getMetadata(), false, (Class<SectionMetadata>) SectionMetadata.class);
        archive.add(getIsPassThroughTransportSection());
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::transport::masstransit::internal::SectionMetadataInternal";
    }
}
