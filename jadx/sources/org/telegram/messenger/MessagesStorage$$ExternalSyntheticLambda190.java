package org.telegram.messenger;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.Vector;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class MessagesStorage$$ExternalSyntheticLambda190 implements Vector.TLDeserializer {
    @Override // org.telegram.tgnet.Vector.TLDeserializer
    public final TLObject deserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        return TLRPC.MessageEntity.TLdeserialize(inputSerializedData, i, z);
    }
}
