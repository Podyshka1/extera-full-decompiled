package android.support.v4.media;

import android.annotation.SuppressLint;
import android.media.Rating;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"BanParcelableUsage"})
public final class RatingCompat implements Parcelable {
    public static final Parcelable.Creator<RatingCompat> CREATOR = new Parcelable.Creator<RatingCompat>() { // from class: android.support.v4.media.RatingCompat.1
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
    private Object mRatingObj;
    private final int mRatingStyle;
    private final float mRatingValue;

    public RatingCompat(int i, float f) {
        this.mRatingStyle = i;
        this.mRatingValue = f;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Rating:style=");
        sb.append(this.mRatingStyle);
        sb.append(" rating=");
        float f = this.mRatingValue;
        sb.append(f < 0.0f ? "unrated" : String.valueOf(f));
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return this.mRatingStyle;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mRatingStyle);
        parcel.writeFloat(this.mRatingValue);
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
        return this.mRatingValue >= 0.0f;
    }

    public int getRatingStyle() {
        return this.mRatingStyle;
    }

    public boolean hasHeart() {
        return this.mRatingStyle == 1 && this.mRatingValue == 1.0f;
    }

    public boolean isThumbUp() {
        return this.mRatingStyle == 2 && this.mRatingValue == 1.0f;
    }

    public float getStarRating() {
        int i = this.mRatingStyle;
        if ((i == 3 || i == 4 || i == 5) && isRated()) {
            return this.mRatingValue;
        }
        return -1.0f;
    }

    public float getPercentRating() {
        if (this.mRatingStyle == 6 && isRated()) {
            return this.mRatingValue;
        }
        return -1.0f;
    }

    public static RatingCompat fromRating(Object obj) {
        RatingCompat ratingCompatNewUnratedRating = null;
        if (obj != null) {
            Rating rating = (Rating) obj;
            int ratingStyle = Api19Impl.getRatingStyle(rating);
            if (Api19Impl.isRated(rating)) {
                switch (ratingStyle) {
                    case 1:
                        ratingCompatNewUnratedRating = newHeartRating(Api19Impl.hasHeart(rating));
                        break;
                    case 2:
                        ratingCompatNewUnratedRating = newThumbRating(Api19Impl.isThumbUp(rating));
                        break;
                    case 3:
                    case 4:
                    case 5:
                        ratingCompatNewUnratedRating = newStarRating(ratingStyle, Api19Impl.getStarRating(rating));
                        break;
                    case 6:
                        ratingCompatNewUnratedRating = newPercentageRating(Api19Impl.getPercentRating(rating));
                        break;
                    default:
                        return null;
                }
            } else {
                ratingCompatNewUnratedRating = newUnratedRating(ratingStyle);
            }
            ratingCompatNewUnratedRating.mRatingObj = obj;
        }
        return ratingCompatNewUnratedRating;
    }

    public Object getRating() {
        if (this.mRatingObj == null) {
            boolean zIsRated = isRated();
            int i = this.mRatingStyle;
            if (zIsRated) {
                switch (i) {
                    case 1:
                        this.mRatingObj = Api19Impl.newHeartRating(hasHeart());
                        break;
                    case 2:
                        this.mRatingObj = Api19Impl.newThumbRating(isThumbUp());
                        break;
                    case 3:
                    case 4:
                    case 5:
                        this.mRatingObj = Api19Impl.newStarRating(i, getStarRating());
                        break;
                    case 6:
                        this.mRatingObj = Api19Impl.newPercentageRating(getPercentRating());
                        break;
                    default:
                        return null;
                }
            } else {
                this.mRatingObj = Api19Impl.newUnratedRating(i);
            }
        }
        return this.mRatingObj;
    }

    public static class Api19Impl {
        public static int getRatingStyle(Rating rating) {
            return rating.getRatingStyle();
        }

        public static boolean isRated(Rating rating) {
            return rating.isRated();
        }

        public static boolean hasHeart(Rating rating) {
            return rating.hasHeart();
        }

        public static boolean isThumbUp(Rating rating) {
            return rating.isThumbUp();
        }

        public static float getStarRating(Rating rating) {
            return rating.getStarRating();
        }

        public static float getPercentRating(Rating rating) {
            return rating.getPercentRating();
        }

        public static Rating newHeartRating(boolean z) {
            return Rating.newHeartRating(z);
        }

        public static Rating newThumbRating(boolean z) {
            return Rating.newThumbRating(z);
        }

        public static Rating newStarRating(int i, float f) {
            return Rating.newStarRating(i, f);
        }

        public static Rating newPercentageRating(float f) {
            return Rating.newPercentageRating(f);
        }

        public static Rating newUnratedRating(int i) {
            return Rating.newUnratedRating(i);
        }
    }
}
