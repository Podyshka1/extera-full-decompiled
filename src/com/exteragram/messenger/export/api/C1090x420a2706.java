package com.exteragram.messenger.export.api;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.Vector;

/* JADX INFO: renamed from: com.exteragram.messenger.export.api.ExportRequests$InvokeWithTakeoutWrapper$$ExternalSyntheticLambda1 */
/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class C1090x420a2706 implements Vector.TLDeserializer {
    @Override // org.telegram.tgnet.Vector.TLDeserializer
    public final TLObject deserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        return ExportRequests$SavedContact.TLdeserialize(inputSerializedData, i, z);
    }
}
