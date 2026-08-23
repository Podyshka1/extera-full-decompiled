package io.noties.markwon.image;

import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.os.SystemClock;
import android.text.Spanned;
import android.view.View;
import android.widget.TextView;
import io.noties.markwon.R$id;

/* JADX INFO: loaded from: classes5.dex */
public abstract class AsyncDrawableScheduler {
    public static void schedule(final TextView textView) {
        Integer num = (Integer) textView.getTag(R$id.markwon_drawables_scheduler_last_text_hashcode);
        int iHashCode = textView.getText().hashCode();
        if (num == null || num.intValue() != iHashCode) {
            textView.setTag(R$id.markwon_drawables_scheduler_last_text_hashcode, Integer.valueOf(iHashCode));
            AsyncDrawableSpan[] asyncDrawableSpanArrExtractSpans = extractSpans(textView);
            if (asyncDrawableSpanArrExtractSpans == null || asyncDrawableSpanArrExtractSpans.length <= 0) {
                return;
            }
            if (textView.getTag(R$id.markwon_drawables_scheduler) == null) {
                View.OnAttachStateChangeListener onAttachStateChangeListener = new View.OnAttachStateChangeListener() { // from class: io.noties.markwon.image.AsyncDrawableScheduler.1
                    @Override // android.view.View.OnAttachStateChangeListener
                    public void onViewAttachedToWindow(View view) {
                    }

                    @Override // android.view.View.OnAttachStateChangeListener
                    public void onViewDetachedFromWindow(View view) {
                        AsyncDrawableScheduler.unschedule(textView);
                        view.removeOnAttachStateChangeListener(this);
                        view.setTag(R$id.markwon_drawables_scheduler, null);
                    }
                };
                textView.addOnAttachStateChangeListener(onAttachStateChangeListener);
                textView.setTag(R$id.markwon_drawables_scheduler, onAttachStateChangeListener);
            }
            TextViewInvalidator textViewInvalidator = new TextViewInvalidator(textView);
            for (AsyncDrawableSpan asyncDrawableSpan : asyncDrawableSpanArrExtractSpans) {
                AsyncDrawable drawable = asyncDrawableSpan.getDrawable();
                drawable.setCallback2(new DrawableCallbackImpl(textView, textViewInvalidator, drawable.getBounds()));
            }
        }
    }

    public static void unschedule(TextView textView) {
        if (textView.getTag(R$id.markwon_drawables_scheduler_last_text_hashcode) == null) {
            return;
        }
        textView.setTag(R$id.markwon_drawables_scheduler_last_text_hashcode, null);
        AsyncDrawableSpan[] asyncDrawableSpanArrExtractSpans = extractSpans(textView);
        if (asyncDrawableSpanArrExtractSpans == null || asyncDrawableSpanArrExtractSpans.length <= 0) {
            return;
        }
        for (AsyncDrawableSpan asyncDrawableSpan : asyncDrawableSpanArrExtractSpans) {
            asyncDrawableSpan.getDrawable().setCallback2(null);
        }
    }

    private static AsyncDrawableSpan[] extractSpans(TextView textView) {
        CharSequence text = textView.getText();
        int length = text != null ? text.length() : 0;
        if (length == 0 || !(text instanceof Spanned)) {
            return null;
        }
        return (AsyncDrawableSpan[]) ((Spanned) text).getSpans(0, length, AsyncDrawableSpan.class);
    }

    public static class DrawableCallbackImpl implements Drawable.Callback {
        private final Invalidator invalidator;
        private Rect previousBounds;
        private final TextView view;

        public interface Invalidator {
            void invalidate();
        }

        public DrawableCallbackImpl(TextView textView, Invalidator invalidator, Rect rect) {
            this.view = textView;
            this.invalidator = invalidator;
            this.previousBounds = new Rect(rect);
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(final Drawable drawable) {
            if (Looper.myLooper() != Looper.getMainLooper()) {
                this.view.post(new Runnable() { // from class: io.noties.markwon.image.AsyncDrawableScheduler.DrawableCallbackImpl.1
                    @Override // java.lang.Runnable
                    public void run() {
                        DrawableCallbackImpl.this.invalidateDrawable(drawable);
                    }
                });
                return;
            }
            Rect bounds = drawable.getBounds();
            if (!this.previousBounds.equals(bounds)) {
                this.invalidator.invalidate();
                this.previousBounds = new Rect(bounds);
            } else {
                this.view.postInvalidate();
            }
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            this.view.postDelayed(runnable, j - SystemClock.uptimeMillis());
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            this.view.removeCallbacks(runnable);
        }
    }

    public static class TextViewInvalidator implements DrawableCallbackImpl.Invalidator, Runnable {
        private final TextView textView;

        public TextViewInvalidator(TextView textView) {
            this.textView = textView;
        }

        @Override // io.noties.markwon.image.AsyncDrawableScheduler.DrawableCallbackImpl.Invalidator
        public void invalidate() {
            this.textView.removeCallbacks(this);
            this.textView.post(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            TextView textView = this.textView;
            textView.setText(textView.getText());
        }
    }
}
