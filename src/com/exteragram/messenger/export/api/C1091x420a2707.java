package com.exteragram.messenger.export.api;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.Vector;

/* JADX INFO: renamed from: com.exteragram.messenger.export.api.ExportRequests$InvokeWithTakeoutWrapper$$ExternalSyntheticLambda2 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C1091x420a2707 implements Vector.TLDeserializer {
    @Override // org.telegram.tgnet.Vector.TLDeserializer
    public final TLObject deserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        return TLRPC.Document.TLdeserialize(inputSerializedData, i, z);
    }
}
