package org.telegram.messenger.chromecast;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public class ChromecastMediaVariations {
    private final ArrayList variations;

    private ChromecastMediaVariations(ArrayList arrayList) {
        this.variations = arrayList;
    }

    private ChromecastMediaVariations(ChromecastMedia chromecastMedia) {
        ArrayList arrayList = new ArrayList(1);
        this.variations = arrayList;
        arrayList.add(chromecastMedia);
    }

    public int getVariationsCount() {
        return this.variations.size();
    }

    public ChromecastMedia getVariation(int i) {
        return (ChromecastMedia) this.variations.get(i);
    }

    /* JADX INFO: renamed from: of */
    public static ChromecastMediaVariations m1194of(ChromecastMedia chromecastMedia) {
        return new ChromecastMediaVariations(chromecastMedia);
    }

    public static class Builder {
        private final ArrayList variations = new ArrayList();

        public Builder add(ChromecastMedia chromecastMedia) {
            this.variations.add(chromecastMedia);
            return this;
        }

        public ChromecastMediaVariations build() {
            return new ChromecastMediaVariations(this.variations);
        }
    }
}
