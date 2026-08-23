package com.yandex.mapkit.search;

import com.yandex.mapkit.BaseMetadata;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class OrgOwnershipObjectMetadata implements BaseMetadata, Serializable {
    private Boolean canBeClaimed;
    private boolean canBeClaimed__is_initialized;
    private NativeObject nativeObject;

    private native Boolean getCanBeClaimed__Native();

    private native NativeObject init(Boolean bool);

    public OrgOwnershipObjectMetadata() {
        this.canBeClaimed__is_initialized = false;
    }

    public OrgOwnershipObjectMetadata(Boolean bool) {
        this.canBeClaimed__is_initialized = false;
        this.nativeObject = init(bool);
        this.canBeClaimed = bool;
        this.canBeClaimed__is_initialized = true;
    }

    private OrgOwnershipObjectMetadata(NativeObject nativeObject) {
        this.canBeClaimed__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized Boolean getCanBeClaimed() {
        try {
            if (!this.canBeClaimed__is_initialized) {
                this.canBeClaimed = getCanBeClaimed__Native();
                this.canBeClaimed__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.canBeClaimed;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            Boolean boolAdd = archive.add(this.canBeClaimed, true);
            this.canBeClaimed = boolAdd;
            this.canBeClaimed__is_initialized = true;
            this.nativeObject = init(boolAdd);
            return;
        }
        archive.add(getCanBeClaimed(), true);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::search::OrgOwnershipObjectMetadata";
    }
}
