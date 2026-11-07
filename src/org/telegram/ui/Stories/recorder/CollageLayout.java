package org.telegram.ui.Stories.recorder;

import android.graphics.RectF;
import android.text.TextUtils;
import java.util.ArrayList;
import org.telegram.messenger.BuildVars;

/* JADX INFO: loaded from: classes7.dex */
public class CollageLayout {
    private static ArrayList<CollageLayout> layouts;
    public final int[] columns;

    /* JADX INFO: renamed from: h */
    public final int f1220h;
    public final ArrayList<Part> parts = new ArrayList<>();
    private final String src;

    /* JADX INFO: renamed from: w */
    public final int f1221w;

    public static ArrayList<CollageLayout> getLayouts() {
        if (layouts == null) {
            ArrayList<CollageLayout> arrayList = new ArrayList<>();
            layouts = arrayList;
            arrayList.add(new CollageLayout("./."));
            layouts.add(new CollageLayout(".."));
            layouts.add(new CollageLayout("../."));
            layouts.add(new CollageLayout("./.."));
            layouts.add(new CollageLayout("././."));
            layouts.add(new CollageLayout("..."));
            layouts.add(new CollageLayout("../.."));
            layouts.add(new CollageLayout("./../.."));
            layouts.add(new CollageLayout("../../."));
            layouts.add(new CollageLayout("../../.."));
            if (BuildVars.DEBUG_PRIVATE_VERSION) {
                layouts.add(new CollageLayout("../../../.."));
                layouts.add(new CollageLayout(".../.../..."));
                layouts.add(new CollageLayout("..../..../...."));
                layouts.add(new CollageLayout(".../.../.../..."));
            }
        }
        return layouts;
    }

    public static CollageLayout of(int i) {
        ArrayList<CollageLayout> layouts2 = getLayouts();
        int size = layouts2.size();
        int i2 = 0;
        while (i2 < size) {
            CollageLayout collageLayout = layouts2.get(i2);
            i2++;
            CollageLayout collageLayout2 = collageLayout;
            if (collageLayout2.parts.size() >= i) {
                return collageLayout2;
            }
        }
        return null;
    }

    public static int getMaxCount() {
        ArrayList<CollageLayout> layouts2 = getLayouts();
        int size = layouts2.size();
        int iMax = 0;
        int i = 0;
        while (i < size) {
            CollageLayout collageLayout = layouts2.get(i);
            i++;
            iMax = Math.max(iMax, collageLayout.parts.size());
        }
        return iMax;
    }

    public CollageLayout(String str) {
        str = str == null ? "." : str;
        this.src = str;
        String[] strArrSplit = str.split("/");
        int length = strArrSplit.length;
        this.f1220h = length;
        this.columns = new int[length];
        int iMax = 0;
        for (int i = 0; i < strArrSplit.length; i++) {
            this.columns[i] = strArrSplit[i].length();
            iMax = Math.max(iMax, strArrSplit[i].length());
        }
        this.f1221w = iMax;
        for (int i2 = 0; i2 < strArrSplit.length; i2++) {
            for (int i3 = 0; i3 < strArrSplit[i2].length(); i3++) {
                this.parts.add(new Part(i3, i2));
            }
        }
    }

    public CollageLayout delete(int i) {
        if (i < 0 || i >= this.parts.size()) {
            return null;
        }
        ArrayList arrayList = new ArrayList(this.parts);
        arrayList.remove(i);
        StringBuilder sb = new StringBuilder();
        int i2 = 0;
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            Part part = (Part) arrayList.get(i3);
            if (part.f1223y != i2) {
                sb.append("/");
                i2 = part.f1223y;
            }
            sb.append(".");
        }
        return new CollageLayout(sb.toString());
    }

    public static class Part {
        public final CollageLayout layout;

        /* JADX INFO: renamed from: x */
        public final int f1222x;

        /* JADX INFO: renamed from: y */
        public final int f1223y;

        private Part(CollageLayout collageLayout, int i, int i2) {
            this.layout = collageLayout;
            this.f1222x = i;
            this.f1223y = i2;
        }

        /* JADX INFO: renamed from: l */
        public final float m1044l(float f) {
            return (f / this.layout.columns[this.f1223y]) * this.f1222x;
        }

        /* JADX INFO: renamed from: t */
        public final float m1046t(float f) {
            return (f / this.layout.f1220h) * this.f1223y;
        }

        /* JADX INFO: renamed from: r */
        public final float m1045r(float f) {
            return (f / this.layout.columns[this.f1223y]) * (this.f1222x + 1);
        }

        /* JADX INFO: renamed from: b */
        public final float m1042b(float f) {
            return (f / this.layout.f1220h) * (this.f1223y + 1);
        }

        /* JADX INFO: renamed from: w */
        public final float m1047w(float f) {
            return f / this.layout.columns[this.f1223y];
        }

        /* JADX INFO: renamed from: h */
        public final float m1043h(float f) {
            return f / this.layout.f1220h;
        }

        public final void bounds(RectF rectF, float f, float f2) {
            rectF.set(m1044l(f), m1046t(f2), m1045r(f), m1042b(f2));
        }
    }

    public String toString() {
        return this.src;
    }

    public boolean equals(Object obj) {
        if (obj instanceof CollageLayout) {
            return TextUtils.equals(this.src, ((CollageLayout) obj).src);
        }
        return false;
    }
}
