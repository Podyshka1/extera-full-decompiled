package org.telegram.p029ui.Components.Paint.Views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.util.Consumer;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.NotificationCenter;
import org.telegram.p029ui.Components.Paint.PaintTypeface;
import org.telegram.p029ui.Components.Paint.Views.PaintTextOptionsView;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes7.dex */
public class PaintTypefaceListView extends RecyclerListView implements NotificationCenter.NotificationCenterDelegate {
    private Path mask;
    private Consumer maskProvider;

    public PaintTypefaceListView(Context context) {
        super(context);
        this.mask = new Path();
        setWillNotDraw(false);
        setLayoutManager(new LinearLayoutManager(context));
        setAdapter(new RecyclerListView.SelectionAdapter() { // from class: org.telegram.ui.Components.Paint.Views.PaintTypefaceListView.1
            @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
            public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
                return true;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                PaintTextOptionsView.TypefaceCell typefaceCell = new PaintTextOptionsView.TypefaceCell(viewGroup.getContext());
                typefaceCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
                return new RecyclerListView.Holder(typefaceCell);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
                ((PaintTextOptionsView.TypefaceCell) viewHolder.itemView).bind((PaintTypeface) PaintTypeface.get().get(i));
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                return PaintTypeface.get().size();
            }
        });
        setPadding(0, AndroidUtilities.m1124dp(8.0f), 0, AndroidUtilities.m1124dp(8.0f));
        setClipToPadding(false);
    }

    @Override // org.telegram.p029ui.Components.RecyclerListView
    public Integer getSelectorColor(int i) {
        return 285212671;
    }

    @Override // org.telegram.p029ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.customTypefacesLoaded);
    }

    @Override // org.telegram.p029ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.customTypefacesLoaded);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.customTypefacesLoaded) {
            getAdapter().notifyDataSetChanged();
        }
    }

    @Override // org.telegram.p029ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec((Math.min(PaintTypeface.get().size(), 6) * AndroidUtilities.m1124dp(48.0f)) + AndroidUtilities.m1124dp(16.0f), TLObject.FLAG_30));
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public void draw(Canvas canvas) {
        Consumer consumer = this.maskProvider;
        if (consumer != null) {
            consumer.accept(this.mask);
            canvas.save();
            canvas.clipPath(this.mask);
        }
        super.draw(canvas);
        if (this.maskProvider != null) {
            canvas.restore();
        }
    }

    public void setMaskProvider(Consumer consumer) {
        this.maskProvider = consumer;
        invalidate();
    }

    @Override // org.telegram.p029ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // org.telegram.p029ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }
}
