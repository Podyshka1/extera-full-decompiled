package com.google.android.exoplayer2.text;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.BundleableUtil;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class CueDecoder {
    public ImmutableList<Cue> decode(byte[] bArr) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.unmarshall(bArr, 0, bArr.length);
        parcelObtain.setDataPosition(0);
        Bundle bundle = parcelObtain.readBundle(Bundle.class.getClassLoader());
        parcelObtain.recycle();
        return BundleableUtil.fromBundleList(Cue.CREATOR, (ArrayList) Assertions.checkNotNull(bundle.getParcelableArrayList("c")));
    }
}
