package org.telegram.tgnet;

import org.telegram.messenger.Utilities;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class Vector$$ExternalSyntheticLambda3 implements Utilities.Callback {
    public final /* synthetic */ OutputSerializedData f$0;

    public /* synthetic */ Vector$$ExternalSyntheticLambda3(OutputSerializedData outputSerializedData) {
        this.f$0 = outputSerializedData;
    }

    @Override // org.telegram.messenger.Utilities.Callback
    public final void run(Object obj) {
        this.f$0.writeInt32(((Integer) obj).intValue());
    }
}
