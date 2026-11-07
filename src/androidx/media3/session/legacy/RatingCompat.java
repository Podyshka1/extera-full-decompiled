package androidx.media3.session.legacy;

import android.annotation.SuppressLint;
import android.media.Rating;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import androidx.media3.common.util.Assertions;

/* JADX INFO: loaded from: classes4.dex */
@SuppressLint({"BanParcelableUsage"})
public final class RatingCompat implements Parcelable {
    public static final Parcelable.Creator<RatingCompat> CREATOR = new Parcelable.Creator<RatingCompat>() { // from class: androidx.media3.session.legacy.RatingCompat.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RatingCompat createFromParcel(Parcel parcel) {
            return new RatingCompat(parcel.readInt(), parcel.readFloat());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RatingCompat[] newArray(int i) {
            return new RatingCompat[i];
        }
    };
    private Object ratingObj;
    private final int ratingStyle;
    private final float ratingValue;

    public RatingCompat(int i, float f) {
        this.ratingStyle = i;
        this.ratingValue = f;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Rating:style=");
        sb.append(this.ratingStyle);
        sb.append(" rating=");
        float f = this.ratingValue;
        sb.append(f < 0.0f ? "unrated" : String.valueOf(f));
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return this.ratingStyle;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.ratingStyle);
        parcel.writeFloat(this.ratingValue);
    }

    public static RatingCompat newUnratedRating(int i) {
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                return new RatingCompat(i, -1.0f);
            default:
                return null;
        }
    }

    public static RatingCompat newHeartRating(boolean z) {
        return new RatingCompat(1, z ? 1.0f : 0.0f);
    }

    public static RatingCompat newThumbRating(boolean z) {
        return new RatingCompat(2, z ? 1.0f : 0.0f);
    }

    public static RatingCompat newStarRating(int i, float f) {
        float f2;
        if (i == 3) {
            f2 = 3.0f;
        } else if (i == 4) {
            f2 = 4.0f;
        } else {
            if (i != 5) {
                Log.e("Rating", "Invalid rating style (" + i + ") for a star rating");
                return null;
            }
            f2 = 5.0f;
        }
        if (f < 0.0f || f > f2) {
            Log.e("Rating", "Trying to set out of range star-based rating");
            return null;
        }
        return new RatingCompat(i, f);
    }

    public static RatingCompat newPercentageRating(float f) {
        if (f < 0.0f || f > 100.0f) {
            Log.e("Rating", "Invalid percentage-based rating value");
            return null;
        }
        return new RatingCompat(6, f);
    }

    public boolean isRated() {
        return this.ratingValue >= 0.0f;
    }

    public int getRatingStyle() {
        return this.ratingStyle;
    }

    public boolean hasHeart() {
        return this.ratingStyle == 1 && this.ratingValue == 1.0f;
    }

    public boolean isThumbUp() {
        return this.ratingStyle == 2 && this.ratingValue == 1.0f;
    }

    public float getStarRating() {
        int i = this.ratingStyle;
        if ((i == 3 || i == 4 || i == 5) && isRated()) {
            return this.ratingValue;
        }
        return -1.0f;
    }

    public float getPercentRating() {
        if (this.ratingStyle == 6 && isRated()) {
            return this.ratingValue;
        }
        return -1.0f;
    }

    @SuppressLint({"WrongConstant"})
    public static RatingCompat fromRating(Object obj) {
        RatingCompat ratingCompatNewUnratedRating = null;
        if (obj != null) {
            Rating rating = (Rating) obj;
            int ratingStyle = rating.getRatingStyle();
            if (rating.isRated()) {
                switch (ratingStyle) {
                    case 1:
                        ratingCompatNewUnratedRating = newHeartRating(rating.hasHeart());
                        break;
                    case 2:
                        ratingCompatNewUnratedRating = newThumbRating(rating.isThumbUp());
                        break;
                    case 3:
                    case 4:
                    case 5:
                        ratingCompatNewUnratedRating = newStarRating(ratingStyle, rating.getStarRating());
                        break;
                    case 6:
                        ratingCompatNewUnratedRating = newPercentageRating(rating.getPercentRating());
                        break;
                    default:
                        return null;
                }
            } else {
                ratingCompatNewUnratedRating = newUnratedRating(ratingStyle);
            }
            ((RatingCompat) Assertions.checkNotNull(ratingCompatNewUnratedRating)).ratingObj = obj;
        }
        return ratingCompatNewUnratedRating;
    }

    public Object getRating() {
        if (this.ratingObj == null) {
            boolean zIsRated = isRated();
            int i = this.ratingStyle;
            if (zIsRated) {
                switch (i) {
                    case 1:
                        this.ratingObj = Rating.newHeartRating(hasHeart());
                        break;
                    case 2:
                        this.ratingObj = Rating.newThumbRating(isThumbUp());
                        break;
                    case 3:
                    case 4:
                    case 5:
                        this.ratingObj = Rating.newStarRating(i, getStarRating());
                        break;
                    case 6:
                        this.ratingObj = Rating.newPercentageRating(getPercentRating());
                        break;
                    default:
                        return null;
                }
            } else {
                this.ratingObj = Rating.newUnratedRating(i);
            }
        }
        return this.ratingObj;
    }
}
