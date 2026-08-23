package com.exteragram.messenger.preferences.appearance.components;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.FrameLayout;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.preferences.components.AltSeekbar;
import com.exteragram.messenger.preferences.components.CustomPreferenceCell;
import com.exteragram.messenger.preferences.components.PreviewBackgroundDrawable;
import com.exteragram.messenger.preferences.components.PreviewColors;
import com.google.android.exoplayer2.util.Consumer;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.DialogCell;
import org.telegram.p029ui.Cells.ProfileChannelCell;
import org.telegram.p029ui.Components.AnimatedFloat;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.LoadingDrawable;
import org.telegram.p029ui.Components.ScaleStateListAnimator;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class AvatarCornersPreviewCell extends FrameLayout implements CustomPreferenceCell {
    private Paint brightMockPaint;
    private AnimatedFloat channelLoadingAlpha;
    private long currentDialogId;
    private final Mode currentMode;
    private DialogCell dialogCell;
    private ProfileChannelCell.ChannelMessageFetcher fetcher;
    private int lastWidth;
    private boolean loadingChannel;
    private LoadingDrawable loadingDrawable;
    private boolean loadingMessages;
    private AnimatedFloat messagesLoadingAlpha;
    private Paint mockPaint;
    private final FrameLayout preview;
    private final AltSeekbar seekBar;
    private boolean set;

    public enum Mode {
        REAL,
        MOCK
    }

    public AvatarCornersPreviewCell(Context context, final BaseFragment baseFragment, Theme.ResourcesProvider resourcesProvider, int i) {
        super(context);
        this.dialogCell = null;
        this.set = false;
        Mode mode = Mode.values()[i];
        this.currentMode = mode;
        setWillNotDraw(false);
        setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        int i2 = UserConfig.selectedAccount;
        final MessagesController messagesController = MessagesController.getInstance(i2);
        FrameLayout frameLayout = new FrameLayout(context) { // from class: com.exteragram.messenger.preferences.appearance.components.AvatarCornersPreviewCell.1
            @Override // android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                super.dispatchDraw(canvas);
                if (AvatarCornersPreviewCell.this.currentMode == Mode.REAL) {
                    AvatarCornersPreviewCell.this.drawLoading(canvas);
                } else {
                    AvatarCornersPreviewCell.this.drawMock(canvas);
                }
            }
        };
        this.preview = frameLayout;
        Mode mode2 = Mode.REAL;
        if (mode == mode2) {
            ScaleStateListAnimator.apply(frameLayout, 0.03f, 1.5f);
            frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.preferences.appearance.components.AvatarCornersPreviewCell$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    messagesController.openByUserName("exteraGram", baseFragment, 1);
                }
            });
        }
        frameLayout.setWillNotDraw(false);
        frameLayout.setBackground(new PreviewBackgroundDrawable());
        AltSeekbar altSeekbar = new AltSeekbar(context, new AltSeekbar.OnDrag() { // from class: com.exteragram.messenger.preferences.appearance.components.AvatarCornersPreviewCell$$ExternalSyntheticLambda1
            @Override // com.exteragram.messenger.preferences.components.AltSeekbar.OnDrag
            public final void run(float f) {
                this.f$0.lambda$new$1(baseFragment, f);
            }
        }, 0, 28, LocaleController.getString(C2888R.string.AvatarCorners), LocaleController.getString(C2888R.string.AvatarCornersLeft), LocaleController.getString(C2888R.string.AvatarCornersRight));
        this.seekBar = altSeekbar;
        altSeekbar.setProgress(ExteraConfig.avatarCorners);
        addView(altSeekbar, LayoutHelper.createFrame(-1, -2.0f));
        if (mode == mode2) {
            initRealMode(context, resourcesProvider, i2, messagesController);
            frameLayout.addView(this.dialogCell, LayoutHelper.createFrame(-1, -2.0f, 17, 0.0f, 3.0f, 0.0f, 4.0f));
        } else {
            initMockMode();
            frameLayout.setMinimumHeight(AndroidUtilities.m1124dp(83.0f));
        }
        addView(frameLayout, LayoutHelper.createFrame(-1, -2.0f, 49, 21.0f, 114.0f, 21.0f, 21.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(BaseFragment baseFragment, float f) {
        SharedPreferences.Editor editor = ExteraConfig.editor;
        ExteraConfig.avatarCorners = f;
        editor.putFloat("avatarCorners", f).apply();
        invalidate();
        this.preview.invalidate();
        DialogCell dialogCell = this.dialogCell;
        if (dialogCell != null) {
            dialogCell.update(0);
        }
        baseFragment.getParentLayout().rebuildAllFragmentViews(false, false);
    }

    private void initRealMode(Context context, Theme.ResourcesProvider resourcesProvider, int i, MessagesController messagesController) {
        this.fetcher = new ProfileChannelCell.ChannelMessageFetcher(i);
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.channelLoadingAlpha = new AnimatedFloat(this, 320L, cubicBezierInterpolator);
        this.messagesLoadingAlpha = new AnimatedFloat(this, 320L, cubicBezierInterpolator);
        LoadingDrawable loadingDrawable = new LoadingDrawable();
        this.loadingDrawable = loadingDrawable;
        int i2 = Theme.key_listSelector;
        loadingDrawable.setColors(Theme.multAlpha(Theme.getColor(i2), 1.3f), Theme.multAlpha(Theme.getColor(i2), 0.85f));
        this.loadingDrawable.setRadiiDp(8.0f);
        DialogCell dialogCell = new DialogCell(null, context, false, true, i, resourcesProvider);
        this.dialogCell = dialogCell;
        dialogCell.isForChannelSubscriberCell = true;
        dialogCell.setDialogCellDelegate(new DialogCell.DialogCellDelegate() { // from class: com.exteragram.messenger.preferences.appearance.components.AvatarCornersPreviewCell.2
            @Override // org.telegram.ui.Cells.DialogCell.DialogCellDelegate
            public boolean canClickButtonInside() {
                return false;
            }

            @Override // org.telegram.ui.Cells.DialogCell.DialogCellDelegate
            public void onButtonClicked(DialogCell dialogCell2) {
            }

            @Override // org.telegram.ui.Cells.DialogCell.DialogCellDelegate
            public void onButtonLongPress(DialogCell dialogCell2) {
            }

            @Override // org.telegram.ui.Cells.DialogCell.DialogCellDelegate
            public void openHiddenStories() {
            }

            @Override // org.telegram.ui.Cells.DialogCell.DialogCellDelegate
            public void openStory(DialogCell dialogCell2, Runnable runnable) {
            }

            @Override // org.telegram.ui.Cells.DialogCell.DialogCellDelegate
            public void showChatPreview(DialogCell dialogCell2) {
            }
        });
        DialogCell dialogCell2 = this.dialogCell;
        dialogCell2.avatarStart = 15;
        dialogCell2.messagePaddingStart = 83;
        if (messagesController.getChat(1571726392L) != null) {
            setDialogId(1571726392L);
            return;
        }
        this.loadingChannel = true;
        this.loadingMessages = true;
        messagesController.getUserNameResolver().resolve("exteraGram", new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.components.AvatarCornersPreviewCell$$ExternalSyntheticLambda3
            @Override // com.google.android.exoplayer2.util.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$initRealMode$2((Long) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initRealMode$2(Long l) {
        this.loadingChannel = false;
        if (l != null) {
            setDialogId(-l.longValue());
        }
        invalidate();
    }

    private void initMockMode() {
        Paint paint = new Paint(1);
        this.mockPaint = paint;
        paint.setColor(PreviewColors.getMockColor(false));
        Paint paint2 = new Paint(1);
        this.brightMockPaint = paint2;
        paint2.setColor(PreviewColors.getMockColor(true));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void drawMock(Canvas canvas) {
        float fM1124dp = AndroidUtilities.m1124dp(1.0f);
        float fM1124dp2 = AndroidUtilities.m1124dp(15.0f);
        float fM1124dp3 = AndroidUtilities.m1124dp(83.0f);
        int iM1124dp = AndroidUtilities.m1124dp(56.0f);
        float width = this.preview.getWidth();
        RectF rectF = AndroidUtilities.rectTmp;
        float fM1124dp4 = AndroidUtilities.m1124dp(12.0f) + fM1124dp;
        float f = iM1124dp;
        float f2 = fM1124dp2 + f;
        float f3 = f + fM1124dp4;
        rectF.set(fM1124dp2, fM1124dp4, f2, f3);
        float fMax = Math.max(0.0f, Math.min(1.0f, 1.0f - (ExteraConfig.avatarCorners / 28.0f)));
        float fDpf2 = AndroidUtilities.dpf2((2.0f * fMax) + 7.0f);
        float fDpf22 = AndroidUtilities.dpf2(fMax + 5.0f);
        float onlineDotOffset = f2 - ExteraConfig.getOnlineDotOffset(AndroidUtilities.dpf2(8.0f), fDpf2);
        float onlineDotOffset2 = f3 - ExteraConfig.getOnlineDotOffset(AndroidUtilities.dpf2(7.5f), fDpf2);
        canvas.save();
        Path path = new Path();
        path.addCircle(onlineDotOffset, onlineDotOffset2, fDpf2, Path.Direction.CCW);
        canvas.clipPath(path, Region.Op.DIFFERENCE);
        canvas.drawRoundRect(rectF, ExteraConfig.getAvatarCorners(56.0f), ExteraConfig.getAvatarCorners(56.0f), this.brightMockPaint);
        canvas.restore();
        Theme.dialogs_onlineCirclePaint.setColor(Theme.getColor(Theme.key_chats_onlineCircle));
        canvas.drawCircle(onlineDotOffset, onlineDotOffset2, fDpf22, Theme.dialogs_onlineCirclePaint);
        float fM1124dp5 = AndroidUtilities.m1124dp(4.0f);
        rectF.set(AndroidUtilities.m1124dp(6.0f) + fM1124dp3, AndroidUtilities.m1124dp(16.0f) + fM1124dp, AndroidUtilities.m1124dp(6.0f) + fM1124dp3 + (0.4f * width), AndroidUtilities.m1124dp(24.33f) + fM1124dp);
        canvas.drawRoundRect(rectF, fM1124dp5, fM1124dp5, this.brightMockPaint);
        rectF.set(AndroidUtilities.m1124dp(6.0f) + fM1124dp3, AndroidUtilities.m1124dp(38.0f) + fM1124dp, AndroidUtilities.m1124dp(6.0f) + fM1124dp3 + (0.5f * width), AndroidUtilities.m1124dp(46.33f) + fM1124dp);
        canvas.drawRoundRect(rectF, fM1124dp5, fM1124dp5, this.mockPaint);
        rectF.set(AndroidUtilities.m1124dp(6.0f) + fM1124dp3, AndroidUtilities.m1124dp(56.0f) + fM1124dp, fM1124dp3 + AndroidUtilities.m1124dp(6.0f) + (0.36f * width), AndroidUtilities.m1124dp(64.33f) + fM1124dp);
        canvas.drawRoundRect(rectF, fM1124dp5, fM1124dp5, this.mockPaint);
        rectF.set((width - AndroidUtilities.m1124dp(16.0f)) - AndroidUtilities.m1124dp(43.0f), AndroidUtilities.m1124dp(16.0f) + fM1124dp, width - AndroidUtilities.m1124dp(16.0f), fM1124dp + AndroidUtilities.m1124dp(24.33f));
        canvas.drawRoundRect(rectF, fM1124dp5, fM1124dp5, this.mockPaint);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void drawLoading(Canvas canvas) {
        boolean z;
        if (this.loadingDrawable == null) {
            return;
        }
        float f = this.channelLoadingAlpha.set(this.loadingChannel);
        float f2 = this.messagesLoadingAlpha.set(this.loadingMessages);
        boolean z2 = true;
        if (f > 0.0f) {
            this.loadingDrawable.setAlpha((int) (f * 255.0f));
            int iM1124dp = AndroidUtilities.m1124dp(56.0f);
            float x = this.dialogCell.getX() + AndroidUtilities.m1124dp(this.dialogCell.avatarStart);
            float y = this.dialogCell.getY() + AndroidUtilities.m1124dp(12.0f);
            this.loadingDrawable.setRadiiDp((int) ExteraConfig.avatarCorners);
            RectF rectF = AndroidUtilities.rectTmp;
            float f3 = iM1124dp;
            rectF.set(x, y, x + f3, f3 + y);
            this.loadingDrawable.setBounds(rectF);
            this.loadingDrawable.draw(canvas);
            this.loadingDrawable.setRadiiDp(4.0f);
            rectF.set(this.dialogCell.getX() + AndroidUtilities.m1124dp(this.dialogCell.messagePaddingStart + 6), this.dialogCell.getY() + AndroidUtilities.m1124dp(16.0f), this.dialogCell.getX() + AndroidUtilities.m1124dp(this.dialogCell.messagePaddingStart + 6) + (getWidth() * 0.4f), this.dialogCell.getY() + AndroidUtilities.m1124dp(24.33f));
            this.loadingDrawable.setBounds(rectF);
            this.loadingDrawable.draw(canvas);
            z = true;
        } else {
            z = false;
        }
        if (f2 > 0.0f) {
            this.loadingDrawable.setAlpha((int) (f2 * 255.0f));
            RectF rectF2 = AndroidUtilities.rectTmp;
            rectF2.set(this.dialogCell.getX() + AndroidUtilities.m1124dp(this.dialogCell.messagePaddingStart + 6), this.dialogCell.getY() + AndroidUtilities.m1124dp(38.0f), this.dialogCell.getX() + AndroidUtilities.m1124dp(this.dialogCell.messagePaddingStart + 6) + (getWidth() * 0.5f), this.dialogCell.getY() + AndroidUtilities.m1124dp(46.33f));
            this.loadingDrawable.setBounds(rectF2);
            this.loadingDrawable.draw(canvas);
            rectF2.set(this.dialogCell.getX() + AndroidUtilities.m1124dp(this.dialogCell.messagePaddingStart + 6), this.dialogCell.getY() + AndroidUtilities.m1124dp(56.0f), this.dialogCell.getX() + AndroidUtilities.m1124dp(this.dialogCell.messagePaddingStart + 6) + (getWidth() * 0.36f), this.dialogCell.getY() + AndroidUtilities.m1124dp(64.33f));
            this.loadingDrawable.setBounds(rectF2);
            this.loadingDrawable.draw(canvas);
            rectF2.set(((this.dialogCell.getX() + this.dialogCell.getWidth()) - AndroidUtilities.m1124dp(16.0f)) - AndroidUtilities.m1124dp(43.0f), this.dialogCell.getY() + AndroidUtilities.m1124dp(12.0f), (this.dialogCell.getX() + this.dialogCell.getWidth()) - AndroidUtilities.m1124dp(16.0f), this.dialogCell.getY() + AndroidUtilities.m1124dp(20.33f));
            this.loadingDrawable.setBounds(rectF2);
            this.loadingDrawable.draw(canvas);
        } else {
            z2 = z;
        }
        if (z2) {
            invalidate();
        }
    }

    public void setDialogId(final long j) {
        if (this.currentMode != Mode.REAL) {
            return;
        }
        final boolean z = !this.set;
        this.currentDialogId = j;
        this.messagesLoadingAlpha.set(1.0f, true);
        this.fetcher.fetch(j, 0);
        this.fetcher.subscribe(new Runnable() { // from class: com.exteragram.messenger.preferences.appearance.components.AvatarCornersPreviewCell$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setDialogId$3(j, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setDialogId$3(long j, boolean z) {
        if (this.dialogCell != null && this.currentDialogId == j) {
            ArrayList arrayList = this.fetcher.messageObjects;
            if (arrayList == null || arrayList.isEmpty()) {
                if (!z) {
                    this.dialogCell.setDialog(-j, null, 0, false, true);
                }
                this.loadingMessages = true;
            } else {
                ArrayList arrayList2 = this.fetcher.messageObjects;
                MessageObject messageObject = (MessageObject) arrayList2.get(arrayList2.size() - 1);
                this.dialogCell.setDialog(-j, messageObject, this.fetcher.messageObjects, messageObject.messageOwner.date, false, !z);
                this.loadingMessages = false;
            }
            this.dialogCell.invalidate();
        }
        if (!z) {
            this.messagesLoadingAlpha.set(this.loadingMessages, true);
        }
        invalidate();
        this.set = true;
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return this.loadingDrawable == drawable || super.verifyDrawable(drawable);
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        this.preview.invalidate();
        this.seekBar.invalidate();
        DialogCell dialogCell = this.dialogCell;
        if (dialogCell != null) {
            dialogCell.invalidate();
        }
        this.lastWidth = -1;
    }

    public void updateSliderStyle() {
        this.seekBar.updateStyle();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawLine(0.0f, getMeasuredHeight() - 1, getMeasuredWidth(), getMeasuredHeight() - 1, Theme.dividerPaint);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(0, 0));
        setMeasuredDimension(size, getMeasuredHeight());
        if (this.lastWidth != size) {
            this.lastWidth = size;
        }
    }

    @Override // com.exteragram.messenger.preferences.components.CustomPreferenceCell
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AvatarCornersPreviewCell) {
            return Objects.equals(this.seekBar, ((AvatarCornersPreviewCell) obj).seekBar);
        }
        return false;
    }
}
