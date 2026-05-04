package com.google.android.gms.identitycredentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class ClearCreationOptionsResponse extends AbstractSafeParcelable {
    private final boolean isDeleted;
    public static final Companion Companion = new Companion(null);
    public static final Parcelable.Creator<ClearCreationOptionsResponse> CREATOR = new ClearCreationOptionsResponseCreator();

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public ClearCreationOptionsResponse(boolean z) {
        this.isDeleted = z;
    }

    public final boolean isDeleted() {
        return this.isDeleted;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int i) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        ClearCreationOptionsResponseCreator.writeToParcel(this, dest, i);
    }
}
