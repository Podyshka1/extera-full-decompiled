package androidx.customview.view;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import okio.Segment$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"BanParcelableUsage"})
public abstract class AbsSavedState implements Parcelable {
    private final Parcelable mSuperState;
    public static final AbsSavedState EMPTY_STATE = new AbsSavedState() { // from class: androidx.customview.view.AbsSavedState.1
    };
    public static final Parcelable.Creator<AbsSavedState> CREATOR = new Parcelable.ClassLoaderCreator<AbsSavedState>() { // from class: androidx.customview.view.AbsSavedState.2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.ClassLoaderCreator
        public AbsSavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
            if (parcel.readParcelable(classLoader) != null) {
                Segment$$ExternalSyntheticBUOutline1.m848m("superState must be null");
                return null;
            }
            return AbsSavedState.EMPTY_STATE;
        }

        @Override // android.os.Parcelable.Creator
        public AbsSavedState createFromParcel(Parcel parcel) {
            return createFromParcel(parcel, (ClassLoader) null);
        }

        @Override // android.os.Parcelable.Creator
        public AbsSavedState[] newArray(int i) {
            return new AbsSavedState[i];
        }
    };

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    private AbsSavedState() {
        this.mSuperState = null;
    }

    public AbsSavedState(Parcelable parcelable) {
        if (parcelable == null) {
            f$$ExternalSyntheticBUOutline1.m178m("superState must not be null");
            throw null;
        }
        this.mSuperState = parcelable == EMPTY_STATE ? null : parcelable;
    }

    public AbsSavedState(Parcel parcel, ClassLoader classLoader) {
        Parcelable parcelable = parcel.readParcelable(classLoader);
        this.mSuperState = parcelable == null ? EMPTY_STATE : parcelable;
    }

    public final Parcelable getSuperState() {
        return this.mSuperState;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.mSuperState, i);
    }
}
