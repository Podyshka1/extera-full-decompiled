package org.telegram.messenger;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.Vector;
import org.telegram.tgnet.tl.TL_ephemeral;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class MessagesStorage$$ExternalSyntheticLambda84 implements Vector.TLDeserializer {
    @Override // org.telegram.tgnet.Vector.TLDeserializer
    public final TLObject deserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        return TL_ephemeral.EphemeralMessage.TLdeserialize(inputSerializedData, i, z);
    }
}
