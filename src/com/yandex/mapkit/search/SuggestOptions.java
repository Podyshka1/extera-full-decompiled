package com.yandex.mapkit.search;

import com.yandex.mapkit.geometry.Point;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class SuggestOptions implements Serializable {
    private boolean strictBounds;
    private int suggestTypes;
    private boolean suggestWords;
    private Point userPosition;

    public SuggestOptions(int i, Point point, boolean z, boolean z2) {
        int i2 = SuggestType.UNSPECIFIED.value;
        this.suggestTypes = i;
        this.userPosition = point;
        this.suggestWords = z;
        this.strictBounds = z2;
    }

    public SuggestOptions() {
        this.suggestTypes = SuggestType.UNSPECIFIED.value;
        this.userPosition = null;
        this.suggestWords = false;
        this.strictBounds = false;
    }

    public int getSuggestTypes() {
        return this.suggestTypes;
    }

    public SuggestOptions setSuggestTypes(int i) {
        this.suggestTypes = i;
        return this;
    }

    public Point getUserPosition() {
        return this.userPosition;
    }

    public SuggestOptions setUserPosition(Point point) {
        this.userPosition = point;
        return this;
    }

    public boolean getSuggestWords() {
        return this.suggestWords;
    }

    public SuggestOptions setSuggestWords(boolean z) {
        this.suggestWords = z;
        return this;
    }

    public boolean getStrictBounds() {
        return this.strictBounds;
    }

    public SuggestOptions setStrictBounds(boolean z) {
        this.strictBounds = z;
        return this;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.suggestTypes = archive.add(Integer.valueOf(this.suggestTypes), false).intValue();
        this.userPosition = (Point) archive.add(this.userPosition, true, (Class<Point>) Point.class);
        this.suggestWords = archive.add(this.suggestWords);
        this.strictBounds = archive.add(this.strictBounds);
    }
}
