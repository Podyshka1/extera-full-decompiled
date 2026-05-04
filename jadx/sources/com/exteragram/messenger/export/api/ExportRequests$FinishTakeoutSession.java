package com.exteragram.messenger.export.api;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes4.dex */
public class ExportRequests$FinishTakeoutSession extends TLObject {
    public static int constructor = 489050862;
    public int flags;
    public boolean success;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TLRPC.Bool.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(constructor);
        int i = this.success ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        outputSerializedData.writeInt32(i);
    }
}
