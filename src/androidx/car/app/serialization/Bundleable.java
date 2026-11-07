package androidx.car.app.serialization;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class Bundleable implements Parcelable {
    public static final Parcelable.Creator<Bundleable> CREATOR = new Parcelable.Creator<Bundleable>() { // from class: androidx.car.app.serialization.Bundleable.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Bundleable createFromParcel(Parcel parcel) {
            Bundle bundle = parcel.readBundle(getClass().getClassLoader());
            Objects.requireNonNull(bundle);
            return new Bundleable(bundle);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Bundleable[] newArray(int i) {
            return new Bundleable[i];
        }
    };
    private final Bundle mBundle;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public static Bundleable create(Object obj) {
        return new Bundleable(obj);
    }

    public Object get() {
        return Bundler.fromBundle(this.mBundle);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.mBundle);
    }

    private Bundleable(Object obj) {
        this.mBundle = Bundler.toBundle(obj);
    }

    public Bundleable(Bundle bundle) {
        this.mBundle = bundle;
    }
}
