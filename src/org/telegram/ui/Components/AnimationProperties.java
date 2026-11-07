package org.telegram.ui.Components;

import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.util.Property;
import android.view.animation.OvershootInterpolator;
import org.telegram.messenger.ImageReceiver;
import org.telegram.ui.Cells.DialogCell;
import org.telegram.ui.PhotoViewer;

/* JADX INFO: loaded from: classes7.dex */
public abstract class AnimationProperties {
    public static final Property<ClippingImageView, Float> CLIPPING_IMAGE_VIEW_PROGRESS;
    public static final Property<DialogCell, Float> CLIP_DIALOG_CELL_PROGRESS;
    public static final Property<Drawable, Integer> COLOR_DRAWABLE_ALPHA;
    public static final Property<Drawable, Integer> DRAWABLE_ALPHA;
    public static final Property<Paint, Integer> PAINT_ALPHA;
    public static final Property<PhotoViewer, Float> PHOTO_VIEWER_ANIMATION_VALUE;
    public static final Property<ShapeDrawable, Integer> SHAPE_DRAWABLE_ALPHA;
    public static OvershootInterpolator overshootInterpolator = new OvershootInterpolator(1.9f);
    public static final Property<Paint, Integer> PAINT_COLOR = new IntProperty<Paint>("color") { // from class: org.telegram.ui.Components.AnimationProperties.2
        @Override // org.telegram.ui.Components.AnimationProperties.IntProperty
        public void setValue(Paint paint, int i) {
            paint.setColor(i);
        }

        @Override // android.util.Property
        public Integer get(Paint paint) {
            return Integer.valueOf(paint.getColor());
        }
    };
    public static final Property<ImageReceiver, Float> IMAGE_RECEIVER_ALPHA = new FloatProperty<ImageReceiver>("currentAlpha") { // from class: org.telegram.ui.Components.AnimationProperties.3
        @Override // org.telegram.ui.Components.AnimationProperties.FloatProperty
        public void setValue(ImageReceiver imageReceiver, float f) {
            imageReceiver.setCurrentAlpha(f);
        }

        @Override // android.util.Property
        public Float get(ImageReceiver imageReceiver) {
            return Float.valueOf(imageReceiver.getCurrentAlpha());
        }
    };

    static {
        String str = "alpha";
        PAINT_ALPHA = new IntProperty<Paint>(str) { // from class: org.telegram.ui.Components.AnimationProperties.1
            @Override // org.telegram.ui.Components.AnimationProperties.IntProperty
            public void setValue(Paint paint, int i) {
                paint.setAlpha(i);
            }

            @Override // android.util.Property
            public Integer get(Paint paint) {
                return Integer.valueOf(paint.getAlpha());
            }
        };
        IntProperty<Drawable> intProperty = new IntProperty<Drawable>(str) { // from class: org.telegram.ui.Components.AnimationProperties.4
            @Override // org.telegram.ui.Components.AnimationProperties.IntProperty
            public void setValue(Drawable drawable, int i) {
                drawable.setAlpha(i);
            }

            @Override // android.util.Property
            public Integer get(Drawable drawable) {
                return Integer.valueOf(drawable.getAlpha());
            }
        };
        DRAWABLE_ALPHA = intProperty;
        COLOR_DRAWABLE_ALPHA = intProperty;
        SHAPE_DRAWABLE_ALPHA = new IntProperty<ShapeDrawable>(str) { // from class: org.telegram.ui.Components.AnimationProperties.5
            @Override // org.telegram.ui.Components.AnimationProperties.IntProperty
            public void setValue(ShapeDrawable shapeDrawable, int i) {
                shapeDrawable.getPaint().setAlpha(i);
            }

            @Override // android.util.Property
            public Integer get(ShapeDrawable shapeDrawable) {
                return Integer.valueOf(shapeDrawable.getPaint().getAlpha());
            }
        };
        CLIPPING_IMAGE_VIEW_PROGRESS = new FloatProperty<ClippingImageView>("animationProgress") { // from class: org.telegram.ui.Components.AnimationProperties.6
            @Override // org.telegram.ui.Components.AnimationProperties.FloatProperty
            public void setValue(ClippingImageView clippingImageView, float f) {
                clippingImageView.setAnimationProgress(f);
            }

            @Override // android.util.Property
            public Float get(ClippingImageView clippingImageView) {
                return Float.valueOf(clippingImageView.getAnimationProgress());
            }
        };
        PHOTO_VIEWER_ANIMATION_VALUE = new FloatProperty<PhotoViewer>("animationValue") { // from class: org.telegram.ui.Components.AnimationProperties.7
            @Override // org.telegram.ui.Components.AnimationProperties.FloatProperty
            public void setValue(PhotoViewer photoViewer, float f) {
                photoViewer.setAnimationValue(f);
            }

            @Override // android.util.Property
            public Float get(PhotoViewer photoViewer) {
                return Float.valueOf(photoViewer.getAnimationValue());
            }
        };
        CLIP_DIALOG_CELL_PROGRESS = new FloatProperty<DialogCell>("clipProgress") { // from class: org.telegram.ui.Components.AnimationProperties.8
            @Override // org.telegram.ui.Components.AnimationProperties.FloatProperty
            public void setValue(DialogCell dialogCell, float f) {
                dialogCell.setClipProgress(f);
            }

            @Override // android.util.Property
            public Float get(DialogCell dialogCell) {
                return Float.valueOf(dialogCell.getClipProgress());
            }
        };
    }

    /* JADX INFO: loaded from: classes3.dex */
    public static abstract class FloatProperty<T> extends Property<T, Float> {
        public abstract void setValue(T t, float f);

        public FloatProperty(String str) {
            super(Float.class, str);
        }

        @Override // android.util.Property
        public final void set(T t, Float f) {
            setValue(t, f.floatValue());
        }
    }

    public static abstract class IntProperty<T> extends Property<T, Integer> {
        public abstract void setValue(T t, int i);

        public IntProperty(String str) {
            super(Integer.class, str);
        }

        @Override // android.util.Property
        public final void set(T t, Integer num) {
            setValue(t, num.intValue());
        }
    }
}
