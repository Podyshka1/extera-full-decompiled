package androidx.car.app.model;

import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class Metadata {
    public static final Metadata EMPTY_METADATA = new Builder().build();
    private final Place mPlace;

    public Place getPlace() {
        return this.mPlace;
    }

    public int hashCode() {
        return Objects.hashCode(this.mPlace);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Metadata) {
            return Objects.equals(this.mPlace, ((Metadata) obj).mPlace);
        }
        return false;
    }

    public Metadata(Builder builder) {
        this.mPlace = builder.mPlace;
    }

    private Metadata() {
        this.mPlace = null;
    }

    public static final class Builder {
        Place mPlace;

        public Metadata build() {
            return new Metadata(this);
        }
    }
}
