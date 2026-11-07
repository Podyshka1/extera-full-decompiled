package org.telegram.ui.Cells;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.RelativeSizeSpan;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.exteragram.messenger.ExteraConfig;
import com.google.android.material.navigation.NavigationBarView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.DocumentObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserObject;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_stories;
import org.telegram.ui.ActionBar.SimpleTextView;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.DotDividerSpan;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.MessageSeenCheckDrawable;
import org.telegram.ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.ui.Components.StatusBadgeComponent;
import org.telegram.ui.Stories.StoriesUtilities;

/* JADX INFO: loaded from: classes6.dex */
public class ReactedUserHolderView extends FrameLayout {
    public static int STYLE_DEFAULT = 0;
    public static int STYLE_STORY = 1;
    public static final MessageSeenCheckDrawable forwardDrawable;
    public static final MessageSeenCheckDrawable reactDrawable;
    public static final MessageSeenCheckDrawable repostDrawable;
    public static final MessageSeenCheckDrawable seenDrawable;
    private ValueAnimator alphaAnimator;
    private float alphaInternal;
    AvatarDrawable avatarDrawable;
    public BackupImageView avatarView;
    int currentAccount;
    public long dialogId;
    public boolean drawDivider;
    View overlaySelectorView;
    public StoriesUtilities.AvatarStoryParams params;
    BackupImageView reactView;
    Theme.ResourcesProvider resourcesProvider;
    StatusBadgeComponent statusBadgeComponent;
    public int storyId;
    public BackupImageView storyPreviewView;
    int style;
    SimpleTextView subtitleView;
    SimpleTextView titleView;

    public void openStory(long j, Runnable runnable) {
    }

    static {
        int i = C2665R.drawable.msg_mini_checks;
        int i2 = Theme.key_windowBackgroundWhiteGrayText;
        seenDrawable = new MessageSeenCheckDrawable(i, i2);
        reactDrawable = new MessageSeenCheckDrawable(C2665R.drawable.msg_reactions, i2, 16, 16, 5.66f);
        int i3 = C2665R.drawable.mini_repost_story;
        int i4 = Theme.key_stories_circle1;
        repostDrawable = new MessageSeenCheckDrawable(i3, i4);
        forwardDrawable = new MessageSeenCheckDrawable(C2665R.drawable.mini_forward_story, i4);
    }

    public ReactedUserHolderView(final int i, int i2, Context context, Theme.ResourcesProvider resourcesProvider, boolean z, boolean z2) {
        super(context);
        this.avatarDrawable = new AvatarDrawable();
        this.alphaInternal = 1.0f;
        this.style = i;
        this.currentAccount = i2;
        this.resourcesProvider = resourcesProvider;
        this.params = new StoriesUtilities.AvatarStoryParams(false, resourcesProvider) { // from class: org.telegram.ui.Cells.ReactedUserHolderView.1
            @Override // org.telegram.ui.Stories.StoriesUtilities.AvatarStoryParams
            public void openStory(long j, Runnable runnable) {
                ReactedUserHolderView.this.openStory(j, runnable);
            }
        };
        setLayoutParams(new RecyclerView.LayoutParams(-1, AndroidUtilities.dp(50.0f)));
        int i3 = i == STYLE_STORY ? 48 : 34;
        BackupImageView backupImageView = new BackupImageView(context) { // from class: org.telegram.ui.Cells.ReactedUserHolderView.2
            @Override // org.telegram.ui.Components.BackupImageView, android.view.View
            public void onDraw(Canvas canvas) {
                if (i == ReactedUserHolderView.STYLE_STORY) {
                    ReactedUserHolderView.this.params.originalAvatarRect.set(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight());
                    StoriesUtilities.drawAvatarWithStory(ReactedUserHolderView.this.dialogId, canvas, getImageReceiver(), ReactedUserHolderView.this.params);
                } else {
                    super.onDraw(canvas);
                }
            }

            @Override // android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                return ReactedUserHolderView.this.params.checkOnTouchEvent(motionEvent, this);
            }
        };
        this.avatarView = backupImageView;
        float f = i3;
        backupImageView.setRoundRadius(ExteraConfig.getAvatarCorners(f));
        addView(this.avatarView, LayoutHelper.createFrameRelatively(f, f, NavigationBarView.ITEM_GRAVITY_START_CENTER, 10.0f, 0.0f, 0.0f, 0.0f));
        if (i == STYLE_STORY) {
            setClipChildren(false);
        }
        SimpleTextView simpleTextView = new SimpleTextView(context) { // from class: org.telegram.ui.Cells.ReactedUserHolderView.3
            @Override // org.telegram.ui.ActionBar.SimpleTextView
            public boolean setText(CharSequence charSequence) {
                return super.setText(Emoji.replaceEmoji(charSequence, getPaint().getFontMetricsInt(), false));
            }
        };
        this.titleView = simpleTextView;
        NotificationCenter.listenEmojiLoading(simpleTextView);
        this.titleView.setTextSize(16);
        this.titleView.setTextColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem, resourcesProvider));
        this.titleView.setEllipsizeByGradient(true);
        this.titleView.setImportantForAccessibility(2);
        this.titleView.setRightPadding(AndroidUtilities.dp(30.0f));
        this.titleView.setTranslationX(LocaleController.isRTL ? AndroidUtilities.dp(30.0f) : 0.0f);
        this.titleView.setRightDrawableOutside(true);
        int i4 = STYLE_STORY;
        float f2 = i == i4 ? 7.66f : 5.33f;
        float f3 = i == i4 ? 73.0f : 55.0f;
        addView(this.titleView, LayoutHelper.createFrameRelatively(-1.0f, -2.0f, 55, f3, f2, 12.0f, 0.0f));
        this.statusBadgeComponent = new StatusBadgeComponent(this);
        this.titleView.setDrawablePadding(AndroidUtilities.dp(3.0f));
        this.titleView.setRightDrawable(this.statusBadgeComponent.getDrawable());
        SimpleTextView simpleTextView2 = new SimpleTextView(context);
        this.subtitleView = simpleTextView2;
        simpleTextView2.setTextSize(13);
        this.subtitleView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText, resourcesProvider));
        this.subtitleView.setEllipsizeByGradient(true);
        this.subtitleView.setImportantForAccessibility(2);
        this.subtitleView.setTranslationX(LocaleController.isRTL ? AndroidUtilities.dp(30.0f) : 0.0f);
        addView(this.subtitleView, LayoutHelper.createFrameRelatively(-1.0f, -2.0f, 55, f3, i == STYLE_STORY ? 24.0f : 19.0f, 20.0f, 0.0f));
        if (z2) {
            BackupImageView backupImageView2 = new BackupImageView(context);
            this.reactView = backupImageView2;
            addView(backupImageView2, LayoutHelper.createFrameRelatively(24.0f, 24.0f, 8388629, 0.0f, 0.0f, 12.0f, 0.0f));
            BackupImageView backupImageView3 = new BackupImageView(context);
            this.storyPreviewView = backupImageView3;
            addView(backupImageView3, LayoutHelper.createFrameRelatively(22.0f, 35.0f, 8388629, 0.0f, 0.0f, 12.0f, 0.0f));
        }
        if (z) {
            View view = new View(context);
            this.overlaySelectorView = view;
            view.setBackground(Theme.getSelectorDrawable(false));
            addView(this.overlaySelectorView, LayoutHelper.createFrame(-1, -1.0f));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:114:0x02f6  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x030b  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x030d  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0323  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0338  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01ee  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setUserReaction(TLRPC.User user, TLRPC.Chat chat, TLRPC.Reaction reaction, boolean z, long j, TL_stories.StoryItem storyItem, boolean z2, boolean z3, boolean z4) {
        TLRPC.ChatPhoto chatPhoto;
        BitmapDrawable bitmapDrawable;
        String string;
        boolean z5;
        boolean z6;
        long j2;
        float fDp;
        MessageSeenCheckDrawable messageSeenCheckDrawable;
        TL_stories.StoryFwdHeader storyFwdHeader;
        TLRPC.Document document;
        TLRPC.Photo photo;
        TLRPC.UserProfilePhoto userProfilePhoto;
        TLObject tLObject = user == null ? chat : user;
        if (tLObject == null) {
            return;
        }
        this.statusBadgeComponent.updateDrawable(user, chat, Theme.getColor(this.style == STYLE_STORY ? Theme.key_windowBackgroundWhiteBlackText : Theme.key_chats_verifiedBackground, this.resourcesProvider), false);
        this.avatarDrawable.setInfo(this.currentAccount, tLObject);
        if (user != null) {
            this.dialogId = user.id;
            this.titleView.setText(UserObject.getUserName(user));
        } else {
            this.dialogId = -chat.id;
            this.titleView.setText(chat.title);
        }
        Drawable drawable = this.avatarDrawable;
        if (user == null ? !((chatPhoto = chat.photo) == null || (bitmapDrawable = chatPhoto.strippedBitmap) == null) : !((userProfilePhoto = user.photo) == null || (bitmapDrawable = userProfilePhoto.strippedBitmap) == null)) {
            drawable = bitmapDrawable;
        }
        this.avatarView.setImage(ImageLocation.getForUserOrChat(this.currentAccount, tLObject, 1), "50_50", drawable, tLObject);
        if (z) {
            BackupImageView backupImageView = this.reactView;
            if (backupImageView != null) {
                backupImageView.setAnimatedEmojiDrawable(null);
            }
            Drawable drawableMutate = ContextCompat.getDrawable(getContext(), C2665R.drawable.media_like_active).mutate();
            drawableMutate.setColorFilter(new PorterDuffColorFilter(-53704, PorterDuff.Mode.MULTIPLY));
            this.reactView.setImageDrawable(drawableMutate);
            string = LocaleController.formatString("AccDescrLike", C2665R.string.AccDescrLike, new Object[0]);
            z5 = true;
        } else if (reaction != null) {
            ReactionsLayoutInBubble.VisibleReaction visibleReactionFromTL = ReactionsLayoutInBubble.VisibleReaction.fromTL(reaction);
            if (visibleReactionFromTL.emojicon != null) {
                BackupImageView backupImageView2 = this.reactView;
                if (backupImageView2 != null) {
                    backupImageView2.setAnimatedEmojiDrawable(null);
                }
                TLRPC.TL_availableReaction tL_availableReaction = MediaDataController.getInstance(this.currentAccount).getReactionsMap().get(visibleReactionFromTL.emojicon);
                BackupImageView backupImageView3 = this.reactView;
                if (backupImageView3 != null) {
                    if (tL_availableReaction != null) {
                        this.reactView.setImage(ImageLocation.getForDocument(tL_availableReaction.center_icon), "40_40_lastreactframe", "webp", DocumentObject.getSvgThumb(tL_availableReaction.static_icon.thumbs, Theme.key_windowBackgroundGray, 1.0f), tL_availableReaction);
                        z6 = true;
                    } else {
                        backupImageView3.setImageDrawable(null);
                        z6 = false;
                    }
                    this.reactView.setColorFilter(null);
                } else {
                    z6 = false;
                }
            } else {
                AnimatedEmojiDrawable animatedEmojiDrawable = new AnimatedEmojiDrawable(0, this.currentAccount, visibleReactionFromTL.documentId);
                animatedEmojiDrawable.setColorFilter(Theme.getAnimatedEmojiColorFilter(this.resourcesProvider));
                BackupImageView backupImageView4 = this.reactView;
                if (backupImageView4 != null) {
                    backupImageView4.setAnimatedEmojiDrawable(animatedEmojiDrawable);
                }
                z6 = true;
            }
            int i = C2665R.string.AccDescrReactedWith;
            CharSequence text = this.titleView.getText();
            Object obj = visibleReactionFromTL.emojicon;
            if (obj == null) {
                obj = reaction;
            }
            string = LocaleController.formatString("AccDescrReactedWith", i, text, obj);
            z5 = z6;
        } else {
            BackupImageView backupImageView5 = this.reactView;
            if (backupImageView5 != null) {
                backupImageView5.setAnimatedEmojiDrawable(null);
                this.reactView.setImageDrawable(null);
            }
            string = LocaleController.formatString("AccDescrPersonHasSeen", C2665R.string.AccDescrPersonHasSeen, this.titleView.getText());
            z5 = false;
        }
        if (storyItem != null) {
            this.storyId = storyItem.id;
            if (this.storyPreviewView != null) {
                TLRPC.MessageMedia messageMedia = storyItem.media;
                if (messageMedia != null && (photo = messageMedia.photo) != null) {
                    this.storyPreviewView.setImage(ImageLocation.getForPhoto(FileLoader.getClosestPhotoSizeWithSize(photo.sizes, 35, false, null, true), storyItem.media.photo), "22_35", (ImageLocation) null, (String) null, -1, storyItem);
                } else if (messageMedia != null && (document = messageMedia.document) != null) {
                    this.storyPreviewView.setImage(ImageLocation.getForDocument(FileLoader.getClosestPhotoSizeWithSize(document.thumbs, 35, false, null, true), storyItem.media.document), "22_35", (ImageLocation) null, (String) null, -1, storyItem);
                }
                this.storyPreviewView.setRoundRadius(AndroidUtilities.dp(3.33f));
            }
            if (j <= 0) {
                j2 = storyItem.date;
            }
            if (j2 != 0) {
                string = string + " " + LocaleController.formatSeenDate(j2);
            }
            setContentDescription(string);
            SimpleTextView simpleTextView = this.subtitleView;
            fDp = 0.0f;
            if (j2 == 0) {
                simpleTextView.setVisibility(0);
                if (storyItem != null) {
                    messageSeenCheckDrawable = z2 ? forwardDrawable : repostDrawable;
                } else if (z3) {
                    messageSeenCheckDrawable = seenDrawable;
                } else {
                    messageSeenCheckDrawable = reactDrawable;
                }
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                spannableStringBuilder.append(messageSeenCheckDrawable.getSpanned(getContext(), this.resourcesProvider));
                spannableStringBuilder.append((CharSequence) LocaleController.formatSeenDate(j2));
                if (!z2 && storyItem != null && !TextUtils.isEmpty(storyItem.caption)) {
                    spannableStringBuilder.append((CharSequence) "\u2004");
                    spannableStringBuilder.append((CharSequence) ".");
                    DotDividerSpan dotDividerSpan = new DotDividerSpan();
                    dotDividerSpan.setSize(2.33333f);
                    dotDividerSpan.setTopPadding(AndroidUtilities.dp(5.0f));
                    spannableStringBuilder.setSpan(dotDividerSpan, spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
                    spannableStringBuilder.append((CharSequence) "\u2004");
                    int length = spannableStringBuilder.length();
                    spannableStringBuilder.append((CharSequence) LocaleController.getString(C2665R.string.StoryRepostCommented));
                    spannableStringBuilder.setSpan(new RelativeSizeSpan(0.95f), length, spannableStringBuilder.length(), 33);
                } else if (!z2 && storyItem != null && (storyFwdHeader = storyItem.fwd_from) != null && storyFwdHeader.modified) {
                    spannableStringBuilder.append((CharSequence) "\u2004");
                    spannableStringBuilder.append((CharSequence) ".");
                    DotDividerSpan dotDividerSpan2 = new DotDividerSpan();
                    dotDividerSpan2.setSize(2.33333f);
                    dotDividerSpan2.setTopPadding(AndroidUtilities.dp(5.0f));
                    spannableStringBuilder.setSpan(dotDividerSpan2, spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
                    spannableStringBuilder.append((CharSequence) "\u2004");
                    int length2 = spannableStringBuilder.length();
                    spannableStringBuilder.append((CharSequence) "edited");
                    spannableStringBuilder.setSpan(new RelativeSizeSpan(0.95f), length2, spannableStringBuilder.length(), 33);
                }
                this.subtitleView.setText(spannableStringBuilder);
                this.subtitleView.setTranslationY(!z3 ? AndroidUtilities.dp(-1.0f) : 0.0f);
                this.titleView.setTranslationY(0.0f);
                if (z4) {
                    this.titleView.setTranslationY(AndroidUtilities.dp(9.0f));
                    this.titleView.animate().translationY(0.0f);
                    this.subtitleView.setAlpha(0.0f);
                    this.subtitleView.animate().alpha(1.0f);
                }
            } else {
                simpleTextView.setVisibility(8);
                this.titleView.setTranslationY(AndroidUtilities.dp(9.0f));
            }
            this.titleView.setRightPadding(AndroidUtilities.dp(!z5 ? 30.0f : 0.0f));
            this.titleView.setTranslationX((z5 || !LocaleController.isRTL) ? 0.0f : AndroidUtilities.dp(30.0f));
            ((ViewGroup.MarginLayoutParams) this.subtitleView.getLayoutParams()).rightMargin = AndroidUtilities.dp((z5 || LocaleController.isRTL) ? 12.0f : 36.0f);
            SimpleTextView simpleTextView2 = this.subtitleView;
            if (z5 && LocaleController.isRTL) {
                fDp = AndroidUtilities.dp(30.0f);
            }
            simpleTextView2.setTranslationX(fDp);
        }
        this.storyId = -1;
        BackupImageView backupImageView6 = this.storyPreviewView;
        if (backupImageView6 != null) {
            backupImageView6.setImageDrawable(null);
        }
        j2 = j;
        if (j2 != 0) {
        }
        setContentDescription(string);
        SimpleTextView simpleTextView3 = this.subtitleView;
        fDp = 0.0f;
        if (j2 == 0) {
        }
        this.titleView.setRightPadding(AndroidUtilities.dp(!z5 ? 30.0f : 0.0f));
        this.titleView.setTranslationX((z5 || !LocaleController.isRTL) ? 0.0f : AndroidUtilities.dp(30.0f));
        ((ViewGroup.MarginLayoutParams) this.subtitleView.getLayoutParams()).rightMargin = AndroidUtilities.dp((z5 || LocaleController.isRTL) ? 12.0f : 36.0f);
        SimpleTextView simpleTextView22 = this.subtitleView;
        if (z5) {
            fDp = AndroidUtilities.dp(30.0f);
        }
        simpleTextView22.setTranslationX(fDp);
    }

    public void setUserReaction(TLRPC.MessagePeerReaction messagePeerReaction) {
        TLRPC.User user;
        if (messagePeerReaction == null) {
            return;
        }
        long peerId = MessageObject.getPeerId(messagePeerReaction.peer_id);
        int i = this.currentAccount;
        TLRPC.Chat chat = null;
        if (peerId > 0) {
            user = MessagesController.getInstance(i).getUser(Long.valueOf(peerId));
        } else {
            TLRPC.Chat chat2 = MessagesController.getInstance(i).getChat(Long.valueOf(-peerId));
            user = null;
            chat = chat2;
        }
        setUserReaction(user, chat, messagePeerReaction.reaction, false, messagePeerReaction.date, null, false, messagePeerReaction.dateIsSeen, false);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(this.style == STYLE_DEFAULT ? 50 : 58), TLObject.FLAG_30));
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setEnabled(true);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.statusBadgeComponent.onAttachedToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.statusBadgeComponent.onDetachedFromWindow();
        this.params.onDetachFromWindow();
    }

    public void animateAlpha(final float f, boolean z) {
        ValueAnimator valueAnimator = this.alphaAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.alphaAnimator = null;
        }
        if (z) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.alphaInternal, f);
            this.alphaAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Cells.ReactedUserHolderView$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.lambda$animateAlpha$0(valueAnimator2);
                }
            });
            this.alphaAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Cells.ReactedUserHolderView.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    ReactedUserHolderView.this.alphaInternal = f;
                    ReactedUserHolderView.this.invalidate();
                }
            });
            this.alphaAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            this.alphaAnimator.setDuration(420L);
            this.alphaAnimator.start();
            return;
        }
        this.alphaInternal = f;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateAlpha$0(ValueAnimator valueAnimator) {
        this.alphaInternal = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    public float getAlphaInternal() {
        return this.alphaInternal;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        boolean z;
        if (this.alphaInternal < 1.0f) {
            canvas.saveLayerAlpha(0.0f, 0.0f, getWidth(), getHeight(), (int) (this.alphaInternal * 255.0f), 31);
            z = true;
        } else {
            z = false;
        }
        super.dispatchDraw(canvas);
        if (this.drawDivider) {
            float fDp = AndroidUtilities.dp(this.style == STYLE_STORY ? 73.0f : 55.0f);
            if (LocaleController.isRTL) {
                canvas.drawLine(0.0f, getMeasuredHeight() - 1, getMeasuredWidth() - fDp, getMeasuredHeight() - 1, Theme.getThemePaint("paintDivider", this.resourcesProvider));
            } else {
                canvas.drawLine(fDp, getMeasuredHeight() - 1, getMeasuredWidth(), getMeasuredHeight() - 1, Theme.getThemePaint("paintDivider", this.resourcesProvider));
            }
        }
        if (z) {
            canvas.restore();
        }
    }

    public Theme.ResourcesProvider getResourcesProvider() {
        return this.resourcesProvider;
    }
}
