package org.telegram.tgnet.p028tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.Vector;
import org.telegram.tgnet.p028tl.TL_stories;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class TL_stories$TL_storyItem$$ExternalSyntheticLambda0 implements Vector.TLDeserializer {
    @Override // org.telegram.tgnet.Vector.TLDeserializer
    public final TLObject deserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        return TL_stories.MediaArea.TLdeserialize(inputSerializedData, i, z);
    }
}
