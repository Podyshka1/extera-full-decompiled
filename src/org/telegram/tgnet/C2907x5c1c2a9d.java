package org.telegram.tgnet;

import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.Vector;

/* JADX INFO: renamed from: org.telegram.tgnet.TLRPC$TL_messages_preparedInlineMessage$$ExternalSyntheticLambda0 */
/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class C2907x5c1c2a9d implements Vector.TLDeserializer {
    @Override // org.telegram.tgnet.Vector.TLDeserializer
    public final TLObject deserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        return TLRPC.InlineQueryPeerType.TLdeserialize(inputSerializedData, i, z);
    }
}
