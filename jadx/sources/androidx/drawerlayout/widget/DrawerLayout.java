package androidx.drawerlayout.widget;

import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DrawerLayout extends ViewGroup {

    public interface DrawerListener {
    }

    public static abstract class SimpleDrawerListener implements DrawerListener {
        public void onDrawerSlide(View view, float f) {
        }

        public void onDrawerStateChanged(int i) {
        }
    }
}
