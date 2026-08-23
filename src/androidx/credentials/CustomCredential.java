package androidx.credentials;

import android.os.Bundle;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public class CustomCredential extends Credential {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CustomCredential(String type, Bundle data) {
        super(type, data);
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(data, "data");
        if (type.length() <= 0) {
            throw new IllegalArgumentException("type should not be empty");
        }
    }
}
