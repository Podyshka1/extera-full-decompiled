package com.google.android.gms.identitycredentials;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class CreateCredentialHandle extends AbstractSafeParcelable {
    private final CreateCredentialResponse createCredentialResponse;
    private final PendingIntent pendingIntent;
    public static final Companion Companion = new Companion(null);
    public static final Parcelable.Creator<CreateCredentialHandle> CREATOR = new CreateCredentialHandleCreator();

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public CreateCredentialHandle(PendingIntent pendingIntent, CreateCredentialResponse createCredentialResponse) {
        this.pendingIntent = pendingIntent;
        this.createCredentialResponse = createCredentialResponse;
        if (pendingIntent == null && createCredentialResponse == null) {
            throw new IllegalArgumentException("pendingIntent or createCredentialResponse must be specified.");
        }
    }

    public final CreateCredentialResponse getCreateCredentialResponse() {
        return this.createCredentialResponse;
    }

    public final PendingIntent getPendingIntent() {
        return this.pendingIntent;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int i) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        CreateCredentialHandleCreator.writeToParcel(this, dest, i);
    }
}
