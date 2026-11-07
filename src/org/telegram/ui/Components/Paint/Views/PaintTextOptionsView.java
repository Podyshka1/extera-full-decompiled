package org.telegram.ui.Components.Paint.Views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.tgnet.TLObject;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.ChatActivityEnterViewAnimatedIconView;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.Paint.PaintTypeface;
import org.telegram.ui.Components.RLottieDrawable;
import org.telegram.ui.Components.RLottieImageView;

/* JADX INFO: loaded from: classes7.dex */
public class PaintTextOptionsView extends FrameLayout implements NotificationCenter.NotificationCenterDelegate {
    private static final List<AlignFramePair> ALIGN_PAIRS;
    private RLottieImageView alignView;
    private View colorClickableView;
    private int currentAlign;
    private Delegate delegate;
    private ChatActivityEnterViewAnimatedIconView emojiButton;
    private String lastTypefaceKey;
    private int outlineType;
    private ImageView outlineView;
    private int plusIcon;
    private ImageView plusView;
    private TypefaceCell typefaceCell;
    private PaintTypefaceListView typefaceListView;

    /* JADX INFO: renamed from: x */
    private int f1133x;

    public interface Delegate {
        void onColorPickerSelected();

        void onNewTextSelected();

        void onTextAlignmentSelected(int i);

        void onTextOutlineSelected(View view);

        void onTypefaceButtonClicked();
    }

    static {
        AlignFramePair alignFramePair = new AlignFramePair(0, 1, 20, 0);
        AlignFramePair alignFramePair2 = new AlignFramePair(0, 2, 20, 40);
        AlignFramePair alignFramePair3 = new AlignFramePair(1, 0, 0, 20);
        int i = 40;
        int i2 = 2;
        ALIGN_PAIRS = Arrays.asList(alignFramePair, alignFramePair2, alignFramePair3, new AlignFramePair(1, i2, 60, i), new AlignFramePair(i2, 0, i, 20), new AlignFramePair(2, 1, 40, 60));
    }

    public PaintTextOptionsView(Context context) {
        super(context);
        this.currentAlign = 0;
        setWillNotDraw(false);
        View view = new View(context);
        this.colorClickableView = view;
        view.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.PaintTextOptionsView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$new$0(view2);
            }
        });
        addView(this.colorClickableView, LayoutHelper.createFrame(24, 24.0f, 48, 0.0f, 0.0f, 16.0f, 0.0f));
        RLottieImageView rLottieImageView = new RLottieImageView(context);
        this.alignView = rLottieImageView;
        rLottieImageView.setAnimation(C2807R.raw.photo_text_allign, 24, 24);
        RLottieDrawable animatedDrawable = this.alignView.getAnimatedDrawable();
        animatedDrawable.setPlayInDirectionOfCustomEndFrame(true);
        animatedDrawable.setCustomEndFrame(20);
        animatedDrawable.setCurrentFrame(20);
        RLottieImageView rLottieImageView2 = this.alignView;
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        rLottieImageView2.setColorFilter(new PorterDuffColorFilter(-1, mode));
        this.alignView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.PaintTextOptionsView$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$new$1(view2);
            }
        });
        this.alignView.setPadding(AndroidUtilities.dp(2.0f), AndroidUtilities.dp(2.0f), AndroidUtilities.dp(2.0f), AndroidUtilities.dp(2.0f));
        addView(this.alignView, LayoutHelper.createFrame(28, 28.0f, 16, 0.0f, 0.0f, 16.0f, 0.0f));
        ImageView imageView = new ImageView(context);
        this.outlineView = imageView;
        imageView.setImageResource(C2807R.drawable.msg_text_outlined);
        this.outlineView.setPadding(AndroidUtilities.dp(1.0f), AndroidUtilities.dp(1.0f), AndroidUtilities.dp(1.0f), AndroidUtilities.dp(1.0f));
        this.outlineView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.PaintTextOptionsView$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$new$2(view2);
            }
        });
        addView(this.outlineView, LayoutHelper.createFrame(28, 28.0f, 16, 0.0f, 0.0f, 16.0f, 0.0f));
        ImageView imageView2 = new ImageView(context);
        this.plusView = imageView2;
        imageView2.setImageResource(C2807R.drawable.msg_add);
        this.plusView.setColorFilter(new PorterDuffColorFilter(-1, mode));
        this.plusView.setBackground(Theme.createSelectorDrawable(1090519039));
        this.plusView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.PaintTextOptionsView$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$new$3(view2);
            }
        });
        this.plusView.setPadding(AndroidUtilities.dp(2.0f), AndroidUtilities.dp(2.0f), AndroidUtilities.dp(2.0f), AndroidUtilities.dp(2.0f));
        addView(this.plusView, LayoutHelper.createFrame(28, 28.0f, 16, 0.0f, 0.0f, 16.0f, 0.0f));
        TypefaceCell typefaceCell = new TypefaceCell(context);
        this.typefaceCell = typefaceCell;
        typefaceCell.setCurrent(true);
        this.typefaceCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.PaintTextOptionsView$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$new$4(view2);
            }
        });
        addView(this.typefaceCell, LayoutHelper.createLinear(-2, -2, 0.0f, 21));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        this.delegate.onColorPickerSelected();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view) {
        setAlignment((this.currentAlign + 1) % 3, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(View view) {
        this.delegate.onTextOutlineSelected(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(View view) {
        this.delegate.onNewTextSelected();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(View view) {
        this.delegate.onTypefaceButtonClicked();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.f1133x = getPaddingLeft();
        layoutChild(this.colorClickableView);
        layoutChild(this.alignView);
        layoutChild(this.outlineView);
        layoutChild(this.plusView);
        this.typefaceCell.layout((getMeasuredWidth() - getPaddingRight()) - this.typefaceCell.getMeasuredWidth(), (getMeasuredHeight() - this.typefaceCell.getMeasuredHeight()) / 2, getMeasuredWidth() - getPaddingRight(), (getMeasuredHeight() + this.typefaceCell.getMeasuredHeight()) / 2);
    }

    private void layoutChild(View view) {
        if (view.getVisibility() != 8) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
            int i = this.f1133x + layoutParams.leftMargin;
            this.f1133x = i;
            view.layout(i, (getMeasuredHeight() - layoutParams.height) / 2, this.f1133x + layoutParams.width, (getMeasuredHeight() + layoutParams.height) / 2);
            this.f1133x += layoutParams.width + layoutParams.rightMargin;
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            View childAt = getChildAt(i3);
            TypefaceCell typefaceCell = this.typefaceCell;
            if (childAt == typefaceCell) {
                typefaceCell.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(size2, Integer.MIN_VALUE));
            } else {
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                childAt.measure(View.MeasureSpec.makeMeasureSpec(layoutParams.width, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(layoutParams.height, TLObject.FLAG_30));
                paddingLeft -= (childAt.getMeasuredWidth() + layoutParams.leftMargin) + layoutParams.rightMargin;
            }
        }
        setMeasuredDimension(size, size2);
    }

    public TypefaceCell getTypefaceCell() {
        return this.typefaceCell;
    }

    public void setTypefaceListView(PaintTypefaceListView paintTypefaceListView) {
        this.typefaceListView = paintTypefaceListView;
    }

    public View getColorClickableView() {
        return this.colorClickableView;
    }

    public void getTypefaceCellBounds(RectF rectF) {
        rectF.set(this.typefaceCell.getLeft() + AndroidUtilities.dp(8.0f), this.typefaceCell.getTop(), this.typefaceCell.getRight() + AndroidUtilities.dp(8.0f), this.typefaceCell.getBottom());
    }

    public void animatePlusToIcon(int i) {
        if (i == 0) {
            i = C2807R.drawable.msg_add;
        }
        if (this.plusIcon != i) {
            ImageView imageView = this.plusView;
            this.plusIcon = i;
            AndroidUtilities.updateImageViewImageAnimated(imageView, i);
        }
    }

    public ChatActivityEnterViewAnimatedIconView getEmojiButton() {
        return this.emojiButton;
    }

    public void setOutlineType(int i) {
        setOutlineType(i, false);
    }

    public void setOutlineType(int i, boolean z) {
        int i2;
        if (this.outlineType == i) {
            return;
        }
        this.outlineType = i;
        if (i == 1) {
            i2 = C2807R.drawable.msg_photo_text_framed2;
        } else if (i == 2) {
            i2 = C2807R.drawable.msg_photo_text_framed3;
        } else if (i == 3) {
            i2 = C2807R.drawable.msg_photo_text_regular;
        } else if (i != 4) {
            i2 = C2807R.drawable.msg_photo_text_framed;
        } else {
            i2 = C2807R.drawable.msg_text_outlined;
        }
        ImageView imageView = this.outlineView;
        if (z) {
            AndroidUtilities.updateImageViewImageAnimated(imageView, i2);
        } else {
            imageView.setImageResource(i2);
        }
    }

    public void setTypeface(String str) {
        this.lastTypefaceKey = str;
        if (this.typefaceCell == null) {
            return;
        }
        for (PaintTypeface paintTypeface : PaintTypeface.get()) {
            if (paintTypeface.getKey().equals(str)) {
                this.typefaceCell.bind(paintTypeface);
                return;
            }
        }
    }

    public void setDelegate(Delegate delegate) {
        this.delegate = delegate;
    }

    public void setAlignment(int i) {
        setAlignment(i, false);
    }

    public void setAlignment(int i, boolean z) {
        int i2 = this.currentAlign;
        this.currentAlign = i;
        if (i2 == i) {
            RLottieDrawable animatedDrawable = this.alignView.getAnimatedDrawable();
            List<AlignFramePair> list = ALIGN_PAIRS;
            AlignFramePair alignFramePair = list.get(0);
            Iterator<AlignFramePair> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                AlignFramePair next = it.next();
                if (this.currentAlign == next.toAlign) {
                    alignFramePair = next;
                    break;
                }
            }
            animatedDrawable.setCurrentFrame(alignFramePair.toFrame);
            animatedDrawable.setCustomEndFrame(alignFramePair.toFrame);
            if (z) {
                this.delegate.onTextAlignmentSelected(i);
                return;
            }
            return;
        }
        List<AlignFramePair> list2 = ALIGN_PAIRS;
        AlignFramePair alignFramePair2 = list2.get(0);
        Iterator<AlignFramePair> it2 = list2.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            AlignFramePair next2 = it2.next();
            if (i2 == next2.fromAlign && this.currentAlign == next2.toAlign) {
                alignFramePair2 = next2;
                break;
            }
        }
        RLottieDrawable animatedDrawable2 = this.alignView.getAnimatedDrawable();
        animatedDrawable2.setCurrentFrame(alignFramePair2.fromFrame);
        animatedDrawable2.setCustomEndFrame(alignFramePair2.toFrame);
        animatedDrawable2.start();
        if (z) {
            this.delegate.onTextAlignmentSelected(i);
        }
    }

    public static final class TypefaceCell extends TextView {
        private Drawable expandDrawable;
        private boolean isCurrent;

        public TypefaceCell(Context context) {
            super(context);
            setTextColor(-1);
            setTextSize(1, 14.0f);
            setCurrent(false);
            setEllipsize(TextUtils.TruncateAt.END);
            setSingleLine();
        }

        @Override // android.widget.TextView, android.view.View
        public void onDraw(Canvas canvas) {
            canvas.save();
            canvas.translate(0.0f, AndroidUtilities.dp(-1.0f));
            super.onDraw(canvas);
            canvas.restore();
            if (this.isCurrent) {
                int height = (getHeight() - AndroidUtilities.dp(16.0f)) / 2;
                boolean z = LocaleController.isRTL;
                Drawable drawable = this.expandDrawable;
                if (z) {
                    drawable.setBounds(AndroidUtilities.dp(7.0f), height, AndroidUtilities.dp(23.0f), AndroidUtilities.dp(16.0f) + height);
                } else {
                    drawable.setBounds(getWidth() - AndroidUtilities.dp(23.0f), height, getWidth() - AndroidUtilities.dp(7.0f), AndroidUtilities.dp(16.0f) + height);
                }
                this.expandDrawable.draw(canvas);
            }
        }

        public void setCurrent(boolean z) {
            this.isCurrent = z;
            if (z) {
                setPadding(AndroidUtilities.dp(LocaleController.isRTL ? 27.0f : 12.0f), AndroidUtilities.dp(6.0f), AndroidUtilities.dp(LocaleController.isRTL ? 12.0f : 27.0f), AndroidUtilities.dp(6.0f));
                setBackground(Theme.AdaptiveRipple.rect(1090519039, AndroidUtilities.dp(32.0f)));
            } else {
                setPadding(AndroidUtilities.dp(24.0f), AndroidUtilities.dp(14.0f), AndroidUtilities.dp(24.0f), AndroidUtilities.dp(14.0f));
                setBackground(Theme.AdaptiveRipple.rect(-14145495));
            }
            if (this.isCurrent && this.expandDrawable == null) {
                Drawable drawable = ContextCompat.getDrawable(getContext(), C2807R.drawable.photo_expand);
                this.expandDrawable = drawable;
                drawable.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
            }
            invalidate();
        }

        public void bind(PaintTypeface paintTypeface) {
            setTypeface(paintTypeface.getTypeface());
            setText(paintTypeface.getName());
        }
    }

    public static final class AlignFramePair {
        private final int fromAlign;
        private final int fromFrame;
        private final int toAlign;
        private final int toFrame;

        private AlignFramePair(int i, int i2, int i3, int i4) {
            this.fromAlign = i;
            this.toAlign = i2;
            this.fromFrame = i3;
            this.toFrame = i4;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.customTypefacesLoaded);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.customTypefacesLoaded);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        String str;
        if (i != NotificationCenter.customTypefacesLoaded || (str = this.lastTypefaceKey) == null) {
            return;
        }
        setTypeface(str);
        this.lastTypefaceKey = null;
    }
}
