package org.telegram.ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.text.Layout;
import android.text.Selection;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.CharacterStyle;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Keep;
import com.exteragram.messenger.ExteraConfig;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.material.timepicker.TimeModel;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.Forum.ForumUtilities;
import org.telegram.ui.Components.LinkSpanDrawable;
import org.telegram.ui.Components.Premium.boosts.BoostRepository;
import org.telegram.ui.PaymentFormActivity;

/* JADX INFO: loaded from: classes3.dex */
@Deprecated
public class UndoView extends FrameLayout {
    public static int ACTION_RINGTONE_ADDED = 83;
    private float additionalTranslationY;
    private BackupImageView avatarImageView;
    Drawable backgroundDrawable;
    private int bottomInset;
    private int currentAccount;
    private int currentAction;
    private Runnable currentActionRunnable;
    private Runnable currentCancelRunnable;
    private ArrayList<Long> currentDialogIds;
    private Object currentInfoObject;
    private Object currentInfoObject2;
    float enterOffset;
    private int enterOffsetMargin;
    private boolean fromTop;
    private int hideAnimationType;
    private CharSequence infoText;
    private LinkSpanDrawable.LinksTextView infoTextView;
    private int infoTextViewEmojiCacheType;
    private boolean isShown;
    private long lastUpdateTime;
    private RLottieImageView leftImageView;
    private BaseFragment parentFragment;
    private int prevSeconds;
    private Paint progressPaint;
    private RectF rect;
    private final Theme.ResourcesProvider resourcesProvider;
    private TextView subinfoTextView;
    private TextPaint textPaint;
    private int textWidth;
    int textWidthOut;
    StaticLayout timeLayout;
    StaticLayout timeLayoutOut;
    private long timeLeft;
    private String timeLeftString;
    float timeReplaceProgress;
    private LinearLayout undoButton;
    private ImageView undoImageView;
    private TextView undoTextView;
    private int undoViewHeight;

    public boolean canUndo() {
        return true;
    }

    public void didPressUrl(CharacterStyle characterStyle) {
    }

    public void onRemoveDialogAction(long j, int i) {
    }

    public void setBottomInset(int i) {
        this.bottomInset = i;
    }

    /* JADX INFO: loaded from: classes7.dex */
    public class LinkMovementMethodMy extends LinkMovementMethod {
        public LinkMovementMethodMy() {
        }

        @Override // android.text.method.LinkMovementMethod, android.text.method.ScrollingMovementMethod, android.text.method.BaseMovementMethod, android.text.method.MovementMethod
        public boolean onTouchEvent(TextView textView, Spannable spannable, MotionEvent motionEvent) {
            CharacterStyle[] characterStyleArr;
            try {
                if (motionEvent.getAction() != 0 || ((characterStyleArr = (CharacterStyle[]) spannable.getSpans(textView.getSelectionStart(), textView.getSelectionEnd(), CharacterStyle.class)) != null && characterStyleArr.length != 0)) {
                    if (motionEvent.getAction() == 1) {
                        CharacterStyle[] characterStyleArr2 = (CharacterStyle[]) spannable.getSpans(textView.getSelectionStart(), textView.getSelectionEnd(), CharacterStyle.class);
                        if (characterStyleArr2 != null && characterStyleArr2.length > 0) {
                            UndoView.this.didPressUrl(characterStyleArr2[0]);
                        }
                        Selection.removeSelection(spannable);
                        return true;
                    }
                    return super.onTouchEvent(textView, spannable, motionEvent);
                }
                return false;
            } catch (Exception e) {
                FileLog.m992e(e);
                return false;
            }
        }
    }

    public UndoView(Context context) {
        this(context, null, false, null);
    }

    public UndoView(Context context, BaseFragment baseFragment) {
        this(context, baseFragment, false, null);
    }

    public UndoView(Context context, BaseFragment baseFragment, boolean z, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.infoTextViewEmojiCacheType = 0;
        this.currentAccount = UserConfig.selectedAccount;
        this.currentAction = -1;
        this.bottomInset = 0;
        this.hideAnimationType = 1;
        this.enterOffsetMargin = AndroidUtilities.dp(8.0f);
        this.timeReplaceProgress = 1.0f;
        this.resourcesProvider = resourcesProvider;
        this.parentFragment = baseFragment;
        this.fromTop = z;
        LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context, resourcesProvider) { // from class: org.telegram.ui.Components.UndoView.1
            @Override // org.telegram.ui.Components.LinkSpanDrawable.LinksTextView
            public int emojiCacheType() {
                return UndoView.this.infoTextViewEmojiCacheType;
            }
        };
        this.infoTextView = linksTextView;
        linksTextView.setTextSize(1, 15.0f);
        LinkSpanDrawable.LinksTextView linksTextView2 = this.infoTextView;
        int i = Theme.key_undo_infoColor;
        linksTextView2.setTextColor(getThemedColor(i));
        LinkSpanDrawable.LinksTextView linksTextView3 = this.infoTextView;
        int i2 = Theme.key_undo_cancelColor;
        linksTextView3.setLinkTextColor(getThemedColor(i2));
        this.infoTextView.setMovementMethod(new LinkMovementMethodMy());
        addView(this.infoTextView, LayoutHelper.createFrame(-2, -2.0f, 51, 45.0f, 13.0f, 0.0f, 0.0f));
        TextView textView = new TextView(context);
        this.subinfoTextView = textView;
        textView.setTextSize(1, 13.0f);
        this.subinfoTextView.setTextColor(getThemedColor(i));
        this.subinfoTextView.setLinkTextColor(getThemedColor(i2));
        this.subinfoTextView.setHighlightColor(0);
        this.subinfoTextView.setSingleLine(true);
        this.subinfoTextView.setEllipsize(TextUtils.TruncateAt.END);
        this.subinfoTextView.setMovementMethod(new AndroidUtilities.LinkMovementMethodMy());
        addView(this.subinfoTextView, LayoutHelper.createFrame(-2, -2.0f, 51, 58.0f, 27.0f, 8.0f, 0.0f));
        RLottieImageView rLottieImageView = new RLottieImageView(context);
        this.leftImageView = rLottieImageView;
        rLottieImageView.setScaleType(ImageView.ScaleType.CENTER);
        RLottieImageView rLottieImageView2 = this.leftImageView;
        int i3 = Theme.key_undo_background;
        rLottieImageView2.setLayerColor("info1", getThemedColor(i3) | (-16777216));
        this.leftImageView.setLayerColor("info2", getThemedColor(i3) | (-16777216));
        this.leftImageView.setLayerColor("luc12", getThemedColor(i));
        this.leftImageView.setLayerColor("luc11", getThemedColor(i));
        this.leftImageView.setLayerColor("luc10", getThemedColor(i));
        this.leftImageView.setLayerColor("luc9", getThemedColor(i));
        this.leftImageView.setLayerColor("luc8", getThemedColor(i));
        this.leftImageView.setLayerColor("luc7", getThemedColor(i));
        this.leftImageView.setLayerColor("luc6", getThemedColor(i));
        this.leftImageView.setLayerColor("luc5", getThemedColor(i));
        this.leftImageView.setLayerColor("luc4", getThemedColor(i));
        this.leftImageView.setLayerColor("luc3", getThemedColor(i));
        this.leftImageView.setLayerColor("luc2", getThemedColor(i));
        this.leftImageView.setLayerColor("luc1", getThemedColor(i));
        this.leftImageView.setLayerColor("Oval", getThemedColor(i));
        addView(this.leftImageView, LayoutHelper.createFrame(54, -2.0f, 19, 3.0f, 0.0f, 0.0f, 0.0f));
        BackupImageView backupImageView = new BackupImageView(context);
        this.avatarImageView = backupImageView;
        backupImageView.setRoundRadius(ExteraConfig.getAvatarCorners(30.0f));
        addView(this.avatarImageView, LayoutHelper.createFrame(30, 30.0f, 19, 15.0f, 0.0f, 0.0f, 0.0f));
        LinearLayout linearLayout = new LinearLayout(context);
        this.undoButton = linearLayout;
        linearLayout.setOrientation(0);
        this.undoButton.setBackground(Theme.createRadSelectorDrawable(getThemedColor(i2) & 587202559, AndroidUtilities.dp(2.0f), AndroidUtilities.dp(2.0f)));
        addView(this.undoButton, LayoutHelper.createFrame(-2, -2.0f, 21, 0.0f, 0.0f, 11.0f, 0.0f));
        this.undoButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.UndoView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$0(view);
            }
        });
        ImageView imageView = new ImageView(context);
        this.undoImageView = imageView;
        imageView.setImageResource(C2665R.drawable.chats_undo);
        this.undoImageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(i2), PorterDuff.Mode.MULTIPLY));
        this.undoButton.addView(this.undoImageView, LayoutHelper.createLinear(-2, -2, 19, 4, 4, 0, 4));
        TextView textView2 = new TextView(context);
        this.undoTextView = textView2;
        textView2.setTextSize(1, 14.0f);
        this.undoTextView.setTypeface(AndroidUtilities.bold());
        this.undoTextView.setTextColor(getThemedColor(i2));
        this.undoTextView.setText(LocaleController.getString(C2665R.string.UndoNoCaps));
        this.undoButton.addView(this.undoTextView, LayoutHelper.createLinear(-2, -2, 19, 6, 4, 8, 4));
        this.rect = new RectF(AndroidUtilities.dp(15.0f), AndroidUtilities.dp(15.0f), AndroidUtilities.dp(33.0f), AndroidUtilities.dp(33.0f));
        Paint paint = new Paint(1);
        this.progressPaint = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.progressPaint.setStrokeWidth(AndroidUtilities.dp(2.0f));
        this.progressPaint.setStrokeCap(Paint.Cap.ROUND);
        this.progressPaint.setColor(getThemedColor(i));
        TextPaint textPaint = new TextPaint(1);
        this.textPaint = textPaint;
        textPaint.setTextSize(AndroidUtilities.dp(12.0f));
        this.textPaint.setTypeface(AndroidUtilities.bold());
        this.textPaint.setColor(getThemedColor(i));
        setWillNotDraw(false);
        this.backgroundDrawable = Theme.createRoundRectDrawable(AndroidUtilities.dp(10.0f), getThemedColor(i3));
        setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.UndoView$$ExternalSyntheticLambda1
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return UndoView.$r8$lambda$ObNJKqvGU8xXsV6D0ktsjRDi0mw(view, motionEvent);
            }
        });
        setVisibility(4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        if (canUndo()) {
            hide(false, 1);
        }
    }

    public static /* synthetic */ boolean $r8$lambda$ObNJKqvGU8xXsV6D0ktsjRDi0mw(View view, MotionEvent motionEvent) {
        return true;
    }

    public void setColors(int i, int i2) {
        Theme.setDrawableColor(this.backgroundDrawable, i);
        this.infoTextView.setTextColor(i2);
        this.subinfoTextView.setTextColor(i2);
        int i3 = i | (-16777216);
        this.leftImageView.setLayerColor("info1", i3);
        this.leftImageView.setLayerColor("info2", i3);
    }

    private boolean isTooltipAction() {
        int i = this.currentAction;
        return i == 6 || i == 3 || i == 5 || i == 7 || i == 8 || i == 87 || i == 9 || i == 10 || i == 13 || i == 14 || i == 19 || i == 20 || i == 21 || i == 22 || i == 23 || i == 30 || i == 31 || i == 32 || i == 102 || i == 33 || i == 34 || i == 35 || i == 36 || i == 74 || i == 37 || i == 38 || i == 39 || i == 40 || i == 42 || i == 43 || i == 77 || i == 44 || i == 78 || i == 79 || i == 100 || i == 101 || i == ACTION_RINGTONE_ADDED;
    }

    private boolean hasSubInfo() {
        int i;
        Object obj;
        int i2 = this.currentAction;
        if (i2 == 11 || i2 == 24 || i2 == 6 || i2 == 3 || i2 == 5 || i2 == 13 || i2 == 14 || i2 == 74) {
            return true;
        }
        if ((i2 == 7 && MessagesController.getInstance(this.currentAccount).dialogFilters.isEmpty()) || (i = this.currentAction) == ACTION_RINGTONE_ADDED || i == 85) {
            return true;
        }
        return i == 88 && (obj = this.currentInfoObject2) != null && ((Integer) obj).intValue() > 0;
    }

    public boolean isMultilineSubInfo() {
        int i = this.currentAction;
        return i == 12 || i == 15 || i == 24 || i == 74 || i == ACTION_RINGTONE_ADDED;
    }

    public void setAdditionalTranslationY(float f) {
        if (this.additionalTranslationY != f) {
            this.additionalTranslationY = f;
            updatePosition();
        }
    }

    public Object getCurrentInfoObject() {
        return this.currentInfoObject;
    }

    public void hide(boolean z, int i) {
        if (getVisibility() == 0 && this.isShown) {
            this.currentInfoObject = null;
            this.currentInfoObject2 = null;
            this.isShown = false;
            Runnable runnable = this.currentActionRunnable;
            if (runnable != null) {
                if (z) {
                    runnable.run();
                }
                this.currentActionRunnable = null;
            }
            Runnable runnable2 = this.currentCancelRunnable;
            if (runnable2 != null) {
                if (!z) {
                    runnable2.run();
                }
                this.currentCancelRunnable = null;
            }
            int i2 = this.currentAction;
            if (i2 == 0 || i2 == 1 || i2 == 95 || i2 == 26 || i2 == 27) {
                for (int i3 = 0; i3 < this.currentDialogIds.size(); i3++) {
                    long jLongValue = this.currentDialogIds.get(i3).longValue();
                    MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
                    int i4 = this.currentAction;
                    messagesController.removeDialogAction(jLongValue, i4 == 0 || i4 == 26, z);
                    onRemoveDialogAction(jLongValue, this.currentAction);
                }
            }
            if (i != 0) {
                AnimatorSet animatorSet = new AnimatorSet();
                if (i == 1) {
                    animatorSet.playTogether(ObjectAnimator.ofFloat(this, "enterOffset", (this.fromTop ? -1.0f : 1.0f) * (this.enterOffsetMargin + this.undoViewHeight + this.bottomInset)));
                    animatorSet.setDuration(250L);
                } else {
                    animatorSet.playTogether(ObjectAnimator.ofFloat(this, (Property<UndoView, Float>) View.SCALE_X, 0.8f), ObjectAnimator.ofFloat(this, (Property<UndoView, Float>) View.SCALE_Y, 0.8f), ObjectAnimator.ofFloat(this, (Property<UndoView, Float>) View.ALPHA, 0.0f));
                    animatorSet.setDuration(180L);
                }
                animatorSet.setInterpolator(new DecelerateInterpolator());
                animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.UndoView.2
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        UndoView.this.setVisibility(4);
                        UndoView.this.setScaleX(1.0f);
                        UndoView.this.setScaleY(1.0f);
                        UndoView.this.setAlpha(1.0f);
                    }
                });
                animatorSet.start();
                return;
            }
            setEnterOffset((this.fromTop ? -1.0f : 1.0f) * (this.enterOffsetMargin + this.undoViewHeight + this.bottomInset));
            setVisibility(4);
        }
    }

    public void showWithAction(long j, int i, Runnable runnable) {
        showWithAction(j, i, (Object) null, (Object) null, runnable, (Runnable) null);
    }

    public void showWithAction(long j, int i, Object obj) {
        showWithAction(j, i, obj, (Object) null, (Runnable) null, (Runnable) null);
    }

    public void showWithAction(long j, int i, Runnable runnable, Runnable runnable2) {
        showWithAction(j, i, (Object) null, (Object) null, runnable, runnable2);
    }

    public void showWithAction(long j, int i, Object obj, Runnable runnable, Runnable runnable2) {
        showWithAction(j, i, obj, (Object) null, runnable, runnable2);
    }

    public void showWithAction(long j, int i, Object obj, Object obj2, Runnable runnable, Runnable runnable2) {
        ArrayList<Long> arrayList = new ArrayList<>();
        arrayList.add(Long.valueOf(j));
        showWithAction(arrayList, i, obj, obj2, runnable, runnable2);
    }

    /* JADX WARN: Removed duplicated region for block: B:302:0x0808  */
    /* JADX WARN: Removed duplicated region for block: B:303:0x082d  */
    /* JADX WARN: Removed duplicated region for block: B:305:0x0834  */
    /* JADX WARN: Removed duplicated region for block: B:306:0x0873  */
    /* JADX WARN: Removed duplicated region for block: B:662:0x1832  */
    /* JADX WARN: Removed duplicated region for block: B:665:0x1852  */
    /* JADX WARN: Removed duplicated region for block: B:666:0x1867  */
    /* JADX WARN: Removed duplicated region for block: B:669:0x1878  */
    /* JADX WARN: Removed duplicated region for block: B:673:0x18be  */
    /* JADX WARN: Removed duplicated region for block: B:704:0x1970  */
    /* JADX WARN: Removed duplicated region for block: B:731:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void showWithAction(ArrayList<Long> arrayList, int i, Object obj, Object obj2, Runnable runnable, Runnable runnable2) {
        String str;
        float f;
        long j;
        boolean z;
        int iDp;
        CharSequence charSequenceReplaceTags;
        int i2;
        String firstName;
        CharSequence charSequenceReplaceTags2;
        String string;
        int i3;
        String firstName2;
        String firstName3;
        String firstName4;
        String firstName5;
        String name;
        SpannableStringBuilder spannableStringBuilderReplaceTags;
        int i4;
        int i5;
        if (!AndroidUtilities.shouldShowClipboardToast() && ((i5 = this.currentAction) == 52 || i5 == 56 || i5 == 57 || i5 == 58 || i5 == 59 || i5 == 60 || i5 == 80 || i5 == 33)) {
            return;
        }
        Runnable runnable3 = this.currentActionRunnable;
        if (runnable3 != null) {
            runnable3.run();
        }
        this.isShown = true;
        this.currentActionRunnable = runnable;
        this.currentCancelRunnable = runnable2;
        this.currentDialogIds = arrayList;
        Long l = arrayList.get(0);
        final long jLongValue = l.longValue();
        this.currentAction = i;
        this.timeLeft = 5000L;
        this.currentInfoObject = obj;
        this.currentInfoObject2 = obj2;
        this.lastUpdateTime = SystemClock.elapsedRealtime();
        this.undoTextView.setText(LocaleController.getString(C2665R.string.UndoNoCaps));
        this.undoImageView.setVisibility(0);
        this.leftImageView.setPadding(0, 0, 0, 0);
        this.leftImageView.setScaleX(1.0f);
        this.leftImageView.setScaleY(1.0f);
        this.infoTextView.setTextSize(1, 15.0f);
        this.avatarImageView.setVisibility(8);
        this.infoTextView.setGravity(51);
        ((FrameLayout.LayoutParams) this.subinfoTextView.getLayoutParams()).leftMargin = AndroidUtilities.dp(58.0f);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.infoTextView.getLayoutParams();
        layoutParams.height = -2;
        layoutParams.topMargin = AndroidUtilities.dp(13.0f);
        layoutParams.bottomMargin = 0;
        this.leftImageView.setScaleType(ImageView.ScaleType.CENTER);
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.leftImageView.getLayoutParams();
        layoutParams2.gravity = 19;
        layoutParams2.bottomMargin = 0;
        layoutParams2.topMargin = 0;
        layoutParams2.leftMargin = AndroidUtilities.dp(3.0f);
        layoutParams2.width = AndroidUtilities.dp(54.0f);
        layoutParams2.height = -2;
        this.infoTextView.setMinHeight(0);
        if ((runnable == null && runnable2 == null) || i == ACTION_RINGTONE_ADDED) {
            setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.UndoView$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$showWithAction$2(view);
                }
            });
            setOnTouchListener(null);
        } else {
            setOnClickListener(null);
            setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.UndoView$$ExternalSyntheticLambda3
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    return UndoView.$r8$lambda$l8XtLSzZxmJyp89hFOLv7CHxCiE(view, motionEvent);
                }
            });
        }
        this.infoTextView.setMovementMethod(null);
        int i6 = 36;
        if (isTooltipAction()) {
            if (i == ACTION_RINGTONE_ADDED) {
                this.subinfoTextView.setSingleLine(false);
                charSequenceReplaceTags = LocaleController.getString(C2665R.string.SoundAdded);
                SpannableStringBuilder spannableStringBuilderReplaceSingleTag = AndroidUtilities.replaceSingleTag(LocaleController.getString(C2665R.string.SoundAddedSubtitle), runnable);
                this.currentActionRunnable = null;
                i3 = C2665R.raw.sound_download;
                this.timeLeft = 4000L;
                monoForumTitle = spannableStringBuilderReplaceSingleTag;
            } else {
                if (i == 74) {
                    this.subinfoTextView.setSingleLine(false);
                    charSequenceReplaceTags = LocaleController.getString(C2665R.string.ReportChatSent);
                    monoForumTitle = LocaleController.formatString("ReportSentInfo", C2665R.string.ReportSentInfo, new Object[0]);
                    i2 = C2665R.raw.ic_admin;
                    this.timeLeft = 4000L;
                } else {
                    if (i == 34) {
                        TLRPC.User user = (TLRPC.User) obj;
                        if (ChatObject.isChannelOrGiga((TLRPC.Chat) obj2)) {
                            spannableStringBuilderReplaceTags = AndroidUtilities.replaceTags(LocaleController.formatString("VoipChannelInvitedUser", C2665R.string.VoipChannelInvitedUser, UserObject.getFirstName(user)));
                        } else {
                            spannableStringBuilderReplaceTags = AndroidUtilities.replaceTags(LocaleController.formatString("VoipGroupInvitedUser", C2665R.string.VoipGroupInvitedUser, UserObject.getFirstName(user)));
                        }
                        AvatarDrawable avatarDrawable = new AvatarDrawable();
                        avatarDrawable.setTextSize(AndroidUtilities.dp(12.0f));
                        avatarDrawable.setInfo(this.currentAccount, user);
                        this.avatarImageView.setForUserOrChat(user, avatarDrawable);
                        this.avatarImageView.setVisibility(0);
                        this.timeLeft = 3000L;
                        charSequenceReplaceTags = spannableStringBuilderReplaceTags;
                    } else if (i == 44) {
                        TLRPC.Chat chat = (TLRPC.Chat) obj2;
                        if (obj instanceof TLRPC.User) {
                            TLRPC.User user2 = (TLRPC.User) obj;
                            if (ChatObject.isChannelOrGiga(chat)) {
                                charSequenceReplaceTags = AndroidUtilities.replaceTags(LocaleController.formatString(C2665R.string.VoipChannelUserJoined, UserObject.getFirstName(user2)));
                            } else {
                                charSequenceReplaceTags = AndroidUtilities.replaceTags(LocaleController.formatString(C2665R.string.VoipChatUserJoined, UserObject.getFirstName(user2)));
                            }
                        } else if (obj instanceof TLRPC.Chat) {
                            boolean zIsChannelOrGiga = ChatObject.isChannelOrGiga(chat);
                            String str2 = ((TLRPC.Chat) obj).title;
                            if (zIsChannelOrGiga) {
                                charSequenceReplaceTags = AndroidUtilities.replaceTags(LocaleController.formatString(C2665R.string.VoipChannelChatJoined, str2));
                            } else {
                                charSequenceReplaceTags = AndroidUtilities.replaceTags(LocaleController.formatString(C2665R.string.VoipChatChatJoined, str2));
                            }
                        } else {
                            charSequenceReplaceTags = _UrlKt.FRAGMENT_ENCODE_SET;
                        }
                        AvatarDrawable avatarDrawable2 = new AvatarDrawable();
                        avatarDrawable2.setTextSize(AndroidUtilities.dp(12.0f));
                        TLObject tLObject = (TLObject) obj;
                        avatarDrawable2.setInfo(this.currentAccount, tLObject);
                        this.avatarImageView.setForUserOrChat(tLObject, avatarDrawable2);
                        this.avatarImageView.setVisibility(0);
                        this.timeLeft = 3000L;
                    } else if (i == 37) {
                        AvatarDrawable avatarDrawable3 = new AvatarDrawable();
                        avatarDrawable3.setTextSize(AndroidUtilities.dp(12.0f));
                        if (obj instanceof TLRPC.User) {
                            TLRPC.User user3 = (TLRPC.User) obj;
                            avatarDrawable3.setInfo(this.currentAccount, user3);
                            this.avatarImageView.setForUserOrChat(user3, avatarDrawable3);
                            name = ContactsController.formatName(user3.first_name, user3.last_name);
                        } else {
                            TLRPC.Chat chat2 = (TLRPC.Chat) obj;
                            avatarDrawable3.setInfo(this.currentAccount, chat2);
                            this.avatarImageView.setForUserOrChat(chat2, avatarDrawable3);
                            name = chat2.title;
                        }
                        if (ChatObject.isChannelOrGiga((TLRPC.Chat) obj2)) {
                            charSequenceReplaceTags = AndroidUtilities.replaceTags(LocaleController.formatString("VoipChannelUserChanged", C2665R.string.VoipChannelUserChanged, name));
                        } else {
                            charSequenceReplaceTags = AndroidUtilities.replaceTags(LocaleController.formatString("VoipGroupUserChanged", C2665R.string.VoipGroupUserChanged, name));
                        }
                        this.avatarImageView.setVisibility(0);
                        this.timeLeft = 3000L;
                    } else if (i == 33) {
                        charSequenceReplaceTags = LocaleController.getString(C2665R.string.VoipGroupCopyInviteLinkCopied);
                        i2 = C2665R.raw.voip_invite;
                        this.timeLeft = 3000L;
                    } else if (i == 77) {
                        charSequenceReplaceTags = (CharSequence) obj;
                        i2 = C2665R.raw.payment_success;
                        this.timeLeft = 5000L;
                        if (this.parentFragment != null && (obj2 instanceof TLRPC.Message)) {
                            final TLRPC.Message message = (TLRPC.Message) obj2;
                            setOnTouchListener(null);
                            this.infoTextView.setMovementMethod(null);
                            setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.UndoView$$ExternalSyntheticLambda4
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    this.f$0.lambda$showWithAction$6(message, view);
                                }
                            });
                        }
                    } else if (i == 30) {
                        if (obj instanceof TLRPC.User) {
                            firstName5 = UserObject.getFirstName((TLRPC.User) obj);
                        } else {
                            firstName5 = ((TLRPC.Chat) obj).title;
                        }
                        charSequenceReplaceTags = AndroidUtilities.replaceTags(LocaleController.formatString("VoipGroupUserCantNowSpeak", C2665R.string.VoipGroupUserCantNowSpeak, firstName5));
                        i2 = C2665R.raw.voip_muted;
                        this.timeLeft = 3000L;
                    } else if (i == 35) {
                        if (obj instanceof TLRPC.User) {
                            firstName4 = UserObject.getFirstName((TLRPC.User) obj);
                        } else {
                            firstName4 = obj instanceof TLRPC.Chat ? ((TLRPC.Chat) obj).title : _UrlKt.FRAGMENT_ENCODE_SET;
                        }
                        charSequenceReplaceTags = AndroidUtilities.replaceTags(LocaleController.formatString("VoipGroupUserCantNowSpeakForYou", C2665R.string.VoipGroupUserCantNowSpeakForYou, firstName4));
                        i2 = C2665R.raw.voip_muted;
                        this.timeLeft = 3000L;
                    } else if (i == 31) {
                        if (obj instanceof TLRPC.User) {
                            firstName3 = UserObject.getFirstName((TLRPC.User) obj);
                        } else {
                            firstName3 = ((TLRPC.Chat) obj).title;
                        }
                        charSequenceReplaceTags = AndroidUtilities.replaceTags(LocaleController.formatString("VoipGroupUserCanNowSpeak", C2665R.string.VoipGroupUserCanNowSpeak, firstName3));
                        i2 = C2665R.raw.voip_unmuted;
                        this.timeLeft = 3000L;
                    } else if (i == 38) {
                        if (obj instanceof TLRPC.Chat) {
                            charSequenceReplaceTags = AndroidUtilities.replaceTags(LocaleController.formatString("VoipGroupYouCanNowSpeakIn", C2665R.string.VoipGroupYouCanNowSpeakIn, ((TLRPC.Chat) obj).title));
                        } else {
                            charSequenceReplaceTags = AndroidUtilities.replaceTags(LocaleController.getString(C2665R.string.VoipGroupYouCanNowSpeak));
                        }
                        i2 = C2665R.raw.voip_allow_talk;
                        this.timeLeft = 3000L;
                    } else if (i == 42) {
                        if (ChatObject.isChannelOrGiga((TLRPC.Chat) obj)) {
                            charSequenceReplaceTags = AndroidUtilities.replaceTags(LocaleController.getString(C2665R.string.VoipChannelSoundMuted));
                        } else {
                            charSequenceReplaceTags = AndroidUtilities.replaceTags(LocaleController.getString(C2665R.string.VoipGroupSoundMuted));
                        }
                        i2 = C2665R.raw.ic_mute;
                        this.timeLeft = 3000L;
                    } else if (i == 43) {
                        if (ChatObject.isChannelOrGiga((TLRPC.Chat) obj)) {
                            charSequenceReplaceTags = AndroidUtilities.replaceTags(LocaleController.getString(C2665R.string.VoipChannelSoundUnmuted));
                        } else {
                            charSequenceReplaceTags = AndroidUtilities.replaceTags(LocaleController.getString(C2665R.string.VoipGroupSoundUnmuted));
                        }
                        i2 = C2665R.raw.ic_unmute;
                        this.timeLeft = 3000L;
                    } else {
                        int i7 = this.currentAction;
                        if (i7 == 39 || i7 == 100) {
                            str = _UrlKt.FRAGMENT_ENCODE_SET;
                            charSequenceReplaceTags = AndroidUtilities.replaceTags(LocaleController.getString(i7 == 39 ? C2665R.string.VoipGroupAudioRecordStarted : C2665R.string.VoipGroupVideoRecordStarted));
                            i2 = C2665R.raw.voip_record_start;
                            this.timeLeft = 3000L;
                        } else if (i7 == 40 || i7 == 101) {
                            String string2 = LocaleController.getString(i7 == 40 ? C2665R.string.VoipGroupAudioRecordSaved : C2665R.string.VoipGroupVideoRecordSaved);
                            i2 = C2665R.raw.voip_record_saved;
                            this.timeLeft = 4000L;
                            this.infoTextView.setMovementMethod(new AndroidUtilities.LinkMovementMethodMy());
                            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(string2);
                            int iIndexOf = string2.indexOf("**");
                            int iLastIndexOf = string2.lastIndexOf("**");
                            if (iIndexOf < 0 || iLastIndexOf < 0 || iIndexOf == iLastIndexOf) {
                                str = _UrlKt.FRAGMENT_ENCODE_SET;
                            } else {
                                str = _UrlKt.FRAGMENT_ENCODE_SET;
                                spannableStringBuilder.replace(iLastIndexOf, iLastIndexOf + 2, (CharSequence) str);
                                spannableStringBuilder.replace(iIndexOf, iIndexOf + 2, (CharSequence) str);
                                try {
                                    spannableStringBuilder.setSpan(new URLSpanNoUnderline("tg://openmessage?user_id=" + UserConfig.getInstance(this.currentAccount).getClientUserId()), iIndexOf, iLastIndexOf - 2, 33);
                                } catch (Exception e) {
                                    FileLog.m992e(e);
                                }
                            }
                            charSequenceReplaceTags = spannableStringBuilder;
                        } else if (i == 36) {
                            if (obj instanceof TLRPC.User) {
                                firstName2 = UserObject.getFirstName((TLRPC.User) obj);
                            } else {
                                firstName2 = ((TLRPC.Chat) obj).title;
                            }
                            charSequenceReplaceTags = AndroidUtilities.replaceTags(LocaleController.formatString("VoipGroupUserCanNowSpeakForYou", C2665R.string.VoipGroupUserCanNowSpeakForYou, firstName2));
                            i2 = C2665R.raw.voip_unmuted;
                            this.timeLeft = 3000L;
                        } else if (i == 32 || i == 102) {
                            if (obj instanceof TLRPC.User) {
                                firstName = UserObject.getFirstName((TLRPC.User) obj);
                            } else {
                                firstName = ((TLRPC.Chat) obj).title;
                            }
                            if (i == 102) {
                                charSequenceReplaceTags = AndroidUtilities.replaceTags(LocaleController.formatString(C2665R.string.VoipConferenceKicked, firstName));
                            } else {
                                charSequenceReplaceTags = AndroidUtilities.replaceTags(LocaleController.formatString(C2665R.string.VoipGroupRemovedFromGroup, firstName));
                            }
                            i2 = C2665R.raw.ic_ban;
                            this.timeLeft = 3000L;
                        } else if (i == 9 || i == 10) {
                            TLRPC.User user4 = (TLRPC.User) obj;
                            if (i == 9) {
                                charSequenceReplaceTags = AndroidUtilities.replaceTags(LocaleController.formatString("EditAdminTransferChannelToast", C2665R.string.EditAdminTransferChannelToast, UserObject.getFirstName(user4)));
                            } else {
                                charSequenceReplaceTags = AndroidUtilities.replaceTags(LocaleController.formatString("EditAdminTransferGroupToast", C2665R.string.EditAdminTransferGroupToast, UserObject.getFirstName(user4)));
                            }
                            i2 = C2665R.raw.contact_check;
                        } else if (i == 8) {
                            charSequenceReplaceTags = LocaleController.formatString("NowInContacts", C2665R.string.NowInContacts, UserObject.getFirstName((TLRPC.User) obj));
                            i2 = C2665R.raw.contact_check;
                        } else if (i == 87) {
                            charSequenceReplaceTags = LocaleController.formatString(C2665R.string.ProxyAddedSuccess, new Object[0]);
                            i2 = C2665R.raw.contact_check;
                        } else if (i == 22) {
                            if (!DialogObject.isUserDialog(jLongValue)) {
                                TLRPC.Chat chat3 = MessagesController.getInstance(UserConfig.selectedAccount).getChat(Long.valueOf(-jLongValue));
                                if (!ChatObject.isChannel(chat3) || chat3.megagroup) {
                                    if (obj == null) {
                                        charSequenceReplaceTags = LocaleController.getString(C2665R.string.MainGroupProfilePhotoSetHint);
                                    } else {
                                        charSequenceReplaceTags = LocaleController.getString(C2665R.string.MainGroupProfileVideoSetHint);
                                    }
                                } else if (obj == null) {
                                    charSequenceReplaceTags = LocaleController.getString(C2665R.string.MainChannelProfilePhotoSetHint);
                                } else {
                                    charSequenceReplaceTags = LocaleController.getString(C2665R.string.MainChannelProfileVideoSetHint);
                                }
                            } else if (obj == null) {
                                charSequenceReplaceTags = LocaleController.getString(C2665R.string.MainProfilePhotoSetHint);
                            } else {
                                charSequenceReplaceTags = LocaleController.getString(C2665R.string.MainProfileVideoSetHint);
                            }
                            i2 = C2665R.raw.contact_check;
                        } else if (i == 23) {
                            charSequenceReplaceTags = LocaleController.getString(C2665R.string.ChatWasMovedToMainList);
                            i2 = C2665R.raw.contact_check;
                        } else if (i == 6) {
                            charSequenceReplaceTags = LocaleController.getString(C2665R.string.ArchiveHidden);
                            monoForumTitle = LocaleController.getString(C2665R.string.ArchiveHiddenInfo);
                            i2 = C2665R.raw.chats_swipearchive;
                            i6 = 48;
                        } else {
                            if (i7 == 13) {
                                string = LocaleController.getString(C2665R.string.QuizWellDone);
                                monoForumTitle = LocaleController.getString(C2665R.string.QuizWellDoneInfo);
                                i3 = C2665R.raw.wallet_congrats;
                            } else if (i7 == 14) {
                                string = LocaleController.getString(C2665R.string.QuizWrongAnswer);
                                monoForumTitle = LocaleController.getString(C2665R.string.QuizWrongAnswerInfo);
                                i3 = C2665R.raw.wallet_science;
                            } else if (i == 7) {
                                charSequenceReplaceTags = LocaleController.getString(C2665R.string.ArchivePinned);
                                monoForumTitle = MessagesController.getInstance(this.currentAccount).dialogFilters.isEmpty() ? LocaleController.getString(C2665R.string.ArchivePinnedInfo) : null;
                                i2 = C2665R.raw.chats_infotip;
                            } else if (i == 20 || i == 21) {
                                MessagesController.DialogFilter dialogFilter = (MessagesController.DialogFilter) obj2;
                                Spannable spannableReplaceAnimatedEmoji = MessageObject.replaceAnimatedEmoji(Emoji.replaceEmoji(dialogFilter.name, this.infoTextView.getPaint().getFontMetricsInt(), false), dialogFilter.entities, this.infoTextView.getPaint().getFontMetricsInt());
                                this.infoTextViewEmojiCacheType = dialogFilter.title_noanimate ? 26 : 0;
                                if (jLongValue != 0) {
                                    if (DialogObject.isEncryptedDialog(jLongValue)) {
                                        jLongValue = MessagesController.getInstance(this.currentAccount).getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(jLongValue))).user_id;
                                    }
                                    boolean zIsUserDialog = DialogObject.isUserDialog(jLongValue);
                                    int i8 = this.currentAccount;
                                    if (zIsUserDialog) {
                                        TLRPC.User user5 = MessagesController.getInstance(i8).getUser(Long.valueOf(jLongValue));
                                        String firstName6 = UserObject.getFirstName(user5);
                                        if (UserObject.isUserSelf(user5)) {
                                            firstName6 = LocaleController.getString(C2665R.string.SavedMessages);
                                        } else if (UserObject.isReplyUser(user5)) {
                                            firstName6 = LocaleController.getString(C2665R.string.RepliesTitle);
                                        }
                                        if (i == 20) {
                                            charSequenceReplaceTags2 = AndroidUtilities.replaceTags(LocaleController.formatSpannable(C2665R.string.FilterUserAddedToExisting, firstName6, spannableReplaceAnimatedEmoji));
                                        } else {
                                            charSequenceReplaceTags2 = AndroidUtilities.replaceTags(LocaleController.formatSpannable(C2665R.string.FilterUserRemovedFrom, firstName6, spannableReplaceAnimatedEmoji));
                                        }
                                    } else {
                                        TLRPC.Chat chat4 = MessagesController.getInstance(i8).getChat(Long.valueOf(-jLongValue));
                                        if (i == 20) {
                                            charSequenceReplaceTags2 = AndroidUtilities.replaceTags(LocaleController.formatSpannable(C2665R.string.FilterChatAddedToExisting, chat4.title, spannableReplaceAnimatedEmoji));
                                        } else {
                                            charSequenceReplaceTags2 = AndroidUtilities.replaceTags(LocaleController.formatSpannable(C2665R.string.FilterChatRemovedFrom, chat4.title, spannableReplaceAnimatedEmoji));
                                        }
                                    }
                                } else if (i == 20) {
                                    charSequenceReplaceTags2 = AndroidUtilities.replaceTags(LocaleController.formatSpannable(C2665R.string.FilterChatsAddedToExisting, LocaleController.formatPluralString("ChatsSelected", ((Integer) obj).intValue(), new Object[0]), spannableReplaceAnimatedEmoji));
                                } else {
                                    charSequenceReplaceTags2 = AndroidUtilities.replaceTags(LocaleController.formatSpannable(C2665R.string.FilterChatsRemovedFrom, LocaleController.formatPluralString("ChatsSelected", ((Integer) obj).intValue(), new Object[0]), spannableReplaceAnimatedEmoji));
                                }
                                i2 = i == 20 ? C2665R.raw.folder_in : C2665R.raw.folder_out;
                                charSequenceReplaceTags = charSequenceReplaceTags2;
                            } else if (i == 19) {
                                charSequenceReplaceTags = this.infoText;
                                i2 = C2665R.raw.ic_delete;
                            } else if (i == 82) {
                                charSequenceReplaceTags = LocaleController.getString(((MediaController.PhotoEntry) obj).isVideo ? C2665R.string.AttachMediaVideoDeselected : C2665R.string.AttachMediaPhotoDeselected);
                            } else if (i == 78 || i == 79) {
                                int iIntValue = ((Integer) obj).intValue();
                                if (i == 78) {
                                    charSequenceReplaceTags = LocaleController.formatPluralString("PinnedDialogsCount", iIntValue, new Object[0]);
                                } else {
                                    charSequenceReplaceTags = LocaleController.formatPluralString("UnpinnedDialogsCount", iIntValue, new Object[0]);
                                }
                                i2 = this.currentAction == 78 ? C2665R.raw.ic_pin : C2665R.raw.ic_unpin;
                                if (obj2 instanceof Integer) {
                                    this.timeLeft = ((Integer) obj2).intValue();
                                }
                            } else {
                                if (i == 3) {
                                    charSequenceReplaceTags = LocaleController.getString(C2665R.string.ChatArchived);
                                } else {
                                    charSequenceReplaceTags = LocaleController.getString(C2665R.string.ChatsArchived);
                                }
                                monoForumTitle = MessagesController.getInstance(this.currentAccount).dialogFilters.isEmpty() ? LocaleController.getString(C2665R.string.ChatArchivedInfo) : null;
                                i2 = C2665R.raw.chats_infotip;
                            }
                            i6 = 44;
                            charSequenceReplaceTags = string;
                        }
                        this.infoTextView.setText(charSequenceReplaceTags);
                        RLottieImageView rLottieImageView = this.leftImageView;
                        if (i2 == 0) {
                            rLottieImageView.setAnimation(i2, i6, i6);
                            RLottieDrawable animatedDrawable = this.leftImageView.getAnimatedDrawable();
                            animatedDrawable.setPlayInDirectionOfCustomEndFrame(false);
                            animatedDrawable.setCustomEndFrame(animatedDrawable.getFramesCount());
                            this.leftImageView.setVisibility(0);
                            this.leftImageView.setProgress(0.0f);
                            this.leftImageView.playAnimation();
                        } else {
                            rLottieImageView.setVisibility(8);
                        }
                        if (monoForumTitle == null) {
                            layoutParams.leftMargin = AndroidUtilities.dp(58.0f);
                            layoutParams.topMargin = AndroidUtilities.dp(6.0f);
                            layoutParams.rightMargin = AndroidUtilities.dp(8.0f);
                            ((FrameLayout.LayoutParams) this.subinfoTextView.getLayoutParams()).rightMargin = AndroidUtilities.dp(8.0f);
                            this.subinfoTextView.setText(monoForumTitle);
                            this.subinfoTextView.setVisibility(0);
                            this.infoTextView.setTextSize(1, 14.0f);
                            this.infoTextView.setTypeface(AndroidUtilities.bold());
                            i4 = 8;
                        } else {
                            layoutParams.leftMargin = AndroidUtilities.dp(58.0f);
                            layoutParams.topMargin = AndroidUtilities.dp(13.0f);
                            layoutParams.rightMargin = AndroidUtilities.dp(8.0f);
                            i4 = 8;
                            this.subinfoTextView.setVisibility(8);
                            this.infoTextView.setTextSize(1, 15.0f);
                            this.infoTextView.setTypeface(Typeface.DEFAULT);
                        }
                        this.undoButton.setVisibility(i4);
                    }
                    str = _UrlKt.FRAGMENT_ENCODE_SET;
                    i2 = 0;
                    this.infoTextView.setText(charSequenceReplaceTags);
                    RLottieImageView rLottieImageView2 = this.leftImageView;
                    if (i2 == 0) {
                    }
                    if (monoForumTitle == null) {
                    }
                    this.undoButton.setVisibility(i4);
                }
                str = _UrlKt.FRAGMENT_ENCODE_SET;
                this.infoTextView.setText(charSequenceReplaceTags);
                RLottieImageView rLottieImageView22 = this.leftImageView;
                if (i2 == 0) {
                }
                if (monoForumTitle == null) {
                }
                this.undoButton.setVisibility(i4);
            }
            i2 = i3;
            str = _UrlKt.FRAGMENT_ENCODE_SET;
            this.infoTextView.setText(charSequenceReplaceTags);
            RLottieImageView rLottieImageView222 = this.leftImageView;
            if (i2 == 0) {
            }
            if (monoForumTitle == null) {
            }
            this.undoButton.setVisibility(i4);
        } else {
            str = _UrlKt.FRAGMENT_ENCODE_SET;
            int i9 = this.currentAction;
            if (i9 == 45 || i9 == 46 || i9 == 47 || i9 == 52 || i9 == 53 || i9 == 54 || i9 == 55 || i9 == 56 || i9 == 57 || i9 == 58 || i9 == 59 || i9 == 60 || i9 == 71 || i9 == 70 || i9 == 75 || i9 == 76 || i9 == 41 || i9 == 78 || i9 == 79 || i9 == 61 || i9 == 80) {
                this.undoImageView.setVisibility(8);
                this.leftImageView.setVisibility(0);
                this.infoTextView.setTypeface(Typeface.DEFAULT);
                int i10 = this.currentAction;
                long j2 = -1;
                if (i10 == 76) {
                    this.infoTextView.setText(LocaleController.getString(C2665R.string.BroadcastGroupConvertSuccess));
                    this.leftImageView.setAnimation(C2665R.raw.gigagroup_convert, 36, 36);
                    layoutParams.topMargin = AndroidUtilities.dp(9.0f);
                    f = 14.0f;
                    this.infoTextView.setTextSize(1, 14.0f);
                } else if (i10 == 75) {
                    this.infoTextView.setText(LocaleController.getString(C2665R.string.GigagroupConvertCancelHint));
                    this.leftImageView.setAnimation(C2665R.raw.chats_infotip, 36, 36);
                    layoutParams.topMargin = AndroidUtilities.dp(9.0f);
                    f = 14.0f;
                    this.infoTextView.setTextSize(1, 14.0f);
                } else {
                    if (i == 70) {
                        int iIntValue2 = ((Integer) obj2).intValue();
                        this.subinfoTextView.setSingleLine(false);
                        this.infoTextView.setText(LocaleController.formatString("AutoDeleteHintOnText", C2665R.string.AutoDeleteHintOnText, LocaleController.formatTTLString(iIntValue2)));
                        this.leftImageView.setAnimation(C2665R.raw.fire_on, 36, 36);
                        layoutParams.topMargin = AndroidUtilities.dp(9.0f);
                        this.timeLeft = 4000L;
                        this.leftImageView.setPadding(0, 0, 0, AndroidUtilities.dp(3.0f));
                        j = -1;
                        z = true;
                        f = 14.0f;
                    } else {
                        if (i10 == 71) {
                            this.infoTextView.setText(LocaleController.getString(C2665R.string.AutoDeleteHintOffText));
                            this.leftImageView.setAnimation(C2665R.raw.fire_off, 36, 36);
                            this.infoTextView.setTextSize(1, 14.0f);
                            this.timeLeft = 3000L;
                            this.leftImageView.setPadding(0, 0, 0, AndroidUtilities.dp(4.0f));
                            f = 14.0f;
                        } else if (i10 == 45) {
                            this.infoTextView.setText(LocaleController.getString(C2665R.string.ImportMutualError));
                            this.leftImageView.setAnimation(C2665R.raw.error, 36, 36);
                            layoutParams.topMargin = AndroidUtilities.dp(9.0f);
                            f = 14.0f;
                            this.infoTextView.setTextSize(1, 14.0f);
                        } else if (i10 == 46) {
                            this.infoTextView.setText(LocaleController.getString(C2665R.string.ImportNotAdmin));
                            this.leftImageView.setAnimation(C2665R.raw.error, 36, 36);
                            layoutParams.topMargin = AndroidUtilities.dp(9.0f);
                            f = 14.0f;
                            this.infoTextView.setTextSize(1, 14.0f);
                        } else if (i10 == 47) {
                            this.infoTextView.setText(LocaleController.getString(C2665R.string.ImportedInfo));
                            this.leftImageView.setAnimation(C2665R.raw.imported, 36, 36);
                            this.leftImageView.setPadding(0, 0, 0, AndroidUtilities.dp(5.0f));
                            layoutParams.topMargin = AndroidUtilities.dp(9.0f);
                            f = 14.0f;
                            this.infoTextView.setTextSize(1, 14.0f);
                        } else {
                            f = 14.0f;
                            if (i10 == 52 || i10 == 56 || i10 == 57 || i10 == 58 || i10 == 59 || i10 == 60 || i10 == 80) {
                                if (!AndroidUtilities.shouldShowClipboardToast()) {
                                    return;
                                }
                                int i11 = C2665R.raw.copy;
                                int i12 = this.currentAction;
                                if (i12 == 80) {
                                    this.infoTextView.setText(LocaleController.getString(C2665R.string.EmailCopied));
                                } else if (i12 == 60) {
                                    this.infoTextView.setText(LocaleController.getString(C2665R.string.PhoneCopied));
                                } else if (i12 == 56) {
                                    this.infoTextView.setText(LocaleController.getString(C2665R.string.UsernameCopied));
                                } else if (i12 == 57) {
                                    this.infoTextView.setText(LocaleController.getString(C2665R.string.HashtagCopied));
                                } else if (i12 == 52) {
                                    this.infoTextView.setText(LocaleController.getString(C2665R.string.MessageCopied));
                                } else {
                                    LinkSpanDrawable.LinksTextView linksTextView = this.infoTextView;
                                    if (i12 == 59) {
                                        i11 = C2665R.raw.voip_invite;
                                        linksTextView.setText(LocaleController.getString(C2665R.string.LinkCopied));
                                    } else {
                                        linksTextView.setText(LocaleController.getString(C2665R.string.TextCopied));
                                    }
                                }
                                this.leftImageView.setAnimation(i11, 30, 30);
                                this.timeLeft = 3000L;
                                this.infoTextView.setTextSize(1, 15.0f);
                            } else if (i10 == 54) {
                                this.infoTextView.setText(LocaleController.getString(C2665R.string.ChannelNotifyMembersInfoOn));
                                this.leftImageView.setAnimation(C2665R.raw.silent_unmute, 30, 30);
                                this.timeLeft = 3000L;
                                this.infoTextView.setTextSize(1, 15.0f);
                            } else if (i10 == 55) {
                                this.infoTextView.setText(LocaleController.getString(C2665R.string.ChannelNotifyMembersInfoOff));
                                this.leftImageView.setAnimation(C2665R.raw.silent_mute, 30, 30);
                                this.timeLeft = 3000L;
                                this.infoTextView.setTextSize(1, 15.0f);
                            } else if (i10 == 41) {
                                if (obj2 != null) {
                                    this.infoTextView.setText(AndroidUtilities.replaceTags(LocaleController.formatString("InvLinkToChats", C2665R.string.InvLinkToChats, LocaleController.formatPluralString("Chats", ((Integer) obj2).intValue(), new Object[0]))));
                                } else if (jLongValue == UserConfig.getInstance(this.currentAccount).clientUserId) {
                                    this.infoTextView.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2665R.string.InvLinkToSavedMessages)));
                                } else {
                                    boolean zIsChatDialog = DialogObject.isChatDialog(jLongValue);
                                    int i13 = this.currentAccount;
                                    if (zIsChatDialog) {
                                        this.infoTextView.setText(AndroidUtilities.replaceTags(LocaleController.formatString("InvLinkToGroup", C2665R.string.InvLinkToGroup, MessagesController.getInstance(i13).getChat(Long.valueOf(-jLongValue)).title)));
                                    } else {
                                        this.infoTextView.setText(AndroidUtilities.replaceTags(LocaleController.formatString("InvLinkToUser", C2665R.string.InvLinkToUser, UserObject.getFirstName(MessagesController.getInstance(i13).getUser(l)))));
                                    }
                                }
                                this.leftImageView.setAnimation(C2665R.raw.contact_check, 36, 36);
                                this.timeLeft = 3000L;
                            } else if (i10 == 53) {
                                Integer num = (Integer) obj;
                                if (obj2 != null && !(obj2 instanceof TLRPC.TL_forumTopic)) {
                                    int iIntValue3 = ((Integer) obj2).intValue();
                                    int iIntValue4 = num.intValue();
                                    LinkSpanDrawable.LinksTextView linksTextView2 = this.infoTextView;
                                    if (iIntValue4 == 1) {
                                        linksTextView2.setText(AndroidUtilities.replaceTags(LocaleController.formatPluralString("FwdMessageToManyChats", iIntValue3, new Object[0])));
                                    } else {
                                        linksTextView2.setText(AndroidUtilities.replaceTags(LocaleController.formatPluralString("FwdMessagesToManyChats", iIntValue3, new Object[0])));
                                    }
                                    this.leftImageView.setAnimation(C2665R.raw.forward, 30, 30);
                                } else if (jLongValue == UserConfig.getInstance(this.currentAccount).clientUserId) {
                                    int iIntValue5 = num.intValue();
                                    LinkSpanDrawable.LinksTextView linksTextView3 = this.infoTextView;
                                    if (iIntValue5 == 1) {
                                        linksTextView3.setText(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2665R.string.FwdMessageToSavedMessages), -1, 2, new BulletinFactory$$ExternalSyntheticLambda5()));
                                    } else {
                                        linksTextView3.setText(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2665R.string.FwdMessagesToSavedMessages), -1, 2, new BulletinFactory$$ExternalSyntheticLambda5()));
                                    }
                                    this.leftImageView.setAnimation(C2665R.raw.saved_messages, 30, 30);
                                    this.timeLeft = 3000L;
                                } else {
                                    Runnable runnable4 = new Runnable() { // from class: org.telegram.ui.Components.UndoView$$ExternalSyntheticLambda5
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            this.f$0.lambda$showWithAction$7(jLongValue);
                                        }
                                    };
                                    boolean zIsChatDialog2 = DialogObject.isChatDialog(jLongValue);
                                    int i14 = this.currentAccount;
                                    if (zIsChatDialog2) {
                                        TLRPC.Chat chat5 = MessagesController.getInstance(i14).getChat(Long.valueOf(-jLongValue));
                                        TLRPC.TL_forumTopic tL_forumTopic = (TLRPC.TL_forumTopic) obj2;
                                        monoForumTitle = ChatObject.isMonoForum(chat5) ? ForumUtilities.getMonoForumTitle(this.currentAccount, chat5) : null;
                                        int iIntValue6 = num.intValue();
                                        LinkSpanDrawable.LinksTextView linksTextView4 = this.infoTextView;
                                        if (iIntValue6 == 1) {
                                            int i15 = C2665R.string.FwdMessageToGroup;
                                            if (monoForumTitle == null) {
                                                monoForumTitle = tL_forumTopic != null ? tL_forumTopic.title : chat5.title;
                                            }
                                            linksTextView4.setText(AndroidUtilities.replaceSingleTag(LocaleController.formatString("FwdMessageToGroup", i15, monoForumTitle), -1, 2, runnable4));
                                        } else {
                                            int i16 = C2665R.string.FwdMessagesToGroup;
                                            if (monoForumTitle == null) {
                                                monoForumTitle = tL_forumTopic != null ? tL_forumTopic.title : chat5.title;
                                            }
                                            linksTextView4.setText(AndroidUtilities.replaceSingleTag(LocaleController.formatString("FwdMessagesToGroup", i16, monoForumTitle), -1, 2, runnable4));
                                        }
                                    } else {
                                        TLRPC.User user6 = MessagesController.getInstance(i14).getUser(l);
                                        int iIntValue7 = num.intValue();
                                        LinkSpanDrawable.LinksTextView linksTextView5 = this.infoTextView;
                                        if (iIntValue7 == 1) {
                                            linksTextView5.setText(AndroidUtilities.replaceSingleTag(LocaleController.formatString("FwdMessageToUser", C2665R.string.FwdMessageToUser, UserObject.getFirstName(user6)), -1, 2, runnable4));
                                        } else {
                                            linksTextView5.setText(AndroidUtilities.replaceSingleTag(LocaleController.formatString("FwdMessagesToUser", C2665R.string.FwdMessagesToUser, UserObject.getFirstName(user6)), -1, 2, runnable4));
                                        }
                                    }
                                    this.leftImageView.setAnimation(C2665R.raw.forward, 30, 30);
                                }
                                j2 = 300;
                                this.timeLeft = 3000L;
                            } else if (i10 == 61) {
                                if (obj2 != null) {
                                    this.infoTextView.setText(AndroidUtilities.replaceTags(LocaleController.formatString("BackgroundToChats", C2665R.string.BackgroundToChats, LocaleController.formatPluralString("Chats", ((Integer) obj2).intValue(), new Object[0]))));
                                    this.leftImageView.setAnimation(C2665R.raw.forward, 30, 30);
                                } else if (jLongValue == UserConfig.getInstance(this.currentAccount).clientUserId) {
                                    this.infoTextView.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2665R.string.BackgroundToSavedMessages)));
                                    this.leftImageView.setAnimation(C2665R.raw.saved_messages, 30, 30);
                                } else {
                                    boolean zIsChatDialog3 = DialogObject.isChatDialog(jLongValue);
                                    int i17 = this.currentAccount;
                                    if (zIsChatDialog3) {
                                        this.infoTextView.setText(AndroidUtilities.replaceTags(LocaleController.formatString("BackgroundToGroup", C2665R.string.BackgroundToGroup, MessagesController.getInstance(i17).getChat(Long.valueOf(-jLongValue)).title)));
                                    } else {
                                        this.infoTextView.setText(AndroidUtilities.replaceTags(LocaleController.formatString("BackgroundToUser", C2665R.string.BackgroundToUser, UserObject.getFirstName(MessagesController.getInstance(i17).getUser(l)))));
                                    }
                                    this.leftImageView.setAnimation(C2665R.raw.forward, 30, 30);
                                }
                                this.timeLeft = 3000L;
                            }
                        }
                        j = j2;
                        z = false;
                    }
                    this.subinfoTextView.setVisibility(8);
                    this.undoTextView.setTextColor(getThemedColor(Theme.key_undo_cancelColor));
                    this.undoButton.setVisibility(8);
                    layoutParams.leftMargin = AndroidUtilities.dp(58.0f);
                    layoutParams.rightMargin = AndroidUtilities.dp(8.0f);
                    this.leftImageView.setProgress(0.0f);
                    this.leftImageView.playAnimation();
                    if (j > 0) {
                        this.leftImageView.postDelayed(new Runnable() { // from class: org.telegram.ui.Components.UndoView$$ExternalSyntheticLambda6
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$showWithAction$8();
                            }
                        }, j);
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append((Object) this.infoTextView.getText());
                    sb.append(this.subinfoTextView.getVisibility() == 0 ? ". " + ((Object) this.subinfoTextView.getText()) : str);
                    AndroidUtilities.makeAccessibilityAnnouncement(sb.toString());
                    if (isMultilineSubInfo()) {
                        int measuredWidth = ((ViewGroup) getParent()).getMeasuredWidth();
                        if (measuredWidth == 0) {
                            measuredWidth = AndroidUtilities.displaySize.x;
                        }
                        measureChildWithMargins(this.subinfoTextView, View.MeasureSpec.makeMeasureSpec(measuredWidth - AndroidUtilities.dp(16.0f), TLObject.FLAG_30), 0, View.MeasureSpec.makeMeasureSpec(0, 0), 0);
                        this.undoViewHeight = this.subinfoTextView.getMeasuredHeight() + AndroidUtilities.dp(37.0f);
                    } else if (hasSubInfo()) {
                        this.undoViewHeight = AndroidUtilities.dp(52.0f);
                    } else if (getParent() instanceof ViewGroup) {
                        ViewGroup viewGroup = (ViewGroup) getParent();
                        int measuredWidth2 = (viewGroup.getMeasuredWidth() - viewGroup.getPaddingLeft()) - viewGroup.getPaddingRight();
                        if (measuredWidth2 <= 0) {
                            measuredWidth2 = AndroidUtilities.displaySize.x;
                        }
                        measureChildWithMargins(this.infoTextView, View.MeasureSpec.makeMeasureSpec(measuredWidth2 - AndroidUtilities.dp(16.0f), TLObject.FLAG_30), 0, View.MeasureSpec.makeMeasureSpec(0, 0), 0);
                        int measuredHeight = this.infoTextView.getMeasuredHeight();
                        int i18 = this.currentAction;
                        int iDp2 = measuredHeight + AndroidUtilities.dp((i18 == 16 || i18 == 17 || i18 == 18 || i18 == 84 || i18 == 86) ? f : 28.0f);
                        this.undoViewHeight = iDp2;
                        int i19 = this.currentAction;
                        if (i19 == 18) {
                            this.undoViewHeight = Math.max(iDp2, AndroidUtilities.dp(52.0f));
                        } else if (i19 == 25) {
                            this.undoViewHeight = Math.max(iDp2, AndroidUtilities.dp(50.0f));
                        } else if (z) {
                            this.undoViewHeight = iDp2 - AndroidUtilities.dp(8.0f);
                        }
                    }
                    if (getVisibility() != 0) {
                        setVisibility(0);
                        setEnterOffset((this.fromTop ? -1.0f : 1.0f) * (this.enterOffsetMargin + this.undoViewHeight + this.bottomInset));
                        AnimatorSet animatorSet = new AnimatorSet();
                        boolean z2 = this.fromTop;
                        animatorSet.playTogether(ObjectAnimator.ofFloat(this, "enterOffset", (z2 ? -1.0f : 1.0f) * (this.enterOffsetMargin + this.undoViewHeight + this.bottomInset), z2 ? 1.0f : -1.0f));
                        animatorSet.setInterpolator(new DecelerateInterpolator());
                        animatorSet.setDuration(180L);
                        animatorSet.start();
                        return;
                    }
                    return;
                }
                j = -1;
                z = true;
                this.subinfoTextView.setVisibility(8);
                this.undoTextView.setTextColor(getThemedColor(Theme.key_undo_cancelColor));
                this.undoButton.setVisibility(8);
                layoutParams.leftMargin = AndroidUtilities.dp(58.0f);
                layoutParams.rightMargin = AndroidUtilities.dp(8.0f);
                this.leftImageView.setProgress(0.0f);
                this.leftImageView.playAnimation();
                if (j > 0) {
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append((Object) this.infoTextView.getText());
                if (this.subinfoTextView.getVisibility() == 0) {
                }
                sb2.append(this.subinfoTextView.getVisibility() == 0 ? ". " + ((Object) this.subinfoTextView.getText()) : str);
                AndroidUtilities.makeAccessibilityAnnouncement(sb2.toString());
                if (isMultilineSubInfo()) {
                }
                if (getVisibility() != 0) {
                }
            } else if (i9 == 24 || i9 == 25) {
                int iIntValue8 = ((Integer) obj).intValue();
                TLRPC.User user7 = (TLRPC.User) obj2;
                this.undoImageView.setVisibility(8);
                this.leftImageView.setVisibility(0);
                LinkSpanDrawable.LinksTextView linksTextView6 = this.infoTextView;
                if (iIntValue8 != 0) {
                    linksTextView6.setTypeface(AndroidUtilities.bold());
                    this.infoTextView.setTextSize(1, 14.0f);
                    this.leftImageView.clearLayerColors();
                    RLottieImageView rLottieImageView3 = this.leftImageView;
                    int i20 = Theme.key_undo_infoColor;
                    rLottieImageView3.setLayerColor("BODY", getThemedColor(i20));
                    this.leftImageView.setLayerColor("Wibe Big", getThemedColor(i20));
                    this.leftImageView.setLayerColor("Wibe Big 3", getThemedColor(i20));
                    this.leftImageView.setLayerColor("Wibe Small", getThemedColor(i20));
                    this.infoTextView.setText(LocaleController.getString(C2665R.string.ProximityAlertSet));
                    this.leftImageView.setAnimation(C2665R.raw.ic_unmute, 28, 28);
                    this.subinfoTextView.setVisibility(0);
                    this.subinfoTextView.setSingleLine(false);
                    this.subinfoTextView.setMaxLines(3);
                    TextView textView = this.subinfoTextView;
                    if (user7 != null) {
                        textView.setText(LocaleController.formatString("ProximityAlertSetInfoUser", C2665R.string.ProximityAlertSetInfoUser, UserObject.getFirstName(user7), LocaleController.formatDistance(iIntValue8, 2)));
                    } else {
                        textView.setText(LocaleController.formatString("ProximityAlertSetInfoGroup2", C2665R.string.ProximityAlertSetInfoGroup2, LocaleController.formatDistance(iIntValue8, 2)));
                    }
                    this.undoButton.setVisibility(8);
                    layoutParams.topMargin = AndroidUtilities.dp(6.0f);
                } else {
                    linksTextView6.setTypeface(Typeface.DEFAULT);
                    this.infoTextView.setTextSize(1, 15.0f);
                    this.leftImageView.clearLayerColors();
                    RLottieImageView rLottieImageView4 = this.leftImageView;
                    int i21 = Theme.key_undo_infoColor;
                    rLottieImageView4.setLayerColor("Body Main", getThemedColor(i21));
                    this.leftImageView.setLayerColor("Body Top", getThemedColor(i21));
                    this.leftImageView.setLayerColor("Line", getThemedColor(i21));
                    this.leftImageView.setLayerColor("Curve Big", getThemedColor(i21));
                    this.leftImageView.setLayerColor("Curve Small", getThemedColor(i21));
                    layoutParams.topMargin = AndroidUtilities.dp(14.0f);
                    this.infoTextView.setText(LocaleController.getString(C2665R.string.ProximityAlertCancelled));
                    this.leftImageView.setAnimation(C2665R.raw.ic_mute, 28, 28);
                    this.subinfoTextView.setVisibility(8);
                    this.undoTextView.setTextColor(getThemedColor(Theme.key_undo_cancelColor));
                    this.undoButton.setVisibility(0);
                }
                layoutParams.leftMargin = AndroidUtilities.dp(58.0f);
                this.leftImageView.setProgress(0.0f);
                this.leftImageView.playAnimation();
            } else if (i9 == 11) {
                this.infoTextView.setText(LocaleController.getString(C2665R.string.AuthAnotherClientOk));
                this.leftImageView.setAnimation(C2665R.raw.contact_check, 36, 36);
                layoutParams.leftMargin = AndroidUtilities.dp(58.0f);
                layoutParams.topMargin = AndroidUtilities.dp(6.0f);
                this.subinfoTextView.setText(((TLRPC.TL_authorization) obj).app_name);
                this.subinfoTextView.setVisibility(0);
                this.infoTextView.setTextSize(1, 14.0f);
                this.infoTextView.setTypeface(AndroidUtilities.bold());
                this.undoTextView.setTextColor(getThemedColor(Theme.key_text_RedRegular));
                this.undoImageView.setVisibility(8);
                this.undoButton.setVisibility(0);
                this.leftImageView.setVisibility(0);
                this.leftImageView.setProgress(0.0f);
                this.leftImageView.playAnimation();
            } else if (i9 == 15) {
                this.timeLeft = NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS;
                this.undoTextView.setText(LocaleController.getString(C2665R.string.Open));
                this.infoTextView.setText(LocaleController.getString(C2665R.string.FilterAvailableTitle));
                this.leftImageView.setAnimation(C2665R.raw.filter_new, 36, 36);
                int iCeil = ((int) Math.ceil(this.undoTextView.getPaint().measureText(this.undoTextView.getText().toString()))) + AndroidUtilities.dp(26.0f);
                layoutParams.leftMargin = AndroidUtilities.dp(58.0f);
                layoutParams.rightMargin = iCeil;
                layoutParams.topMargin = AndroidUtilities.dp(6.0f);
                ((FrameLayout.LayoutParams) this.subinfoTextView.getLayoutParams()).rightMargin = iCeil;
                String string3 = LocaleController.getString(C2665R.string.FilterAvailableText);
                SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(string3);
                int iIndexOf2 = string3.indexOf(42);
                int iLastIndexOf2 = string3.lastIndexOf(42);
                if (iIndexOf2 >= 0 && iLastIndexOf2 >= 0 && iIndexOf2 != iLastIndexOf2) {
                    spannableStringBuilder2.replace(iLastIndexOf2, iLastIndexOf2 + 1, (CharSequence) str);
                    spannableStringBuilder2.replace(iIndexOf2, iIndexOf2 + 1, (CharSequence) str);
                    spannableStringBuilder2.setSpan(new URLSpanNoUnderline("tg://settings/folders"), iIndexOf2, iLastIndexOf2 - 1, 33);
                }
                this.subinfoTextView.setText(spannableStringBuilder2);
                this.subinfoTextView.setVisibility(0);
                this.subinfoTextView.setSingleLine(false);
                this.subinfoTextView.setMaxLines(2);
                this.undoButton.setVisibility(0);
                this.undoImageView.setVisibility(8);
                this.leftImageView.setVisibility(0);
                this.leftImageView.setProgress(0.0f);
                this.leftImageView.playAnimation();
            } else if (i9 == 16 || i9 == 17) {
                this.timeLeft = 4000L;
                this.infoTextView.setTextSize(1, 14.0f);
                this.infoTextView.setGravity(16);
                this.infoTextView.setMinHeight(AndroidUtilities.dp(30.0f));
                String str3 = (String) obj;
                if ("🎲".equals(str3)) {
                    this.infoTextView.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2665R.string.DiceInfo2)));
                    this.leftImageView.setImageResource(C2665R.drawable.dice);
                } else {
                    if ("🎯".equals(str3)) {
                        this.infoTextView.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2665R.string.DartInfo)));
                    } else {
                        String serverString = LocaleController.getServerString("DiceEmojiInfo_" + str3);
                        boolean zIsEmpty = TextUtils.isEmpty(serverString);
                        LinkSpanDrawable.LinksTextView linksTextView7 = this.infoTextView;
                        if (!zIsEmpty) {
                            linksTextView7.setText(Emoji.replaceEmoji(serverString, linksTextView7.getPaint().getFontMetricsInt(), false));
                        } else {
                            linksTextView7.setText(Emoji.replaceEmoji(LocaleController.formatString("DiceEmojiInfo", C2665R.string.DiceEmojiInfo, str3), this.infoTextView.getPaint().getFontMetricsInt(), false));
                        }
                    }
                    this.leftImageView.setImageDrawable(Emoji.getEmojiDrawable(str3));
                    this.leftImageView.setScaleType(ImageView.ScaleType.FIT_XY);
                    layoutParams.topMargin = AndroidUtilities.dp(14.0f);
                    layoutParams.bottomMargin = AndroidUtilities.dp(14.0f);
                    layoutParams2.leftMargin = AndroidUtilities.dp(14.0f);
                    layoutParams2.width = AndroidUtilities.dp(26.0f);
                    layoutParams2.height = AndroidUtilities.dp(26.0f);
                }
                this.undoTextView.setText(LocaleController.getString(C2665R.string.SendDice));
                if (this.currentAction == 16) {
                    iDp = ((int) Math.ceil(this.undoTextView.getPaint().measureText(this.undoTextView.getText().toString()))) + AndroidUtilities.dp(26.0f);
                    this.undoTextView.setVisibility(0);
                    this.undoTextView.setTextColor(getThemedColor(Theme.key_undo_cancelColor));
                    this.undoImageView.setVisibility(8);
                    this.undoButton.setVisibility(0);
                } else {
                    iDp = AndroidUtilities.dp(8.0f);
                    this.undoTextView.setVisibility(8);
                    this.undoButton.setVisibility(8);
                }
                layoutParams.leftMargin = AndroidUtilities.dp(58.0f);
                layoutParams.rightMargin = iDp;
                layoutParams.topMargin = AndroidUtilities.dp(6.0f);
                layoutParams.bottomMargin = AndroidUtilities.dp(7.0f);
                layoutParams.height = -1;
                this.subinfoTextView.setVisibility(8);
                this.leftImageView.setVisibility(0);
            } else if (i9 == 18) {
                this.timeLeft = Math.max(4000, Math.min((r0.length() / 50) * 1600, 10000));
                this.infoTextView.setTextSize(1, 14.0f);
                this.infoTextView.setGravity(16);
                this.infoTextView.setText((CharSequence) obj);
                this.undoTextView.setVisibility(8);
                this.undoButton.setVisibility(8);
                layoutParams.leftMargin = AndroidUtilities.dp(58.0f);
                layoutParams.rightMargin = AndroidUtilities.dp(8.0f);
                layoutParams.topMargin = AndroidUtilities.dp(6.0f);
                layoutParams.bottomMargin = AndroidUtilities.dp(7.0f);
                layoutParams.height = -1;
                layoutParams2.gravity = 51;
                int iDp3 = AndroidUtilities.dp(8.0f);
                layoutParams2.bottomMargin = iDp3;
                layoutParams2.topMargin = iDp3;
                this.leftImageView.setVisibility(0);
                this.leftImageView.setAnimation(C2665R.raw.chats_infotip, 36, 36);
                this.leftImageView.setProgress(0.0f);
                this.leftImageView.playAnimation();
                this.infoTextView.setMovementMethod(new AndroidUtilities.LinkMovementMethodMy());
            } else if (i9 == 12) {
                this.infoTextView.setText(LocaleController.getString(C2665R.string.ColorThemeChanged));
                this.leftImageView.setImageResource(C2665R.drawable.toast_pallete);
                layoutParams.leftMargin = AndroidUtilities.dp(58.0f);
                layoutParams.rightMargin = AndroidUtilities.dp(48.0f);
                layoutParams.topMargin = AndroidUtilities.dp(6.0f);
                ((FrameLayout.LayoutParams) this.subinfoTextView.getLayoutParams()).rightMargin = AndroidUtilities.dp(48.0f);
                String string4 = LocaleController.getString(C2665R.string.ColorThemeChangedInfo);
                SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder(string4);
                int iIndexOf3 = string4.indexOf(42);
                int iLastIndexOf3 = string4.lastIndexOf(42);
                if (iIndexOf3 >= 0 && iLastIndexOf3 >= 0 && iIndexOf3 != iLastIndexOf3) {
                    spannableStringBuilder3.replace(iLastIndexOf3, iLastIndexOf3 + 1, (CharSequence) str);
                    spannableStringBuilder3.replace(iIndexOf3, iIndexOf3 + 1, (CharSequence) str);
                    spannableStringBuilder3.setSpan(new URLSpanNoUnderline("tg://settings/themes"), iIndexOf3, iLastIndexOf3 - 1, 33);
                }
                this.subinfoTextView.setText(spannableStringBuilder3);
                this.subinfoTextView.setVisibility(0);
                this.subinfoTextView.setSingleLine(false);
                this.subinfoTextView.setMaxLines(2);
                this.undoTextView.setVisibility(8);
                this.undoButton.setVisibility(0);
                this.leftImageView.setVisibility(0);
            } else if (i9 == 84) {
                this.infoTextView.setVisibility(0);
                this.infoTextView.setTextSize(1, 15.0f);
                this.infoTextView.setTypeface(Typeface.DEFAULT);
                this.infoTextView.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2665R.string.UnlockPremiumTranscriptionHint)));
                this.leftImageView.setVisibility(0);
                this.leftImageView.setAnimation(C2665R.raw.voice_to_text, 36, 36);
                this.leftImageView.setProgress(0.0f);
                this.leftImageView.playAnimation();
                this.undoTextView.setText(LocaleController.getString(C2665R.string.PremiumMore));
                layoutParams.leftMargin = AndroidUtilities.dp(58.0f);
                layoutParams.rightMargin = ((int) Math.ceil(this.undoTextView.getPaint().measureText(this.undoTextView.getText().toString()))) + AndroidUtilities.dp(26.0f);
                int iDp4 = AndroidUtilities.dp(6.0f);
                layoutParams.bottomMargin = iDp4;
                layoutParams.topMargin = iDp4;
                layoutParams.height = -2;
                this.avatarImageView.setVisibility(8);
                this.subinfoTextView.setVisibility(8);
                this.undoTextView.setVisibility(0);
                this.undoButton.setVisibility(0);
                this.undoImageView.setVisibility(8);
            } else if (i9 == 85) {
                this.infoTextView.setVisibility(0);
                this.infoTextView.setTextSize(1, 15.0f);
                this.infoTextView.setTypeface(AndroidUtilities.bold());
                this.infoTextView.setText(LocaleController.getString(C2665R.string.SwipeToReplyHint));
                this.leftImageView.setVisibility(0);
                this.leftImageView.setAnimation(C2665R.raw.hint_swipe_reply, 64, 64);
                this.leftImageView.setProgress(0.0f);
                this.leftImageView.playAnimation();
                this.subinfoTextView.setVisibility(0);
                this.subinfoTextView.setText(LocaleController.getString(C2665R.string.SwipeToReplyHintMessage));
                layoutParams.leftMargin = AndroidUtilities.dp(58.0f);
                layoutParams.rightMargin = ((int) Math.ceil(this.undoTextView.getPaint().measureText(this.undoTextView.getText().toString()))) + AndroidUtilities.dp(26.0f);
                layoutParams.topMargin = AndroidUtilities.dp(6.0f);
                layoutParams.height = -2;
                this.avatarImageView.setVisibility(8);
                this.undoButton.setVisibility(8);
            } else if (i9 == 90 || i9 == 91 || i9 == 92 || i9 == 93 || i9 == 94) {
                switch (i9) {
                    case 90:
                        this.infoTextView.setText(LocaleController.formatPluralString("BoostingSelectUpToWarningChannelsGroupsPlural", (int) BoostRepository.giveawayAddPeersMax(), new Object[0]));
                        break;
                    case 91:
                        this.infoTextView.setText(LocaleController.getString(C2665R.string.BoostingSelectUpToWarningUsers));
                        break;
                    case 92:
                        this.infoTextView.setText(LocaleController.formatPluralString("BoostingSelectUpToWarningCountriesPlural", (int) BoostRepository.giveawayCountriesMax(), new Object[0]));
                        break;
                    case 93:
                        this.infoTextView.setText(AndroidUtilities.replaceTags(LocaleController.formatPluralString("BoostingWaitWarningPlural", BoostRepository.boostsPerSentGift(), new Object[0])));
                        break;
                    case 94:
                        this.infoTextView.setText(LocaleController.getString(C2665R.string.BoostingOnlyRecipientCode));
                        break;
                }
                layoutParams.leftMargin = AndroidUtilities.dp(58.0f);
                layoutParams.rightMargin = AndroidUtilities.dp(8.0f);
                this.infoTextView.setTextSize(1, 15.0f);
                this.undoButton.setVisibility(8);
                this.infoTextView.setTypeface(Typeface.DEFAULT);
                this.subinfoTextView.setVisibility(8);
                this.leftImageView.setVisibility(0);
                this.leftImageView.setAnimation(C2665R.raw.chats_infotip, 36, 36);
                this.leftImageView.setProgress(0.0f);
                this.leftImageView.playAnimation();
            } else if (i9 == 2 || i9 == 4) {
                LinkSpanDrawable.LinksTextView linksTextView8 = this.infoTextView;
                if (i == 2) {
                    linksTextView8.setText(LocaleController.getString(C2665R.string.ChatArchived));
                } else {
                    linksTextView8.setText(LocaleController.getString(C2665R.string.ChatsArchived));
                }
                layoutParams.leftMargin = AndroidUtilities.dp(58.0f);
                layoutParams.topMargin = AndroidUtilities.dp(13.0f);
                layoutParams.rightMargin = 0;
                this.infoTextView.setTextSize(1, 15.0f);
                this.undoButton.setVisibility(0);
                this.infoTextView.setTypeface(Typeface.DEFAULT);
                this.subinfoTextView.setVisibility(8);
                this.leftImageView.setVisibility(0);
                this.leftImageView.setAnimation(C2665R.raw.chats_archived, 36, 36);
                this.leftImageView.setProgress(0.0f);
                this.leftImageView.playAnimation();
            } else if (i == 82) {
                layoutParams.leftMargin = AndroidUtilities.dp(58.0f);
                MediaController.PhotoEntry photoEntry = (MediaController.PhotoEntry) obj;
                this.infoTextView.setText(LocaleController.getString(photoEntry.isVideo ? C2665R.string.AttachMediaVideoDeselected : C2665R.string.AttachMediaPhotoDeselected));
                this.undoButton.setVisibility(0);
                this.infoTextView.setTextSize(1, 15.0f);
                this.infoTextView.setTypeface(Typeface.DEFAULT);
                this.subinfoTextView.setVisibility(8);
                this.avatarImageView.setVisibility(0);
                this.avatarImageView.setRoundRadius(AndroidUtilities.dp(2.0f));
                String str4 = photoEntry.thumbPath;
                if (str4 != null) {
                    this.avatarImageView.setImage(str4, null, Theme.chat_attachEmptyDrawable);
                } else {
                    String str5 = photoEntry.path;
                    BackupImageView backupImageView = this.avatarImageView;
                    if (str5 != null) {
                        backupImageView.setOrientation(photoEntry.orientation, photoEntry.invert, true);
                        boolean z3 = photoEntry.isVideo;
                        BackupImageView backupImageView2 = this.avatarImageView;
                        if (z3) {
                            backupImageView2.setImage("vthumb://" + photoEntry.imageId + ":" + photoEntry.path, null, Theme.chat_attachEmptyDrawable);
                        } else {
                            backupImageView2.setImage("thumb://" + photoEntry.imageId + ":" + photoEntry.path, null, Theme.chat_attachEmptyDrawable);
                        }
                    } else {
                        backupImageView.setImageDrawable(Theme.chat_attachEmptyDrawable);
                    }
                }
            } else {
                layoutParams.leftMargin = AndroidUtilities.dp(45.0f);
                layoutParams.topMargin = AndroidUtilities.dp(13.0f);
                layoutParams.rightMargin = 0;
                this.infoTextView.setTextSize(1, 15.0f);
                this.undoButton.setVisibility(0);
                LinkSpanDrawable.LinksTextView linksTextView9 = this.infoTextView;
                Typeface typeface = Typeface.DEFAULT;
                linksTextView9.setTypeface(typeface);
                this.subinfoTextView.setVisibility(8);
                this.leftImageView.setVisibility(8);
                int i22 = this.currentAction;
                if (i22 == 88) {
                    String str6 = (String) obj;
                    int iIntValue9 = ((Integer) obj2).intValue();
                    if (iIntValue9 > 0) {
                        int iCeil2 = ((int) Math.ceil(this.undoTextView.getPaint().measureText(this.undoTextView.getText().toString()))) + AndroidUtilities.dp(26.0f);
                        layoutParams.leftMargin = AndroidUtilities.dp(48.0f);
                        layoutParams.rightMargin = iCeil2;
                        layoutParams.topMargin = AndroidUtilities.dp(6.0f);
                        FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) this.subinfoTextView.getLayoutParams();
                        layoutParams3.leftMargin = AndroidUtilities.dp(48.0f);
                        layoutParams3.rightMargin = iCeil2;
                        this.infoTextView.setText(LocaleController.formatString("FolderLinkDeletedTitle", C2665R.string.FolderLinkDeletedTitle, str6));
                        this.infoTextView.setTypeface(AndroidUtilities.bold());
                        this.subinfoTextView.setVisibility(0);
                        this.subinfoTextView.setText(LocaleController.formatPluralString("FolderLinkDeletedSubtitle", iIntValue9, new Object[0]));
                    } else {
                        this.infoTextView.setTypeface(typeface);
                        LinkSpanDrawable.LinksTextView linksTextView10 = this.infoTextView;
                        int i23 = C2665R.string.FolderLinkDeleted;
                        if (str6 == null) {
                            str6 = str;
                        }
                        linksTextView10.setText(AndroidUtilities.replaceTags(LocaleController.formatString("FolderLinkDeleted", i23, str6.replace('*', (char) 10033))));
                    }
                } else if (i22 == 81 || i22 == 0 || i22 == 26) {
                    this.infoTextView.setText(LocaleController.getString(C2665R.string.HistoryClearedUndo));
                } else if (i22 == 27) {
                    this.infoTextView.setText(LocaleController.getString(C2665R.string.ChatsDeletedUndo));
                } else if (i22 == 95) {
                    if (DialogObject.isChatDialog(jLongValue)) {
                        TLRPC.Chat chat6 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-jLongValue));
                        if (ChatObject.isMonoForum(chat6)) {
                            this.infoTextView.setText(LocaleController.getString(C2665R.string.MonoforumDeletedUndo));
                        } else if (ChatObject.isChannel(chat6) && !chat6.megagroup) {
                            this.infoTextView.setText(LocaleController.getString(C2665R.string.ChannelLeftUndo));
                        } else {
                            this.infoTextView.setText(LocaleController.getString(C2665R.string.GroupLeftUndo));
                        }
                    } else {
                        this.infoTextView.setText(LocaleController.getString(C2665R.string.ChatDeletedUndo));
                    }
                } else if (DialogObject.isChatDialog(jLongValue)) {
                    TLRPC.Chat chat7 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-jLongValue));
                    if (ChatObject.isMonoForum(chat7)) {
                        this.infoTextView.setText(LocaleController.getString(C2665R.string.MonoforumDeletedUndo));
                    } else if (ChatObject.isChannel(chat7) && !chat7.megagroup) {
                        this.infoTextView.setText(LocaleController.getString(C2665R.string.ChannelDeletedUndo));
                    } else {
                        this.infoTextView.setText(LocaleController.getString(C2665R.string.GroupDeletedUndo));
                    }
                } else {
                    this.infoTextView.setText(LocaleController.getString(C2665R.string.ChatDeletedUndo));
                }
                if (this.currentAction != 81) {
                    for (int i24 = 0; i24 < arrayList.size(); i24++) {
                        MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
                        long jLongValue2 = arrayList.get(i24).longValue();
                        int i25 = this.currentAction;
                        messagesController.addDialogAction(jLongValue2, i25 == 0 || i25 == 26);
                    }
                }
            }
        }
        z = false;
        f = 14.0f;
        StringBuilder sb22 = new StringBuilder();
        sb22.append((Object) this.infoTextView.getText());
        if (this.subinfoTextView.getVisibility() == 0) {
        }
        sb22.append(this.subinfoTextView.getVisibility() == 0 ? ". " + ((Object) this.subinfoTextView.getText()) : str);
        AndroidUtilities.makeAccessibilityAnnouncement(sb22.toString());
        if (isMultilineSubInfo()) {
        }
        if (getVisibility() != 0) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showWithAction$2(View view) {
        hide(false, 1);
    }

    public static /* synthetic */ boolean $r8$lambda$l8XtLSzZxmJyp89hFOLv7CHxCiE(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showWithAction$6(TLRPC.Message message, View view) {
        hide(true, 1);
        TLRPC.TL_payments_getPaymentReceipt tL_payments_getPaymentReceipt = new TLRPC.TL_payments_getPaymentReceipt();
        tL_payments_getPaymentReceipt.msg_id = message.id;
        tL_payments_getPaymentReceipt.peer = this.parentFragment.getMessagesController().getInputPeer(message.peer_id);
        this.parentFragment.getConnectionsManager().sendRequest(tL_payments_getPaymentReceipt, new RequestDelegate() { // from class: org.telegram.ui.Components.UndoView$$ExternalSyntheticLambda7
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$showWithAction$5(tLObject, tL_error);
            }
        }, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showWithAction$5(final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.UndoView$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showWithAction$4(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showWithAction$4(TLObject tLObject) {
        if (tLObject instanceof TLRPC.PaymentReceipt) {
            this.parentFragment.presentFragment(new PaymentFormActivity((TLRPC.PaymentReceipt) tLObject));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showWithAction$7(long j) {
        BaseFragment baseFragment = this.parentFragment;
        if (baseFragment != null) {
            baseFragment.presentFragment(ChatActivity.of(j));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showWithAction$8() {
        try {
            this.leftImageView.performHapticFeedback(3, 2);
        } catch (Exception unused) {
        }
    }

    public void setEnterOffsetMargin(int i) {
        this.enterOffsetMargin = i;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(this.undoViewHeight, TLObject.FLAG_30));
        this.backgroundDrawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        if (this.additionalTranslationY != 0.0f) {
            canvas.save();
            float measuredHeight = (getMeasuredHeight() - this.enterOffset) + AndroidUtilities.dp(9.0f);
            if (measuredHeight > 0.0f) {
                canvas.clipRect(0.0f, 0.0f, getMeasuredWidth(), measuredHeight);
                super.dispatchDraw(canvas);
            }
            canvas.restore();
            return;
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.additionalTranslationY != 0.0f) {
            canvas.save();
            float measuredHeight = (getMeasuredHeight() - this.enterOffset) + this.enterOffsetMargin + AndroidUtilities.dp(1.0f);
            if (measuredHeight > 0.0f) {
                canvas.clipRect(0.0f, 0.0f, getMeasuredWidth(), measuredHeight);
                super.dispatchDraw(canvas);
            }
            this.backgroundDrawable.draw(canvas);
            canvas.restore();
        } else {
            this.backgroundDrawable.draw(canvas);
        }
        int i = this.currentAction;
        if (i == 1 || i == 95 || i == 0 || i == 27 || i == 26 || i == 81 || i == 88) {
            int iCeil = this.timeLeft > 0 ? (int) Math.ceil(r6 / 1000.0f) : 0;
            if (this.prevSeconds != iCeil) {
                this.prevSeconds = iCeil;
                this.timeLeftString = String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(Math.max(1, iCeil)));
                StaticLayout staticLayout = this.timeLayout;
                if (staticLayout != null) {
                    this.timeLayoutOut = staticLayout;
                    this.timeReplaceProgress = 0.0f;
                    this.textWidthOut = this.textWidth;
                }
                this.textWidth = (int) Math.ceil(this.textPaint.measureText(r0));
                this.timeLayout = new StaticLayout(this.timeLeftString, this.textPaint, Integer.MAX_VALUE, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
            }
            float f = this.timeReplaceProgress;
            if (f < 1.0f) {
                float f2 = f + 0.10666667f;
                this.timeReplaceProgress = f2;
                if (f2 > 1.0f) {
                    this.timeReplaceProgress = 1.0f;
                } else {
                    invalidate();
                }
            }
            int alpha = this.textPaint.getAlpha();
            if (this.timeLayoutOut != null) {
                float f3 = this.timeReplaceProgress;
                if (f3 < 1.0f) {
                    this.textPaint.setAlpha((int) (alpha * (1.0f - f3)));
                    canvas.save();
                    canvas.translate(this.rect.centerX() - (this.textWidth / 2), AndroidUtilities.dp(17.2f) + (AndroidUtilities.dp(10.0f) * this.timeReplaceProgress));
                    this.timeLayoutOut.draw(canvas);
                    this.textPaint.setAlpha(alpha);
                    canvas.restore();
                }
            }
            if (this.timeLayout != null) {
                float f4 = this.timeReplaceProgress;
                if (f4 != 1.0f) {
                    this.textPaint.setAlpha((int) (alpha * f4));
                }
                canvas.save();
                canvas.translate(this.rect.centerX() - (this.textWidth / 2), AndroidUtilities.dp(17.2f) - (AndroidUtilities.dp(10.0f) * (1.0f - this.timeReplaceProgress)));
                this.timeLayout.draw(canvas);
                if (this.timeReplaceProgress != 1.0f) {
                    this.textPaint.setAlpha(alpha);
                }
                canvas.restore();
            }
            canvas.drawArc(this.rect, -90.0f, (this.timeLeft / 5000.0f) * (-360.0f), false, this.progressPaint);
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j = this.timeLeft - (jElapsedRealtime - this.lastUpdateTime);
        this.timeLeft = j;
        this.lastUpdateTime = jElapsedRealtime;
        if (j <= 0) {
            hide(true, this.hideAnimationType);
        }
        if (this.currentAction != 82) {
            invalidate();
        }
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        this.infoTextView.invalidate();
        this.leftImageView.invalidate();
    }

    public void setInfoText(CharSequence charSequence) {
        this.infoText = charSequence;
    }

    public void setHideAnimationType(int i) {
        this.hideAnimationType = i;
    }

    @Keep
    public float getEnterOffset() {
        return this.enterOffset;
    }

    @Keep
    public void setEnterOffset(float f) {
        if (this.enterOffset != f) {
            this.enterOffset = f;
            updatePosition();
        }
    }

    private void updatePosition() {
        setTranslationY(((this.enterOffset - this.enterOffsetMargin) + AndroidUtilities.dp(8.0f)) - this.additionalTranslationY);
        invalidate();
    }

    @Override // android.view.View
    public Drawable getBackground() {
        return this.backgroundDrawable;
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }
}
