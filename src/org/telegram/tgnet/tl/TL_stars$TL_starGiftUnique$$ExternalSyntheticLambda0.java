package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.Vector;
import org.telegram.tgnet.tl.TL_stars;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class TL_stars$TL_starGiftUnique$$ExternalSyntheticLambda0 implements Vector.TLDeserializer {
    @Override // org.telegram.tgnet.Vector.TLDeserializer
    public final TLObject deserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        return TL_stars.StarGiftAttribute.TLdeserialize(inputSerializedData, i, z);
    }
}
