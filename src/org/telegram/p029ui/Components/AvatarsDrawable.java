package org.telegram.p029ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.view.View;
import android.view.animation.Interpolator;
import androidx.core.graphics.ColorUtils;
import com.exteragram.messenger.ExteraConfig;
import java.util.Random;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.voip.VoIPService;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.GroupCallUserCell;
import org.telegram.p029ui.Stories.StoriesGradientTools;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_stories;

/* JADX INFO: loaded from: classes3.dex */
public class AvatarsDrawable {
    private boolean attached;
    boolean centered;
    public int count;
    int currentStyle;
    public boolean drawStoriesCircle;
    public int height;
    private boolean isInCall;
    public float maxX;
    private int overrideSize;
    View parent;
    private boolean showSavedMessages;
    StoriesGradientTools storiesTools;
    private boolean transitionInProgress;
    ValueAnimator transitionProgressAnimator;
    boolean updateAfterTransition;
    Runnable updateDelegate;
    boolean wasDraw;
    public int width;
    public DrawingState[] currentStates = new DrawingState[3];
    public DrawingState[] animatingStates = new DrawingState[3];
    float transitionProgress = 1.0f;
    private Paint paint = new Paint(1);
    private Paint xRefP = new Paint(1);
    public int strokeWidth = AndroidUtilities.m1124dp(1.67f);
    private float overrideSizeStepFactor = 0.8f;
    private float overrideAlpha = 1.0f;
    public long transitionDuration = 220;
    public Interpolator transitionInterpolator = CubicBezierInterpolator.DEFAULT;
    Random random = new Random();

    public static class DrawingState {
        private int animationType;
        public AvatarDrawable avatarDrawable;

        /* JADX INFO: renamed from: id */
        private long f1927id;
        private ImageReceiver imageReceiver;
        private long lastSpeakTime;
        private long lastUpdateTime;
        private int moveFromIndex;
        private TLObject object;
        TLRPC.GroupCallParticipant participant;
        private GroupCallUserCell.AvatarWavesDrawable wavesDrawable;
    }

    public void commitTransition(boolean z) {
        commitTransition(z, true);
    }

    public void setTransitionProgress(float f) {
        if (!this.transitionInProgress || this.transitionProgress == f) {
            return;
        }
        this.transitionProgress = f;
        if (f == 1.0f) {
            swapStates();
            this.transitionInProgress = false;
        }
    }

    public void commitTransition(boolean z, boolean z2) {
        if (!this.wasDraw || !z) {
            this.transitionProgress = 1.0f;
            swapStates();
            return;
        }
        DrawingState[] drawingStateArr = new DrawingState[3];
        boolean z3 = false;
        for (int i = 0; i < 3; i++) {
            DrawingState[] drawingStateArr2 = this.currentStates;
            drawingStateArr[i] = drawingStateArr2[i];
            if (drawingStateArr2[i].f1927id != this.animatingStates[i].f1927id) {
                z3 = true;
            } else {
                this.currentStates[i].lastSpeakTime = this.animatingStates[i].lastSpeakTime;
            }
        }
        if (!z3) {
            this.transitionProgress = 1.0f;
            return;
        }
        for (int i2 = 0; i2 < 3; i2++) {
            int i3 = 0;
            while (true) {
                if (i3 >= 3) {
                    this.animatingStates[i2].animationType = 0;
                    break;
                }
                if (this.currentStates[i3].f1927id == this.animatingStates[i2].f1927id) {
                    drawingStateArr[i3] = null;
                    if (i2 == i3) {
                        this.animatingStates[i2].animationType = -1;
                        GroupCallUserCell.AvatarWavesDrawable avatarWavesDrawable = this.animatingStates[i2].wavesDrawable;
                        this.animatingStates[i2].wavesDrawable = this.currentStates[i2].wavesDrawable;
                        this.currentStates[i2].wavesDrawable = avatarWavesDrawable;
                    } else {
                        this.animatingStates[i2].animationType = 2;
                        this.animatingStates[i2].moveFromIndex = i3;
                    }
                } else {
                    i3++;
                }
            }
        }
        for (int i4 = 0; i4 < 3; i4++) {
            DrawingState drawingState = drawingStateArr[i4];
            if (drawingState != null) {
                drawingState.animationType = 1;
            }
        }
        ValueAnimator valueAnimator = this.transitionProgressAnimator;
        if (valueAnimator != null) {
            valueAnimator.removeAllListeners();
            this.transitionProgressAnimator.cancel();
            if (this.transitionInProgress) {
                swapStates();
                this.transitionInProgress = false;
            }
        }
        this.transitionProgress = 0.0f;
        if (z2) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.transitionProgressAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.AvatarsDrawable$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.lambda$commitTransition$0(valueAnimator2);
                }
            });
            this.transitionProgressAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.AvatarsDrawable.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    AvatarsDrawable avatarsDrawable = AvatarsDrawable.this;
                    if (avatarsDrawable.transitionProgressAnimator != null) {
                        avatarsDrawable.transitionProgress = 1.0f;
                        avatarsDrawable.swapStates();
                        AvatarsDrawable avatarsDrawable2 = AvatarsDrawable.this;
                        if (avatarsDrawable2.updateAfterTransition) {
                            avatarsDrawable2.updateAfterTransition = false;
                            Runnable runnable = avatarsDrawable2.updateDelegate;
                            if (runnable != null) {
                                runnable.run();
                            }
                        }
                        AvatarsDrawable.this.invalidate();
                    }
                    AvatarsDrawable.this.transitionProgressAnimator = null;
                }
            });
            this.transitionProgressAnimator.setDuration(this.transitionDuration);
            this.transitionProgressAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
            this.transitionProgressAnimator.start();
        } else {
            this.transitionInProgress = true;
        }
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$commitTransition$0(ValueAnimator valueAnimator) {
        this.transitionProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void swapStates() {
        for (int i = 0; i < 3; i++) {
            DrawingState[] drawingStateArr = this.currentStates;
            DrawingState drawingState = drawingStateArr[i];
            DrawingState[] drawingStateArr2 = this.animatingStates;
            drawingStateArr[i] = drawingStateArr2[i];
            drawingStateArr2[i] = drawingState;
        }
    }

    public void updateAfterTransitionEnd() {
        this.updateAfterTransition = true;
    }

    public void setDelegate(Runnable runnable) {
        this.updateDelegate = runnable;
    }

    public void setStyle(int i) {
        this.currentStyle = i;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invalidate() {
        View view = this.parent;
        if (view != null) {
            view.invalidate();
        }
    }

    public void setSize(int i) {
        this.overrideSize = i;
    }

    public void setStepFactor(float f) {
        this.overrideSizeStepFactor = f;
    }

    public void animateFromState(AvatarsDrawable avatarsDrawable, int i, boolean z) {
        if (avatarsDrawable == null) {
            return;
        }
        ValueAnimator valueAnimator = avatarsDrawable.transitionProgressAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            if (this.transitionInProgress) {
                this.transitionInProgress = false;
                swapStates();
            }
        }
        TLObject[] tLObjectArr = new TLObject[3];
        for (int i2 = 0; i2 < 3; i2++) {
            tLObjectArr[i2] = this.currentStates[i2].object;
            setObject(i2, i, avatarsDrawable.currentStates[i2].object);
        }
        commitTransition(false);
        for (int i3 = 0; i3 < 3; i3++) {
            setObject(i3, i, tLObjectArr[i3]);
        }
        this.wasDraw = true;
        commitTransition(true, z);
    }

    public void setAlpha(float f) {
        this.overrideAlpha = f;
    }

    public AvatarsDrawable(View view, boolean z) {
        this.parent = view;
        for (int i = 0; i < 3; i++) {
            this.currentStates[i] = new DrawingState();
            this.currentStates[i].imageReceiver = new ImageReceiver(view);
            this.currentStates[i].imageReceiver.setInvalidateAll(true);
            this.currentStates[i].imageReceiver.setRoundRadius(ExteraConfig.getAvatarCorners(24.0f));
            this.currentStates[i].avatarDrawable = new AvatarDrawable();
            this.currentStates[i].avatarDrawable.setTextSize(AndroidUtilities.m1124dp(16.0f));
            this.animatingStates[i] = new DrawingState();
            this.animatingStates[i].imageReceiver = new ImageReceiver(view);
            this.animatingStates[i].imageReceiver.setInvalidateAll(true);
            this.animatingStates[i].imageReceiver.setRoundRadius(ExteraConfig.getAvatarCorners(24.0f));
            this.animatingStates[i].avatarDrawable = new AvatarDrawable();
            this.animatingStates[i].avatarDrawable.setTextSize(AndroidUtilities.m1124dp(16.0f));
        }
        this.isInCall = z;
        this.xRefP.setColor(0);
        this.xRefP.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
    }

    public void setAvatarsTextSize(int i) {
        AvatarDrawable avatarDrawable;
        AvatarDrawable avatarDrawable2;
        for (int i2 = 0; i2 < 3; i2++) {
            DrawingState drawingState = this.currentStates[i2];
            if (drawingState != null && (avatarDrawable2 = drawingState.avatarDrawable) != null) {
                avatarDrawable2.setTextSize(i);
            }
            DrawingState drawingState2 = this.animatingStates[i2];
            if (drawingState2 != null && (avatarDrawable = drawingState2.avatarDrawable) != null) {
                avatarDrawable.setTextSize(i);
            }
        }
    }

    public void setObject(int i, int i2, TLObject tLObject) {
        TLRPC.User user;
        TLRPC.Chat chat;
        this.animatingStates[i].f1927id = 0L;
        DrawingState drawingState = this.animatingStates[i];
        drawingState.participant = null;
        if (tLObject == null) {
            drawingState.imageReceiver.setImageBitmap((Drawable) null);
            invalidate();
            return;
        }
        drawingState.lastSpeakTime = -1L;
        this.animatingStates[i].object = tLObject;
        if (tLObject instanceof TLRPC.GroupCallParticipant) {
            TLRPC.GroupCallParticipant groupCallParticipant = (TLRPC.GroupCallParticipant) tLObject;
            this.animatingStates[i].participant = groupCallParticipant;
            long peerId = MessageObject.getPeerId(groupCallParticipant.peer);
            if (DialogObject.isUserDialog(peerId)) {
                user = MessagesController.getInstance(i2).getUser(Long.valueOf(peerId));
                this.animatingStates[i].avatarDrawable.setInfo(i2, user);
                chat = null;
            } else {
                TLRPC.Chat chat2 = MessagesController.getInstance(i2).getChat(Long.valueOf(-peerId));
                this.animatingStates[i].avatarDrawable.setInfo(i2, chat2);
                chat = chat2;
                user = null;
            }
            if (this.currentStyle != 4) {
                this.animatingStates[i].lastSpeakTime = groupCallParticipant.active_date;
            } else if (peerId == AccountInstance.getInstance(i2).getUserConfig().getClientUserId()) {
                this.animatingStates[i].lastSpeakTime = 0L;
            } else if (this.isInCall) {
                this.animatingStates[i].lastSpeakTime = groupCallParticipant.lastActiveDate;
            } else {
                this.animatingStates[i].lastSpeakTime = groupCallParticipant.active_date;
            }
            this.animatingStates[i].f1927id = peerId;
        } else if (tLObject instanceof TLRPC.User) {
            user = (TLRPC.User) tLObject;
            if (user.self && this.showSavedMessages) {
                this.animatingStates[i].avatarDrawable.setAvatarType(1);
                this.animatingStates[i].avatarDrawable.setScaleSize(0.6f);
            } else {
                this.animatingStates[i].avatarDrawable.setAvatarType(0);
                this.animatingStates[i].avatarDrawable.setScaleSize(1.0f);
                this.animatingStates[i].avatarDrawable.setInfo(i2, user);
            }
            this.animatingStates[i].f1927id = user.f1825id;
            chat = null;
        } else if (tLObject instanceof TLRPC.Chat) {
            chat = (TLRPC.Chat) tLObject;
            this.animatingStates[i].avatarDrawable.setAvatarType(0);
            this.animatingStates[i].avatarDrawable.setScaleSize(1.0f);
            this.animatingStates[i].avatarDrawable.setInfo(i2, chat);
            this.animatingStates[i].f1927id = -chat.f1660id;
            user = null;
        } else {
            user = null;
            chat = null;
        }
        int size = getSize();
        if (tLObject instanceof TL_stories.StoryItem) {
            TL_stories.StoryItem storyItem = (TL_stories.StoryItem) tLObject;
            this.animatingStates[i].f1927id = storyItem.f1857id;
            TLRPC.MessageMedia messageMedia = storyItem.media;
            TLRPC.Document document = messageMedia.document;
            if (document != null) {
                TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(document.thumbs, 50, true, null, false);
                TLRPC.PhotoSize closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(storyItem.media.document.thumbs, 50, true, closestPhotoSizeWithSize, true);
                this.animatingStates[i].imageReceiver.setImage(ImageLocation.getForDocument(closestPhotoSizeWithSize2, storyItem.media.document), size + "_" + size, ImageLocation.getForDocument(closestPhotoSizeWithSize, storyItem.media.document), size + "_" + size, 0L, null, storyItem, 0);
            } else {
                TLRPC.Photo photo = messageMedia.photo;
                if (photo != null) {
                    TLRPC.PhotoSize closestPhotoSizeWithSize3 = FileLoader.getClosestPhotoSizeWithSize(photo.sizes, 50, true, null, false);
                    TLRPC.PhotoSize closestPhotoSizeWithSize4 = FileLoader.getClosestPhotoSizeWithSize(storyItem.media.photo.sizes, 50, true, closestPhotoSizeWithSize3, true);
                    this.animatingStates[i].imageReceiver.setImage(ImageLocation.getForPhoto(closestPhotoSizeWithSize4, storyItem.media.photo), size + "_" + size, ImageLocation.getForPhoto(closestPhotoSizeWithSize3, storyItem.media.photo), size + "_" + size, 0L, null, storyItem, 0);
                }
            }
        } else if (user != null) {
            if (user.self && this.showSavedMessages) {
                this.animatingStates[i].imageReceiver.setImageBitmap(this.animatingStates[i].avatarDrawable);
            } else {
                this.animatingStates[i].imageReceiver.setForUserOrChat(user, this.animatingStates[i].avatarDrawable);
            }
        } else {
            this.animatingStates[i].imageReceiver.setForUserOrChat(chat, this.animatingStates[i].avatarDrawable);
        }
        float f = size;
        this.animatingStates[i].imageReceiver.setRoundRadius(ExteraConfig.getAvatarCorners(f, true));
        this.animatingStates[i].imageReceiver.setImageCoords(0.0f, 0.0f, f, f);
        invalidate();
    }

    public float getUsedWidth() {
        int iM1124dp;
        int i = this.currentStyle;
        boolean z = i == 4 || i == 10;
        if (i == 11) {
            iM1124dp = AndroidUtilities.m1124dp(12.0f);
        } else {
            int i2 = this.overrideSize;
            if (i2 != 0) {
                iM1124dp = (int) (i2 * this.overrideSizeStepFactor);
            } else {
                iM1124dp = AndroidUtilities.m1124dp(z ? 24.0f : 20.0f);
            }
        }
        int i3 = 0;
        for (int i4 = 0; i4 < 3; i4++) {
            if (this.currentStates[i4].f1927id != 0) {
                i3++;
            }
        }
        return (Math.max(0, i3 - 1) * iM1124dp) + (i3 > 0 ? getSize() : 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:151:0x0271  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x02cc  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x035c  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x03d8  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x0417  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0428  */
    /* JADX WARN: Removed duplicated region for block: B:290:0x06b5  */
    /* JADX WARN: Removed duplicated region for block: B:296:0x06e6  */
    /* JADX WARN: Removed duplicated region for block: B:302:0x0725  */
    /* JADX WARN: Removed duplicated region for block: B:310:0x0759  */
    /* JADX WARN: Removed duplicated region for block: B:314:0x0780  */
    /* JADX WARN: Removed duplicated region for block: B:315:0x0795  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x07ae  */
    /* JADX WARN: Removed duplicated region for block: B:331:0x02aa A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:339:0x07b1 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onDraw(Canvas canvas) {
        int iM1124dp;
        Canvas canvas2;
        int i;
        float f;
        char c;
        byte b;
        float f2;
        Object[] objArr;
        float f3;
        int i2;
        ImageReceiver imageReceiver;
        float f4;
        float f5;
        char c2;
        DrawingState drawingState;
        TLRPC.GroupCallParticipant groupCallParticipant;
        boolean z;
        float avatarScale;
        char c3;
        ImageReceiver imageReceiver2;
        float f6;
        boolean z2;
        boolean z3 = true;
        this.wasDraw = true;
        int i3 = this.currentStyle;
        int i4 = 10;
        int i5 = 4;
        boolean z4 = i3 == 4 || i3 == 10;
        int size = getSize();
        int i6 = 11;
        if (this.currentStyle == 11) {
            iM1124dp = AndroidUtilities.m1124dp(12.0f);
        } else {
            int i7 = this.overrideSize;
            if (i7 != 0) {
                iM1124dp = (int) (i7 * this.overrideSizeStepFactor);
            } else {
                iM1124dp = AndroidUtilities.m1124dp(z4 ? 24.0f : 20.0f);
            }
        }
        int i8 = iM1124dp;
        for (int i9 = 0; i9 < 3; i9++) {
            long unused = this.currentStates[i9].f1927id;
        }
        int i10 = this.currentStyle;
        int iM1124dp2 = (i10 == 0 || i10 == 10 || i10 == 11) ? 0 : AndroidUtilities.m1124dp(10.0f);
        int usedWidth = this.centered ? (this.width - ((int) getUsedWidth())) / 2 : iM1124dp2;
        boolean z5 = VoIPService.getSharedInstance() != null && VoIPService.getSharedInstance().isMicMute();
        int i11 = this.currentStyle;
        if (i11 == 4) {
            this.paint.setColor(Theme.getColor(Theme.key_inappPlayerBackground));
        } else if (i11 != 3) {
            this.paint.setColor(Theme.getColor(z5 ? Theme.key_returnToCallMutedBackground : Theme.key_returnToCallBackground));
        }
        int i12 = 0;
        for (int i13 = 0; i13 < 3; i13++) {
            if (this.animatingStates[i13].f1927id != 0) {
                i12++;
            }
        }
        int i14 = this.currentStyle;
        boolean z6 = i14 == 0 || i14 == 1 || i14 == 3 || i14 == 4 || i14 == 5 || i14 == 10 || i14 == 11;
        if (z6) {
            float fM1124dp = i14 == 10 ? AndroidUtilities.m1124dp(16.0f) : 0.0f;
            if (this.drawStoriesCircle) {
                fM1124dp += AndroidUtilities.m1124dp(20.0f);
            }
            float f7 = -fM1124dp;
            float f8 = this.width + fM1124dp;
            float f9 = this.height + fM1124dp;
            canvas2 = canvas;
            f = 0.0f;
            i = 2;
            canvas2.saveLayerAlpha(f7, f7, f8, f9, 255, 31);
        } else {
            canvas2 = canvas;
            i = 2;
            f = 0.0f;
        }
        this.maxX = f;
        int i15 = -1;
        if (this.drawStoriesCircle) {
            int i16 = i;
            while (i16 >= 0) {
                int i17 = 0;
                while (i17 < i) {
                    if (i17 != 0 || this.transitionProgress != 1.0f) {
                        DrawingState[] drawingStateArr = i17 == 0 ? this.animatingStates : this.currentStates;
                        if (i17 != 1 || this.transitionProgress == 1.0f || drawingStateArr[i16].animationType == 1) {
                            ImageReceiver imageReceiver3 = drawingStateArr[i16].imageReceiver;
                            if (imageReceiver3.hasImageSet()) {
                                if (i17 == 0) {
                                    int iM1124dp3 = this.centered ? ((this.width - (i12 * i8)) - AndroidUtilities.m1124dp(z4 ? 8.0f : 4.0f)) / i : iM1124dp2;
                                    imageReceiver3.setImageX(iM1124dp3 + (i8 * i16));
                                } else {
                                    imageReceiver3.setImageX(usedWidth + (i8 * i16));
                                }
                                int i18 = this.currentStyle;
                                if (i18 == 0 || i18 == i4 || i18 == i6) {
                                    imageReceiver3.setImageY((this.height - size) / 2.0f);
                                } else {
                                    imageReceiver3.setImageY(AndroidUtilities.m1124dp(i18 == i5 ? 8.0f : 6.0f));
                                }
                                if (this.transitionProgress != 1.0f) {
                                    if (drawingStateArr[i16].animationType == 1) {
                                        canvas2.save();
                                        float f10 = this.transitionProgress;
                                        canvas2.scale(1.0f - f10, 1.0f - f10, imageReceiver3.getCenterX(), imageReceiver3.getCenterY());
                                        f6 = 1.0f - this.transitionProgress;
                                    } else if (drawingStateArr[i16].animationType == 0) {
                                        canvas2.save();
                                        float f11 = this.transitionProgress;
                                        canvas2.scale(f11, f11, imageReceiver3.getCenterX(), imageReceiver3.getCenterY());
                                        f6 = this.transitionProgress;
                                    } else {
                                        if (drawingStateArr[i16].animationType == i) {
                                            int iM1124dp4 = this.centered ? ((this.width - (i12 * i8)) - AndroidUtilities.m1124dp(z4 ? 8.0f : 4.0f)) / i : iM1124dp2;
                                            int i19 = usedWidth + (drawingStateArr[i16].moveFromIndex * i8);
                                            float f12 = this.transitionProgress;
                                            imageReceiver3.setImageX((int) (((iM1124dp4 + (i8 * i16)) * f12) + (i19 * (1.0f - f12))));
                                        } else if (drawingStateArr[i16].animationType == i15 && this.centered) {
                                            int iM1124dp5 = ((this.width - (i12 * i8)) - AndroidUtilities.m1124dp(z4 ? 8.0f : 4.0f)) / i;
                                            int i20 = i8 * i16;
                                            float f13 = this.transitionProgress;
                                            imageReceiver3.setImageX((int) (((iM1124dp5 + i20) * f13) + ((usedWidth + i20) * (1.0f - f13))));
                                        }
                                        f6 = 1.0f;
                                        z2 = false;
                                        float f14 = f6 * this.overrideAlpha;
                                        float size2 = (getSize() / 2.0f) + AndroidUtilities.m1124dp(4.0f);
                                        if (this.storiesTools == null) {
                                        }
                                        this.storiesTools.setBounds(f, f, this.parent.getMeasuredHeight(), AndroidUtilities.m1124dp(40.0f));
                                        this.storiesTools.paint.setAlpha((int) (f14 * 255.0f));
                                        canvas2.drawCircle(imageReceiver3.getCenterX(), imageReceiver3.getCenterY(), size2, this.storiesTools.paint);
                                        if (z2) {
                                        }
                                    }
                                    z2 = true;
                                    float f142 = f6 * this.overrideAlpha;
                                    float size22 = (getSize() / 2.0f) + AndroidUtilities.m1124dp(4.0f);
                                    if (this.storiesTools == null) {
                                    }
                                    this.storiesTools.setBounds(f, f, this.parent.getMeasuredHeight(), AndroidUtilities.m1124dp(40.0f));
                                    this.storiesTools.paint.setAlpha((int) (f142 * 255.0f));
                                    canvas2.drawCircle(imageReceiver3.getCenterX(), imageReceiver3.getCenterY(), size22, this.storiesTools.paint);
                                    if (z2) {
                                    }
                                } else {
                                    f6 = 1.0f;
                                    z2 = false;
                                    float f1422 = f6 * this.overrideAlpha;
                                    float size222 = (getSize() / 2.0f) + AndroidUtilities.m1124dp(4.0f);
                                    if (this.storiesTools == null) {
                                        this.storiesTools = new StoriesGradientTools();
                                    }
                                    this.storiesTools.setBounds(f, f, this.parent.getMeasuredHeight(), AndroidUtilities.m1124dp(40.0f));
                                    this.storiesTools.paint.setAlpha((int) (f1422 * 255.0f));
                                    canvas2.drawCircle(imageReceiver3.getCenterX(), imageReceiver3.getCenterY(), size222, this.storiesTools.paint);
                                    if (z2) {
                                        canvas2.restore();
                                    }
                                }
                            }
                        }
                    }
                    i17++;
                    i15 = -1;
                    i4 = 10;
                    i5 = 4;
                    i6 = 11;
                }
                i16--;
                i15 = -1;
                i4 = 10;
                i5 = 4;
                i6 = 11;
            }
        }
        int i21 = i;
        while (i21 >= 0) {
            int i22 = 0;
            while (i22 < i) {
                if (i22 != 0 || this.transitionProgress != 1.0f) {
                    DrawingState[] drawingStateArr2 = i22 == 0 ? this.animatingStates : this.currentStates;
                    if (i22 != z3 || this.transitionProgress == 1.0f || drawingStateArr2[i21].animationType == z3) {
                        ImageReceiver imageReceiver4 = drawingStateArr2[i21].imageReceiver;
                        if (imageReceiver4.hasImageSet()) {
                            if (i22 == 0) {
                                int iM1124dp6 = this.centered ? ((this.width - (i12 * i8)) - AndroidUtilities.m1124dp(z4 ? 8.0f : 4.0f)) / i : iM1124dp2;
                                imageReceiver4.setImageX(iM1124dp6 + (i8 * i21));
                            } else {
                                imageReceiver4.setImageX(usedWidth + (i8 * i21));
                            }
                            int i23 = this.currentStyle;
                            if (i23 == 0 || i23 == 10) {
                                c = 11;
                            } else {
                                c = 11;
                                if (i23 != 11) {
                                    imageReceiver4.setImageY(AndroidUtilities.m1124dp(i23 == 4 ? 8.0f : 6.0f));
                                }
                                if (this.transitionProgress != 1.0f) {
                                    if (drawingStateArr2[i21].animationType == z3) {
                                        canvas2.save();
                                        float f15 = this.transitionProgress;
                                        canvas2.scale(1.0f - f15, 1.0f - f15, imageReceiver4.getCenterX(), imageReceiver4.getCenterY());
                                        f2 = 1.0f - this.transitionProgress;
                                    } else if (drawingStateArr2[i21].animationType == 0) {
                                        canvas2.save();
                                        float f16 = this.transitionProgress;
                                        canvas2.scale(f16, f16, imageReceiver4.getCenterX(), imageReceiver4.getCenterY());
                                        f2 = this.transitionProgress;
                                    } else if (drawingStateArr2[i21].animationType == i) {
                                        int iM1124dp7 = this.centered ? ((this.width - (i12 * i8)) - AndroidUtilities.m1124dp(z4 ? 8.0f : 4.0f)) / i : iM1124dp2;
                                        int i24 = usedWidth + (drawingStateArr2[i21].moveFromIndex * i8);
                                        float f17 = this.transitionProgress;
                                        imageReceiver4.setImageX((int) (((iM1124dp7 + (i8 * i21)) * f17) + (i24 * (1.0f - f17))));
                                        b = -1;
                                        f2 = 1.0f;
                                        objArr = null;
                                        f3 = f2 * this.overrideAlpha;
                                        if (i21 == drawingStateArr2.length - (z3 ? 1 : 0)) {
                                            i2 = this.currentStyle;
                                            if (i2 != z3) {
                                                imageReceiver = imageReceiver4;
                                                f4 = f3;
                                                f5 = f;
                                                c2 = '\n';
                                            } else {
                                                imageReceiver = imageReceiver4;
                                                f4 = f3;
                                                f5 = f;
                                                c2 = '\n';
                                            }
                                            canvas2.drawRoundRect(imageReceiver.getCenterX() + AndroidUtilities.m1124dp(13.0f), imageReceiver.getCenterY() - AndroidUtilities.m1124dp(13.0f), imageReceiver.getCenterX() - AndroidUtilities.m1124dp(13.0f), imageReceiver.getCenterY() + AndroidUtilities.m1124dp(13.0f), ExteraConfig.getAvatarCorners(26.0f), ExteraConfig.getAvatarCorners(26.0f), this.xRefP);
                                            if (drawingStateArr2[i21].wavesDrawable == null) {
                                            }
                                            if (this.currentStyle == 5) {
                                            }
                                            drawingState = drawingStateArr2[i21];
                                            groupCallParticipant = drawingState.participant;
                                            if (groupCallParticipant == null) {
                                                z = true;
                                                drawingState.wavesDrawable.setShowWaves(false, this.parent);
                                                if (this.currentStyle == 5) {
                                                    this.updateDelegate.run();
                                                }
                                                drawingStateArr2[i21].wavesDrawable.update();
                                                if (this.currentStyle == 5) {
                                                }
                                                avatarScale = drawingStateArr2[i21].wavesDrawable.getAvatarScale();
                                                imageReceiver.setAlpha(f4);
                                                if (avatarScale == 1.0f) {
                                                }
                                                this.maxX = Math.max(this.maxX, imageReceiver.getCenterX() + ((imageReceiver.getImageWidth() / 2.0f) * avatarScale));
                                                if (objArr == null) {
                                                }
                                            }
                                        }
                                    } else {
                                        b = -1;
                                        if (drawingStateArr2[i21].animationType == -1 && this.centered) {
                                            int iM1124dp8 = ((this.width - (i12 * i8)) - AndroidUtilities.m1124dp(z4 ? 8.0f : 4.0f)) / i;
                                            int i25 = i8 * i21;
                                            float f18 = this.transitionProgress;
                                            imageReceiver4.setImageX((int) (((iM1124dp8 + i25) * f18) + ((usedWidth + i25) * (1.0f - f18))));
                                        }
                                        f2 = 1.0f;
                                        objArr = null;
                                        f3 = f2 * this.overrideAlpha;
                                        if (i21 == drawingStateArr2.length - (z3 ? 1 : 0)) {
                                        }
                                    }
                                    objArr = z3 ? 1 : 0;
                                    b = -1;
                                    f3 = f2 * this.overrideAlpha;
                                    if (i21 == drawingStateArr2.length - (z3 ? 1 : 0)) {
                                    }
                                } else {
                                    b = -1;
                                    f2 = 1.0f;
                                    objArr = null;
                                    f3 = f2 * this.overrideAlpha;
                                    if (i21 == drawingStateArr2.length - (z3 ? 1 : 0) || this.drawStoriesCircle) {
                                        i2 = this.currentStyle;
                                        if (i2 != z3 || i2 == 3 || i2 == 5) {
                                            imageReceiver = imageReceiver4;
                                            f4 = f3;
                                            f5 = f;
                                            c2 = '\n';
                                            canvas2.drawRoundRect(imageReceiver.getCenterX() + AndroidUtilities.m1124dp(13.0f), imageReceiver.getCenterY() - AndroidUtilities.m1124dp(13.0f), imageReceiver.getCenterX() - AndroidUtilities.m1124dp(13.0f), imageReceiver.getCenterY() + AndroidUtilities.m1124dp(13.0f), ExteraConfig.getAvatarCorners(26.0f), ExteraConfig.getAvatarCorners(26.0f), this.xRefP);
                                            if (drawingStateArr2[i21].wavesDrawable == null) {
                                                if (this.currentStyle == 5) {
                                                    drawingStateArr2[i21].wavesDrawable = new GroupCallUserCell.AvatarWavesDrawable(AndroidUtilities.m1124dp(14.0f), AndroidUtilities.m1124dp(16.0f));
                                                } else {
                                                    drawingStateArr2[i21].wavesDrawable = new GroupCallUserCell.AvatarWavesDrawable(AndroidUtilities.m1124dp(17.0f), AndroidUtilities.m1124dp(21.0f));
                                                }
                                            }
                                            if (this.currentStyle == 5) {
                                                drawingStateArr2[i21].wavesDrawable.setColor(ColorUtils.setAlphaComponent(Theme.getColor(Theme.key_voipgroup_speakingText), (int) (f4 * 76.5f)));
                                            }
                                            drawingState = drawingStateArr2[i21];
                                            groupCallParticipant = drawingState.participant;
                                            if (groupCallParticipant == null && groupCallParticipant.amplitude > f5) {
                                                z = true;
                                                drawingState.wavesDrawable.setShowWaves(true, this.parent);
                                                drawingStateArr2[i21].wavesDrawable.setAmplitude(r2.participant.amplitude * 15.0f);
                                            } else {
                                                z = true;
                                                drawingState.wavesDrawable.setShowWaves(false, this.parent);
                                            }
                                            if (this.currentStyle == 5 && SystemClock.uptimeMillis() - drawingStateArr2[i21].participant.lastSpeakTime > 500) {
                                                this.updateDelegate.run();
                                            }
                                            drawingStateArr2[i21].wavesDrawable.update();
                                            if (this.currentStyle == 5) {
                                                drawingStateArr2[i21].wavesDrawable.draw(canvas2, imageReceiver.getCenterX(), imageReceiver.getCenterY(), this.parent);
                                                invalidate();
                                            }
                                            avatarScale = drawingStateArr2[i21].wavesDrawable.getAvatarScale();
                                            imageReceiver.setAlpha(f4);
                                            if (avatarScale == 1.0f) {
                                                canvas2.save();
                                                canvas2.scale(avatarScale, avatarScale, imageReceiver.getCenterX(), imageReceiver.getCenterY());
                                                imageReceiver.draw(canvas2);
                                                canvas2.restore();
                                            } else {
                                                imageReceiver.draw(canvas2);
                                            }
                                            this.maxX = Math.max(this.maxX, imageReceiver.getCenterX() + ((imageReceiver.getImageWidth() / 2.0f) * avatarScale));
                                            if (objArr == null) {
                                                canvas2.restore();
                                            }
                                        } else if (i2 == 4 || i2 == 10) {
                                            imageReceiver = imageReceiver4;
                                            f4 = f3;
                                            f5 = f;
                                            canvas2 = canvas;
                                            canvas2.drawRoundRect(AndroidUtilities.m1124dp(17.0f) + imageReceiver.getCenterX(), imageReceiver.getCenterY() - AndroidUtilities.m1124dp(17.0f), imageReceiver.getCenterX() - AndroidUtilities.m1124dp(17.0f), AndroidUtilities.m1124dp(17.0f) + imageReceiver.getCenterY(), ExteraConfig.getAvatarCorners(34.0f), ExteraConfig.getAvatarCorners(34.0f), this.xRefP);
                                            if (drawingStateArr2[i21].wavesDrawable == null) {
                                                drawingStateArr2[i21].wavesDrawable = new GroupCallUserCell.AvatarWavesDrawable(AndroidUtilities.m1124dp(17.0f), AndroidUtilities.m1124dp(21.0f));
                                            }
                                            if (this.currentStyle == 10) {
                                                drawingStateArr2[i21].wavesDrawable.setColor(ColorUtils.setAlphaComponent(Theme.getColor(Theme.key_voipgroup_speakingText), (int) (f4 * 76.5f)));
                                            } else {
                                                drawingStateArr2[i21].wavesDrawable.setColor(ColorUtils.setAlphaComponent(Theme.getColor(Theme.key_voipgroup_listeningText), (int) (f4 * 76.5f)));
                                            }
                                            long jCurrentTimeMillis = System.currentTimeMillis();
                                            if (jCurrentTimeMillis - drawingStateArr2[i21].lastUpdateTime > 100) {
                                                drawingStateArr2[i21].lastUpdateTime = jCurrentTimeMillis;
                                                c3 = '\n';
                                                if (this.currentStyle == 10) {
                                                    DrawingState drawingState2 = drawingStateArr2[i21];
                                                    TLRPC.GroupCallParticipant groupCallParticipant2 = drawingState2.participant;
                                                    if (groupCallParticipant2 != null && groupCallParticipant2.amplitude > f5) {
                                                        drawingState2.wavesDrawable.setShowWaves(true, this.parent);
                                                        drawingStateArr2[i21].wavesDrawable.setAmplitude(r2.participant.amplitude * 15.0f);
                                                    } else {
                                                        drawingState2.wavesDrawable.setShowWaves(false, this.parent);
                                                    }
                                                } else if (((long) ConnectionsManager.getInstance(UserConfig.selectedAccount).getCurrentTime()) - drawingStateArr2[i21].lastSpeakTime <= 5) {
                                                    drawingStateArr2[i21].wavesDrawable.setShowWaves(true, this.parent);
                                                    drawingStateArr2[i21].wavesDrawable.setAmplitude(this.random.nextInt() % 100);
                                                } else {
                                                    drawingStateArr2[i21].wavesDrawable.setShowWaves(false, this.parent);
                                                    drawingStateArr2[i21].wavesDrawable.setAmplitude(0.0d);
                                                }
                                            } else {
                                                c3 = '\n';
                                            }
                                            drawingStateArr2[i21].wavesDrawable.update();
                                            drawingStateArr2[i21].wavesDrawable.draw(canvas2, imageReceiver.getCenterX(), imageReceiver.getCenterY(), this.parent);
                                            avatarScale = drawingStateArr2[i21].wavesDrawable.getAvatarScale();
                                            z = true;
                                            imageReceiver.setAlpha(f4);
                                            if (avatarScale == 1.0f) {
                                            }
                                            this.maxX = Math.max(this.maxX, imageReceiver.getCenterX() + ((imageReceiver.getImageWidth() / 2.0f) * avatarScale));
                                            if (objArr == null) {
                                            }
                                        } else {
                                            float size3 = (getSize() / 2.0f) + this.strokeWidth;
                                            if (z6) {
                                                float centerX = imageReceiver4.getCenterX() + size3;
                                                float centerY = imageReceiver4.getCenterY() - size3;
                                                float centerX2 = imageReceiver4.getCenterX() - size3;
                                                float centerY2 = imageReceiver4.getCenterY() + size3;
                                                float f19 = size3 * 2.0f;
                                                f4 = f3;
                                                f5 = f;
                                                imageReceiver2 = imageReceiver4;
                                                canvas2.drawRoundRect(centerX, centerY, centerX2, centerY2, ExteraConfig.getAvatarCorners(f19, z3), ExteraConfig.getAvatarCorners(f19, z3), this.xRefP);
                                            } else {
                                                imageReceiver2 = imageReceiver4;
                                                f4 = f3;
                                                f5 = f;
                                                int alpha = this.paint.getAlpha();
                                                if (f4 != 1.0f) {
                                                    this.paint.setAlpha((int) (alpha * f4));
                                                }
                                                float centerX3 = imageReceiver2.getCenterX() + size3;
                                                float centerY3 = imageReceiver2.getCenterY() - size3;
                                                float centerX4 = imageReceiver2.getCenterX() - size3;
                                                float centerY4 = imageReceiver2.getCenterY() + size3;
                                                float f20 = size3 * 2.0f;
                                                canvas.drawRoundRect(centerX3, centerY3, centerX4, centerY4, ExteraConfig.getAvatarCorners(f20, z3), ExteraConfig.getAvatarCorners(f20, z3), this.xRefP);
                                                if (f4 != 1.0f) {
                                                    this.paint.setAlpha(alpha);
                                                }
                                            }
                                        }
                                    } else {
                                        imageReceiver2 = imageReceiver4;
                                        f4 = f3;
                                        f5 = f;
                                    }
                                    canvas2 = canvas;
                                    imageReceiver = imageReceiver2;
                                    avatarScale = 1.0f;
                                    z = true;
                                    imageReceiver.setAlpha(f4);
                                    if (avatarScale == 1.0f) {
                                    }
                                    this.maxX = Math.max(this.maxX, imageReceiver.getCenterX() + ((imageReceiver.getImageWidth() / 2.0f) * avatarScale));
                                    if (objArr == null) {
                                    }
                                }
                            }
                            imageReceiver4.setImageY((this.height - size) / 2.0f);
                            if (this.transitionProgress != 1.0f) {
                            }
                        } else {
                            f5 = f;
                            z = z3 ? 1 : 0;
                        }
                    }
                }
                i22++;
                z3 = z;
                f = f5;
                i = 2;
            }
            Object[] objArr2 = z3 ? 1 : 0;
            i21--;
            i = 2;
        }
        if (z6) {
            canvas2.restore();
        }
    }

    public float getMaxX() {
        return this.maxX;
    }

    public int getSize() {
        int i = this.overrideSize;
        if (i != 0) {
            return i;
        }
        int i2 = this.currentStyle;
        return AndroidUtilities.m1124dp((i2 == 4 || i2 == 10) ? 32.0f : 24.0f);
    }

    public void onDetachedFromWindow() {
        if (this.attached) {
            this.attached = false;
            this.wasDraw = false;
            for (int i = 0; i < 3; i++) {
                this.currentStates[i].imageReceiver.onDetachedFromWindow();
                this.animatingStates[i].imageReceiver.onDetachedFromWindow();
            }
            if (this.currentStyle == 3) {
                Theme.getFragmentContextViewWavesDrawable().setAmplitude(0.0f);
            }
        }
    }

    public void onAttachedToWindow() {
        if (this.attached) {
            return;
        }
        this.attached = true;
        for (int i = 0; i < 3; i++) {
            this.currentStates[i].imageReceiver.onAttachedToWindow();
            this.animatingStates[i].imageReceiver.onAttachedToWindow();
        }
    }

    public void setCentered(boolean z) {
        this.centered = z;
    }

    public void setCount(int i) {
        this.count = i;
        View view = this.parent;
        if (view != null) {
            view.requestLayout();
        }
    }

    public void reset() {
        for (int i = 0; i < this.animatingStates.length; i++) {
            setObject(0, 0, null);
        }
    }

    public void setShowSavedMessages(boolean z) {
        this.showSavedMessages = z;
    }
}
