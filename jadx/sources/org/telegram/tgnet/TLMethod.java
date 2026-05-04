package org.telegram.tgnet;

/* JADX INFO: loaded from: classes.dex */
public abstract class TLMethod extends TLObject {
    public abstract TLObject deserializeResponseT(InputSerializedData inputSerializedData, int i, boolean z);

    @Override // org.telegram.tgnet.TLObject
    public final TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return deserializeResponseT(inputSerializedData, i, z);
    }
}
