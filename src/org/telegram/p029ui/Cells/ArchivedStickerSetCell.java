package org.telegram.p029ui.Cells;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Property;
import android.view.View;
import android.view.animation.OvershootInterpolator;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.FrameLayout;
import android.widget.TextView;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.DocumentObject;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.SvgHelper;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.BackupImageView;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.ProgressButton;
import org.telegram.p029ui.Components.ViewHelper;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes6.dex */
public class ArchivedStickerSetCell extends FrameLayout implements Checkable {
    private final ProgressButton addButton;
    private AnimatorSet animatorSet;
    private final boolean checkable;
    private boolean checked;
    private Button currentButton;
    private final Button deleteButton;
    private final BackupImageView imageView;
    private boolean needDivider;
    private OnCheckedChangeListener onCheckedChangeListener;
    private TLRPC.StickerSetCovered stickersSet;
    private final TextView textView;
    private final TextView valueTextView;

    public interface OnCheckedChangeListener {
        void onCheckedChanged(ArchivedStickerSetCell archivedStickerSetCell, boolean z);
    }

    public ArchivedStickerSetCell(Context context, boolean z) {
        super(context);
        this.checkable = z;
        if (z) {
            ProgressButton progressButton = new ProgressButton(context);
            this.addButton = progressButton;
            this.currentButton = progressButton;
            progressButton.setText(LocaleController.getString(C2888R.string.Add));
            progressButton.setTextColor(Theme.getColor(Theme.key_featuredStickers_buttonText));
            progressButton.setProgressColor(Theme.getColor(Theme.key_featuredStickers_buttonProgress));
            progressButton.setBackgroundRoundRect(Theme.getColor(Theme.key_featuredStickers_addButton), Theme.getColor(Theme.key_featuredStickers_addButtonPressed));
            addView(progressButton, LayoutHelper.createFrameRelatively(-2.0f, 28.0f, 8388661, 0.0f, 18.0f, 14.0f, 0.0f));
            int iM1124dp = AndroidUtilities.m1124dp(60.0f);
            ProgressButton progressButton2 = new ProgressButton(context);
            this.deleteButton = progressButton2;
            progressButton2.setAllCaps(false);
            progressButton2.setMinWidth(iM1124dp);
            progressButton2.setMinimumWidth(iM1124dp);
            progressButton2.setTextSize(1, 14.0f);
            int i = Theme.key_featuredStickers_removeButtonText;
            progressButton2.setTextColor(Theme.getColor(i));
            progressButton2.setText(LocaleController.getString(C2888R.string.StickersRemove));
            progressButton2.setBackground(Theme.getRoundRectSelectorDrawable(Theme.getColor(i)));
            progressButton2.setTypeface(AndroidUtilities.bold());
            ViewHelper.setPadding(progressButton2, 8.0f, 0.0f, 8.0f, 0.0f);
            progressButton2.setOutlineProvider(null);
            addView(progressButton2, LayoutHelper.createFrameRelatively(-2.0f, 28.0f, 8388661, 0.0f, 18.0f, 14.0f, 0.0f));
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: org.telegram.ui.Cells.ArchivedStickerSetCell$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$0(view);
                }
            };
            progressButton.setOnClickListener(onClickListener);
            progressButton2.setOnClickListener(onClickListener);
            syncButtons(false);
        } else {
            this.addButton = null;
            this.deleteButton = null;
        }
        TextView textView = new TextView(context);
        this.textView = textView;
        textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        textView.setTextSize(1, 16.0f);
        textView.setLines(1);
        textView.setMaxLines(1);
        textView.setSingleLine(true);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setGravity(LayoutHelper.getAbsoluteGravityStart());
        addView(textView, LayoutHelper.createFrameRelatively(-2.0f, -2.0f, 8388611, 71.0f, 10.0f, 21.0f, 0.0f));
        TextView textView2 = new TextView(context);
        this.valueTextView = textView2;
        textView2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2));
        textView2.setTextSize(1, 13.0f);
        textView2.setLines(1);
        textView2.setMaxLines(1);
        textView2.setSingleLine(true);
        textView2.setGravity(LayoutHelper.getAbsoluteGravityStart());
        addView(textView2, LayoutHelper.createFrameRelatively(-2.0f, -2.0f, 8388611, 71.0f, 35.0f, 21.0f, 0.0f));
        BackupImageView backupImageView = new BackupImageView(context);
        this.imageView = backupImageView;
        backupImageView.setAspectFit(true);
        backupImageView.setLayerNum(1);
        addView(backupImageView, LayoutHelper.createFrameRelatively(48.0f, 48.0f, 8388659, 12.0f, 8.0f, 0.0f, 0.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        toggle();
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(64.0f) + (this.needDivider ? 1 : 0), TLObject.FLAG_30));
    }

    @Override // android.view.ViewGroup
    protected void measureChildWithMargins(View view, int i, int i2, int i3, int i4) {
        if (this.checkable && view == this.textView) {
            i2 += Math.max(this.addButton.getMeasuredWidth(), this.deleteButton.getMeasuredWidth());
        }
        super.measureChildWithMargins(view, i, i2, i3, i4);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.needDivider) {
            canvas.drawLine(0.0f, getHeight() - 1, getWidth() - getPaddingRight(), getHeight() - 1, Theme.dividerPaint);
        }
    }

    public void setDrawProgress(boolean z, boolean z2) {
        ProgressButton progressButton = this.addButton;
        if (progressButton != null) {
            progressButton.setDrawProgress(z, z2);
        }
    }

    public void setStickersSet(TLRPC.StickerSetCovered stickerSetCovered, boolean z) {
        TLRPC.Document document;
        ImageLocation forSticker;
        this.needDivider = z;
        this.stickersSet = stickerSetCovered;
        setWillNotDraw(!z);
        this.textView.setText(this.stickersSet.set.title);
        TLRPC.StickerSet stickerSet = stickerSetCovered.set;
        if (stickerSet.emojis) {
            this.valueTextView.setText(LocaleController.formatPluralString("EmojiCount", stickerSet.count, new Object[0]));
        } else {
            this.valueTextView.setText(LocaleController.formatPluralString("Stickers", stickerSet.count, new Object[0]));
        }
        TLRPC.Document document2 = null;
        if (stickerSetCovered instanceof TLRPC.TL_stickerSetFullCovered) {
            ArrayList arrayList = ((TLRPC.TL_stickerSetFullCovered) stickerSetCovered).documents;
            if (arrayList == null) {
                return;
            }
            long j = stickerSetCovered.set.thumb_document_id;
            int i = 0;
            while (true) {
                if (i < arrayList.size()) {
                    TLRPC.Document document3 = (TLRPC.Document) arrayList.get(i);
                    if (document3 != null && document3.f1668id == j) {
                        document2 = document3;
                        break;
                    }
                    i++;
                } else {
                    break;
                }
            }
            if (document2 == null && !arrayList.isEmpty()) {
                document = (TLRPC.Document) arrayList.get(0);
                document2 = document;
            }
        } else {
            document = stickerSetCovered.cover;
            if (document != null) {
                document2 = document;
            } else if (!stickerSetCovered.covers.isEmpty()) {
                document2 = (TLRPC.Document) stickerSetCovered.covers.get(0);
            }
        }
        if (document2 != null) {
            TLObject closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(stickerSetCovered.set.thumbs, 90);
            if (closestPhotoSizeWithSize == null) {
                closestPhotoSizeWithSize = document2;
            }
            SvgHelper.SvgDrawable svgThumb = DocumentObject.getSvgThumb((ArrayList<TLRPC.PhotoSize>) stickerSetCovered.set.thumbs, Theme.key_windowBackgroundGray, 1.0f);
            boolean z2 = closestPhotoSizeWithSize instanceof TLRPC.Document;
            if (z2) {
                forSticker = ImageLocation.getForDocument(FileLoader.getClosestPhotoSizeWithSize(document2.thumbs, 90), document2);
            } else {
                forSticker = ImageLocation.getForSticker((TLRPC.PhotoSize) closestPhotoSizeWithSize, document2, stickerSetCovered.set.thumb_version);
            }
            ImageLocation imageLocation = forSticker;
            if (z2 && (MessageObject.isAnimatedStickerDocument(document2, true) || MessageObject.isVideoSticker(document2))) {
                if (svgThumb != null) {
                    this.imageView.setImage(ImageLocation.getForDocument(document2), "50_50", svgThumb, 0, stickerSetCovered);
                    return;
                } else {
                    this.imageView.setImage(ImageLocation.getForDocument(document2), "50_50", imageLocation, (String) null, 0, stickerSetCovered);
                    return;
                }
            }
            if (imageLocation != null && imageLocation.imageType == 1) {
                this.imageView.setImage(imageLocation, "50_50", "tgs", svgThumb, stickerSetCovered);
                return;
            } else {
                this.imageView.setImage(imageLocation, "50_50", "webp", svgThumb, stickerSetCovered);
                return;
            }
        }
        this.imageView.setImage((ImageLocation) null, (String) null, "webp", (Drawable) null, stickerSetCovered);
    }

    public TLRPC.StickerSetCovered getStickersSet() {
        return this.stickersSet;
    }

    private void syncButtons(boolean z) {
        if (this.checkable) {
            AnimatorSet animatorSet = this.animatorSet;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            boolean z2 = this.checked;
            float f = z2 ? 1.0f : 0.0f;
            float f2 = z2 ? 0.0f : 1.0f;
            if (z) {
                this.currentButton = z2 ? this.deleteButton : this.addButton;
                this.addButton.setVisibility(0);
                this.deleteButton.setVisibility(0);
                AnimatorSet animatorSet2 = new AnimatorSet();
                this.animatorSet = animatorSet2;
                animatorSet2.setDuration(250L);
                AnimatorSet animatorSet3 = this.animatorSet;
                Property property = View.ALPHA;
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.deleteButton, (Property<Button, Float>) property, f);
                Property property2 = View.SCALE_X;
                ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.deleteButton, (Property<Button, Float>) property2, f);
                Button button = this.deleteButton;
                float[] fArr = {f};
                Property property3 = View.SCALE_Y;
                animatorSet3.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2, ObjectAnimator.ofFloat(button, (Property<Button, Float>) property3, fArr), ObjectAnimator.ofFloat(this.addButton, (Property<ProgressButton, Float>) property, f2), ObjectAnimator.ofFloat(this.addButton, (Property<ProgressButton, Float>) property2, f2), ObjectAnimator.ofFloat(this.addButton, (Property<ProgressButton, Float>) property3, f2));
                this.animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Cells.ArchivedStickerSetCell.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        if (ArchivedStickerSetCell.this.currentButton == ArchivedStickerSetCell.this.addButton) {
                            ArchivedStickerSetCell.this.deleteButton.setVisibility(4);
                        } else {
                            ArchivedStickerSetCell.this.addButton.setVisibility(4);
                        }
                    }
                });
                this.animatorSet.setInterpolator(new OvershootInterpolator(1.02f));
                this.animatorSet.start();
                return;
            }
            this.deleteButton.setVisibility(z2 ? 0 : 4);
            this.deleteButton.setAlpha(f);
            this.deleteButton.setScaleX(f);
            this.deleteButton.setScaleY(f);
            this.addButton.setVisibility(this.checked ? 4 : 0);
            this.addButton.setAlpha(f2);
            this.addButton.setScaleX(f2);
            this.addButton.setScaleY(f2);
        }
    }

    public void setOnCheckedChangeListener(OnCheckedChangeListener onCheckedChangeListener) {
        this.onCheckedChangeListener = onCheckedChangeListener;
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        setChecked(z, true);
    }

    public void setChecked(boolean z, boolean z2) {
        setChecked(z, z2, true);
    }

    public void setChecked(boolean z, boolean z2, boolean z3) {
        OnCheckedChangeListener onCheckedChangeListener;
        if (!this.checkable || this.checked == z) {
            return;
        }
        this.checked = z;
        syncButtons(z2);
        if (!z3 || (onCheckedChangeListener = this.onCheckedChangeListener) == null) {
            return;
        }
        onCheckedChangeListener.onCheckedChanged(this, z);
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.checked;
    }

    @Override // android.widget.Checkable
    public void toggle() {
        if (this.checkable) {
            setChecked(!isChecked());
        }
    }
}
