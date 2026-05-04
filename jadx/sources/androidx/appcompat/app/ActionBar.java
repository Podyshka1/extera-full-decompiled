package androidx.appcompat.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.ViewGroup;
import androidx.appcompat.R$styleable;
import androidx.appcompat.view.ActionMode;
import com.google.android.material.navigation.NavigationBarView;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ActionBar {
    public abstract boolean collapseActionView();

    public abstract void dispatchMenuVisibilityChanged(boolean z);

    public abstract Context getThemedContext();

    public boolean invalidateOptionsMenu() {
        return false;
    }

    void onDestroy() {
    }

    public abstract boolean onKeyShortcut(int i, KeyEvent keyEvent);

    public abstract void setDefaultDisplayHomeAsUpEnabled(boolean z);

    public abstract void setShowHideAnimationEnabled(boolean z);

    public abstract void setWindowTitle(CharSequence charSequence);

    public abstract ActionMode startActionMode(ActionMode.Callback callback);

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public int gravity;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.gravity = 0;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ActionBarLayout);
            this.gravity = typedArrayObtainStyledAttributes.getInt(R$styleable.ActionBarLayout_android_layout_gravity, 0);
            typedArrayObtainStyledAttributes.recycle();
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.gravity = NavigationBarView.ITEM_GRAVITY_START_CENTER;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.gravity = 0;
            this.gravity = layoutParams.gravity;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.gravity = 0;
        }
    }
}
