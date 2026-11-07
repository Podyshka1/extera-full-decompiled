package org.telegram.ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.text.Layout;
import android.text.TextUtils;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.FloatValueHolder;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import com.exteragram.messenger.ExteraConfig;
import java.util.Objects;
import kotlin.jvm.internal.LongCompanionObject;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_account;
import org.telegram.ui.ActionBar.SimpleTextView;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedFloat;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.CheckBox2;
import org.telegram.ui.Components.CheckBoxBase;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.Forum.ForumUtilities;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.Premium.PremiumGradient;
import org.telegram.ui.Components.RLottieDrawable;
import org.telegram.ui.Components.Text;
import org.telegram.ui.Stars.StarsIntroActivity;

/* JADX INFO: loaded from: classes7.dex */
public class ShareDialogCell extends FrameLayout implements NotificationCenter.NotificationCenterDelegate {
    private final AvatarDrawable avatarDrawable;
    private final CheckBox2 checkBox;
    private final int currentAccount;
    private long currentDialog;
    private final int currentType;
    private final BackupImageView imageView;
    private long lastUpdateTime;
    private Drawable lockDrawable;
    private final TextView nameTextView;
    private float onlineProgress;
    private boolean premiumBlocked;
    private final AnimatedFloat premiumBlockedT;
    private PremiumGradient.PremiumGradientTools premiumGradient;
    private final Paint priceBackgroundPaint;
    private Text priceText;
    private long priceTextValue;
    private RepostStoryDrawable repostStoryDrawable;
    public final Theme.ResourcesProvider resourcesProvider;
    private final AnimatedFloat starsBlockedT;
    private long starsPriceBlocked;
    private final SimpleTextView topicTextView;
    private boolean topicWasVisible;
    private TLRPC.User user;

    public boolean isBlocked() {
        return this.premiumBlocked;
    }

    public long getStarsPrice() {
        return this.starsPriceBlocked;
    }

    public BackupImageView getImageView() {
        return this.imageView;
    }

    public ShareDialogCell(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.currentAccount = UserConfig.selectedAccount;
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.premiumBlockedT = new AnimatedFloat(this, 0L, 350L, cubicBezierInterpolator);
        this.starsBlockedT = new AnimatedFloat(this, 0L, 350L, cubicBezierInterpolator);
        this.priceBackgroundPaint = new Paint();
        this.resourcesProvider = resourcesProvider;
        this.avatarDrawable = new AvatarDrawable(resourcesProvider) { // from class: org.telegram.ui.Cells.ShareDialogCell.1
            @Override // android.graphics.drawable.Drawable
            public void invalidateSelf() {
                super.invalidateSelf();
                ShareDialogCell.this.imageView.invalidate();
            }
        };
        setWillNotDraw(false);
        this.currentType = i;
        BackupImageView backupImageView = new BackupImageView(context);
        this.imageView = backupImageView;
        if (i == 2) {
            backupImageView.setRoundRadius(ExteraConfig.getAvatarCorners(48.0f));
            addView(backupImageView, LayoutHelper.createFrame(48, 48.0f, 49, 0.0f, 7.0f, 0.0f, 0.0f));
        } else {
            backupImageView.setRoundRadius(ExteraConfig.getAvatarCorners(56.0f));
            addView(backupImageView, LayoutHelper.createFrame(56, 56.0f, 49, 0.0f, 7.0f, 0.0f, 0.0f));
        }
        TextView textView = new TextView(context) { // from class: org.telegram.ui.Cells.ShareDialogCell.2
            @Override // android.widget.TextView
            public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
                super.setText(Emoji.replaceEmoji(charSequence, getPaint().getFontMetricsInt(), false), bufferType);
            }
        };
        this.nameTextView = textView;
        NotificationCenter.listenEmojiLoading(textView);
        textView.setTextColor(getThemedColor(this.premiumBlocked ? Theme.key_windowBackgroundWhiteGrayText5 : Theme.key_dialogTextBlack));
        textView.setTextSize(1, 12.0f);
        textView.setMaxLines(2);
        textView.setGravity(49);
        textView.setLines(2);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        addView(textView, LayoutHelper.createFrame(-1, -2.0f, 51, 6.0f, i == 2 ? 58.0f : 66.0f, 6.0f, 0.0f));
        SimpleTextView simpleTextView = new SimpleTextView(context);
        this.topicTextView = simpleTextView;
        simpleTextView.setTextColor(getThemedColor(Theme.key_dialogTextBlack));
        simpleTextView.setTextSize(12);
        simpleTextView.setMaxLines(2);
        simpleTextView.setGravity(49);
        simpleTextView.setAlignment(Layout.Alignment.ALIGN_CENTER);
        addView(simpleTextView, LayoutHelper.createFrame(-1, -2.0f, 51, 6.0f, i == 2 ? 58.0f : 66.0f, 6.0f, 0.0f));
        CheckBox2 checkBox2 = new CheckBox2(context, 21, resourcesProvider);
        this.checkBox = checkBox2;
        checkBox2.setColor(Theme.key_dialogRoundCheckBox, Theme.key_dialogBackground, Theme.key_dialogRoundCheckBoxCheck);
        checkBox2.setDrawUnchecked(false);
        checkBox2.setDrawBackgroundAsArc(4);
        checkBox2.setProgressDelegate(new CheckBoxBase.ProgressDelegate() { // from class: org.telegram.ui.Cells.ShareDialogCell$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.Components.CheckBoxBase.ProgressDelegate
            public final void setProgress(float f) {
                this.f$0.lambda$new$0(f);
            }
        });
        addView(checkBox2, LayoutHelper.createFrame(24, 24.0f, 49, 19.0f, i == 2 ? -40.0f : 42.0f, 0.0f, 0.0f));
        setBackground(Theme.createRadSelectorDrawable(Theme.getColor(Theme.key_listSelector, resourcesProvider), AndroidUtilities.dp(2.0f), AndroidUtilities.dp(2.0f)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(float f) {
        float progress = 1.0f - (this.checkBox.getProgress() * 0.143f);
        this.imageView.setScaleX(progress);
        this.imageView.setScaleY(progress);
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.userIsPremiumBlockedUpadted);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.userIsPremiumBlockedUpadted);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.userIsPremiumBlockedUpadted) {
            TL_account.RequirementToContact requirementToContactIsUserContactBlocked = this.user != null ? MessagesController.getInstance(this.currentAccount).isUserContactBlocked(this.user.id) : null;
            long sendPaidMessagesStars = this.currentDialog < 0 ? MessagesController.getInstance(this.currentAccount).getSendPaidMessagesStars(this.currentDialog) : DialogObject.getMessagesStarsPrice(requirementToContactIsUserContactBlocked);
            if (this.premiumBlocked == DialogObject.isPremiumBlocked(requirementToContactIsUserContactBlocked) && this.starsPriceBlocked == sendPaidMessagesStars) {
                return;
            }
            boolean zIsPremiumBlocked = DialogObject.isPremiumBlocked(requirementToContactIsUserContactBlocked);
            this.premiumBlocked = zIsPremiumBlocked;
            this.starsPriceBlocked = sendPaidMessagesStars;
            this.nameTextView.setTextColor(getThemedColor(zIsPremiumBlocked ? Theme.key_windowBackgroundWhiteGrayText5 : Theme.key_dialogTextBlack));
            invalidate();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(this.currentType == 2 ? 95.0f : 103.0f), TLObject.FLAG_30));
    }

    public String repostToCustomName() {
        return LocaleController.getString(C2807R.string.FwdMyStory);
    }

    public void setDialog(long j, boolean z, CharSequence charSequence) {
        this.avatarDrawable.setScaleSize(1.0f);
        boolean z2 = true;
        if (j == LongCompanionObject.MAX_VALUE) {
            this.nameTextView.setText(repostToCustomName());
            if (this.repostStoryDrawable == null) {
                this.repostStoryDrawable = new RepostStoryDrawable(getContext(), (View) this.imageView, true, this.resourcesProvider);
            }
            this.imageView.setImage((ImageLocation) null, (String) null, this.repostStoryDrawable, (Object) null);
        } else if (DialogObject.isUserDialog(j)) {
            this.user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(j));
            TL_account.RequirementToContact requirementToContactIsUserContactBlocked = MessagesController.getInstance(this.currentAccount).isUserContactBlocked(j);
            this.premiumBlocked = DialogObject.isPremiumBlocked(requirementToContactIsUserContactBlocked);
            this.starsPriceBlocked = DialogObject.getMessagesStarsPrice(requirementToContactIsUserContactBlocked);
            this.nameTextView.setTextColor(getThemedColor(this.premiumBlocked ? Theme.key_windowBackgroundWhiteGrayText5 : Theme.key_dialogTextBlack));
            this.premiumBlockedT.force(this.premiumBlocked);
            this.starsBlockedT.force(this.starsPriceBlocked > 0);
            invalidate();
            this.avatarDrawable.setInfo(this.currentAccount, this.user);
            if (this.currentType != 2 && UserObject.isReplyUser(this.user)) {
                this.nameTextView.setText(LocaleController.getString(C2807R.string.RepliesTitle));
                this.avatarDrawable.setAvatarType(12);
                this.imageView.setImage((ImageLocation) null, (String) null, this.avatarDrawable, this.user);
            } else if (this.currentType != 2 && UserObject.isUserSelf(this.user)) {
                this.nameTextView.setText(LocaleController.getString(C2807R.string.SavedMessages));
                this.avatarDrawable.setAvatarType(1);
                this.imageView.setImage((ImageLocation) null, (String) null, this.avatarDrawable, this.user);
            } else {
                if (charSequence != null) {
                    this.nameTextView.setText(charSequence);
                } else {
                    TLRPC.User user = this.user;
                    TextView textView = this.nameTextView;
                    if (user != null) {
                        textView.setText(ContactsController.formatName(user.first_name, user.last_name));
                    } else {
                        textView.setText(_UrlKt.FRAGMENT_ENCODE_SET);
                    }
                }
                this.imageView.setForUserOrChat(this.user, this.avatarDrawable);
            }
            this.imageView.setRoundRadius(ExteraConfig.getAvatarCorners(56.0f));
        } else {
            this.user = null;
            this.premiumBlocked = false;
            this.premiumBlockedT.force(0.0f);
            this.starsPriceBlocked = MessagesController.getInstance(this.currentAccount).getSendPaidMessagesStars(j);
            this.starsBlockedT.force(false);
            TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-j));
            if (charSequence != null) {
                this.nameTextView.setText(charSequence);
            } else if (chat != null) {
                boolean z3 = chat.monoforum;
                TextView textView2 = this.nameTextView;
                if (z3) {
                    textView2.setText(ForumUtilities.getMonoForumTitle(this.currentAccount, chat));
                } else {
                    textView2.setText(chat.title);
                }
            } else {
                this.nameTextView.setText(_UrlKt.FRAGMENT_ENCODE_SET);
            }
            if (ChatObject.isMonoForum(chat)) {
                ForumUtilities.setMonoForumAvatar(this.currentAccount, chat, this.avatarDrawable, this.imageView);
            } else {
                this.avatarDrawable.setInfo(this.currentAccount, chat);
                this.imageView.setForUserOrChat(chat, this.avatarDrawable);
            }
            BackupImageView backupImageView = this.imageView;
            if (chat == null || (!chat.forum && !chat.monoforum)) {
                z2 = false;
            }
            backupImageView.setRoundRadius(ExteraConfig.getAvatarCorners(56.0f, false, z2));
        }
        this.currentDialog = j;
        this.checkBox.setChecked(z, false);
    }

    public long getCurrentDialog() {
        return this.currentDialog;
    }

    public void setChecked(boolean z, boolean z2) {
        this.checkBox.setChecked(z, z2);
        if (z) {
            return;
        }
        setTopic(null, true);
    }

    public void setTopic(TLRPC.TL_forumTopic tL_forumTopic, boolean z) {
        setTopic(tL_forumTopic, false, z);
    }

    public void setTopic(TLRPC.TL_forumTopic tL_forumTopic, boolean z, boolean z2) {
        boolean z3 = this.topicWasVisible;
        boolean z4 = tL_forumTopic != null;
        if (z3 == z4 && z2) {
            return;
        }
        SpringAnimation springAnimation = (SpringAnimation) this.topicTextView.getTag(C2807R.id.spring_tag);
        if (springAnimation != null) {
            springAnimation.cancel();
        }
        if (z4) {
            SimpleTextView simpleTextView = this.topicTextView;
            if (z) {
                simpleTextView.setText(MessagesController.getInstance(this.currentAccount).getPeerName(DialogObject.getPeerDialogId(tL_forumTopic.from_id)));
            } else {
                simpleTextView.setText(ForumUtilities.getTopicSpannedName(tL_forumTopic, simpleTextView.getTextPaint(), false));
            }
            this.topicTextView.requestLayout();
        }
        if (z2) {
            SpringAnimation springAnimationAddEndListener = new SpringAnimation(new FloatValueHolder(z4 ? 0.0f : 1000.0f)).setSpring(new SpringForce(z4 ? 1000.0f : 0.0f).setStiffness(1500.0f).setDampingRatio(1.0f)).addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: org.telegram.ui.Cells.ShareDialogCell$$ExternalSyntheticLambda1
                @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
                public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f, float f2) {
                    this.f$0.lambda$setTopic$1(dynamicAnimation, f, f2);
                }
            }).addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: org.telegram.ui.Cells.ShareDialogCell$$ExternalSyntheticLambda2
                @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
                public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z5, float f, float f2) {
                    this.f$0.lambda$setTopic$2(dynamicAnimation, z5, f, f2);
                }
            });
            this.topicTextView.setTag(C2807R.id.spring_tag, springAnimationAddEndListener);
            springAnimationAddEndListener.start();
        } else {
            SimpleTextView simpleTextView2 = this.topicTextView;
            if (z4) {
                simpleTextView2.setAlpha(1.0f);
                this.nameTextView.setAlpha(0.0f);
                this.topicTextView.setTranslationX(0.0f);
                this.nameTextView.setTranslationX(AndroidUtilities.dp(10.0f));
            } else {
                simpleTextView2.setAlpha(0.0f);
                this.nameTextView.setAlpha(1.0f);
                this.topicTextView.setTranslationX(-AndroidUtilities.dp(10.0f));
                this.nameTextView.setTranslationX(0.0f);
            }
        }
        this.topicWasVisible = z4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setTopic$1(DynamicAnimation dynamicAnimation, float f, float f2) {
        float f3 = f / 1000.0f;
        this.topicTextView.setAlpha(f3);
        float f4 = 1.0f - f3;
        this.nameTextView.setAlpha(f4);
        this.topicTextView.setTranslationX(f4 * (-AndroidUtilities.dp(10.0f)));
        this.nameTextView.setTranslationX(f3 * AndroidUtilities.dp(10.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setTopic$2(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
        this.topicTextView.setTag(C2807R.id.spring_tag, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x028d  */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean drawChild(Canvas canvas, View view, long j) {
        TLRPC.User user;
        float f;
        TLRPC.UserStatus userStatus;
        Text text;
        boolean zDrawChild = super.drawChild(canvas, view, j);
        if (view == this.imageView && this.currentType != 2 && (user = this.user) != null && !MessagesController.isSupportUser(user)) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j2 = jElapsedRealtime - this.lastUpdateTime;
            long j3 = j2 <= 17 ? j2 : 17L;
            this.lastUpdateTime = jElapsedRealtime;
            float f2 = this.starsBlockedT.set(this.starsPriceBlocked > 0);
            if (f2 > 0.0f) {
                float left = this.imageView.getLeft() + (this.imageView.getMeasuredWidth() / 2.0f) + AndroidUtilities.dp(18.0f);
                float top = (this.imageView.getTop() + (this.imageView.getMeasuredHeight() / 2.0f)) - AndroidUtilities.dp(20.83f);
                if (this.priceText != null) {
                    long j4 = this.priceTextValue;
                    f = 0.0f;
                    long j5 = this.starsPriceBlocked;
                    if (j4 != j5 && j5 > 0) {
                    }
                    Text text2 = this.priceText;
                    float currentWidth = (text2 != null ? f : text2.getCurrentWidth()) + AndroidUtilities.dp(10.0f);
                    float fDp = AndroidUtilities.dp(14.33f);
                    RectF rectF = AndroidUtilities.rectTmp;
                    float f3 = currentWidth / 2.0f;
                    float f4 = left - f3;
                    float f5 = fDp / 2.0f;
                    rectF.set(f4, top - f5, left + f3, f5 + top);
                    rectF.inset(-AndroidUtilities.dp(1.33f), AndroidUtilities.dp(-1.33f));
                    this.priceBackgroundPaint.setColor(getThemedColor(Theme.key_dialogBackground));
                    canvas.drawRoundRect(rectF, rectF.height() / 2.0f, rectF.height() / 2.0f, this.priceBackgroundPaint);
                    rectF.inset(AndroidUtilities.dp(1.33f), AndroidUtilities.dp(1.33f));
                    this.priceBackgroundPaint.setColor(getThemedColor(Theme.key_dialogRoundCheckBox));
                    canvas.drawRoundRect(rectF, rectF.height() / 2.0f, rectF.height() / 2.0f, this.priceBackgroundPaint);
                    text = this.priceText;
                    if (text != null) {
                        text.draw(canvas, AndroidUtilities.dp(5.0f) + f4, top, -1, 1.0f);
                    }
                } else {
                    f = 0.0f;
                }
                StringBuilder sb = new StringBuilder("⭐️");
                long j6 = this.starsPriceBlocked;
                this.priceTextValue = j6;
                sb.append(AndroidUtilities.formatWholeNumber((int) j6, 0));
                this.priceText = new Text(StarsIntroActivity.replaceStars(sb.toString(), 0.65f), 9.33f, AndroidUtilities.bold());
                Text text22 = this.priceText;
                float currentWidth2 = (text22 != null ? f : text22.getCurrentWidth()) + AndroidUtilities.dp(10.0f);
                float fDp2 = AndroidUtilities.dp(14.33f);
                RectF rectF2 = AndroidUtilities.rectTmp;
                float f32 = currentWidth2 / 2.0f;
                float f42 = left - f32;
                float f52 = fDp2 / 2.0f;
                rectF2.set(f42, top - f52, left + f32, f52 + top);
                rectF2.inset(-AndroidUtilities.dp(1.33f), AndroidUtilities.dp(-1.33f));
                this.priceBackgroundPaint.setColor(getThemedColor(Theme.key_dialogBackground));
                canvas.drawRoundRect(rectF2, rectF2.height() / 2.0f, rectF2.height() / 2.0f, this.priceBackgroundPaint);
                rectF2.inset(AndroidUtilities.dp(1.33f), AndroidUtilities.dp(1.33f));
                this.priceBackgroundPaint.setColor(getThemedColor(Theme.key_dialogRoundCheckBox));
                canvas.drawRoundRect(rectF2, rectF2.height() / 2.0f, rectF2.height() / 2.0f, this.priceBackgroundPaint);
                text = this.priceText;
                if (text != null) {
                }
            } else {
                f = 0.0f;
            }
            float f6 = this.premiumBlockedT.set(this.premiumBlocked);
            if (f6 > f) {
                int bottom = this.imageView.getBottom() - AndroidUtilities.dp(9.0f);
                int right = this.imageView.getRight() - AndroidUtilities.dp(9.33f);
                canvas.save();
                Theme.dialogs_onlineCirclePaint.setColor(getThemedColor(Theme.key_windowBackgroundWhite));
                float f7 = right;
                float f8 = bottom;
                canvas.drawCircle(f7, f8, AndroidUtilities.dp(12.0f) * f6, Theme.dialogs_onlineCirclePaint);
                if (this.premiumGradient == null) {
                    this.premiumGradient = new PremiumGradient.PremiumGradientTools(Theme.key_premiumGradient1, Theme.key_premiumGradient2, -1, -1, -1, this.resourcesProvider);
                }
                this.premiumGradient.gradientMatrix(right - AndroidUtilities.dp(10.0f), bottom - AndroidUtilities.dp(10.0f), right + AndroidUtilities.dp(10.0f), bottom + AndroidUtilities.dp(10.0f), 0.0f, 0.0f);
                canvas.drawCircle(f7, f8, AndroidUtilities.dp(10.0f) * f6, this.premiumGradient.paint);
                if (this.lockDrawable == null) {
                    Drawable drawableMutate = getContext().getResources().getDrawable(C2807R.drawable.msg_mini_lock2).mutate();
                    this.lockDrawable = drawableMutate;
                    drawableMutate.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
                }
                this.lockDrawable.setBounds((int) (f7 - (((r3.getIntrinsicWidth() / 2.0f) * 0.875f) * f6)), (int) (f8 - (((this.lockDrawable.getIntrinsicHeight() / 2.0f) * 0.875f) * f6)), (int) (f7 + ((this.lockDrawable.getIntrinsicWidth() / 2.0f) * 0.875f * f6)), (int) (f8 + ((this.lockDrawable.getIntrinsicHeight() / 2.0f) * 0.875f * f6)));
                this.lockDrawable.setAlpha((int) (255.0f * f6));
                this.lockDrawable.draw(canvas);
                canvas.restore();
            }
            if (!this.premiumBlocked) {
                TLRPC.User user2 = this.user;
                boolean z = (user2.self || user2.bot || (((userStatus = user2.status) == null || userStatus.expires <= ConnectionsManager.getInstance(this.currentAccount).getCurrentTime()) && !MessagesController.getInstance(this.currentAccount).onlinePrivacy.containsKey(Long.valueOf(this.user.id)))) ? false : true;
                if (z || this.onlineProgress != f) {
                    float width = (this.imageView.getWidth() / 2.0f) * this.imageView.getScaleX();
                    float x = this.imageView.getX() + (this.imageView.getWidth() / 2.0f);
                    float f9 = x + width;
                    float f10 = x - width;
                    float y = this.imageView.getY() + (this.imageView.getHeight() / 2.0f) + width;
                    float onlineDotOuterRadius = ExteraConfig.getOnlineDotOuterRadius();
                    float onlineDotInnerRadius = ExteraConfig.getOnlineDotInnerRadius();
                    float onlineDotOffset = ExteraConfig.getOnlineDotOffset(AndroidUtilities.dp(10.0f), onlineDotOuterRadius);
                    float onlineDotOffset2 = ExteraConfig.getOnlineDotOffset(AndroidUtilities.dp(6.0f), onlineDotOuterRadius);
                    float f11 = LocaleController.isRTL ? f10 + onlineDotOffset : f9 - onlineDotOffset;
                    float f12 = y - onlineDotOffset2;
                    float f13 = this.onlineProgress * (1.0f - f6) * (1.0f - f2);
                    Theme.dialogs_onlineCirclePaint.setColor(getThemedColor(Theme.key_windowBackgroundWhite));
                    canvas.drawCircle(f11, f12, onlineDotOuterRadius * f13, Theme.dialogs_onlineCirclePaint);
                    Theme.dialogs_onlineCirclePaint.setColor(getThemedColor(Theme.key_chats_onlineCircle));
                    canvas.drawCircle(f11, f12, onlineDotInnerRadius * f13, Theme.dialogs_onlineCirclePaint);
                    float f14 = this.onlineProgress;
                    if (z) {
                        if (f14 < 1.0f) {
                            float f15 = f14 + (j3 / 150.0f);
                            this.onlineProgress = f15;
                            if (f15 > 1.0f) {
                                this.onlineProgress = 1.0f;
                            }
                            this.imageView.invalidate();
                            invalidate();
                            return zDrawChild;
                        }
                    } else if (f14 > f) {
                        float f16 = f14 - (j3 / 150.0f);
                        this.onlineProgress = f16;
                        if (f16 < f) {
                            this.onlineProgress = f;
                        }
                        this.imageView.invalidate();
                        invalidate();
                    }
                }
            }
        }
        return zDrawChild;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int left = this.imageView.getLeft() + (this.imageView.getMeasuredWidth() / 2);
        int top = this.imageView.getTop() + (this.imageView.getMeasuredHeight() / 2);
        Theme.checkboxSquare_checkPaint.setColor(getThemedColor(Theme.key_dialogRoundCheckBox));
        Theme.checkboxSquare_checkPaint.setAlpha((int) (this.checkBox.getProgress() * 255.0f));
        int iDp = AndroidUtilities.dp(this.currentType == 2 ? 24.0f : 28.0f);
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(left - iDp, top - iDp, left + iDp, top + iDp);
        canvas.drawRoundRect(rectF, this.imageView.getRoundRadius()[0] + AndroidUtilities.dp(2.0f), this.imageView.getRoundRadius()[0] + AndroidUtilities.dp(2.0f), Theme.checkboxSquare_checkPaint);
        super.onDraw(canvas);
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (this.checkBox.isChecked()) {
            accessibilityNodeInfo.setSelected(true);
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public static class RepostStoryDrawable extends Drawable {
        int alpha;
        private final Drawable drawable;
        private final LinearGradient gradient;
        private final RLottieDrawable lottieDrawable;
        private final Paint paint;

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -2;
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }

        public RepostStoryDrawable(Context context, View view, boolean z, Theme.ResourcesProvider resourcesProvider) {
            this(context, view, z, C2807R.drawable.large_repost_story, resourcesProvider);
        }

        public RepostStoryDrawable(Context context, View view, int i, Theme.ResourcesProvider resourcesProvider) {
            this(context, view, false, i, resourcesProvider);
        }

        public RepostStoryDrawable(Context context, View view, boolean z, int i, Theme.ResourcesProvider resourcesProvider) {
            Paint paint = new Paint(1);
            this.paint = paint;
            this.alpha = 255;
            boolean zIsCurrentThemeMonet = Theme.isCurrentThemeMonet();
            LinearGradient linearGradient = new LinearGradient(0.0f, 0.0f, AndroidUtilities.dp(56.0f), AndroidUtilities.dp(56.0f), new int[]{Theme.getColor(zIsCurrentThemeMonet ? Theme.key_featuredStickers_addButton : Theme.key_stories_circle1, resourcesProvider), Theme.getColor(zIsCurrentThemeMonet ? Theme.key_featuredStickers_addButton : Theme.key_stories_circle2, resourcesProvider)}, new float[]{0.0f, 1.0f}, Shader.TileMode.CLAMP);
            this.gradient = linearGradient;
            paint.setShader(linearGradient);
            int color = zIsCurrentThemeMonet ? Theme.getColor(Theme.key_featuredStickers_buttonText, resourcesProvider) : -1;
            if (z) {
                RLottieDrawable rLottieDrawable = new RLottieDrawable(C2807R.raw.story_repost, AndroidUtilities.dp(42.0f), AndroidUtilities.dp(42.0f), true, null);
                this.lottieDrawable = rLottieDrawable;
                rLottieDrawable.setMasterParent(view);
                if (zIsCurrentThemeMonet) {
                    rLottieDrawable.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
                }
                Objects.requireNonNull(rLottieDrawable);
                AndroidUtilities.runOnUIThread(new ShareDialogCell$RepostStoryDrawable$$ExternalSyntheticLambda0(rLottieDrawable), 450L);
                this.drawable = null;
                return;
            }
            this.lottieDrawable = null;
            Drawable drawableMutate = context.getResources().getDrawable(i).mutate();
            this.drawable = drawableMutate;
            drawableMutate.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            canvas.save();
            canvas.translate(getBounds().left, getBounds().top);
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(0.0f, 0.0f, getBounds().width(), getBounds().height());
            this.paint.setAlpha(this.alpha);
            float avatarCorners = ExteraConfig.getAvatarCorners(getBounds().width(), true);
            canvas.drawRoundRect(rectF, avatarCorners, avatarCorners, this.paint);
            canvas.restore();
            int iDp = AndroidUtilities.dp(this.lottieDrawable != null ? 20.0f : 15.0f);
            Rect rect = AndroidUtilities.rectTmp2;
            rect.set(getBounds().centerX() - iDp, getBounds().centerY() - iDp, getBounds().centerX() + iDp, getBounds().centerY() + iDp);
            Drawable drawable = this.lottieDrawable;
            if (drawable == null) {
                drawable = this.drawable;
            }
            if (drawable != null) {
                drawable.setBounds(rect);
                drawable.setAlpha(this.alpha);
                drawable.draw(canvas);
            }
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            this.alpha = i;
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicWidth() {
            return AndroidUtilities.dp(56.0f);
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicHeight() {
            return AndroidUtilities.dp(56.0f);
        }
    }
}
