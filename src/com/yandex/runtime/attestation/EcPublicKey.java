package com.yandex.runtime.attestation;

import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class EcPublicKey implements Serializable {
    private byte[] affineX;
    private boolean affineX__is_initialized;
    private byte[] affineY;
    private boolean affineY__is_initialized;
    private NativeObject nativeObject;

    private native byte[] getAffineX__Native();

    private native byte[] getAffineY__Native();

    private native NativeObject init(byte[] bArr, byte[] bArr2);

    public EcPublicKey() {
        this.affineX__is_initialized = false;
        this.affineY__is_initialized = false;
    }

    public EcPublicKey(byte[] bArr, byte[] bArr2) {
        this.affineX__is_initialized = false;
        this.affineY__is_initialized = false;
        if (bArr == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"affineX\" cannot be null");
            throw null;
        }
        if (bArr2 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"affineY\" cannot be null");
            throw null;
        }
        this.nativeObject = init(bArr, bArr2);
        this.affineX = bArr;
        this.affineX__is_initialized = true;
        this.affineY = bArr2;
        this.affineY__is_initialized = true;
    }

    private EcPublicKey(NativeObject nativeObject) {
        this.affineX__is_initialized = false;
        this.affineY__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized byte[] getAffineX() {
        try {
            if (!this.affineX__is_initialized) {
                this.affineX = getAffineX__Native();
                this.affineX__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.affineX;
    }

    public synchronized byte[] getAffineY() {
        try {
            if (!this.affineY__is_initialized) {
                this.affineY = getAffineY__Native();
                this.affineY__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.affineY;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.affineX = archive.add(this.affineX, false);
            this.affineX__is_initialized = true;
            byte[] bArrAdd = archive.add(this.affineY, false);
            this.affineY = bArrAdd;
            this.affineY__is_initialized = true;
            this.nativeObject = init(this.affineX, bArrAdd);
            return;
        }
        archive.add(getAffineX(), false);
        archive.add(getAffineY(), false);
    }

    public static String getNativeName() {
        return "yandex::maps::runtime::attestation::EcPublicKey";
    }
}
