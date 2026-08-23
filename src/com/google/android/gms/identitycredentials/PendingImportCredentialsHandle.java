package com.google.android.gms.identitycredentials;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class PendingImportCredentialsHandle extends AbstractSafeParcelable {
    private final PendingIntent pendingIntent;
    public static final Companion Companion = new Companion(null);
    public static final Parcelable.Creator<PendingImportCredentialsHandle> CREATOR = new PendingImportCredentialsHandleCreator();

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public PendingImportCredentialsHandle(PendingIntent pendingIntent) {
        Intrinsics.checkNotNullParameter(pendingIntent, "pendingIntent");
        this.pendingIntent = pendingIntent;
    }

    public final PendingIntent getPendingIntent() {
        return this.pendingIntent;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int i) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        PendingImportCredentialsHandleCreator.writeToParcel(this, dest, i);
    }
}
