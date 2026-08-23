package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.appcompat.R$styleable;
import java.lang.ref.WeakReference;
import okio.Segment$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
public final class ViewStubCompat extends View {
    private int mInflatedId;
    private WeakReference<View> mInflatedViewRef;
    private LayoutInflater mInflater;
    private int mLayoutResource;

    public interface OnInflateListener {
    }

    @Override // android.view.View
    public void dispatchDraw(Canvas canvas) {
    }

    @Override // android.view.View
    @SuppressLint({"MissingSuperCall"})
    public void draw(Canvas canvas) {
    }

    public void setOnInflateListener(OnInflateListener onInflateListener) {
    }

    public ViewStubCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ViewStubCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mLayoutResource = 0;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ViewStubCompat, i, 0);
        this.mInflatedId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.ViewStubCompat_android_inflatedId, -1);
        this.mLayoutResource = typedArrayObtainStyledAttributes.getResourceId(R$styleable.ViewStubCompat_android_layout, 0);
        setId(typedArrayObtainStyledAttributes.getResourceId(R$styleable.ViewStubCompat_android_id, -1));
        typedArrayObtainStyledAttributes.recycle();
        setVisibility(8);
        setWillNotDraw(true);
    }

    public int getInflatedId() {
        return this.mInflatedId;
    }

    public void setInflatedId(int i) {
        this.mInflatedId = i;
    }

    public int getLayoutResource() {
        return this.mLayoutResource;
    }

    public void setLayoutResource(int i) {
        this.mLayoutResource = i;
    }

    public void setLayoutInflater(LayoutInflater layoutInflater) {
        this.mInflater = layoutInflater;
    }

    public LayoutInflater getLayoutInflater() {
        return this.mInflater;
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        WeakReference<View> weakReference = this.mInflatedViewRef;
        if (weakReference != null) {
            View view = weakReference.get();
            if (view != null) {
                view.setVisibility(i);
                return;
            } else {
                Segment$$ExternalSyntheticBUOutline1.m848m("setVisibility called on un-referenced view");
                return;
            }
        }
        super.setVisibility(i);
        if (i == 0 || i == 4) {
            inflate();
        }
    }

    public View inflate() {
        ViewParent parent = getParent();
        if (parent instanceof ViewGroup) {
            if (this.mLayoutResource != 0) {
                ViewGroup viewGroup = (ViewGroup) parent;
                LayoutInflater layoutInflaterFrom = this.mInflater;
                if (layoutInflaterFrom == null) {
                    layoutInflaterFrom = LayoutInflater.from(getContext());
                }
                View viewInflate = layoutInflaterFrom.inflate(this.mLayoutResource, viewGroup, false);
                int i = this.mInflatedId;
                if (i != -1) {
                    viewInflate.setId(i);
                }
                int iIndexOfChild = viewGroup.indexOfChild(this);
                viewGroup.removeViewInLayout(this);
                ViewGroup.LayoutParams layoutParams = getLayoutParams();
                if (layoutParams != null) {
                    viewGroup.addView(viewInflate, iIndexOfChild, layoutParams);
                } else {
                    viewGroup.addView(viewInflate, iIndexOfChild);
                }
                this.mInflatedViewRef = new WeakReference<>(viewInflate);
                return viewInflate;
            }
            f$$ExternalSyntheticBUOutline1.m178m("ViewStub must have a valid layoutResource");
            return null;
        }
        Segment$$ExternalSyntheticBUOutline1.m848m("ViewStub must have a non-null ViewGroup viewParent");
        return null;
    }
}
