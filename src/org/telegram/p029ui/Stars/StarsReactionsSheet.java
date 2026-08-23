package org.telegram.p029ui.Stars;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.transition.ChangeBounds;
import android.transition.TransitionManager;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import com.exteragram.messenger.ExteraConfig;
import com.google.zxing.common.detector.MathUtils;
import de.robv.android.xposed.callbacks.XCallback;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import me.vkryl.android.animator.BoolAnimator;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.p029ui.AccountFrozenAlert;
import org.telegram.p029ui.ActionBar.ActionBar;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.BottomSheet;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.ChatActionCell;
import org.telegram.p029ui.Cells.ChatMessageCell;
import org.telegram.p029ui.ChatActivity;
import org.telegram.p029ui.Components.AnimatedFloat;
import org.telegram.p029ui.Components.AnimatedTextView;
import org.telegram.p029ui.Components.AvatarDrawable;
import org.telegram.p029ui.Components.BackupImageView;
import org.telegram.p029ui.Components.BatchParticlesDrawHelper;
import org.telegram.p029ui.Components.ButtonBounce;
import org.telegram.p029ui.Components.CheckBox2;
import org.telegram.p029ui.Components.ColoredImageSpan;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.ItemOptions;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.LinkSpanDrawable;
import org.telegram.p029ui.Components.Premium.GLIcon.GLIconRenderer;
import org.telegram.p029ui.Components.Premium.GLIcon.GLIconTextureView;
import org.telegram.p029ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.p029ui.Components.ScaleStateListAnimator;
import org.telegram.p029ui.Components.Text;
import org.telegram.p029ui.Components.TextHelper;
import org.telegram.p029ui.LaunchActivity;
import org.telegram.p029ui.ProfileActivity;
import org.telegram.p029ui.Stars.StarsController;
import org.telegram.p029ui.Stars.StarsIntroActivity;
import org.telegram.p029ui.Stars.StarsReactionsSheet;
import org.telegram.p029ui.Stories.HighlightMessageSheet;
import org.telegram.p029ui.Stories.LiveCommentsView;
import org.telegram.p029ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_stars;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes7.dex */
public class StarsReactionsSheet extends BottomSheet implements NotificationCenter.NotificationCenterDelegate {
    private final BalanceCloud balanceCloud;
    private final ButtonWithCounterView buttonView;
    private ChatActivity chatActivity;
    private final CheckBox2 checkBox;
    private final LinearLayout checkLayout;
    private final View checkSeparatorView;
    private final TextView checkTextView;
    private boolean checkedVisiblity;
    private final ImageView closeView;
    private LiveCommentsView.Message commentMessage;
    private LiveCommentsView.LiveCommentView commentView;
    private LiveCommentsView commentsView;
    private final int currentAccount;
    private final BackupImageView dialogImageView;
    private final ImageView dialogSelectorIconView;
    private final FrameLayout dialogSelectorInnerLayout;
    private final FrameLayout dialogSelectorLayout;
    private final GLIconTextureView icon3dView;
    private ValueAnimator iconAnimator;
    public long lastSelectedPeer;
    private final LinearLayout layout;
    private final boolean liveStories;
    private View messageCell;
    private int messageId;
    private final MessageObject messageObject;
    private Utilities.Callback2Return onSendListener;
    public long peer;
    private final ArrayList reactors;
    private final Theme.ResourcesProvider resourcesProvider;
    private final boolean sendEnabled;
    private boolean sending;
    private int sentMessageId;
    private final View separatorView;
    private final StarsSlider slider;
    private final ColoredImageSpan[] starRef;
    private final TextView statusView;
    private final TextView titleView;
    private final FrameLayout topLayout;
    private final TopSendersView topSendersView;
    private final LinearLayout toptopLayout;

    @Override // org.telegram.p029ui.ActionBar.BottomSheet
    protected void appendOpenAnimator(boolean z, ArrayList arrayList) {
        arrayList.add(ObjectAnimator.ofFloat(this.balanceCloud, (Property<BalanceCloud, Float>) View.ALPHA, z ? 1.0f : 0.0f));
        arrayList.add(ObjectAnimator.ofFloat(this.balanceCloud, (Property<BalanceCloud, Float>) View.SCALE_X, z ? 1.0f : 0.6f));
        arrayList.add(ObjectAnimator.ofFloat(this.balanceCloud, (Property<BalanceCloud, Float>) View.SCALE_Y, z ? 1.0f : 0.6f));
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet
    protected boolean isTouchOutside(float f, float f2) {
        if (f < this.balanceCloud.getX() || f > this.balanceCloud.getX() + this.balanceCloud.getWidth() || f2 < this.balanceCloud.getY() || f2 > this.balanceCloud.getY() + this.balanceCloud.getHeight()) {
            return super.isTouchOutside(f, f2);
        }
        return false;
    }

    public StarsReactionsSheet(final Context context, final int i, final long j, final ChatActivity chatActivity, final MessageObject messageObject, ArrayList arrayList, boolean z, final boolean z2, long j2, final Theme.ResourcesProvider resourcesProvider) {
        TLRPC.MessageReactor messageReactor;
        boolean z3;
        TLRPC.Chat chat;
        boolean z4;
        String string;
        final Context context2;
        int i2;
        long j3;
        int i3;
        super(context, false, resourcesProvider);
        this.starRef = new ColoredImageSpan[1];
        this.checkedVisiblity = false;
        this.resourcesProvider = resourcesProvider;
        this.currentAccount = i;
        this.messageObject = messageObject;
        this.reactors = arrayList;
        this.liveStories = z2;
        this.sendEnabled = z;
        BalanceCloud balanceCloud = new BalanceCloud(context, i, resourcesProvider);
        this.balanceCloud = balanceCloud;
        balanceCloud.setScaleX(0.6f);
        balanceCloud.setScaleY(0.6f);
        balanceCloud.setAlpha(0.0f);
        this.container.addView(balanceCloud, LayoutHelper.createFrame(-2, -2.0f, 49, 0.0f, 48.0f, 0.0f, 0.0f));
        ScaleStateListAnimator.apply(balanceCloud);
        balanceCloud.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarsReactionsSheet$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                new StarsIntroActivity.StarsOptionsSheet(context, resourcesProvider).show();
            }
        });
        long clientUserId = UserConfig.getInstance(i).getClientUserId();
        if (arrayList != null) {
            int size = arrayList.size();
            int i4 = 0;
            TLRPC.MessageReactor messageReactor2 = null;
            while (i4 < size) {
                Object obj = arrayList.get(i4);
                i4++;
                TLRPC.MessageReactor messageReactor3 = (TLRPC.MessageReactor) obj;
                long peerDialogId = DialogObject.getPeerDialogId(messageReactor3.peer_id);
                if (messageReactor3.anonymous && messageReactor3.f1688my) {
                    peerDialogId = clientUserId;
                }
                if (messageReactor3.f1688my || peerDialogId == clientUserId) {
                    messageReactor2 = messageReactor3;
                }
            }
            messageReactor = messageReactor2;
        } else {
            messageReactor = null;
        }
        boolean z5 = (arrayList == null || arrayList.isEmpty()) ? false : true;
        if (z2) {
            if (arrayList != null) {
                int i5 = 0;
                while (true) {
                    if (i5 >= arrayList.size()) {
                        break;
                    }
                    if (((TLRPC.MessageReactor) arrayList.get(i5)).f1688my) {
                        break;
                    }
                    i5++;
                }
            }
            this.peer = j2;
        } else {
            this.peer = StarsController.getInstance(i).getPaidReactionsDialogId(messageObject);
        }
        long j4 = this.peer;
        this.lastSelectedPeer = j4 != UserObject.ANONYMOUS ? j4 : clientUserId;
        fixNavigationBar(Theme.getColor(Theme.key_dialogBackground, resourcesProvider));
        LinearLayout linearLayout = new LinearLayout(context);
        this.layout = linearLayout;
        linearLayout.setOrientation(1);
        FrameLayout frameLayout = new FrameLayout(context);
        this.topLayout = frameLayout;
        linearLayout.addView(frameLayout, LayoutHelper.createLinear(-1, -2));
        this.slider = new StarsSlider(context, resourcesProvider) { // from class: org.telegram.ui.Stars.StarsReactionsSheet.1
            @Override // org.telegram.ui.Stars.StarsReactionsSheet.StarsSlider
            public void onValueChanged(int i6) {
                long j5 = i6;
                StarsReactionsSheet.this.updateSenders(j5);
                if (StarsReactionsSheet.this.buttonView != null) {
                    StarsReactionsSheet.this.buttonView.setText(StarsIntroActivity.replaceStars(LocaleController.formatString(C2888R.string.StarsReactionSend, LocaleController.formatNumber(j5, ',')), StarsReactionsSheet.this.starRef), true);
                }
                if (z2) {
                    StarsReactionsSheet.this.commentMessage.stars = j5;
                    StarsReactionsSheet.this.commentView.set(StarsReactionsSheet.this.commentMessage);
                    setColor(HighlightMessageSheet.getTierOption(i, i6, HighlightMessageSheet.TIER_COLOR1), HighlightMessageSheet.getTierOption(i, i6, HighlightMessageSheet.TIER_COLOR2), true);
                }
            }

            @Override // org.telegram.ui.Stars.StarsReactionsSheet.StarsSlider
            public void setValue(int i6) {
                super.setValue(i6);
                if (z2) {
                    setColor(HighlightMessageSheet.getTierOption(i, i6, HighlightMessageSheet.TIER_COLOR1), HighlightMessageSheet.getTierOption(i, i6, HighlightMessageSheet.TIER_COLOR2), true);
                }
            }
        };
        int i6 = 9;
        int[] iArr = {1, 50, 100, 500, MediaDataController.MAX_STYLE_RUNS_COUNT, 2000, 5000, 7500, XCallback.PRIORITY_HIGHEST};
        long j5 = MessagesController.getInstance(i).starsPaidReactionAmountMax;
        ArrayList arrayList2 = new ArrayList();
        int i7 = 0;
        while (true) {
            if (i7 >= i6) {
                z3 = z5;
                break;
            }
            int i8 = iArr[i7];
            z3 = z5;
            if (i8 > j5) {
                arrayList2.add(Integer.valueOf((int) j5));
                break;
            }
            arrayList2.add(Integer.valueOf(i8));
            if (iArr[i7] == j5) {
                break;
            }
            i7++;
            z5 = z3;
            i6 = 9;
        }
        int[] iArr2 = new int[arrayList2.size()];
        for (int i9 = 0; i9 < arrayList2.size(); i9++) {
            iArr2[i9] = ((Integer) arrayList2.get(i9)).intValue();
        }
        this.slider.setSteps(100, iArr2);
        if (z || z2) {
            if (!z) {
                this.slider.setAlpha(0.5f);
            }
            this.topLayout.addView(this.slider, LayoutHelper.createFrame(-1, -2.0f, 55, 0.0f, z2 ? -50.0f : 0.0f, 0.0f, (!z2 || z3) ? 0.0f : -40.0f));
        }
        LinearLayout linearLayout2 = new LinearLayout(context);
        this.toptopLayout = linearLayout2;
        linearLayout2.setOrientation(0);
        if (!z2) {
            this.topLayout.addView(linearLayout2, LayoutHelper.createFrame(-1, -2.0f, 55, 0.0f, 0.0f, 0.0f, 0.0f));
        }
        FrameLayout frameLayout2 = new FrameLayout(context);
        this.dialogSelectorLayout = frameLayout2;
        FrameLayout frameLayout3 = new FrameLayout(context);
        this.dialogSelectorInnerLayout = frameLayout3;
        frameLayout3.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m1124dp(14.0f), Theme.getColor(Theme.key_dialogBackgroundGray, resourcesProvider)));
        BackupImageView backupImageView = new BackupImageView(context);
        this.dialogImageView = backupImageView;
        backupImageView.setRoundRadius(AndroidUtilities.m1124dp(14.0f));
        backupImageView.getImageReceiver().setCrossfadeWithOldImage(true);
        updatePeerDialog();
        frameLayout3.addView(backupImageView, LayoutHelper.createFrame(28, 28, 115));
        ImageView imageView = new ImageView(context);
        this.dialogSelectorIconView = imageView;
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER;
        imageView.setScaleType(scaleType);
        int color = Theme.getColor(Theme.key_dialogTextGray3, resourcesProvider);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        imageView.setColorFilter(new PorterDuffColorFilter(color, mode));
        imageView.setImageResource(C2888R.drawable.arrows_select);
        frameLayout3.addView(imageView, LayoutHelper.createFrame(18, 18.0f, 21, 0.0f, 0.0f, 4.0f, 0.0f));
        frameLayout2.addView(frameLayout3, LayoutHelper.createFrame(52, 28, 17));
        frameLayout2.setPadding(AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(8.0f), 0);
        linearLayout2.addView(frameLayout2, LayoutHelper.createLinear(-2, -1, 0.0f, 115, 6, 4, 6, 0));
        ScaleStateListAnimator.apply(frameLayout2);
        BotStarsController.getInstance(i).loadAdminedChannels();
        TextView textView = new TextView(context) { // from class: org.telegram.ui.Stars.StarsReactionsSheet.2
            @Override // android.widget.TextView, android.view.View
            protected void onMeasure(int i10, int i11) {
                super.onMeasure(i10, View.MeasureSpec.makeMeasureSpec(ActionBar.getCurrentActionBarHeight(), TLObject.FLAG_30));
            }
        };
        this.titleView = textView;
        int i10 = Theme.key_windowBackgroundWhiteBlackText;
        textView.setTextColor(Theme.getColor(i10, resourcesProvider));
        textView.setTextSize(1, 20.0f);
        textView.setGravity(17);
        textView.setText(LocaleController.getString(C2888R.string.StarsReactionTitle2));
        textView.setTypeface(AndroidUtilities.bold());
        textView.setEllipsize(TextUtils.TruncateAt.END);
        linearLayout2.addView(textView, LayoutHelper.createLinear(-1, -2, 1.0f, 119, 2, 0, 2, 0));
        updateCanSwitchPeer(false);
        ImageView imageView2 = new ImageView(context);
        this.closeView = imageView2;
        imageView2.setScaleType(scaleType);
        imageView2.setImageResource(C2888R.drawable.ic_close_white);
        imageView2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_dialogEmptyImage, resourcesProvider), mode));
        ScaleStateListAnimator.apply(imageView2);
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarsReactionsSheet$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$1(view);
            }
        });
        linearLayout2.addView(imageView2, LayoutHelper.createLinear(48, 48, 0.0f, 53, 0, 6, 6, 0));
        LinearLayout linearLayout3 = new LinearLayout(context);
        linearLayout3.setOrientation(1);
        this.topLayout.addView(linearLayout3, LayoutHelper.createFrame(-1, -2.0f, 55, 0.0f, z2 ? 0.0f : z ? 179.0f : 45.0f, 0.0f, 15.0f));
        TLRPC.Chat chat2 = MessagesController.getInstance(i).getChat(Long.valueOf(-j));
        TextView textView2 = new TextView(context);
        this.statusView = textView2;
        textView2.setTextColor(Theme.getColor(i10, resourcesProvider));
        textView2.setTextSize(1, 14.0f);
        textView2.setGravity(17);
        textView2.setSingleLine(false);
        textView2.setMaxLines(3);
        if (messageReactor != null) {
            string = LocaleController.formatPluralStringComma("StarsReactionTextSent", messageReactor.count);
            chat = chat2;
            z4 = false;
        } else {
            chat = chat2;
            z4 = false;
            string = LocaleController.formatString(C2888R.string.StarsReactionText, chat2 == null ? _UrlKt.FRAGMENT_ENCODE_SET : chat2.title);
        }
        textView2.setText(Emoji.replaceEmoji(AndroidUtilities.replaceTags(string), textView2.getPaint().getFontMetricsInt(), z4));
        if (z && !z2) {
            linearLayout3.addView(textView2, LayoutHelper.createLinear(-1, -2, 55, 40, 0, 40, 0));
        }
        if (z3) {
            if (!z2) {
                View view = new View(context) { // from class: org.telegram.ui.Stars.StarsReactionsSheet.3
                    private final LinearGradient gradient = new LinearGradient(0.0f, 0.0f, 255.0f, 0.0f, new int[]{-1135603, -404714}, new float[]{0.0f, 1.0f}, Shader.TileMode.CLAMP);
                    private final Matrix gradientMatrix = new Matrix();
                    private final Paint backgroundPaint = new Paint(1);
                    private final Paint separatorPaint = new Paint(1);
                    private final Text text = new Text(LocaleController.getString(C2888R.string.StarsReactionTopSenders), 14.16f, AndroidUtilities.bold());

                    @Override // android.view.View
                    public void dispatchDraw(Canvas canvas) {
                        this.gradientMatrix.reset();
                        this.gradientMatrix.postTranslate(AndroidUtilities.m1124dp(14.0f), 0.0f);
                        this.gradientMatrix.postScale((getWidth() - AndroidUtilities.m1124dp(28.0f)) / 255.0f, 1.0f);
                        this.gradient.setLocalMatrix(this.gradientMatrix);
                        this.backgroundPaint.setShader(this.gradient);
                        float currentWidth = this.text.getCurrentWidth() + AndroidUtilities.m1124dp(30.0f);
                        this.separatorPaint.setColor(Theme.getColor(Theme.key_divider, resourcesProvider));
                        canvas.drawRect(AndroidUtilities.m1124dp(24.0f), (getHeight() / 2.0f) - 1.0f, ((getWidth() - currentWidth) / 2.0f) - AndroidUtilities.m1124dp(8.0f), getHeight() / 2.0f, this.separatorPaint);
                        canvas.drawRect(((getWidth() + currentWidth) / 2.0f) + AndroidUtilities.m1124dp(8.0f), (getHeight() / 2.0f) - 1.0f, getWidth() - AndroidUtilities.m1124dp(24.0f), getHeight() / 2.0f, this.separatorPaint);
                        RectF rectF = AndroidUtilities.rectTmp;
                        rectF.set((getWidth() - currentWidth) / 2.0f, 0.0f, (getWidth() + currentWidth) / 2.0f, getHeight());
                        canvas.drawRoundRect(rectF, getHeight() / 2.0f, getHeight() / 2.0f, this.backgroundPaint);
                        this.text.draw(canvas, (getWidth() - this.text.getCurrentWidth()) / 2.0f, getHeight() / 2.0f, -1, 1.0f);
                    }
                };
                this.separatorView = view;
                linearLayout3.addView(view, LayoutHelper.createLinear(-1, 30, 55, 0, 20, 0, 0));
            } else {
                this.separatorView = null;
            }
            TopSendersView topSendersView = new TopSendersView(context, z2);
            this.topSendersView = topSendersView;
            topSendersView.setOnSenderClickListener(new Utilities.Callback() { // from class: org.telegram.ui.Stars.StarsReactionsSheet$$ExternalSyntheticLambda3
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj2) {
                    this.f$0.lambda$new$2(i, z2, (Long) obj2);
                }
            });
            this.layout.addView(topSendersView, LayoutHelper.createLinear(-1, 110, 0.0f, z2 ? -50.0f : 0.0f, 0.0f, 0.0f));
            View view2 = new View(context);
            this.checkSeparatorView = view2;
            view2.setBackgroundColor(Theme.getColor(Theme.key_divider, resourcesProvider));
            if (!z2 && (z || messageReactor != null)) {
                this.layout.addView(view2, LayoutHelper.createLinear(-1, 1.0f / AndroidUtilities.density, 7, 24, 0, 24, 0));
            }
        } else {
            this.separatorView = null;
            this.topSendersView = null;
            this.checkSeparatorView = null;
        }
        if (z2) {
            int i11 = Theme.key_dialogTextBlack;
            TextView textViewMakeTextView = TextHelper.makeTextView(context, 20.0f, i11, true, resourcesProvider);
            textViewMakeTextView.setGravity(17);
            textViewMakeTextView.setText(LocaleController.getString(z ? C2888R.string.LiveStoryReactTitle : C2888R.string.LiveStoryReactAdminTitle));
            this.layout.addView(textViewMakeTextView, LayoutHelper.createLinear(-1, -2, 7, 32, 6, 32, 9));
            TextView textViewMakeTextView2 = TextHelper.makeTextView(context, 14.0f, i11, false, resourcesProvider);
            textViewMakeTextView2.setGravity(17);
            if (z) {
                i3 = C2888R.string.LiveStoryReactText;
            } else {
                i3 = z3 ? C2888R.string.LiveStoryReactAdminText : C2888R.string.LiveStoryReactAdminEmptyText;
            }
            textViewMakeTextView2.setText(AndroidUtilities.replaceTags(LocaleController.formatString(i3, DialogObject.getName(j))));
            this.layout.addView(textViewMakeTextView2, LayoutHelper.createLinear(-1, -2, 7, 32, 0, 32, 20));
        }
        if (z2) {
            LiveCommentsView.Message message = new LiveCommentsView.Message();
            this.commentMessage = message;
            message.dialogId = this.peer;
            message.stars = 50L;
            message.isReaction = true;
            LiveCommentsView.LiveCommentView liveCommentView = new LiveCommentsView.LiveCommentView(context, i, true);
            this.commentView = liveCommentView;
            liveCommentView.set(this.commentMessage);
            this.layout.addView(this.commentView, LayoutHelper.createLinear(-2, -2, 17, 32, 0, 32, 20));
        }
        CheckBox2 checkBox2 = new CheckBox2(context, 21, resourcesProvider);
        this.checkBox = checkBox2;
        checkBox2.setColor(Theme.key_radioBackgroundChecked, Theme.key_checkboxDisabled, Theme.key_checkboxCheck);
        checkBox2.setDrawUnchecked(true);
        checkBox2.setChecked(this.peer != UserObject.ANONYMOUS, false);
        TopSendersView topSendersView2 = this.topSendersView;
        if (topSendersView2 != null) {
            topSendersView2.setMyPrivacy(this.peer);
        }
        checkBox2.setDrawBackgroundAsArc(10);
        TextView textView3 = new TextView(context);
        this.checkTextView = textView3;
        textView3.setTextColor(Theme.getColor(i10, resourcesProvider));
        textView3.setTextSize(1, 14.0f);
        textView3.setText(LocaleController.getString(C2888R.string.StarsReactionShowMeInTopSenders));
        LinearLayout linearLayout4 = new LinearLayout(context);
        this.checkLayout = linearLayout4;
        linearLayout4.setOrientation(0);
        linearLayout4.setPadding(AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(8.0f));
        linearLayout4.addView(checkBox2, LayoutHelper.createLinear(21, 21, 16, 0, 0, 9, 0));
        linearLayout4.addView(textView3, LayoutHelper.createLinear(-2, -2, 16));
        linearLayout4.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarsReactionsSheet$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                this.f$0.lambda$new$3(view3);
            }
        });
        ScaleStateListAnimator.apply(linearLayout4, 0.05f, 1.2f);
        linearLayout4.setBackground(Theme.createRadSelectorDrawable(Theme.getColor(Theme.key_listSelector, resourcesProvider), 6, 6));
        if (!z2 && (z || messageReactor != null)) {
            this.layout.addView(linearLayout4, LayoutHelper.createLinear(-2, -2, 1, 0, z3 ? 10 : 4, 0, 10));
        }
        ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, resourcesProvider);
        this.buttonView = buttonWithCounterView;
        if (z || z2) {
            if (!z) {
                buttonWithCounterView.setAlpha(0.5f);
                buttonWithCounterView.setEnabled(false);
            }
            this.layout.addView(buttonWithCounterView, LayoutHelper.createLinear(-1, 48, 14.0f, 0.0f, 14.0f, 0.0f));
        }
        updateSenders(0L);
        buttonWithCounterView.setText(StarsIntroActivity.replaceStars(LocaleController.formatString(C2888R.string.StarsReactionSend, LocaleController.formatNumber(50L, ',')), this.starRef), true);
        if (z) {
            final TLRPC.Chat chat3 = chat;
            i2 = 17;
            j3 = 0;
            context2 = context;
            buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarsReactionsSheet$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    this.f$0.lambda$new$7(messageObject, chatActivity, i, z2, context, resourcesProvider, j, chat3, view3);
                }
            });
        } else {
            context2 = context;
            i2 = 17;
            j3 = 0;
        }
        frameLayout2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarsReactionsSheet$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                this.f$0.lambda$new$9(i, resourcesProvider, j, z2, view3);
            }
        });
        LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context2, resourcesProvider);
        linksTextView.setTextSize(1, 13.0f);
        linksTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider));
        if (z2 && !z) {
            linksTextView.setText(LocaleController.getString(C2888R.string.LiveStoryReactAdminCant));
        } else {
            linksTextView.setText(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2888R.string.StarsReactionTerms), new Runnable() { // from class: org.telegram.ui.Stars.StarsReactionsSheet$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    Browser.openUrl(context2, LocaleController.getString(C2888R.string.StarsReactionTermsLink));
                }
            }));
        }
        linksTextView.setGravity(i2);
        linksTextView.setLinkTextColor(getThemedColor(Theme.key_dialogTextLink));
        if (z || z2) {
            this.layout.addView(linksTextView, LayoutHelper.createLinear(-1, -2, 17, 14, 8, 14, 12));
        }
        setCustomView(this.layout);
        GLIconTextureView gLIconTextureView = new GLIconTextureView(context2, 1, 2) { // from class: org.telegram.ui.Stars.StarsReactionsSheet.6
            @Override // org.telegram.p029ui.Components.Premium.GLIcon.GLIconTextureView
            protected void startIdleAnimation() {
            }
        };
        this.icon3dView = gLIconTextureView;
        GLIconRenderer gLIconRenderer = gLIconTextureView.mRenderer;
        gLIconRenderer.colorKey1 = Theme.key_starsGradient1;
        gLIconRenderer.colorKey2 = Theme.key_starsGradient2;
        gLIconRenderer.updateColors();
        gLIconTextureView.mRenderer.white = 1.0f;
        gLIconTextureView.setVisibility(4);
        gLIconTextureView.setPaused(true);
        this.container.addView(gLIconTextureView, LayoutHelper.createFrame(150, 150.0f));
        this.slider.setValue(50);
        if (arrayList != null) {
            long j6 = j3;
            for (int i12 = 0; i12 < arrayList.size(); i12++) {
                long j7 = ((TLRPC.MessageReactor) arrayList.get(i12)).count;
                if (j7 > j6) {
                    j6 = j7;
                }
            }
            j6 = messageReactor != null ? j6 - ((long) messageReactor.count) : j6;
            if (j6 > j3) {
                this.slider.setStarsTop(j6 + 1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view) {
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(int i, final boolean z, Long l) {
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return;
        }
        if (l.longValue() >= 0) {
            Bundle bundle = new Bundle();
            bundle.putLong("user_id", l.longValue());
            if (l.longValue() == UserConfig.getInstance(i).getClientUserId()) {
                bundle.putBoolean("my_profile", true);
            }
            safeLastFragment.presentFragment(new ProfileActivity(bundle) { // from class: org.telegram.ui.Stars.StarsReactionsSheet.4
                @Override // org.telegram.p029ui.ProfileActivity, org.telegram.p029ui.ActionBar.BaseFragment
                public void onFragmentDestroy() {
                    super.onFragmentDestroy();
                    if (z) {
                        return;
                    }
                    StarsReactionsSheet.this.show();
                }
            });
            dismiss();
        } else {
            Bundle bundle2 = new Bundle();
            bundle2.putLong("chat_id", -l.longValue());
            safeLastFragment.presentFragment(new ChatActivity(bundle2) { // from class: org.telegram.ui.Stars.StarsReactionsSheet.5
                @Override // org.telegram.p029ui.ChatActivity, org.telegram.p029ui.ActionBar.BaseFragment
                public void onFragmentDestroy() {
                    super.onFragmentDestroy();
                    if (z) {
                        return;
                    }
                    StarsReactionsSheet.this.show();
                }
            });
        }
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(View view) {
        this.checkBox.setChecked(!r3.isChecked(), true);
        this.peer = this.checkBox.isChecked() ? this.lastSelectedPeer : UserObject.ANONYMOUS;
        updatePeerDialog();
        TopSendersView topSendersView = this.topSendersView;
        if (topSendersView != null) {
            topSendersView.setMyPrivacy(this.peer);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$7(final MessageObject messageObject, final ChatActivity chatActivity, int i, boolean z, Context context, Theme.ResourcesProvider resourcesProvider, long j, TLRPC.Chat chat, View view) {
        if (this.sending) {
            return;
        }
        final long value = this.slider.getValue();
        if (!(this.onSendListener == null && (messageObject == null || chatActivity == null)) && this.iconAnimator == null) {
            if (MessagesController.getInstance(i).isFrozen()) {
                AccountFrozenAlert.show(i);
                return;
            }
            final StarsController starsController = StarsController.getInstance(i);
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.Stars.StarsReactionsSheet$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$6(value, starsController, messageObject, chatActivity);
                }
            };
            if (!starsController.balanceAvailable() || starsController.getBalance().amount >= value) {
                runnable.run();
            } else if (z) {
                new StarsIntroActivity.StarsNeededSheet(context, resourcesProvider, value, 17, DialogObject.getShortName(i, j), runnable, 0L).show();
            } else {
                new StarsIntroActivity.StarsNeededSheet(context, resourcesProvider, value, 5, chat == null ? _UrlKt.FRAGMENT_ENCODE_SET : chat.title, runnable, 0L).show();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$6(long j, StarsController starsController, MessageObject messageObject, ChatActivity chatActivity) {
        Utilities.Callback2Return callback2Return = this.onSendListener;
        if (callback2Return != null) {
            int iIntValue = ((Integer) callback2Return.run(Long.valueOf(this.peer), Long.valueOf(j))).intValue();
            this.sentMessageId = iIntValue;
            if (iIntValue == Integer.MIN_VALUE) {
                dismiss();
                return;
            } else {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarsReactionsSheet$$ExternalSyntheticLambda11
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$new$4();
                    }
                });
                return;
            }
        }
        final StarsController.PendingPaidReactions pendingPaidReactionsSendPaidReaction = starsController.sendPaidReaction(messageObject, chatActivity, j, false, true, Long.valueOf(this.peer));
        if (pendingPaidReactionsSendPaidReaction == null) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarsReactionsSheet$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$5(pendingPaidReactionsSendPaidReaction);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4() {
        this.sending = true;
        animate3dIcon(null);
        AndroidUtilities.runOnUIThread(new StarsReactionsSheet$$ExternalSyntheticLambda14(this), 240L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5(final StarsController.PendingPaidReactions pendingPaidReactions) {
        this.sending = true;
        Objects.requireNonNull(pendingPaidReactions);
        animate3dIcon(new Runnable() { // from class: org.telegram.ui.Stars.StarsReactionsSheet$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                pendingPaidReactions.apply();
            }
        });
        AndroidUtilities.runOnUIThread(new StarsReactionsSheet$$ExternalSyntheticLambda14(this), 240L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$9(int i, Theme.ResourcesProvider resourcesProvider, long j, final boolean z, View view) {
        final long j2;
        ArrayList adminedChannels = BotStarsController.getInstance(i).getAdminedChannels();
        adminedChannels.add(0, UserConfig.getInstance(i).getCurrentUser());
        ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(this.containerView, resourcesProvider, this.dialogSelectorInnerLayout);
        int size = adminedChannels.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = adminedChannels.get(i2);
            i2++;
            TLObject tLObject = (TLObject) obj;
            if (tLObject instanceof TLRPC.User) {
                j2 = ((TLRPC.User) tLObject).f1825id;
            } else if (tLObject instanceof TLRPC.Chat) {
                TLRPC.Chat chat = (TLRPC.Chat) tLObject;
                if (ChatObject.isChannelAndNotMegaGroup(chat)) {
                    j2 = -chat.f1660id;
                }
            }
            if (j2 != j) {
                long j3 = this.peer;
                itemOptionsMakeOptions.addChat(tLObject, j2 == j3 || (j3 == 0 && j2 == UserConfig.getInstance(i).getClientUserId()), new Runnable() { // from class: org.telegram.ui.Stars.StarsReactionsSheet$$ExternalSyntheticLambda9
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$new$8(j2, z);
                    }
                });
            }
        }
        itemOptionsMakeOptions.setDrawScrim(false).setOnTopOfScrim().setDimAlpha(0).setGravity(5).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$8(long j, boolean z) {
        this.lastSelectedPeer = j;
        this.peer = j;
        if (z) {
            LiveCommentsView.Message message = this.commentMessage;
            message.dialogId = j;
            this.commentView.set(message);
        }
        updatePeerDialog();
        this.checkBox.setChecked(true, true);
        TopSendersView topSendersView = this.topSendersView;
        if (topSendersView != null) {
            topSendersView.setMyPrivacy(this.peer);
        }
    }

    public StarsReactionsSheet setLiveCommentsView(LiveCommentsView liveCommentsView) {
        this.commentsView = liveCommentsView;
        return this;
    }

    public StarsReactionsSheet setOnSend(Utilities.Callback2Return callback2Return) {
        this.onSendListener = callback2Return;
        return this;
    }

    private void updatePeerDialog() {
        AvatarDrawable avatarDrawable = new AvatarDrawable();
        avatarDrawable.setScaleSize(0.42f);
        long j = this.peer;
        if (j == UserObject.ANONYMOUS) {
            avatarDrawable.setAvatarType(21);
            int i = Theme.key_avatar_backgroundGray;
            avatarDrawable.setColor(Theme.getColor(i, this.resourcesProvider), Theme.getColor(i, this.resourcesProvider));
            this.dialogImageView.setForUserOrChat(null, avatarDrawable);
            return;
        }
        if (j >= 0) {
            TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.peer));
            avatarDrawable.setInfo(user);
            this.dialogImageView.setForUserOrChat(user, avatarDrawable);
        } else {
            TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-this.peer));
            avatarDrawable.setInfo(chat);
            this.dialogImageView.setForUserOrChat(chat, avatarDrawable);
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.adminedChannelsLoaded);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.adminedChannelsLoaded);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.adminedChannelsLoaded) {
            updateCanSwitchPeer(true);
        }
    }

    private boolean canSwitchPeer() {
        if (this.liveStories) {
            return false;
        }
        ArrayList adminedChannels = BotStarsController.getInstance(this.currentAccount).getAdminedChannels();
        int size = adminedChannels.size();
        int i = 0;
        while (i < size) {
            Object obj = adminedChannels.get(i);
            i++;
            if ((obj instanceof TLRPC.Chat) && ChatObject.isChannelAndNotMegaGroup((TLRPC.Chat) obj)) {
                return true;
            }
        }
        return false;
    }

    private void updateCanSwitchPeer(boolean z) {
        if ((this.dialogSelectorLayout.getVisibility() == 0) != canSwitchPeer()) {
            this.dialogSelectorLayout.setVisibility(canSwitchPeer() ? 0 : 8);
            if (z) {
                if (canSwitchPeer()) {
                    this.dialogSelectorLayout.setScaleX(0.4f);
                    this.dialogSelectorLayout.setScaleY(0.4f);
                    this.dialogSelectorLayout.setAlpha(0.0f);
                    this.dialogSelectorLayout.animate().alpha(1.0f).scaleX(1.0f).scaleY(1.0f).start();
                }
                ChangeBounds changeBounds = new ChangeBounds();
                changeBounds.setDuration(200L);
                TransitionManager.beginDelayedTransition(this.toptopLayout, changeBounds);
            }
        }
    }

    public void updateSenders(long j) {
        long j2;
        if ((!this.liveStories || this.sendEnabled || j <= 0) && this.topSendersView != null) {
            ArrayList arrayList = new ArrayList();
            long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
            long j3 = 0;
            if (this.reactors != null) {
                for (int i = 0; i < this.reactors.size(); i++) {
                    TLRPC.MessageReactor messageReactor = (TLRPC.MessageReactor) this.reactors.get(i);
                    long peerDialogId = DialogObject.getPeerDialogId(messageReactor.peer_id);
                    boolean z = messageReactor.anonymous;
                    if (!z) {
                        j2 = peerDialogId;
                    } else if (messageReactor.f1688my) {
                        j2 = clientUserId;
                    } else {
                        peerDialogId = (-i) - 1;
                        j2 = peerDialogId;
                    }
                    if (messageReactor.f1688my || j2 == clientUserId) {
                        j3 = messageReactor.count;
                    } else {
                        arrayList.add(SenderData.m1316of(z, false, j2, messageReactor.count));
                    }
                }
            }
            long j4 = j3 + j;
            if (j4 > 0) {
                arrayList.add(SenderData.m1316of(this.peer == UserObject.ANONYMOUS, true, clientUserId, j4));
            }
            Collections.sort(arrayList, new Comparator() { // from class: org.telegram.ui.Stars.StarsReactionsSheet$$ExternalSyntheticLambda8
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return StarsReactionsSheet.$r8$lambda$bCH_sQJJecgHsNrSQOp5eQYI_k8((StarsReactionsSheet.SenderData) obj, (StarsReactionsSheet.SenderData) obj2);
                }
            });
            this.topSendersView.setSenders(new ArrayList<>(arrayList.subList(0, Math.min(3, arrayList.size()))));
        }
    }

    public static /* synthetic */ int $r8$lambda$bCH_sQJJecgHsNrSQOp5eQYI_k8(SenderData senderData, SenderData senderData2) {
        return (int) (senderData2.stars - senderData.stars);
    }

    private void checkVisibility() {
        if (this.checkedVisiblity) {
            return;
        }
        this.checkedVisiblity = true;
        MessageObject messageObject = this.messageObject;
        if (messageObject == null) {
            return;
        }
        Long myPaidReactionPeer = messageObject.getMyPaidReactionPeer();
        if (myPaidReactionPeer == null || myPaidReactionPeer.longValue() != this.peer) {
            this.messageObject.setMyPaidReactionDialogId(this.peer);
            StarsController.MessageId messageIdFrom = StarsController.MessageId.from(this.messageObject);
            TLRPC.TL_messages_togglePaidReactionPrivacy tL_messages_togglePaidReactionPrivacy = new TLRPC.TL_messages_togglePaidReactionPrivacy();
            tL_messages_togglePaidReactionPrivacy.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(messageIdFrom.did);
            tL_messages_togglePaidReactionPrivacy.msg_id = messageIdFrom.mid;
            long j = this.peer;
            if (j == 0) {
                tL_messages_togglePaidReactionPrivacy.privacy = new TL_stars.paidReactionPrivacyDefault();
            } else if (j == UserObject.ANONYMOUS) {
                tL_messages_togglePaidReactionPrivacy.privacy = new TL_stars.paidReactionPrivacyAnonymous();
            } else {
                TL_stars.paidReactionPrivacyPeer paidreactionprivacypeer = new TL_stars.paidReactionPrivacyPeer();
                tL_messages_togglePaidReactionPrivacy.privacy = paidreactionprivacypeer;
                paidreactionprivacypeer.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.peer);
            }
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.starReactionAnonymousUpdate, Long.valueOf(messageIdFrom.did), Integer.valueOf(messageIdFrom.mid), Long.valueOf(this.peer));
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_togglePaidReactionPrivacy, new RequestDelegate() { // from class: org.telegram.ui.Stars.StarsReactionsSheet$$ExternalSyntheticLambda0
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$checkVisibility$12(tLObject, tL_error);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkVisibility$12(TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tLObject instanceof TLRPC.TL_boolTrue) {
            MessagesStorage.getInstance(this.currentAccount).putMessages(new ArrayList<>(Arrays.asList(this.messageObject.messageOwner)), true, true, true, 0, 0, 0L);
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    public void dismiss() {
        if (!this.sending) {
            checkVisibility();
        }
        super.dismiss();
    }

    public void setMessageCell(ChatActivity chatActivity, int i, View view) {
        this.chatActivity = chatActivity;
        this.messageId = i;
        this.messageCell = view;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x009a A[PHI: r0
  0x009a: PHI (r0v26 android.view.View) = (r0v25 android.view.View), (r0v25 android.view.View), (r0v28 android.view.View) binds: [B:16:0x003e, B:17:0x0040, B:36:0x0087] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:70:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void animate3dIcon(final Runnable runnable) {
        View view;
        final ReactionsLayoutInBubble reactionsLayoutInBubble;
        LiveCommentsView liveCommentsView;
        View view2;
        ReactionsLayoutInBubble reactionsLayoutInBubble2;
        ReactionsLayoutInBubble.ReactionButton reactionButton;
        ReactionsLayoutInBubble.ReactionButton reactionButton2 = null;
        MessageObject messageObject = null;
        if (this.messageObject == null || (view2 = this.chatActivity.fragmentView) == null || !view2.isAttachedToWindow()) {
            if (this.commentsView == null) {
                return;
            }
            view = null;
            reactionsLayoutInBubble = null;
        } else {
            View viewFindMessageCell = this.messageCell;
            if (viewFindMessageCell instanceof ChatMessageCell) {
                reactionsLayoutInBubble2 = ((ChatMessageCell) viewFindMessageCell).reactionsLayoutInBubble;
                reactionButton = reactionsLayoutInBubble2.getReactionButton(ReactionsLayoutInBubble.VisibleReaction.asStar());
            } else if (viewFindMessageCell instanceof ChatActionCell) {
                reactionsLayoutInBubble2 = ((ChatActionCell) viewFindMessageCell).reactionsLayoutInBubble;
                reactionButton = reactionsLayoutInBubble2.getReactionButton(ReactionsLayoutInBubble.VisibleReaction.asStar());
            } else {
                reactionsLayoutInBubble2 = null;
                reactionButton = null;
            }
            if (reactionButton != null || reactionsLayoutInBubble2 == null) {
                reactionButton2 = reactionButton;
                if (reactionButton2 != null) {
                    return;
                }
                reactionsLayoutInBubble = reactionsLayoutInBubble2;
                view = viewFindMessageCell;
            } else {
                MessageObject.GroupedMessages validGroupedMessage = this.chatActivity.getValidGroupedMessage(this.messageObject);
                if (validGroupedMessage != null && !validGroupedMessage.posArray.isEmpty()) {
                    ArrayList<MessageObject> arrayList = validGroupedMessage.messages;
                    int size = arrayList.size();
                    int i = 0;
                    while (true) {
                        if (i >= size) {
                            break;
                        }
                        MessageObject messageObject2 = arrayList.get(i);
                        i++;
                        MessageObject messageObject3 = messageObject2;
                        MessageObject.GroupedMessagePosition position = validGroupedMessage.getPosition(messageObject3);
                        if (position != null) {
                            int i2 = position.flags;
                            if ((i2 & 1) != 0 && (i2 & 8) != 0) {
                                messageObject = messageObject3;
                                break;
                            }
                        }
                    }
                    if (messageObject != null) {
                        viewFindMessageCell = this.chatActivity.findMessageCell(messageObject.getId(), false);
                    }
                }
                if (viewFindMessageCell == null) {
                    return;
                }
                if (viewFindMessageCell instanceof ChatMessageCell) {
                    ReactionsLayoutInBubble reactionsLayoutInBubble3 = ((ChatMessageCell) viewFindMessageCell).reactionsLayoutInBubble;
                    reactionsLayoutInBubble2 = reactionsLayoutInBubble3;
                    reactionButton2 = reactionsLayoutInBubble3.getReactionButton(ReactionsLayoutInBubble.VisibleReaction.asStar());
                }
                if (reactionButton2 != null) {
                }
            }
        }
        final View view3 = view;
        final int[] iArr = new int[2];
        final RectF rectF = new RectF();
        this.slider.getLocationInWindow(iArr);
        rectF.set(this.slider.counterImage.getBounds());
        rectF.inset(-AndroidUtilities.m1124dp(3.5f), -AndroidUtilities.m1124dp(3.5f));
        rectF.offset(iArr[0], iArr[1]);
        this.icon3dView.whenReady(new Runnable() { // from class: org.telegram.ui.Stars.StarsReactionsSheet$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$animate3dIcon$13();
            }
        });
        if (reactionButton2 != null) {
            reactionButton2.drawImage = false;
        }
        if (view3 != null) {
            view3.invalidate();
        }
        final LiveCommentsView.LiveCommentView[] liveCommentViewArr = new LiveCommentsView.LiveCommentView[1];
        if (this.liveStories && (liveCommentsView = this.commentsView) != null) {
            liveCommentViewArr[0] = liveCommentsView.findComment(this.sentMessageId);
        }
        final ReactionsLayoutInBubble.ReactionButton reactionButton3 = reactionButton2;
        final RectF rectF2 = new RectF();
        final Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Stars.StarsReactionsSheet$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$animate3dIcon$14(liveCommentViewArr, iArr, rectF2, view3, reactionsLayoutInBubble, reactionButton3);
            }
        };
        runnable2.run();
        this.icon3dView.setPaused(false);
        this.icon3dView.setVisibility(0);
        final RectF rectF3 = new RectF();
        rectF3.set(rectF);
        this.icon3dView.setTranslationX(rectF3.centerX() - (AndroidUtilities.m1124dp(150.0f) / 2.0f));
        this.icon3dView.setTranslationY(rectF3.centerY() - (AndroidUtilities.m1124dp(150.0f) / 2.0f));
        this.icon3dView.setScaleX(rectF3.width() / AndroidUtilities.m1124dp(150.0f));
        this.icon3dView.setScaleY(rectF3.height() / AndroidUtilities.m1124dp(150.0f));
        ValueAnimator valueAnimator = this.iconAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        final boolean[] zArr = new boolean[1];
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.iconAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stars.StarsReactionsSheet$$ExternalSyntheticLambda17
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$animate3dIcon$15(runnable2, rectF, rectF2, rectF3, zArr, runnable, valueAnimator2);
            }
        });
        this.iconAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stars.StarsReactionsSheet.7
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                StarsReactionsSheet.this.icon3dView.setVisibility(4);
                StarsReactionsSheet.this.icon3dView.setPaused(true);
                ReactionsLayoutInBubble.ReactionButton reactionButton4 = reactionButton3;
                if (reactionButton4 != null) {
                    reactionButton4.drawImage = true;
                }
                View view4 = view3;
                if (view4 != null) {
                    view4.invalidate();
                }
                LiveCommentsView.LiveCommentView liveCommentView = liveCommentViewArr[0];
                if (liveCommentView != null) {
                    liveCommentView.setDrawStar(true);
                }
                StarsReactionsSheet.super.dismissInternal();
                boolean[] zArr2 = zArr;
                if (!zArr2[0]) {
                    zArr2[0] = true;
                    LaunchActivity.makeRipple(rectF2.centerX(), rectF2.centerY(), 1.5f);
                    try {
                        StarsReactionsSheet.this.container.performHapticFeedback(0, 1);
                    } catch (Exception unused) {
                    }
                    Runnable runnable3 = runnable;
                    if (runnable3 != null) {
                        runnable3.run();
                    }
                }
                LaunchActivity launchActivity = LaunchActivity.instance;
                if (launchActivity == null || launchActivity.getFireworksOverlay() == null) {
                    return;
                }
                LaunchActivity.instance.getFireworksOverlay().start(true);
            }
        });
        this.iconAnimator.setDuration(800L);
        this.iconAnimator.setInterpolator(new Interpolator() { // from class: org.telegram.ui.Stars.StarsReactionsSheet.8
            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                return (float) Math.pow(f, 2.0d);
            }
        });
        this.iconAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animate3dIcon$13() {
        StarsSlider starsSlider = this.slider;
        starsSlider.drawCounterImage = false;
        starsSlider.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animate3dIcon$14(LiveCommentsView.LiveCommentView[] liveCommentViewArr, int[] iArr, RectF rectF, View view, ReactionsLayoutInBubble reactionsLayoutInBubble, ReactionsLayoutInBubble.ReactionButton reactionButton) {
        if (this.liveStories) {
            LiveCommentsView.LiveCommentView liveCommentViewFindComment = liveCommentViewArr[0];
            if (liveCommentViewFindComment == null) {
                liveCommentViewFindComment = this.commentsView.findComment(this.sentMessageId);
                liveCommentViewArr[0] = liveCommentViewFindComment;
            }
            if (liveCommentViewFindComment != null) {
                liveCommentViewFindComment.setDrawStar(false);
                liveCommentViewFindComment.getLocationInWindow(iArr);
                liveCommentViewFindComment.getStarLocation(rectF);
                rectF.offset(iArr[0], iArr[1]);
                return;
            }
            return;
        }
        view.getLocationInWindow(iArr);
        rectF.set(iArr[0] + reactionsLayoutInBubble.f2053x + reactionButton.f2055x + AndroidUtilities.m1124dp(4.0f), iArr[1] + reactionsLayoutInBubble.f2054y + reactionButton.f2056y + ((reactionButton.height - AndroidUtilities.m1124dp(22.0f)) / 2.0f), iArr[0] + reactionsLayoutInBubble.f2053x + reactionButton.f2055x + AndroidUtilities.m1124dp(26.0f), iArr[1] + reactionsLayoutInBubble.f2054y + reactionButton.f2056y + ((reactionButton.height + AndroidUtilities.m1124dp(22.0f)) / 2.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animate3dIcon$15(Runnable runnable, RectF rectF, RectF rectF2, RectF rectF3, boolean[] zArr, Runnable runnable2, ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        runnable.run();
        AndroidUtilities.lerp(rectF, rectF2, fFloatValue, rectF3);
        this.icon3dView.setTranslationX(rectF3.centerX() - (AndroidUtilities.m1124dp(150.0f) / 2.0f));
        this.icon3dView.setTranslationY(rectF3.centerY() - (AndroidUtilities.m1124dp(150.0f) / 2.0f));
        float fLerp = AndroidUtilities.lerp(Math.max(rectF3.width() / AndroidUtilities.m1124dp(150.0f), rectF3.height() / AndroidUtilities.m1124dp(150.0f)), 1.0f, (float) Math.sin(((double) fFloatValue) * 3.141592653589793d));
        this.icon3dView.setScaleX(fLerp);
        this.icon3dView.setScaleY(fLerp);
        GLIconRenderer gLIconRenderer = this.icon3dView.mRenderer;
        gLIconRenderer.angleX = 360.0f * fFloatValue;
        gLIconRenderer.white = Math.max(0.0f, 1.0f - (4.0f * fFloatValue));
        if (zArr[0] || fFloatValue <= 0.95f) {
            return;
        }
        zArr[0] = true;
        LaunchActivity.makeRipple(rectF2.centerX(), rectF2.centerY(), 1.5f);
        try {
            this.container.performHapticFeedback(0, 1);
        } catch (Exception unused) {
        }
        if (runnable2 != null) {
            runnable2.run();
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet
    public void dismissInternal() {
        ValueAnimator valueAnimator = this.iconAnimator;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            super.dismissInternal();
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        if (this.slider.tracking) {
            return false;
        }
        return super.canDismissWithSwipe();
    }

    public static class StarsSlider extends View {
        public float aprogress;
        private final RectF arc;
        private final Drawable counterImage;
        private final AnimatedTextView.AnimatedTextDrawable counterSubText;
        private final AnimatedTextView.AnimatedTextDrawable counterText;
        private long currentTop;
        public boolean drawCounterImage;
        public boolean drawPlus;
        private LinearGradient gradient;
        private ValueAnimator gradientAnimator;
        private int gradientColor1;
        private int gradientColor2;
        private final Matrix gradientMatrix;
        private float lastX;
        private float lastY;
        private final AnimatedFloat overTop;
        private final AnimatedFloat overTopText;
        private final Paint plusPaint;
        private final Path plusPath;
        private int pointerId;
        private long pressTime;
        public float progress;
        private ValueAnimator progressAnimator;
        private final Theme.ResourcesProvider resourcesProvider;
        private final Paint sliderCirclePaint;
        private final RectF sliderCircleRect;
        private final Paint sliderInnerPaint;
        private final Path sliderInnerPath;
        private final RectF sliderInnerRect;
        private final Paint sliderPaint;
        private final Particles sliderParticles;
        private final Path sliderPath;
        private final RectF sliderRect;
        private final ColoredImageSpan[] starRef;
        public int steps;
        public int[] stops;
        private final BoolAnimator subTextVisible;
        private final Paint textBackgroundPaint;
        private final Particles textParticles;
        private final Path textPath;
        private final RectF textRect;
        private int toGradientColor1;
        private int toGradientColor2;
        private final Paint topPaint;
        private final Text topText;
        private boolean tracking;

        protected boolean onTapCustom(float f, float f2) {
            return false;
        }

        protected void onValueChanged(int i) {
        }

        public StarsSlider(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.sliderInnerPaint = new Paint(1);
            this.sliderPaint = new Paint(1);
            this.plusPaint = new Paint(1);
            this.sliderCirclePaint = new Paint(1);
            this.textBackgroundPaint = new Paint(1);
            this.sliderParticles = new Particles(0, 300);
            this.textParticles = new Particles(2, 30);
            this.gradientColor1 = -1135603;
            this.gradientColor2 = -404714;
            this.toGradientColor1 = -1135603;
            this.toGradientColor2 = -404714;
            this.gradient = new LinearGradient(0.0f, 0.0f, 255.0f, 0.0f, new int[]{this.gradientColor1, this.gradientColor2}, new float[]{0.0f, 1.0f}, Shader.TileMode.CLAMP);
            this.gradientMatrix = new Matrix();
            this.drawCounterImage = true;
            AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = new AnimatedTextView.AnimatedTextDrawable(false, true, true);
            this.counterText = animatedTextDrawable;
            AnimatedTextView.AnimatedTextDrawable animatedTextDrawable2 = new AnimatedTextView.AnimatedTextDrawable(false, true, true);
            this.counterSubText = animatedTextDrawable2;
            this.starRef = new ColoredImageSpan[1];
            Paint paint = new Paint(1);
            this.topPaint = paint;
            this.topText = new Text(LocaleController.getString(C2888R.string.StarsReactionTop), 14.0f, AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_CONDENSED_BOLD));
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
            this.overTop = new AnimatedFloat(this, 0L, 320L, cubicBezierInterpolator);
            this.overTopText = new AnimatedFloat(this, 0L, 320L, cubicBezierInterpolator);
            this.currentTop = -1L;
            this.sliderInnerRect = new RectF();
            this.sliderRect = new RectF();
            this.sliderCircleRect = new RectF();
            this.arc = new RectF();
            this.sliderInnerPath = new Path();
            this.sliderPath = new Path();
            this.plusPath = new Path();
            this.textRect = new RectF();
            this.textPath = new Path();
            this.progress = 0.0f;
            this.subTextVisible = new BoolAnimator(this, cubicBezierInterpolator, 320L);
            this.resourcesProvider = resourcesProvider;
            Drawable drawableMutate = context.getResources().getDrawable(C2888R.drawable.msg_premium_liststar).mutate();
            this.counterImage = drawableMutate;
            drawableMutate.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
            animatedTextDrawable.setTextColor(-1);
            animatedTextDrawable.setTypeface(AndroidUtilities.getTypeface("fonts/num.otf"));
            animatedTextDrawable.setTextSize(AndroidUtilities.m1124dp(21.0f));
            animatedTextDrawable.setCallback(this);
            animatedTextDrawable.setOverrideFullWidth(AndroidUtilities.displaySize.x);
            animatedTextDrawable.setGravity(17);
            animatedTextDrawable2.setTextColor(-570425345);
            animatedTextDrawable2.setTextSize(AndroidUtilities.m1124dp(11.0f));
            animatedTextDrawable2.setCallback(this);
            animatedTextDrawable2.setOverrideFullWidth(AndroidUtilities.displaySize.x);
            animatedTextDrawable2.setGravity(17);
            paint.setColor(Theme.getColor(Theme.key_dialogBackground, resourcesProvider));
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(AndroidUtilities.m1124dp(1.0f));
        }

        public void setStarsTop(long j) {
            this.currentTop = j;
            invalidate();
        }

        public void setTopText(String str) {
            this.topText.setText(str);
        }

        @Override // android.view.View
        protected boolean verifyDrawable(Drawable drawable) {
            return drawable == this.counterText || super.verifyDrawable(drawable);
        }

        public void setSteps(int i, int... iArr) {
            this.steps = i;
            this.stops = iArr;
        }

        public void setValue(int i) {
            setValue(i, false);
        }

        public void setValue(int i, boolean z) {
            float progress = getProgress(i);
            this.progress = progress;
            if (!z) {
                this.aprogress = progress;
            }
            updateText(true);
        }

        public int getValue() {
            return getValue(this.progress);
        }

        public float getProgress() {
            return this.progress;
        }

        public int getValue(float f) {
            if (f <= 0.0f) {
                return this.stops[0];
            }
            if (f >= 1.0f) {
                return this.stops[r7.length - 1];
            }
            int[] iArr = this.stops;
            float length = f * (iArr.length - 1);
            int i = (int) length;
            float f2 = length - i;
            float f3 = iArr[i];
            int i2 = i + 1;
            if (i2 < iArr.length) {
                i = i2;
            }
            return Math.round(f3 + (f2 * (iArr[i] - r2)));
        }

        public float getProgress(int i) {
            int i2 = 1;
            while (true) {
                int[] iArr = this.stops;
                if (i2 >= iArr.length) {
                    return 1.0f;
                }
                if (i <= iArr[i2]) {
                    int i3 = i2 - 1;
                    int i4 = iArr[i3];
                    return (i3 + ((i - i4) / (r3 - i4))) / (iArr.length - 1);
                }
                i2++;
            }
        }

        public void setColor(final int i, final int i2, boolean z) {
            if (this.toGradientColor1 == i && this.toGradientColor2 == i2) {
                return;
            }
            ValueAnimator valueAnimator = this.gradientAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.gradientAnimator = null;
            }
            if (z) {
                final int i3 = this.gradientColor1;
                final int i4 = this.gradientColor2;
                this.toGradientColor1 = i;
                this.toGradientColor2 = i2;
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                this.gradientAnimator = valueAnimatorOfFloat;
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stars.StarsReactionsSheet$StarsSlider$$ExternalSyntheticLambda1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        this.f$0.lambda$setColor$0(i3, i, i4, i2, valueAnimator2);
                    }
                });
                this.gradientAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stars.StarsReactionsSheet.StarsSlider.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        StarsSlider.this.gradientColor1 = ColorUtils.blendARGB(i3, i, 1.0f);
                        StarsSlider.this.gradientColor2 = ColorUtils.blendARGB(i4, i2, 1.0f);
                        StarsSlider.this.gradient = new LinearGradient(0.0f, 0.0f, 255.0f, 0.0f, new int[]{StarsSlider.this.gradientColor1, StarsSlider.this.gradientColor2}, new float[]{0.0f, 1.0f}, Shader.TileMode.CLAMP);
                        StarsSlider.this.invalidate();
                    }
                });
                this.gradientAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                this.gradientAnimator.setDuration(420L);
                this.gradientAnimator.start();
                return;
            }
            this.toGradientColor1 = i;
            this.gradientColor1 = i;
            this.toGradientColor2 = i2;
            this.gradientColor2 = i2;
            this.gradient = new LinearGradient(0.0f, 0.0f, 255.0f, 0.0f, new int[]{this.gradientColor1, this.gradientColor2}, new float[]{0.0f, 1.0f}, Shader.TileMode.CLAMP);
            invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setColor$0(int i, int i2, int i3, int i4, ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            this.gradientColor1 = ColorUtils.blendARGB(i, i2, fFloatValue);
            this.gradientColor2 = ColorUtils.blendARGB(i3, i4, fFloatValue);
            this.gradient = new LinearGradient(0.0f, 0.0f, 255.0f, 0.0f, new int[]{this.gradientColor1, this.gradientColor2}, new float[]{0.0f, 1.0f}, Shader.TileMode.CLAMP);
            invalidate();
        }

        public void updateText(boolean z) {
            this.counterText.cancelAnimation();
            this.counterText.setText(StarsIntroActivity.replaceStars(LocaleController.formatNumber(getValue(), ','), this.starRef), z);
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            setMeasuredDimension(View.MeasureSpec.getSize(i), AndroidUtilities.m1124dp(220.0f));
            int measuredWidth = getMeasuredWidth();
            getMeasuredHeight();
            this.sliderInnerRect.set(AndroidUtilities.m1124dp(14.0f), AndroidUtilities.m1124dp(135.0f), measuredWidth - r6, r0 + AndroidUtilities.m1124dp(24.0f));
            this.sliderPaint.setColor(-1069811);
            this.sliderCirclePaint.setColor(-1);
        }

        @Override // android.view.View
        protected void dispatchDraw(Canvas canvas) {
            float f;
            int i;
            float f2;
            float f3;
            float f4;
            float f5;
            float f6;
            Canvas canvas2 = canvas;
            super.dispatchDraw(canvas);
            this.gradientMatrix.reset();
            this.gradientMatrix.postTranslate(this.sliderInnerRect.left, 0.0f);
            this.gradientMatrix.postScale(this.sliderInnerRect.width() / 255.0f, 1.0f);
            this.gradient.setLocalMatrix(this.gradientMatrix);
            this.sliderPaint.setShader(this.gradient);
            int iBlendARGB = ColorUtils.blendARGB(this.gradientColor1, this.gradientColor2, this.progress);
            this.sliderInnerPath.rewind();
            Path path = this.sliderInnerPath;
            RectF rectF = this.sliderInnerRect;
            float fM1124dp = AndroidUtilities.m1124dp(12.0f);
            float fM1124dp2 = AndroidUtilities.m1124dp(12.0f);
            Path.Direction direction = Path.Direction.CW;
            path.addRoundRect(rectF, fM1124dp, fM1124dp2, direction);
            this.sliderInnerPaint.setColor(Theme.multAlpha(this.gradientColor1, 0.15f));
            canvas2.drawPath(this.sliderInnerPath, this.sliderInnerPaint);
            this.sliderRect.set(this.sliderInnerRect);
            float progress = getProgress(getValue());
            RectF rectF2 = this.sliderRect;
            rectF2.right = AndroidUtilities.lerp(rectF2.left + AndroidUtilities.m1124dp(24.0f), this.sliderRect.right, progress);
            this.sliderPath.rewind();
            this.sliderPath.addRoundRect(this.sliderRect, AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(12.0f), direction);
            this.sliderParticles.setBounds(this.sliderInnerRect);
            this.sliderParticles.setSpeed((this.progress * 15.0f) + 1.0f);
            this.sliderParticles.setVisible((this.progress * 0.85f) + 0.15f);
            this.sliderParticles.process();
            canvas2.save();
            canvas2.clipPath(this.sliderInnerPath);
            this.sliderParticles.draw(canvas2, iBlendARGB);
            long j = this.currentTop;
            if (j == -1 || getProgress((int) j) >= 1.0f || getProgress((int) this.currentTop) <= 0.0f) {
                f = 255.0f;
                i = iBlendARGB;
                f2 = 12.0f;
            } else {
                float fM1124dp3 = this.sliderInnerRect.left + AndroidUtilities.m1124dp(12.0f) + ((this.sliderInnerRect.width() - AndroidUtilities.m1124dp(24.0f)) * Utilities.clamp01(getProgress((int) this.currentTop)));
                float f7 = this.overTop.set(Math.abs((this.sliderRect.right - ((float) AndroidUtilities.m1124dp(10.0f))) - fM1124dp3) < ((float) AndroidUtilities.m1124dp(14.0f)));
                f = 255.0f;
                f2 = 12.0f;
                float fLerp = AndroidUtilities.lerp(AndroidUtilities.m1124dp(9.0f), AndroidUtilities.m1124dp(16.0f), this.overTopText.set(Math.abs((this.sliderRect.right - ((float) AndroidUtilities.m1124dp(10.0f))) - fM1124dp3) < ((float) AndroidUtilities.m1124dp(12.0f))));
                float currentWidth = (this.topText.getCurrentWidth() + fM1124dp3) + ((float) (AndroidUtilities.m1124dp(16.0f) * 2)) > this.sliderInnerRect.right ? (fM1124dp3 - fLerp) - this.topText.getCurrentWidth() : fLerp + fM1124dp3;
                this.topPaint.setStrokeWidth(AndroidUtilities.m1124dp(1.0f));
                this.topPaint.setColor(Theme.multAlpha(iBlendARGB, 0.6f));
                RectF rectF3 = this.sliderInnerRect;
                float fLerp2 = AndroidUtilities.lerp(rectF3.top, rectF3.centerY(), f7);
                RectF rectF4 = this.sliderInnerRect;
                canvas2.drawLine(fM1124dp3, fLerp2, fM1124dp3, AndroidUtilities.lerp(rectF4.bottom, rectF4.centerY(), f7), this.topPaint);
                this.topText.draw(canvas, currentWidth, this.sliderInnerRect.centerY(), iBlendARGB, 0.6f);
                canvas2 = canvas;
                i = iBlendARGB;
            }
            canvas2.drawPath(this.sliderPath, this.sliderPaint);
            canvas2.clipPath(this.sliderPath);
            this.sliderParticles.draw(canvas2, -1);
            long j2 = this.currentTop;
            if (j2 != -1 && getProgress((int) j2) < 1.0f && getProgress((int) this.currentTop) > 0.0f) {
                float fM1124dp4 = this.sliderInnerRect.left + AndroidUtilities.m1124dp(f2) + ((this.sliderInnerRect.width() - AndroidUtilities.m1124dp(24.0f)) * Utilities.clamp01(getProgress((int) this.currentTop)));
                float f8 = this.overTop.set(Math.abs((this.sliderRect.right - ((float) AndroidUtilities.m1124dp(10.0f))) - fM1124dp4) < ((float) AndroidUtilities.m1124dp(14.0f)));
                float fLerp3 = AndroidUtilities.lerp(AndroidUtilities.m1124dp(9.0f), AndroidUtilities.m1124dp(16.0f), this.overTopText.set(Math.abs((this.sliderRect.right - ((float) AndroidUtilities.m1124dp(10.0f))) - fM1124dp4) < ((float) AndroidUtilities.m1124dp(f2))));
                float currentWidth2 = (this.topText.getCurrentWidth() + fM1124dp4) + ((float) (AndroidUtilities.m1124dp(16.0f) * 2)) > this.sliderInnerRect.right ? (fM1124dp4 - fLerp3) - this.topText.getCurrentWidth() : fLerp3 + fM1124dp4;
                this.topPaint.setStrokeWidth(AndroidUtilities.m1124dp(1.0f));
                this.topPaint.setColor(Theme.multAlpha(Theme.getColor(Theme.key_dialogBackground, this.resourcesProvider), 0.4f));
                RectF rectF5 = this.sliderInnerRect;
                float fLerp4 = AndroidUtilities.lerp(rectF5.top, rectF5.centerY(), f8);
                RectF rectF6 = this.sliderInnerRect;
                canvas2.drawLine(fM1124dp4, fLerp4, fM1124dp4, AndroidUtilities.lerp(rectF6.bottom, rectF6.centerY(), f8), this.topPaint);
                this.topText.draw(canvas, currentWidth2, this.sliderInnerRect.centerY(), -1, 0.75f);
                canvas2 = canvas;
            }
            canvas2.restore();
            invalidate();
            if (this.drawPlus) {
                RectF rectF7 = this.sliderInnerRect;
                float fHeight = rectF7.right - (rectF7.height() / 2.0f);
                float fCenterY = this.sliderInnerRect.centerY();
                this.plusPaint.setColor(ColorUtils.blendARGB(this.sliderInnerPaint.getColor(), this.gradientColor2, 0.5f));
                this.plusPath.rewind();
                f3 = 0.5f;
                f4 = 2.0f;
                f6 = progress;
                f5 = 0.15f;
                this.plusPath.addRoundRect(fHeight - AndroidUtilities.m1124dp(1.0f), fCenterY - AndroidUtilities.m1124dp(6.0f), AndroidUtilities.m1124dp(1.0f) + fHeight, fCenterY + AndroidUtilities.m1124dp(6.0f), AndroidUtilities.m1124dp(1.0f), AndroidUtilities.m1124dp(1.0f), direction);
                this.plusPath.addRoundRect(fHeight - AndroidUtilities.m1124dp(6.0f), fCenterY - AndroidUtilities.m1124dp(1.0f), fHeight + AndroidUtilities.m1124dp(6.0f), fCenterY + AndroidUtilities.m1124dp(1.0f), AndroidUtilities.m1124dp(1.0f), AndroidUtilities.m1124dp(1.0f), direction);
                canvas2.drawPath(this.plusPath, this.plusPaint);
            } else {
                f3 = 0.5f;
                f4 = 2.0f;
                f5 = 0.15f;
                f6 = progress;
            }
            this.sliderCircleRect.set((this.sliderRect.right - AndroidUtilities.m1124dp(16.0f)) - AndroidUtilities.m1124dp(4.0f), this.sliderRect.centerY() - (AndroidUtilities.m1124dp(16.0f) / f4), this.sliderRect.right - AndroidUtilities.m1124dp(4.0f), this.sliderRect.centerY() + (AndroidUtilities.m1124dp(16.0f) / f4));
            canvas2.drawRoundRect(this.sliderCircleRect, AndroidUtilities.m1124dp(f2), AndroidUtilities.m1124dp(f2), this.sliderCirclePaint);
            float fM1124dp5 = AndroidUtilities.m1124dp(9.0f) / this.sliderInnerRect.width();
            RectF rectF8 = this.sliderCircleRect;
            float fLerp5 = AndroidUtilities.lerp(AndroidUtilities.lerp(rectF8.left, rectF8.right, f6), AndroidUtilities.lerp(this.sliderCircleRect.left + AndroidUtilities.m1124dp(9.0f), this.sliderCircleRect.right - AndroidUtilities.m1124dp(9.0f), f6), Math.min(Utilities.clamp01(f6 / fM1124dp5), Utilities.clamp01((1.0f - f6) / fM1124dp5)));
            float fMax = Math.max(this.counterSubText.getCurrentWidth() + AndroidUtilities.m1124dp(20.0f), this.counterText.getCurrentWidth() + AndroidUtilities.m1124dp(50.0f));
            float fM1124dp6 = AndroidUtilities.m1124dp(44.0f);
            float fClamp = Utilities.clamp(fLerp5 - (fMax / f4), (this.sliderInnerRect.right - fMax) - AndroidUtilities.m1124dp(4.0f), this.sliderInnerRect.left + AndroidUtilities.m1124dp(4.0f));
            this.textRect.set(fClamp, (this.sliderInnerRect.top - AndroidUtilities.m1124dp(21.0f)) - fM1124dp6, fMax + fClamp, this.sliderInnerRect.top - AndroidUtilities.m1124dp(21.0f));
            float fHeight2 = this.textRect.height();
            float f9 = fHeight2 / f4;
            RectF rectF9 = this.textRect;
            float fClamp2 = Utilities.clamp(fLerp5, rectF9.right, rectF9.left);
            RectF rectF10 = this.textRect;
            float fClamp3 = Utilities.clamp(fClamp2 - AndroidUtilities.m1124dp(9.0f), rectF10.right, rectF10.left);
            RectF rectF11 = this.textRect;
            float fClamp4 = Utilities.clamp(AndroidUtilities.m1124dp(9.0f) + fClamp2, rectF11.right, rectF11.left);
            float fClamp5 = Utilities.clamp(this.progress - this.aprogress, 1.0f, -1.0f) * 60.0f;
            float fM1124dp7 = this.textRect.bottom + AndroidUtilities.m1124dp(8.0f);
            this.textPath.rewind();
            RectF rectF12 = this.arc;
            float f10 = f5;
            RectF rectF13 = this.textRect;
            float f11 = rectF13.left;
            float f12 = rectF13.top;
            rectF12.set(f11, f12, f11 + fHeight2, f12 + fHeight2);
            this.textPath.arcTo(this.arc, -180.0f, 90.0f);
            RectF rectF14 = this.arc;
            RectF rectF15 = this.textRect;
            float f13 = rectF15.right;
            float f14 = rectF15.top;
            rectF14.set(f13 - fHeight2, f14, f13, f14 + fHeight2);
            this.textPath.arcTo(this.arc, -90.0f, 90.0f);
            RectF rectF16 = this.arc;
            RectF rectF17 = this.textRect;
            float f15 = rectF17.right;
            float f16 = rectF17.bottom;
            rectF16.set(f15 - fHeight2, f16 - fHeight2, f15, f16);
            this.textPath.arcTo(this.arc, 0.0f, (float) Utilities.clamp(((Math.acos(Utilities.clamp01((fClamp4 - this.arc.centerX()) / f9)) * 0.8500000238418579d) / 3.141592653589793d) * 180.0d, 90.0d, 0.0d));
            RectF rectF18 = this.textRect;
            float f17 = 0.7f * fHeight2;
            if (fClamp3 < rectF18.right - f17) {
                this.textPath.lineTo(fClamp4, rectF18.bottom);
                this.textPath.lineTo(fClamp2 + f4, this.textRect.bottom + AndroidUtilities.m1124dp(8.0f));
            }
            this.textPath.lineTo(fClamp2, this.textRect.bottom + AndroidUtilities.m1124dp(8.0f) + 1.0f);
            RectF rectF19 = this.textRect;
            if (fClamp4 > rectF19.left + f17) {
                this.textPath.lineTo(fClamp2 - f4, rectF19.bottom + AndroidUtilities.m1124dp(8.0f));
                this.textPath.lineTo(fClamp3, this.textRect.bottom);
            }
            RectF rectF20 = this.arc;
            RectF rectF21 = this.textRect;
            float f18 = rectF21.left;
            float f19 = rectF21.bottom;
            rectF20.set(f18, f19 - fHeight2, fHeight2 + f18, f19);
            float fClamp6 = ((float) Utilities.clamp(((Math.acos(Utilities.clamp01((fClamp3 - this.arc.left) / f9)) * 0.8500000238418579d) / 3.141592653589793d) * 180.0d, 90.0d, 0.0d)) + 90.0f;
            this.textPath.arcTo(this.arc, fClamp6, 180.0f - fClamp6);
            Path path2 = this.textPath;
            RectF rectF22 = this.textRect;
            path2.lineTo(rectF22.left, rectF22.bottom);
            this.textPath.close();
            RectF rectF23 = AndroidUtilities.rectTmp;
            rectF23.set(this.textRect);
            rectF23.inset(-AndroidUtilities.m1124dp(f2), -AndroidUtilities.m1124dp(f2));
            this.textParticles.setBounds(rectF23);
            this.textParticles.setSpeed((this.progress * 15.0f) + 1.0f);
            this.textParticles.process();
            canvas2.save();
            this.textParticles.draw(canvas2, i);
            canvas2.restore();
            canvas2.save();
            canvas2.rotate(fClamp5, fClamp2, fM1124dp7);
            if (Math.abs(this.progress - this.aprogress) > 0.001f) {
                this.aprogress = AndroidUtilities.lerp(this.aprogress, this.progress, 0.1f);
                invalidate();
            }
            this.textBackgroundPaint.setShader(this.gradient);
            canvas2.drawPath(this.textPath, this.textBackgroundPaint);
            canvas2.save();
            canvas2.clipPath(this.textPath);
            canvas2.rotate(-fClamp5, fClamp2, fM1124dp7);
            this.textParticles.draw(canvas2, -1);
            canvas2.restore();
            canvas2.save();
            float floatValue = 1.0f - (this.subTextVisible.getFloatValue() * f10);
            float fCenterX = this.textRect.centerX();
            RectF rectF24 = this.textRect;
            canvas2.scale(floatValue, floatValue, fCenterX, rectF24.top - (rectF24.height() * f3));
            this.counterImage.setBounds((int) ((this.textRect.centerX() - (this.counterText.getCurrentWidth() / f4)) + AndroidUtilities.m1124dp(-12.0f)), (int) (this.textRect.centerY() - AndroidUtilities.m1124dp(10.0f)), (int) ((this.textRect.centerX() - (this.counterText.getCurrentWidth() / f4)) + AndroidUtilities.m1124dp(8.0f)), (int) (this.textRect.centerY() + AndroidUtilities.m1124dp(10.0f)));
            if (this.drawCounterImage) {
                this.counterImage.draw(canvas2);
            }
            AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = this.counterText;
            float fM1124dp8 = this.textRect.left + AndroidUtilities.m1124dp(24.0f);
            RectF rectF25 = this.textRect;
            animatedTextDrawable.setBounds(fM1124dp8, rectF25.top, rectF25.right, rectF25.bottom);
            this.counterText.draw(canvas2);
            canvas2.restore();
            AnimatedTextView.AnimatedTextDrawable animatedTextDrawable2 = this.counterSubText;
            RectF rectF26 = this.textRect;
            float f20 = rectF26.left;
            float fM1124dp9 = rectF26.top + AndroidUtilities.m1124dp(10.0f);
            RectF rectF27 = this.textRect;
            animatedTextDrawable2.setBounds(f20, fM1124dp9, rectF27.right, rectF27.bottom + AndroidUtilities.m1124dp(10.0f));
            this.counterSubText.setAlpha((int) (this.subTextVisible.getFloatValue() * f));
            this.counterSubText.draw(canvas2);
            canvas2.restore();
        }

        public void setCounterSubText(String str, boolean z) {
            this.subTextVisible.setValue(!TextUtils.isEmpty(str), z);
            this.counterSubText.cancelAnimation();
            this.counterSubText.setText(str, z);
        }

        @Override // android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                this.lastX = motionEvent.getX();
                this.lastY = motionEvent.getY();
                this.pointerId = motionEvent.getPointerId(0);
                this.pressTime = System.currentTimeMillis();
                this.tracking = false;
            } else if (motionEvent.getAction() == 2 && motionEvent.getPointerId(0) == this.pointerId) {
                float x = motionEvent.getX() - this.lastX;
                float y = motionEvent.getY() - this.lastY;
                if (!this.tracking && Math.abs(x) > Math.abs(y * 1.5f) && Math.abs(x) > AndroidUtilities.touchSlop) {
                    getParent().requestDisallowInterceptTouchEvent(true);
                    this.tracking = true;
                    ValueAnimator valueAnimator = this.progressAnimator;
                    if (valueAnimator != null) {
                        valueAnimator.cancel();
                    }
                }
                if (this.tracking) {
                    int value = getValue();
                    this.progress = Utilities.clamp01(this.progress + (x / (getWidth() * 1.0f)));
                    if (getValue() != value) {
                        onValueChanged(getValue());
                        updateText(true);
                    }
                    this.lastX = motionEvent.getX();
                }
            } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                if (!this.tracking && motionEvent.getPointerId(0) == this.pointerId && MathUtils.distance(this.lastX, this.lastY, motionEvent.getX(), motionEvent.getY()) < AndroidUtilities.touchSlop && System.currentTimeMillis() - this.pressTime <= ViewConfiguration.getTapTimeout() * 1.5f && !onTapCustom(motionEvent.getX(), motionEvent.getY())) {
                    float x2 = motionEvent.getX();
                    RectF rectF = this.sliderInnerRect;
                    float fClamp01 = Utilities.clamp01((x2 - rectF.left) / rectF.width());
                    long j = this.currentTop;
                    if (j > 0 && Math.abs(getProgress((int) j) - fClamp01) < 0.035f) {
                        fClamp01 = Utilities.clamp01(getProgress((int) this.currentTop));
                    }
                    animateProgressTo(fClamp01);
                }
                this.tracking = false;
            }
            return true;
        }

        public void setValueAnimated(int i) {
            if (i == getValue()) {
                return;
            }
            animateProgressTo(getProgress(i));
        }

        private void animateProgressTo(final float f) {
            ValueAnimator valueAnimator = this.progressAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.progress, f);
            this.progressAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stars.StarsReactionsSheet$StarsSlider$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.lambda$animateProgressTo$1(valueAnimator2);
                }
            });
            final int value = getValue();
            this.progressAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stars.StarsReactionsSheet.StarsSlider.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    StarsSlider starsSlider = StarsSlider.this;
                    starsSlider.progress = f;
                    if (starsSlider.getValue() != value) {
                        StarsSlider starsSlider2 = StarsSlider.this;
                        starsSlider2.onValueChanged(starsSlider2.getValue());
                    }
                    StarsSlider.this.invalidate();
                }
            });
            this.progressAnimator.setDuration(320L);
            this.progressAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            this.progressAnimator.start();
            if (getValue(f) != value) {
                onValueChanged(getValue(f));
            }
            this.counterText.cancelAnimation();
            this.counterText.setText(StarsIntroActivity.replaceStars(LocaleController.formatNumber(getValue(f), ','), this.starRef), true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$animateProgressTo$1(ValueAnimator valueAnimator) {
            this.progress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            invalidate();
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public static class Particles {

        /* JADX INFO: renamed from: b */
        public final Bitmap f2160b;
        private int bPaintColor;
        private BatchParticlesDrawHelper.BatchParticlesBuffer batchParticlesBuffer;
        private final Paint batchParticlesPaint;
        private long lastInvalidateTime;
        private long lastTime;
        public final ArrayList particles;
        public final int type;
        private int visibleCount;
        public final RectF bounds = new RectF();
        public final Paint bPaint = new Paint(3);
        public final Rect rect = new Rect();
        private float speed = 1.0f;
        private float lifetime = 1.0f;
        private boolean firstDraw = true;

        public Particles(int i, int i2) {
            this.type = i;
            this.visibleCount = i2;
            this.particles = new ArrayList(i2);
            for (int i3 = 0; i3 < i2; i3++) {
                this.particles.add(new Particle());
            }
            int iM1124dp = AndroidUtilities.m1124dp(10.0f);
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iM1124dp, iM1124dp, Bitmap.Config.ARGB_8888);
            this.f2160b = bitmapCreateBitmap;
            Path path = new Path();
            float f = iM1124dp >> 1;
            int i4 = (int) (0.85f * f);
            path.moveTo(0.0f, f);
            float f2 = i4;
            path.lineTo(f2, f2);
            path.lineTo(f, 0.0f);
            float f3 = iM1124dp - i4;
            path.lineTo(f3, f2);
            float f4 = iM1124dp;
            path.lineTo(f4, f);
            path.lineTo(f3, f3);
            path.lineTo(f, f4);
            path.lineTo(f2, f3);
            path.lineTo(0.0f, f);
            path.close();
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            Paint paint = new Paint();
            paint.setColor(Theme.multAlpha(-1, 0.75f));
            canvas.drawPath(path, paint);
            if (BatchParticlesDrawHelper.isAvailable()) {
                BatchParticlesDrawHelper.BatchParticlesBuffer batchParticlesBuffer = new BatchParticlesDrawHelper.BatchParticlesBuffer(i2);
                this.batchParticlesBuffer = batchParticlesBuffer;
                batchParticlesBuffer.fillParticleTextureCords(0.0f, 0.0f, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight());
                this.batchParticlesPaint = BatchParticlesDrawHelper.createBatchParticlesPaint(bitmapCreateBitmap);
                return;
            }
            this.batchParticlesBuffer = null;
            this.batchParticlesPaint = null;
        }

        public void setVisible(float f) {
            this.visibleCount = (int) (this.particles.size() * f);
        }

        public void setBounds(RectF rectF) {
            this.bounds.set(rectF);
            removeParticlesOutside();
        }

        public void setBounds(Rect rect) {
            this.bounds.set(rect);
            removeParticlesOutside();
        }

        public void setBounds(int i, int i2, int i3, int i4) {
            this.bounds.set(i, i2, i3, i4);
            removeParticlesOutside();
        }

        public void removeParticlesOutside() {
            if (this.type == 2) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                for (int i = 0; i < this.particles.size(); i++) {
                    Particle particle = (Particle) this.particles.get(i);
                    if (!this.bounds.contains((int) particle.f2166x, (int) particle.f2167y)) {
                        gen(particle, jCurrentTimeMillis, this.firstDraw);
                    }
                }
            }
        }

        public void setSpeed(float f) {
            this.speed = f;
        }

        public boolean process() {
            if (!LiteMode.isEnabled(131072)) {
                return false;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            float fMin = (Math.min(this.lastTime - jCurrentTimeMillis, 16L) / 1000.0f) * this.speed;
            for (int i = 0; i < Math.min(this.visibleCount, this.particles.size()); i++) {
                Particle particle = (Particle) this.particles.get(i);
                long j = particle.lifetime;
                float f = j <= 0 ? 2.0f : (jCurrentTimeMillis - particle.start) / j;
                if (f > 1.0f) {
                    gen(particle, jCurrentTimeMillis, this.firstDraw);
                    f = 0.0f;
                }
                particle.f2166x += particle.f2164vx * fMin;
                particle.f2167y += particle.f2165vy * fMin;
                float f2 = 4.0f * f;
                particle.f2162la = f2 - (f * f2);
            }
            this.lastTime = jCurrentTimeMillis;
            long j2 = this.lastInvalidateTime;
            if (j2 != 0 && j2 - jCurrentTimeMillis < 66) {
                return false;
            }
            this.lastInvalidateTime = jCurrentTimeMillis;
            return true;
        }

        public void generateGrid() {
            ArrayList arrayListPoissonDiskSampling = poissonDiskSampling(AndroidUtilities.m1124dp(30.0f), (int) this.bounds.width(), (int) this.bounds.height(), 15);
            int size = arrayListPoissonDiskSampling.size() - this.particles.size();
            for (int i = 0; i < size; i++) {
                this.particles.add(new Particle());
            }
            int size2 = arrayListPoissonDiskSampling.size();
            this.visibleCount = size2;
            if (this.batchParticlesBuffer != null) {
                BatchParticlesDrawHelper.BatchParticlesBuffer batchParticlesBuffer = new BatchParticlesDrawHelper.BatchParticlesBuffer(size2);
                this.batchParticlesBuffer = batchParticlesBuffer;
                batchParticlesBuffer.fillParticleTextureCords(0.0f, 0.0f, this.f2160b.getWidth(), this.f2160b.getHeight());
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            for (int i2 = 0; i2 < this.visibleCount; i2++) {
                Particle particle = (Particle) this.particles.get(i2);
                PointF pointF = (PointF) arrayListPoissonDiskSampling.get(i2);
                gen(particle, jCurrentTimeMillis, true);
                float f = pointF.x;
                RectF rectF = this.bounds;
                particle.f2166x = f + rectF.left;
                particle.f2167y = pointF.y + rectF.top;
                particle.f2162la = AndroidUtilities.lerp(0.4f, 1.0f, Utilities.fastRandom.nextFloat());
                particle.f2163s *= 1.25f;
            }
        }

        static boolean isValidPoint(PointF[][] pointFArr, int i, int i2, float f, int i3, int i4, PointF pointF, float f2) {
            int iM1124dp = AndroidUtilities.m1124dp(15.0f) / 2;
            float f3 = pointF.x;
            float f4 = iM1124dp;
            if (f3 >= f4 && f3 < i - iM1124dp) {
                float f5 = pointF.y;
                if (f5 >= f4 && f5 < i2 - iM1124dp) {
                    int iFloor = (int) Math.floor(f3 / f);
                    int iFloor2 = (int) Math.floor(pointF.y / f);
                    int iMin = Math.min(iFloor + 1, i3 - 1);
                    int iMax = Math.max(iFloor2 - 1, 0);
                    int iMin2 = Math.min(iFloor2 + 1, i4 - 1);
                    for (int iMax2 = Math.max(iFloor - 1, 0); iMax2 <= iMin; iMax2++) {
                        for (int i5 = iMax; i5 <= iMin2; i5++) {
                            PointF pointF2 = pointFArr[iMax2][i5];
                            if (pointF2 != null && MathUtils.distance(pointF2.x, pointF2.y, pointF.x, pointF.y) < f2) {
                                return false;
                            }
                        }
                    }
                    return true;
                }
            }
            return false;
        }

        static void insertPoint(PointF[][] pointFArr, float f, PointF pointF) {
            pointFArr[(int) Math.floor(pointF.x / f)][(int) Math.floor(pointF.y / f)] = pointF;
        }

        private static ArrayList poissonDiskSampling(float f, int i, int i2, int i3) {
            PointF[][] pointFArr;
            int i4;
            float f2 = f;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int i5 = 0;
            PointF pointF = new PointF(AndroidUtilities.lerp(0, i, Utilities.fastRandom.nextFloat()), AndroidUtilities.lerp(0, i2, Utilities.fastRandom.nextFloat()));
            float fFloor = (float) Math.floor(((double) f2) / Math.sqrt(2));
            int i6 = 1;
            int iCeil = ((int) Math.ceil(i / fFloor)) + 1;
            int iCeil2 = ((int) Math.ceil(i2 / fFloor)) + 1;
            PointF[][] pointFArr2 = (PointF[][]) Array.newInstance((Class<?>) PointF.class, iCeil, iCeil2);
            for (int i7 = 0; i7 < iCeil; i7++) {
                for (int i8 = 0; i8 < iCeil2; i8++) {
                    pointFArr2[i7][i8] = null;
                }
            }
            insertPoint(pointFArr2, fFloor, pointF);
            arrayList.add(pointF);
            arrayList2.add(pointF);
            while (!arrayList2.isEmpty()) {
                int iNextInt = arrayList2.size() > i6 ? Utilities.fastRandom.nextInt(arrayList2.size() - i6) : i5;
                PointF pointF2 = (PointF) arrayList2.get(iNextInt);
                int i9 = i5;
                while (true) {
                    if (i9 < i3) {
                        i4 = 1;
                        int i10 = i9;
                        double dLerp = AndroidUtilities.lerp(1, 2, Utilities.fastRandom.nextFloat()) * f2;
                        double dLerp2 = AndroidUtilities.lerp(i5, 360, Utilities.fastRandom.nextFloat());
                        PointF[][] pointFArr3 = pointFArr2;
                        PointF pointF3 = new PointF((float) (((double) pointF2.x) + (Math.cos(Math.toRadians(dLerp2)) * dLerp)), (float) (((double) pointF2.y) + (Math.sin(Math.toRadians(dLerp2)) * dLerp)));
                        pointFArr = pointFArr3;
                        if (isValidPoint(pointFArr, i, i2, fFloor, iCeil, iCeil2, pointF3, f2)) {
                            arrayList.add(pointF3);
                            insertPoint(pointFArr, fFloor, pointF3);
                            arrayList2.add(pointF3);
                            break;
                        }
                        f2 = f;
                        pointFArr2 = pointFArr;
                        i9 = i10 + 1;
                        i6 = 1;
                        i5 = 0;
                    } else {
                        pointFArr = pointFArr2;
                        i4 = i6;
                        arrayList2.remove(iNextInt);
                        break;
                    }
                }
                f2 = f;
                pointFArr2 = pointFArr;
                i6 = i4;
                i5 = 0;
            }
            return arrayList;
        }

        public void draw(Canvas canvas, int i) {
            draw(canvas, i, 1.0f);
        }

        public void draw(Canvas canvas, int i, float f) {
            if (LiteMode.isEnabled(131072)) {
                int iMin = Math.min(this.visibleCount, this.particles.size());
                if (this.batchParticlesBuffer != null) {
                    float width = this.f2160b.getWidth();
                    float height = this.f2160b.getHeight();
                    for (int i2 = 0; i2 < iMin; i2++) {
                        Particle particle = (Particle) this.particles.get(i2);
                        float f2 = particle.f2161a * particle.f2163s * f;
                        float f3 = (width / 2.0f) * f2;
                        float f4 = (height / 2.0f) * f2;
                        BatchParticlesDrawHelper.BatchParticlesBuffer batchParticlesBuffer = this.batchParticlesBuffer;
                        float f5 = particle.f2166x;
                        float f6 = particle.f2167y;
                        batchParticlesBuffer.setParticleVertexCords(i2, f5 - f3, f6 - f4, f5 + f3, f4 + f6);
                        this.batchParticlesBuffer.setParticleColor(i2, ColorUtils.setAlphaComponent(i, (int) (Utilities.clamp01(particle.f2162la * f) * 255.0f)));
                    }
                    BatchParticlesDrawHelper.draw(canvas, this.batchParticlesBuffer, iMin, this.batchParticlesPaint);
                } else {
                    if (this.bPaintColor != i) {
                        Paint paint = this.bPaint;
                        this.bPaintColor = i;
                        paint.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN));
                    }
                    for (int i3 = 0; i3 < iMin; i3++) {
                        Particle particle2 = (Particle) this.particles.get(i3);
                        particle2.draw(canvas, i, particle2.f2162la * f);
                    }
                }
                this.firstDraw = false;
            }
        }

        public void gen(Particle particle, long j, boolean z) {
            particle.start = j;
            long jLerp = (long) (AndroidUtilities.lerp(500, 2500, Utilities.fastRandom.nextFloat()) * this.lifetime);
            particle.lifetime = jLerp;
            if (z) {
                particle.start -= (long) (jLerp * Utilities.clamp01(Utilities.fastRandom.nextFloat()));
            }
            RectF rectF = this.bounds;
            particle.f2166x = AndroidUtilities.lerp(rectF.left, rectF.right, Utilities.fastRandom.nextFloat());
            RectF rectF2 = this.bounds;
            particle.f2167y = AndroidUtilities.lerp(rectF2.top, rectF2.bottom, Utilities.fastRandom.nextFloat());
            if (this.type == 0) {
                particle.f2164vx = AndroidUtilities.m1124dp(AndroidUtilities.lerp(-7.0f, -18.0f, Utilities.fastRandom.nextFloat()));
                particle.f2165vy = AndroidUtilities.m1124dp(AndroidUtilities.lerp(-2.0f, 2.0f, Utilities.fastRandom.nextFloat()));
            } else {
                particle.f2164vx = this.bounds.centerX() - particle.f2166x;
                particle.f2165vy = this.bounds.centerY() - particle.f2167y;
                float fM1124dp = AndroidUtilities.m1124dp(AndroidUtilities.lerp(1.0f, 4.0f, Utilities.fastRandom.nextFloat()));
                float f = particle.f2164vx;
                float f2 = particle.f2165vy;
                float fSqrt = fM1124dp / ((float) Math.sqrt((f * f) + (f2 * f2)));
                particle.f2164vx *= fSqrt;
                particle.f2165vy *= fSqrt;
            }
            particle.f2161a = AndroidUtilities.lerp(0.4f, 1.0f, Utilities.fastRandom.nextFloat());
            particle.f2163s = AndroidUtilities.lerp(0.8f, 1.2f, Utilities.fastRandom.nextFloat()) * 0.7f;
        }

        public class Particle {

            /* JADX INFO: renamed from: a */
            public float f2161a;

            /* JADX INFO: renamed from: la */
            public float f2162la;
            public long lifetime;

            /* JADX INFO: renamed from: s */
            public float f2163s;
            public long start;

            /* JADX INFO: renamed from: vx */
            public float f2164vx;

            /* JADX INFO: renamed from: vy */
            public float f2165vy;

            /* JADX INFO: renamed from: x */
            public float f2166x;

            /* JADX INFO: renamed from: y */
            public float f2167y;

            public Particle() {
            }

            public void draw(Canvas canvas, int i, float f) {
                Particles.this.bPaint.setAlpha((int) (255.0f * f));
                Particles.this.rect.set((int) (this.f2166x - ((((r8.f2160b.getWidth() / 2.0f) * this.f2161a) * this.f2163s) * f)), (int) (this.f2167y - ((((Particles.this.f2160b.getHeight() / 2.0f) * this.f2161a) * this.f2163s) * f)), (int) (this.f2166x + ((Particles.this.f2160b.getWidth() / 2.0f) * this.f2161a * this.f2163s * f)), (int) (this.f2167y + ((Particles.this.f2160b.getHeight() / 2.0f) * this.f2161a * this.f2163s * f)));
                Particles particles = Particles.this;
                canvas.drawBitmap(particles.f2160b, (Rect) null, particles.rect, particles.bPaint);
            }
        }
    }

    public static class SenderData {
        public boolean anonymous;
        public long did;

        /* JADX INFO: renamed from: my */
        public boolean f2168my;
        public long stars;

        /* JADX INFO: renamed from: of */
        public static SenderData m1316of(boolean z, boolean z2, long j, long j2) {
            SenderData senderData = new SenderData();
            senderData.anonymous = z;
            senderData.f2168my = z2;
            senderData.did = j;
            senderData.stars = j2;
            return senderData;
        }
    }

    public class TopSendersView extends View {
        public final AnimatedFloat animatedCount;
        public final Paint backgroundPaint;
        private Utilities.Callback clickListener;
        public float count;
        public final boolean liveStories;
        public final ArrayList oldSenders;
        private Sender pressedSender;
        public final ArrayList senders;

        public TopSendersView(Context context, boolean z) {
            super(context);
            this.senders = new ArrayList();
            this.oldSenders = new ArrayList();
            Paint paint = new Paint(1);
            this.backgroundPaint = paint;
            this.animatedCount = new AnimatedFloat(this, 0L, 320L, CubicBezierInterpolator.EASE_OUT_QUINT);
            this.liveStories = z;
            paint.setStyle(Paint.Style.FILL_AND_STROKE);
            paint.setStrokeWidth(AndroidUtilities.m1124dp(3.0f));
            paint.setColor(Theme.getColor(Theme.key_dialogBackground, StarsReactionsSheet.this.resourcesProvider));
        }

        @Override // android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            for (int i = 0; i < this.senders.size(); i++) {
                ((Sender) this.senders.get(i)).imageReceiver.onAttachedToWindow();
            }
        }

        @Override // android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            for (int i = 0; i < this.senders.size(); i++) {
                ((Sender) this.senders.get(i)).imageReceiver.onDetachedFromWindow();
            }
        }

        @Override // android.view.View
        protected void dispatchDraw(Canvas canvas) {
            this.count = this.animatedCount.set(this.senders.size());
            for (int i = 0; i < this.oldSenders.size(); i++) {
                ((Sender) this.oldSenders.get(i)).draw(canvas);
            }
            for (int i2 = 0; i2 < this.senders.size(); i2++) {
                ((Sender) this.senders.get(i2)).draw(canvas);
            }
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            Sender sender;
            Utilities.Callback callback;
            if (motionEvent.getAction() == 0) {
                Sender sender2 = this.pressedSender;
                if (sender2 != null) {
                    sender2.bounce.setPressed(false);
                }
                this.pressedSender = null;
                int i = 0;
                while (true) {
                    if (i >= this.senders.size()) {
                        break;
                    }
                    if (((Sender) this.senders.get(i)).clickBounds.contains(motionEvent.getX(), motionEvent.getY())) {
                        this.pressedSender = (Sender) this.senders.get(i);
                        break;
                    }
                    i++;
                }
                Sender sender3 = this.pressedSender;
                if (sender3 != null) {
                    sender3.bounce.setPressed(true);
                }
            } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                if (motionEvent.getAction() == 1 && (sender = this.pressedSender) != null && !sender.anonymous && sender.clickBounds.contains(motionEvent.getX(), motionEvent.getY()) && (callback = this.clickListener) != null) {
                    callback.run(Long.valueOf(this.pressedSender.did));
                }
                Sender sender4 = this.pressedSender;
                if (sender4 != null) {
                    sender4.bounce.setPressed(false);
                }
                this.pressedSender = null;
            }
            return this.pressedSender != null;
        }

        public void setMyPrivacy(long j) {
            for (int i = 0; i < this.senders.size(); i++) {
                Sender sender = (Sender) this.senders.get(i);
                if (sender.f2169my) {
                    sender.setPrivacy(j);
                    return;
                }
            }
        }

        public void setSenders(ArrayList<SenderData> arrayList) {
            Sender sender;
            int i = 0;
            while (true) {
                SenderData senderData = null;
                if (i >= this.senders.size()) {
                    break;
                }
                Sender sender2 = (Sender) this.senders.get(i);
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    SenderData senderData2 = arrayList.get(i2);
                    boolean z = senderData2.f2168my;
                    if ((z && sender2.f2169my) || (!sender2.f2169my && !z && senderData2.did == sender2.did)) {
                        senderData = arrayList.get(i2);
                        break;
                    }
                }
                if (senderData == null) {
                    sender2.imageReceiver.onDetachedFromWindow();
                    this.senders.remove(i);
                    i--;
                    sender2.index = -1;
                    this.oldSenders.add(sender2);
                }
                i++;
            }
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                SenderData senderData3 = arrayList.get(i3);
                for (int i4 = 0; i4 < this.senders.size(); i4++) {
                    Sender sender3 = (Sender) this.senders.get(i4);
                    boolean z2 = sender3.f2169my;
                    if ((z2 && senderData3.f2168my) || (!z2 && !senderData3.f2168my && sender3.did == senderData3.did)) {
                        sender = (Sender) this.senders.get(i4);
                        break;
                    }
                }
                sender = null;
                if (sender == null) {
                    for (int i5 = 0; i5 < this.oldSenders.size(); i5++) {
                        Sender sender4 = (Sender) this.oldSenders.get(i5);
                        boolean z3 = sender4.f2169my;
                        if ((z3 && senderData3.f2168my) || (!z3 && !senderData3.f2168my && sender4.did == senderData3.did)) {
                            sender = (Sender) this.oldSenders.get(i5);
                            break;
                        }
                    }
                    if (sender != null) {
                        this.oldSenders.remove(sender);
                        sender.imageReceiver.onAttachedToWindow();
                        this.senders.add(sender);
                    }
                }
                if (sender == null) {
                    sender = new Sender(senderData3.f2168my, senderData3.did);
                    sender.animatedScale.set(0.0f, true);
                    this.senders.add(sender);
                    sender.animatedPosition.set((arrayList.size() - 1) - i3, true);
                }
                sender.index = (arrayList.size() - 1) - i3;
                sender.setStars(senderData3.stars);
                if (this.liveStories) {
                    sender.setPlace(i3 + 1);
                }
                if (senderData3.f2168my) {
                    sender.setPrivacy(StarsReactionsSheet.this.peer);
                } else {
                    sender.setAnonymous(senderData3.anonymous);
                }
            }
            invalidate();
        }

        public void setOnSenderClickListener(Utilities.Callback<Long> callback) {
            this.clickListener = callback;
        }

        public class Sender {
            public final AnimatedFloat animatedAnonymous;
            public final AnimatedFloat animatedPosition;
            public final AnimatedFloat animatedScale;
            public boolean anonymous;
            public final AvatarDrawable anonymousAvatarDrawable;
            public final AvatarDrawable avatarDrawable;
            public final ButtonBounce bounce;
            public final RectF clickBounds = new RectF();
            private Drawable crown;
            private Drawable crownOutline;
            private int currentColor;
            public long did;
            public LinearGradient gradient;
            public Matrix gradientMatrix;
            public final ImageReceiver imageReceiver;
            public int index;

            /* JADX INFO: renamed from: my */
            public final boolean f2169my;
            public final Paint paint;
            private int place;
            private Text placeText;
            public Text starsText;
            public Text text;

            public Sender(boolean z, long j) {
                String forcedFirstName;
                CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
                this.animatedPosition = new AnimatedFloat(TopSendersView.this, 0L, 600L, cubicBezierInterpolator);
                this.animatedScale = new AnimatedFloat(TopSendersView.this, 0L, 200L, cubicBezierInterpolator);
                this.animatedAnonymous = new AnimatedFloat(TopSendersView.this, 0L, 350L, cubicBezierInterpolator);
                this.gradient = null;
                this.gradientMatrix = new Matrix();
                this.paint = new Paint(1);
                ImageReceiver imageReceiver = new ImageReceiver(TopSendersView.this);
                this.imageReceiver = imageReceiver;
                AvatarDrawable avatarDrawable = new AvatarDrawable();
                this.avatarDrawable = avatarDrawable;
                AvatarDrawable avatarDrawable2 = new AvatarDrawable();
                this.anonymousAvatarDrawable = avatarDrawable2;
                this.bounce = new ButtonBounce(TopSendersView.this);
                this.f2169my = z;
                this.did = j;
                if (j >= 0) {
                    TLRPC.User user = MessagesController.getInstance(StarsReactionsSheet.this.currentAccount).getUser(Long.valueOf(j));
                    forcedFirstName = UserObject.getForcedFirstName(user);
                    avatarDrawable.setInfo(user);
                    imageReceiver.setForUserOrChat(user, avatarDrawable);
                } else {
                    TLRPC.Chat chat = MessagesController.getInstance(StarsReactionsSheet.this.currentAccount).getChat(Long.valueOf(-j));
                    forcedFirstName = chat == null ? _UrlKt.FRAGMENT_ENCODE_SET : chat.title;
                    avatarDrawable.setInfo(chat);
                    imageReceiver.setForUserOrChat(chat, avatarDrawable);
                }
                imageReceiver.setRoundRadius(ExteraConfig.getAvatarCorners(56.0f));
                imageReceiver.onAttachedToWindow();
                imageReceiver.setCrossfadeWithOldImage(true);
                avatarDrawable2.setAvatarType(21);
                avatarDrawable2.setRoundRadius(ExteraConfig.getAvatarCorners(56.0f));
                avatarDrawable2.setColor(Theme.getColor(Theme.key_avatar_backgroundGray, StarsReactionsSheet.this.resourcesProvider));
                this.text = new Text(forcedFirstName, 12.0f);
            }

            private long getPrivacy() {
                if (this.anonymous) {
                    return UserObject.ANONYMOUS;
                }
                if (this.did == UserConfig.getInstance(StarsReactionsSheet.this.currentAccount).getClientUserId()) {
                    return 0L;
                }
                return this.did;
            }

            public void setAnonymous(boolean z) {
                String shortName;
                if (this.f2169my || this.anonymous == z) {
                    return;
                }
                this.anonymous = z;
                if (z) {
                    shortName = LocaleController.getString(C2888R.string.StarsReactionAnonymous);
                } else {
                    shortName = DialogObject.getShortName(this.did);
                }
                this.text = new Text(shortName, 12.0f);
                TopSendersView.this.invalidate();
            }

            public void setPrivacy(long j) {
                String forcedFirstName;
                String string;
                if (this.f2169my && getPrivacy() != j) {
                    this.anonymous = j == UserObject.ANONYMOUS;
                    if (j == 0 || j == UserObject.ANONYMOUS) {
                        j = UserConfig.getInstance(StarsReactionsSheet.this.currentAccount).getClientUserId();
                    }
                    this.did = j;
                    if (this.anonymous) {
                        string = LocaleController.getString(C2888R.string.StarsReactionAnonymous);
                    } else {
                        if (j >= 0) {
                            TLRPC.User user = MessagesController.getInstance(StarsReactionsSheet.this.currentAccount).getUser(Long.valueOf(this.did));
                            forcedFirstName = UserObject.getForcedFirstName(user);
                            this.avatarDrawable.setInfo(user);
                            this.imageReceiver.setForUserOrChat(user, this.avatarDrawable);
                        } else {
                            TLRPC.Chat chat = MessagesController.getInstance(StarsReactionsSheet.this.currentAccount).getChat(Long.valueOf(-this.did));
                            forcedFirstName = chat == null ? _UrlKt.FRAGMENT_ENCODE_SET : chat.title;
                            this.avatarDrawable.setInfo(chat);
                            this.imageReceiver.setForUserOrChat(chat, this.avatarDrawable);
                        }
                        string = forcedFirstName;
                    }
                    this.text = new Text(string, 12.0f);
                    TopSendersView.this.invalidate();
                }
            }

            public void setStars(long j) {
                this.starsText = new Text(StarsIntroActivity.replaceStars("⭐️" + LocaleController.formatNumber(j, ','), 0.85f), 12.0f, AndroidUtilities.getTypeface("fonts/num.otf"));
                if (TopSendersView.this.liveStories) {
                    int i = (int) j;
                    this.gradient = new LinearGradient(0.0f, 0.0f, 0.0f, AndroidUtilities.m1124dp(16.0f), new int[]{HighlightMessageSheet.getTierOption(StarsReactionsSheet.this.currentAccount, i, HighlightMessageSheet.TIER_COLOR2), HighlightMessageSheet.getTierOption(StarsReactionsSheet.this.currentAccount, i, HighlightMessageSheet.TIER_COLOR1)}, new float[]{0.0f, 1.0f}, Shader.TileMode.CLAMP);
                    this.currentColor = ColorUtils.blendARGB(HighlightMessageSheet.getTierOption(StarsReactionsSheet.this.currentAccount, i, HighlightMessageSheet.TIER_COLOR2), HighlightMessageSheet.getTierOption(StarsReactionsSheet.this.currentAccount, i, HighlightMessageSheet.TIER_COLOR1), 0.5f);
                    this.paint.setShader(this.gradient);
                } else {
                    this.paint.setShader(null);
                    Paint paint = this.paint;
                    this.currentColor = -1002750;
                    paint.setColor(-1002750);
                }
                Drawable drawable = this.crown;
                if (drawable != null) {
                    drawable.setColorFilter(new PorterDuffColorFilter(this.currentColor, PorterDuff.Mode.SRC_IN));
                }
            }

            public void setPlace(int i) {
                this.place = i;
                this.placeText = new Text(_UrlKt.FRAGMENT_ENCODE_SET + i, 10.0f, AndroidUtilities.getTypeface("fonts/num.otf"));
                if (i <= 0 || this.crown != null) {
                    return;
                }
                Drawable drawableMutate = TopSendersView.this.getContext().getResources().getDrawable(C2888R.drawable.filled_stream_crown).mutate();
                this.crown = drawableMutate;
                int i2 = this.currentColor;
                PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
                drawableMutate.setColorFilter(new PorterDuffColorFilter(i2, mode));
                Drawable drawableMutate2 = TopSendersView.this.getContext().getResources().getDrawable(C2888R.drawable.filled_stream_crown_outline).mutate();
                this.crownOutline = drawableMutate2;
                drawableMutate2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_dialogBackground, StarsReactionsSheet.this.resourcesProvider), mode));
            }

            public void draw(Canvas canvas) {
                float f;
                float f2;
                float f3 = this.animatedPosition.set(this.index);
                AnimatedFloat animatedFloat = this.animatedScale;
                int i = this.index;
                float f4 = animatedFloat.set(i >= 0 && i < TopSendersView.this.senders.size());
                canvas.save();
                float width = (TopSendersView.this.getWidth() - AndroidUtilities.m1124dp(80.0f)) / Math.max(1.0f, TopSendersView.this.count);
                float fM1124dp = AndroidUtilities.m1124dp(40.0f) + ((TopSendersView.this.count - (f3 + 0.5f)) * width);
                float fM1124dp2 = AndroidUtilities.m1124dp(40.0f);
                float f5 = width / 2.0f;
                this.clickBounds.set(fM1124dp - f5, fM1124dp2 - AndroidUtilities.m1124dp(50.0f), f5 + fM1124dp, AndroidUtilities.m1124dp(50.0f) + fM1124dp2);
                float f6 = (0.3f * f4) + 0.7f;
                canvas.scale(f6, f6, fM1124dp, fM1124dp2);
                float scale = this.bounce.getScale(0.04f);
                canvas.scale(scale, scale, fM1124dp, fM1124dp2);
                if (f4 > 0.0f) {
                    float f7 = this.animatedAnonymous.set(this.anonymous);
                    if (f7 < 1.0f) {
                        f2 = 255.0f;
                        f = 40.0f;
                        this.imageReceiver.setImageCoords(fM1124dp - (AndroidUtilities.m1124dp(56.0f) / 2.0f), fM1124dp2 - (AndroidUtilities.m1124dp(56.0f) / 2.0f), AndroidUtilities.m1124dp(56.0f), AndroidUtilities.m1124dp(56.0f));
                        this.imageReceiver.setAlpha(f4);
                        this.imageReceiver.draw(canvas);
                        this.imageReceiver.setAlpha(1.0f);
                    } else {
                        f = 40.0f;
                        f2 = 255.0f;
                    }
                    if (f7 > 0.0f) {
                        int i2 = (int) fM1124dp;
                        int i3 = (int) fM1124dp2;
                        this.anonymousAvatarDrawable.setBounds(i2 - (AndroidUtilities.m1124dp(56.0f) / 2), i3 - (AndroidUtilities.m1124dp(56.0f) / 2), i2 + (AndroidUtilities.m1124dp(56.0f) / 2), i3 + (AndroidUtilities.m1124dp(56.0f) / 2));
                        this.anonymousAvatarDrawable.setAlpha((int) (f4 * f2 * f7));
                        this.anonymousAvatarDrawable.draw(canvas);
                        this.anonymousAvatarDrawable.setAlpha(255);
                    }
                } else {
                    f = 40.0f;
                    f2 = 255.0f;
                }
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set((fM1124dp - (this.starsText.getCurrentWidth() / 2.0f)) - AndroidUtilities.m1124dp(5.66f), (AndroidUtilities.m1124dp(23.0f) + fM1124dp2) - (AndroidUtilities.m1124dp(16.0f) / 2.0f), (this.starsText.getCurrentWidth() / 2.0f) + fM1124dp + AndroidUtilities.m1124dp(5.66f), AndroidUtilities.m1124dp(23.0f) + fM1124dp2 + (AndroidUtilities.m1124dp(16.0f) / 2.0f));
                canvas.drawRoundRect(rectF, rectF.height() / 2.0f, rectF.height() / 2.0f, TopSendersView.this.backgroundPaint);
                int i4 = (int) (f4 * f2);
                this.paint.setAlpha(i4);
                if (this.gradient != null) {
                    this.gradientMatrix.reset();
                    this.gradientMatrix.postTranslate(0.0f, rectF.top);
                    this.gradient.setLocalMatrix(this.gradientMatrix);
                }
                canvas.drawRoundRect(rectF, rectF.height() / 2.0f, rectF.height() / 2.0f, this.paint);
                Text text = this.starsText;
                text.draw(canvas, fM1124dp - (text.getCurrentWidth() / 2.0f), AndroidUtilities.m1124dp(23.0f) + fM1124dp2, -1, f4);
                this.text.ellipsize(width - AndroidUtilities.m1124dp(4.0f)).draw(canvas, fM1124dp - (this.text.getWidth() / 2.0f), fM1124dp2 + AndroidUtilities.m1124dp(42.0f), Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, StarsReactionsSheet.this.resourcesProvider), f4);
                if (this.place > 0) {
                    int i5 = (int) fM1124dp;
                    int i6 = (int) fM1124dp2;
                    this.crownOutline.setBounds(i5 - AndroidUtilities.m1124dp(12.0f), i6 - AndroidUtilities.m1124dp(f), AndroidUtilities.m1124dp(12.0f) + i5, i6 - AndroidUtilities.m1124dp(16.0f));
                    this.crown.setBounds(i5 - AndroidUtilities.m1124dp(12.0f), i6 - AndroidUtilities.m1124dp(f), i5 + AndroidUtilities.m1124dp(12.0f), i6 - AndroidUtilities.m1124dp(16.0f));
                    this.crownOutline.setAlpha(i4);
                    this.crown.setAlpha(i4);
                    this.crownOutline.draw(canvas);
                    this.crown.draw(canvas);
                    Text text2 = this.placeText;
                    text2.draw(canvas, fM1124dp - (text2.getCurrentWidth() / 2.0f), fM1124dp2 - AndroidUtilities.m1124dp(27.0f), -1, f4);
                }
                canvas.restore();
            }
        }
    }
}
