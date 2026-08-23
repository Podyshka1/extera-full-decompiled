package com.yandex.mapkit.search;

import com.yandex.mapkit.BaseMetadata;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class BusinessRating1xObjectMetadata implements BaseMetadata, Serializable {
    private NativeObject nativeObject;
    private int ratings;
    private boolean ratings__is_initialized;
    private int reviews;
    private boolean reviews__is_initialized;
    private Float score;
    private boolean score__is_initialized;

    private native int getRatings__Native();

    private native int getReviews__Native();

    private native Float getScore__Native();

    private native NativeObject init(int i, int i2, Float f);

    public BusinessRating1xObjectMetadata() {
        this.ratings__is_initialized = false;
        this.reviews__is_initialized = false;
        this.score__is_initialized = false;
    }

    public BusinessRating1xObjectMetadata(int i, int i2, Float f) {
        this.ratings__is_initialized = false;
        this.reviews__is_initialized = false;
        this.score__is_initialized = false;
        this.nativeObject = init(i, i2, f);
        this.ratings = i;
        this.ratings__is_initialized = true;
        this.reviews = i2;
        this.reviews__is_initialized = true;
        this.score = f;
        this.score__is_initialized = true;
    }

    private BusinessRating1xObjectMetadata(NativeObject nativeObject) {
        this.ratings__is_initialized = false;
        this.reviews__is_initialized = false;
        this.score__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized int getRatings() {
        try {
            if (!this.ratings__is_initialized) {
                this.ratings = getRatings__Native();
                this.ratings__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.ratings;
    }

    public synchronized int getReviews() {
        try {
            if (!this.reviews__is_initialized) {
                this.reviews = getReviews__Native();
                this.reviews__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.reviews;
    }

    public synchronized Float getScore() {
        try {
            if (!this.score__is_initialized) {
                this.score = getScore__Native();
                this.score__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.score;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.ratings = archive.add(this.ratings);
            this.ratings__is_initialized = true;
            this.reviews = archive.add(this.reviews);
            this.reviews__is_initialized = true;
            Float fAdd = archive.add(this.score, true);
            this.score = fAdd;
            this.score__is_initialized = true;
            this.nativeObject = init(this.ratings, this.reviews, fAdd);
            return;
        }
        archive.add(getRatings());
        archive.add(getReviews());
        archive.add(getScore(), true);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::search::BusinessRating1xObjectMetadata";
    }
}
