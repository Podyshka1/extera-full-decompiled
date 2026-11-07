package androidx.media3.extractor.text;

import android.os.Bundle;
import android.os.Parcel;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.BundleCollectionUtil;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class CueDecoder {
    public CuesWithTiming decode(long j, byte[] bArr, int i, int i2) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.unmarshall(bArr, i, i2);
        parcelObtain.setDataPosition(0);
        Bundle bundle = parcelObtain.readBundle(Bundle.class.getClassLoader());
        parcelObtain.recycle();
        return new CuesWithTiming(BundleCollectionUtil.fromBundleList(new Function() { // from class: androidx.media3.extractor.text.CueDecoder$$ExternalSyntheticLambda0
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return Cue.fromBundle((Bundle) obj);
            }
        }, (ArrayList) Preconditions.checkNotNull(bundle.getParcelableArrayList("c"))), j, bundle.getLong("d"));
    }
}
