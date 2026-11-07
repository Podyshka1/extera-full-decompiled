package org.telegram.ui.Stories;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.RecyclerView;
import com.exteragram.messenger.ExteraConfig;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Objects;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_stories;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.SimpleTextView;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedColor;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.ButtonBounce;
import org.telegram.ui.Components.ColoredImageSpan;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.GradientTools;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.Shaker$$ExternalSyntheticLambda0;
import org.telegram.ui.Components.Text;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.Stories.StoriesController;

/* JADX INFO: loaded from: classes3.dex */
public abstract class StoriesUtilities {
    public static GradientTools closeFriendsGradientTools;
    public static GradientTools errorGradientTools;
    public static Drawable expiredStoryDrawable;
    public static int grayLastColor;
    public static Paint grayPaint;
    public static Paint liveCutPaint;
    public static GradientTools liveGradientTools;
    public static Paint livePaint;
    public static RectF liveRect;
    public static Text liveText;
    public static GradientTools[] storiesGradientTools = new GradientTools[2];
    public static Paint[] storyCellGreyPaint = new Paint[2];
    private static final int[] storyCellGrayLastColor = new int[2];
    private static final RectF rectTmp = new RectF();
    static boolean scheduled = false;
    static int debugState = 0;
    static Runnable debugRunnable = new Runnable() { // from class: org.telegram.ui.Stories.StoriesUtilities.1
        @Override // java.lang.Runnable
        public void run() {
            int iAbs = Math.abs(Utilities.random.nextInt() % 3);
            StoriesUtilities.debugState = iAbs;
            if (iAbs == 2) {
                StoriesUtilities.debugState = 1;
            } else {
                StoriesUtilities.debugState = 2;
            }
            NotificationCenter.getInstance(UserConfig.selectedAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateInterfaces, 0);
            AndroidUtilities.runOnUIThread(StoriesUtilities.debugRunnable, 1000L);
            LaunchActivity.getLastFragment().getFragmentView();
        }
    };
    private static final Path forumRoundRectPath = new Path();
    private static final PathMeasure forumRoundRectPathMeasure = new PathMeasure();
    private static final Path forumSegmentPath = new Path();
    private static final Path forumWrappedSegmentPath = new Path();

    public static void drawAvatarWithStory(long j, Canvas canvas, ImageReceiver imageReceiver, AvatarStoryParams avatarStoryParams) {
        drawAvatarWithStory(j, canvas, imageReceiver, UserConfig.getInstance(UserConfig.selectedAccount).getClientUserId() != j && MessagesController.getInstance(UserConfig.selectedAccount).getStoriesController().hasStories(j), avatarStoryParams);
    }

    /* JADX WARN: Removed duplicated region for block: B:207:0x043c  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x0468  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x046d  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x0489  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x04a9  */
    /* JADX WARN: Removed duplicated region for block: B:238:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01bf A[PHI: r19
  0x01bf: PHI (r19v3 float) = (r19v1 float), (r19v4 float) binds: [B:96:0x01c5, B:91:0x01bc] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void drawAvatarWithStory(long j, Canvas canvas, ImageReceiver imageReceiver, boolean z, AvatarStoryParams avatarStoryParams) {
        int predictiveUnreadState;
        int i;
        int i2;
        float f;
        Canvas canvas2;
        int i3;
        float f2;
        float f3;
        int i4;
        ImageReceiver imageReceiver2;
        AvatarStoryParams avatarStoryParams2;
        StoriesController storiesController;
        boolean z2;
        float f4;
        float f5;
        boolean z3;
        float f6;
        Paint paint;
        Paint unreadCirclePaint;
        Paint paint2;
        Paint paint3;
        float fDpf2;
        float f7;
        float fDp;
        Paint paint4;
        Paint closeFriendsPaint;
        Paint paint5;
        Paint paint6;
        float fDpf22;
        float f8;
        float fDp2;
        GradientTools gradientTools;
        float fDp3;
        if (ExteraConfig.getHideStories()) {
            applyAvatarRadius(imageReceiver, avatarStoryParams, 0.0f);
            imageReceiver.setImageCoords(avatarStoryParams.originalAvatarRect);
            imageReceiver.draw(canvas);
            return;
        }
        StoriesController storiesController2 = MessagesController.getInstance(UserConfig.selectedAccount).getStoriesController();
        boolean z4 = avatarStoryParams.animate;
        if (avatarStoryParams.dialogId != j) {
            avatarStoryParams.dialogId = j;
            avatarStoryParams.reset();
            z4 = false;
        }
        boolean zIsLoading = storiesController2.isLoading(j);
        boolean z5 = ChatObject.isForum(UserConfig.selectedAccount, j) && !avatarStoryParams.isDialogStoriesCell;
        boolean zHasHiddenStories = avatarStoryParams.drawHiddenStoriesAsSegments ? storiesController2.hasHiddenStories() : z;
        if (avatarStoryParams.storyItem != null) {
            storiesController2.getUnreadState(j, avatarStoryParams.storyId);
            zIsLoading = false;
        }
        if (zIsLoading) {
            if (storiesController2.hasStories(j)) {
                z4 = false;
                i = 3;
                predictiveUnreadState = 2;
            } else {
                predictiveUnreadState = getPredictiveUnreadState(storiesController2, j);
                z4 = false;
                i = 3;
            }
        } else if (zHasHiddenStories) {
            if (avatarStoryParams.drawSegments) {
                predictiveUnreadState = 2;
            } else {
                predictiveUnreadState = storiesController2.getUnreadState(j, avatarStoryParams.storyId);
                if (predictiveUnreadState != 0) {
                    i = 1;
                }
            }
            i = 2;
        } else {
            predictiveUnreadState = getPredictiveUnreadState(storiesController2, j);
            i = predictiveUnreadState;
        }
        int i5 = avatarStoryParams.forceState;
        if (i5 != 0) {
            predictiveUnreadState = i5;
            i = predictiveUnreadState;
        }
        int i6 = avatarStoryParams.currentState;
        if (i6 != i) {
            if (i6 == 3) {
                z4 = true;
            }
            if (i == 3) {
                avatarStoryParams.animateFromUnreadState = predictiveUnreadState;
                avatarStoryParams.progressToProgressSegments = 0.0f;
            }
            if (z4) {
                avatarStoryParams.prevState = i6;
                avatarStoryParams.prevUnreadState = avatarStoryParams.unreadState;
                avatarStoryParams.currentState = i;
                avatarStoryParams.progressToSate = 0.0f;
            } else {
                avatarStoryParams.currentState = i;
                avatarStoryParams.progressToSate = 1.0f;
            }
        }
        avatarStoryParams.unreadState = predictiveUnreadState;
        ButtonBounce buttonBounce = avatarStoryParams.buttonBounce;
        float scale = buttonBounce != null ? buttonBounce.getScale(0.08f) : 1.0f;
        if (avatarStoryParams.showProgress != zIsLoading && zIsLoading) {
            avatarStoryParams.sweepAngle = 1.0f;
            avatarStoryParams.inc = false;
        }
        avatarStoryParams.showProgress = zIsLoading;
        if (avatarStoryParams.currentState == 0 && avatarStoryParams.progressToSate == 1.0f) {
            applyAvatarRadius(imageReceiver, avatarStoryParams, 0.0f);
            imageReceiver.setImageCoords(avatarStoryParams.originalAvatarRect);
            canvas.save();
            canvas.scale(scale, scale, avatarStoryParams.originalAvatarRect.centerX(), avatarStoryParams.originalAvatarRect.centerY());
            imageReceiver.draw(canvas);
            canvas.restore();
            return;
        }
        int iSave = canvas.save();
        if (scale != 1.0f) {
            canvas.scale(scale, scale, avatarStoryParams.originalAvatarRect.centerX(), avatarStoryParams.originalAvatarRect.centerY());
        }
        float f9 = storiesController2.hasLiveStory(avatarStoryParams.dialogId) ? avatarStoryParams.progressToSegments : 0.0f;
        float interpolation = avatarStoryParams.progressToSate;
        if (interpolation != 1.0f) {
            interpolation = CubicBezierInterpolator.DEFAULT.getInterpolation(interpolation);
        }
        float f10 = interpolation;
        float fLerp = (!avatarStoryParams.isStoryCell || avatarStoryParams.drawInside) ? AndroidUtilities.lerp(getInset(avatarStoryParams.prevState, avatarStoryParams.animateFromUnreadState), getInset(avatarStoryParams.currentState, avatarStoryParams.animateFromUnreadState), avatarStoryParams.progressToSate) : 0.0f;
        applyAvatarRadius(imageReceiver, avatarStoryParams, fLerp);
        RectF rectF = avatarStoryParams.originalAvatarRect;
        if (fLerp == 0.0f) {
            imageReceiver.setImageCoords(rectF);
        } else {
            RectF rectF2 = rectTmp;
            rectF2.set(rectF);
            rectF2.inset(fLerp, fLerp);
            imageReceiver.setImageCoords(rectF2);
        }
        if (f9 > 0.0f) {
            RectF rectF3 = rectTmp;
            i3 = iSave;
            f = fLerp;
            f2 = 0.08f;
            i2 = predictiveUnreadState;
            canvas2 = canvas;
            canvas2.saveLayerAlpha(rectF3.left - AndroidUtilities.dp(15.0f), rectF3.top - AndroidUtilities.dp(15.0f), rectF3.right + AndroidUtilities.dp(15.0f), rectF3.bottom + AndroidUtilities.dp(15.0f), 255, 31);
        } else {
            i2 = predictiveUnreadState;
            f = fLerp;
            canvas2 = canvas;
            i3 = iSave;
            f2 = 0.08f;
        }
        if (avatarStoryParams.prevState == 1) {
            f3 = 1.0f;
            if (avatarStoryParams.progressToSate != 1.0f) {
                if (i2 == 2) {
                    getCloseFriendsPaint(imageReceiver);
                    gradientTools = closeFriendsGradientTools;
                } else if (i2 == 3) {
                    getLivePaint(imageReceiver);
                    gradientTools = liveGradientTools;
                } else {
                    getUnreadCirclePaint(imageReceiver, avatarStoryParams.isStoryCell);
                    gradientTools = storiesGradientTools[avatarStoryParams.isStoryCell ? 1 : 0];
                }
                boolean z6 = avatarStoryParams.prevState == 1 && avatarStoryParams.progressToSate != f3;
                float f11 = (!avatarStoryParams.isStoryCell || avatarStoryParams.drawInside) ? 0.0f : -AndroidUtilities.dp(4.0f);
                if (z6) {
                    fDp3 = f11 + (AndroidUtilities.dp(5.0f) * f10);
                    gradientTools.paint.setAlpha((int) (avatarStoryParams.alpha * 255.0f * (f3 - f10)));
                } else {
                    gradientTools.paint.setAlpha((int) (avatarStoryParams.alpha * 255.0f * f10));
                    fDp3 = f11 + (AndroidUtilities.dp(5.0f) * (f3 - f10));
                }
                float f12 = fDp3 + avatarStoryParams.additionalInset;
                RectF rectF4 = rectTmp;
                rectF4.set(avatarStoryParams.originalAvatarRect);
                rectF4.inset(f12, f12);
                drawCircleInternal(canvas2, imageReceiver.getParentView(), avatarStoryParams, gradientTools.paint, z5);
            }
            i4 = avatarStoryParams.prevState;
            if ((i4 == 2 || avatarStoryParams.progressToSate == f3) && avatarStoryParams.currentState != 2) {
                imageReceiver2 = imageReceiver;
                avatarStoryParams2 = avatarStoryParams;
                storiesController = storiesController2;
                z2 = z5;
                f4 = f3;
                f5 = 2.7f;
            } else {
                boolean z7 = i4 == 2 && avatarStoryParams.progressToSate != f3;
                if (avatarStoryParams.isStoryCell) {
                    checkStoryCellGrayPaint(avatarStoryParams.isArchive, avatarStoryParams.resourcesProvider);
                    paint4 = storyCellGreyPaint[avatarStoryParams.isArchive ? 1 : 0];
                } else {
                    checkGrayPaint(avatarStoryParams.resourcesProvider);
                    paint4 = grayPaint;
                }
                Paint paint7 = paint4;
                if (avatarStoryParams.drawSegments) {
                    Paint unreadCirclePaint2 = getUnreadCirclePaint(imageReceiver, avatarStoryParams.isStoryCell);
                    unreadCirclePaint2.setAlpha((int) (avatarStoryParams.alpha * 255.0f));
                    closeFriendsPaint = getCloseFriendsPaint(imageReceiver);
                    closeFriendsPaint.setAlpha((int) (avatarStoryParams.alpha * 255.0f));
                    Paint livePaint2 = getLivePaint(imageReceiver);
                    livePaint2.setAlpha((int) (avatarStoryParams.alpha * 255.0f));
                    checkGrayPaint(avatarStoryParams.resourcesProvider);
                    paint6 = livePaint2;
                    paint5 = unreadCirclePaint2;
                } else {
                    closeFriendsPaint = null;
                    paint5 = null;
                    paint6 = null;
                }
                boolean z8 = avatarStoryParams.drawSegments;
                f5 = 2.7f;
                boolean z9 = avatarStoryParams.isStoryCell;
                if (z8) {
                    if (z9 && !avatarStoryParams.drawInside) {
                        fDpf22 = AndroidUtilities.dpf2(3.5f);
                        f8 = -fDpf22;
                    }
                    f8 = 0.0f;
                } else {
                    if (z9 && !avatarStoryParams.drawInside) {
                        fDpf22 = AndroidUtilities.dpf2(2.7f);
                        f8 = -fDpf22;
                    }
                    f8 = 0.0f;
                }
                if (z7) {
                    fDp2 = f8 + (AndroidUtilities.dp(5.0f) * f10);
                    paint7.setAlpha((int) (avatarStoryParams.alpha * 255.0f * (f3 - f10)));
                } else {
                    paint7.setAlpha((int) (avatarStoryParams.alpha * 255.0f * f10));
                    fDp2 = f8 + (AndroidUtilities.dp(5.0f) * (f3 - f10));
                }
                float f13 = fDp2 + avatarStoryParams.additionalInset;
                RectF rectF5 = rectTmp;
                rectF5.set(avatarStoryParams.originalAvatarRect);
                rectF5.inset(f13, f13);
                if (avatarStoryParams.drawSegments) {
                    imageReceiver2 = imageReceiver;
                    storiesController = storiesController2;
                    f4 = f3;
                    Paint paint8 = closeFriendsPaint;
                    avatarStoryParams2 = avatarStoryParams;
                    z2 = z5;
                    drawSegmentsInternal(canvas2, storiesController, imageReceiver2, avatarStoryParams2, paint7, paint5, paint6, paint8, z2);
                } else {
                    imageReceiver2 = imageReceiver;
                    avatarStoryParams2 = avatarStoryParams;
                    storiesController = storiesController2;
                    z2 = z5;
                    f4 = f3;
                    drawCircleInternal(canvas2, imageReceiver2.getParentView(), avatarStoryParams2, paint7, z2);
                }
            }
            if ((avatarStoryParams2.prevState != 3 && avatarStoryParams2.progressToSate != f4) || avatarStoryParams2.currentState == 3) {
                int i7 = avatarStoryParams2.animateFromUnreadState;
                boolean z10 = avatarStoryParams2.isStoryCell;
                if (i7 == 1) {
                    getUnreadCirclePaint(imageReceiver2, z10);
                    paint = storiesGradientTools[avatarStoryParams2.isStoryCell ? 1 : 0].paint;
                } else if (z10) {
                    checkStoryCellGrayPaint(avatarStoryParams2.isArchive, avatarStoryParams2.resourcesProvider);
                    paint = storyCellGreyPaint[avatarStoryParams2.isArchive ? 1 : 0];
                } else {
                    checkGrayPaint(avatarStoryParams2.resourcesProvider);
                    paint = grayPaint;
                }
                paint.setAlpha((int) (f10 * 255.0f));
                if (avatarStoryParams2.drawSegments) {
                    unreadCirclePaint = getUnreadCirclePaint(imageReceiver2, avatarStoryParams2.isStoryCell);
                    unreadCirclePaint.setAlpha((int) (avatarStoryParams2.alpha * 255.0f));
                    Paint closeFriendsPaint2 = getCloseFriendsPaint(imageReceiver2);
                    closeFriendsPaint2.setAlpha((int) (avatarStoryParams2.alpha * 255.0f));
                    Paint livePaint3 = getLivePaint(imageReceiver2);
                    livePaint3.setAlpha((int) (avatarStoryParams2.alpha * 255.0f));
                    checkGrayPaint(avatarStoryParams2.resourcesProvider);
                    paint3 = closeFriendsPaint2;
                    paint2 = livePaint3;
                } else {
                    unreadCirclePaint = null;
                    paint2 = null;
                    paint3 = null;
                }
                boolean z11 = avatarStoryParams2.drawSegments;
                boolean z12 = avatarStoryParams2.isStoryCell;
                if (z11) {
                    if (z12 && !avatarStoryParams2.drawInside) {
                        fDpf2 = AndroidUtilities.dpf2(3.5f);
                        f7 = -fDpf2;
                    }
                    f7 = 0.0f;
                } else {
                    if (z12 && !avatarStoryParams2.drawInside) {
                        fDpf2 = AndroidUtilities.dpf2(f5);
                        f7 = -fDpf2;
                    }
                    f7 = 0.0f;
                }
                if (avatarStoryParams2.prevState == 3 && avatarStoryParams2.progressToSate != f4) {
                    fDp = f7 + (AndroidUtilities.dp(7.0f) * f10);
                    paint.setAlpha((int) (avatarStoryParams2.alpha * 255.0f * (f4 - f10)));
                } else {
                    paint.setAlpha((int) (avatarStoryParams2.alpha * 255.0f * f10));
                    fDp = f7 + (AndroidUtilities.dp(5.0f) * (f4 - f10));
                }
                float f14 = fDp + avatarStoryParams2.additionalInset;
                RectF rectF6 = rectTmp;
                rectF6.set(avatarStoryParams2.originalAvatarRect);
                rectF6.inset(f14, f14);
                boolean z13 = avatarStoryParams2.drawSegments;
                if (z13 && avatarStoryParams2.currentState == 3) {
                    float f15 = avatarStoryParams2.progressToProgressSegments;
                    if (f15 != f4) {
                        float f16 = f15 + f2;
                        avatarStoryParams2.progressToProgressSegments = f16;
                        if (f16 > f4) {
                            avatarStoryParams2.progressToProgressSegments = f4;
                        }
                        float f17 = avatarStoryParams2.progressToSegments;
                        avatarStoryParams2.progressToSegments = f4 - avatarStoryParams2.progressToProgressSegments;
                        drawSegmentsInternal(canvas2, storiesController, imageReceiver2, avatarStoryParams2, paint, unreadCirclePaint, paint2, paint3, z2);
                        avatarStoryParams2.progressToSegments = f17;
                        if (imageReceiver2.getParentView() != null) {
                            imageReceiver2.invalidate();
                            imageReceiver2.getParentView().invalidate();
                        }
                        z3 = true;
                    }
                } else if (z13) {
                    int unreadState = storiesController.getUnreadState(avatarStoryParams2.dialogId);
                    if (unreadState == 2) {
                        paint = paint3;
                    } else if (unreadState == 3) {
                        paint = paint2;
                    } else {
                        z3 = true;
                        if (unreadState == 1) {
                            paint = unreadCirclePaint;
                        }
                        drawProgress(canvas2, avatarStoryParams2, imageReceiver2.getParentView(), paint);
                    }
                    z3 = true;
                    drawProgress(canvas2, avatarStoryParams2, imageReceiver2.getParentView(), paint);
                } else {
                    z3 = true;
                    drawProgress(canvas2, avatarStoryParams2, imageReceiver2.getParentView(), paint);
                }
            }
            imageReceiver2.draw(canvas2);
            if (f9 <= 0.5f) {
                z3 = false;
            }
            avatarStoryParams2.drawnLive = z3;
            if (f9 > 0.0f) {
                float f18 = f + avatarStoryParams2.additionalInset;
                RectF rectF7 = rectTmp;
                rectF7.set(avatarStoryParams2.originalAvatarRect);
                rectF7.inset(f18, f18);
                drawLive(canvas2, rectF7, f9, imageReceiver2.getVisible(), 0.0f);
            }
            f6 = avatarStoryParams2.progressToSate;
            if (f6 != f4) {
                float f19 = f6 + (AndroidUtilities.screenRefreshTime / 250.0f);
                avatarStoryParams2.progressToSate = f19;
                if (f19 > f4) {
                    avatarStoryParams2.progressToSate = f4;
                }
                if (imageReceiver2.getParentView() != null) {
                    imageReceiver2.invalidate();
                    imageReceiver2.getParentView().invalidate();
                }
            }
            if (i3 == 0) {
                canvas2.restoreToCount(i3);
                return;
            }
            return;
        }
        f3 = 1.0f;
        if (avatarStoryParams.currentState == 1) {
        }
        i4 = avatarStoryParams.prevState;
        if (i4 == 2) {
            imageReceiver2 = imageReceiver;
            avatarStoryParams2 = avatarStoryParams;
            storiesController = storiesController2;
            z2 = z5;
            f4 = f3;
            f5 = 2.7f;
        } else {
            imageReceiver2 = imageReceiver;
            avatarStoryParams2 = avatarStoryParams;
            storiesController = storiesController2;
            z2 = z5;
            f4 = f3;
            f5 = 2.7f;
        }
        z3 = avatarStoryParams2.prevState != 3 ? true : true;
        imageReceiver2.draw(canvas2);
        if (f9 <= 0.5f) {
        }
        avatarStoryParams2.drawnLive = z3;
        if (f9 > 0.0f) {
        }
        f6 = avatarStoryParams2.progressToSate;
        if (f6 != f4) {
        }
        if (i3 == 0) {
        }
    }

    public static void drawLive(Canvas canvas, RectF rectF, float f, boolean z, float f2) {
        Canvas canvas2;
        if (liveText == null) {
            liveText = new Text(LocaleController.getString(C2807R.string.LiveStoryBadge), 9.66f, AndroidUtilities.bold());
        }
        if (liveCutPaint == null) {
            Paint paint = new Paint(1);
            liveCutPaint = paint;
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        }
        if (livePaint == null) {
            livePaint = new Paint(1);
        }
        if (liveRect == null) {
            liveRect = new RectF();
        }
        livePaint.setColor(Theme.multAlpha(Theme.getColor(Theme.key_stories_circle_live2), f));
        float fLerp = AndroidUtilities.lerp(AndroidUtilities.dp(4.66f), AndroidUtilities.dp(7.0f), f2);
        float width = liveText.getWidth() + fLerp + fLerp;
        float fLerp2 = AndroidUtilities.lerp(AndroidUtilities.dp(15.0f), AndroidUtilities.dp(18.0f), f2);
        float fDp = AndroidUtilities.dp(2.0f);
        canvas.save();
        float f3 = width / 2.0f;
        float f4 = 0.8f * fLerp2;
        float f5 = fLerp2 * 0.2f;
        liveRect.set((rectF.centerX() - f3) - fDp, (rectF.bottom - f4) - fDp, rectF.centerX() + f3 + fDp, rectF.bottom + f5 + fDp);
        float fLerp3 = AndroidUtilities.lerp(0.7f, 1.0f, f);
        canvas.scale(fLerp3, fLerp3, liveRect.centerX(), liveRect.centerY());
        AndroidUtilities.scaleRect(liveRect, f);
        RectF rectF2 = liveRect;
        canvas.drawRoundRect(rectF2, rectF2.height() / 2.0f, liveRect.height() / 2.0f, liveCutPaint);
        if (z) {
            liveRect.set(rectF.centerX() - f3, rectF.bottom - f4, rectF.centerX() + f3, rectF.bottom + f5);
            RectF rectF3 = liveRect;
            canvas.drawRoundRect(rectF3, rectF3.height() / 2.0f, liveRect.height() / 2.0f, livePaint);
            Text text = liveText;
            RectF rectF4 = liveRect;
            canvas2 = canvas;
            text.draw(canvas2, rectF4.left + fLerp, rectF4.centerY(), -1, f);
        } else {
            canvas2 = canvas;
        }
        canvas2.restore();
    }

    /* JADX WARN: Removed duplicated region for block: B:88:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x019d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void drawSegmentsInternal(Canvas canvas, StoriesController storiesController, ImageReceiver imageReceiver, AvatarStoryParams avatarStoryParams, Paint paint, Paint paint2, Paint paint3, Paint paint4, boolean z) {
        int unreadState;
        int size;
        Paint paint5;
        Paint paint6;
        Paint paint7;
        AvatarStoryParams avatarStoryParams2 = avatarStoryParams;
        checkGrayPaint(avatarStoryParams2.resourcesProvider);
        checkStoryCellGrayPaint(avatarStoryParams2.isArchive, avatarStoryParams2.resourcesProvider);
        long j = avatarStoryParams2.crossfadeToDialog;
        if (j != 0) {
            unreadState = storiesController.getUnreadState(j);
        } else {
            unreadState = storiesController.getUnreadState(avatarStoryParams2.dialogId);
        }
        int i = 2;
        avatarStoryParams2.globalState = unreadState == 0 ? 2 : 1;
        TL_stories.PeerStories stories = storiesController.getStories(avatarStoryParams2.dialogId);
        if (stories == null) {
            stories = storiesController.getStoriesFromFullPeer(avatarStoryParams2.dialogId);
        }
        TL_stories.PeerStories peerStories = stories;
        if (avatarStoryParams2.drawHiddenStoriesAsSegments) {
            size = storiesController.getHiddenList().size();
        } else {
            size = (peerStories == null || peerStories.stories.size() == 1) ? 1 : peerStories.stories.size();
        }
        int i2 = size;
        if (unreadState == 2) {
            getCloseFriendsPaint(imageReceiver);
            paint5 = closeFriendsGradientTools.paint;
        } else if (unreadState == 3) {
            getLivePaint(imageReceiver);
            paint5 = liveGradientTools.paint;
        } else {
            boolean z2 = avatarStoryParams2.isStoryCell;
            if (unreadState == 1) {
                getUnreadCirclePaint(imageReceiver, z2);
                paint5 = storiesGradientTools[avatarStoryParams2.isStoryCell ? 1 : 0].paint;
            } else if (z2) {
                paint5 = storyCellGreyPaint[avatarStoryParams2.isArchive ? 1 : 0];
            } else {
                paint5 = grayPaint;
            }
        }
        Paint paint8 = paint5;
        if (i2 <= 1) {
            int iHasUnreadStoriesLive = storiesController.hasUnreadStoriesLive(avatarStoryParams2.dialogId);
            if (iHasUnreadStoriesLive == 2) {
                paint7 = paint3;
            } else {
                paint7 = paint8 == closeFriendsGradientTools.paint ? paint4 : iHasUnreadStoriesLive == 1 ? paint2 : paint;
            }
            RectF rectF = rectTmp;
            drawSegment(canvas, rectF, paint7, -90.0f, 90.0f, avatarStoryParams2, z);
            drawSegment(canvas, rectF, paint7, 90.0f, 270.0f, avatarStoryParams, z);
            float f = avatarStoryParams.progressToSegments;
            if (f == 1.0f || paint7 == paint8) {
                return;
            }
            paint8.setAlpha((int) ((1.0f - f) * 255.0f));
            drawSegment(canvas, rectF, paint8, -90.0f, 90.0f, avatarStoryParams, z);
            drawSegment(canvas, rectF, paint8, 90.0f, 270.0f, avatarStoryParams, z);
            paint8.setAlpha(255);
            return;
        }
        Paint paint9 = paint8;
        float f2 = 360.0f / i2;
        float f3 = (i2 > 20 ? 3 : 5) * avatarStoryParams2.progressToSegments;
        if (f3 > f2) {
            f3 = 0.0f;
        }
        float f4 = f3;
        int i3 = 0;
        int iMax = avatarStoryParams2.drawHiddenStoriesAsSegments ? 0 : Math.max(peerStories.max_read_id, storiesController.dialogIdToMaxReadId.get(avatarStoryParams2.dialogId, 0));
        while (i3 < i2) {
            Paint paint10 = avatarStoryParams2.isStoryCell ? storyCellGreyPaint[avatarStoryParams2.isArchive ? 1 : 0] : grayPaint;
            if (avatarStoryParams2.drawHiddenStoriesAsSegments) {
                int unreadState2 = storiesController.getUnreadState(DialogObject.getPeerDialogId(storiesController.getHiddenList().get((i2 - 1) - i3).peer));
                if (unreadState2 == i) {
                    paint10 = paint4;
                } else if (unreadState2 == 3) {
                    paint10 = paint3;
                } else if (unreadState2 == 1) {
                    paint10 = paint2;
                }
            } else if (i3 < peerStories.stories.size()) {
                if (peerStories.stories.get(i3).justUploaded || peerStories.stories.get(i3).id > iMax) {
                    if (!(peerStories.stories.get(i3).media instanceof TLRPC.TL_messageMediaVideoStream)) {
                        if (peerStories.stories.get(i3).close_friends) {
                        }
                    }
                    paint10 = paint3;
                }
            }
            float f5 = (i3 * f2) - 90.0f;
            float f6 = f5 + f2;
            float f7 = f5 + f4;
            float f8 = f6 - f4;
            int i4 = iMax;
            RectF rectF2 = rectTmp;
            Paint paint11 = paint9;
            int i5 = i3;
            Paint paint12 = paint10;
            AvatarStoryParams avatarStoryParams3 = avatarStoryParams2;
            drawSegment(canvas, rectF2, paint12, f7, f8, avatarStoryParams3, z);
            if (avatarStoryParams3.progressToSegments == 1.0f || paint12 == paint11) {
                paint6 = paint11;
            } else {
                paint11.getStrokeWidth();
                paint11.setAlpha((int) ((1.0f - avatarStoryParams3.progressToSegments) * 255.0f));
                drawSegment(canvas, rectF2, paint11, f7, f8, avatarStoryParams3, z);
                paint6 = paint11;
                paint6.setAlpha(255);
            }
            i3 = i5 + 1;
            avatarStoryParams2 = avatarStoryParams;
            paint9 = paint6;
            iMax = i4;
            i = 2;
        }
    }

    public static int getPredictiveUnreadState(StoriesController storiesController, long j) {
        TLRPC.TL_recentStory tL_recentStory;
        TLRPC.TL_recentStory tL_recentStory2;
        if (j == 0) {
            return 0;
        }
        if (j > 0) {
            TLRPC.User user = MessagesController.getInstance(UserConfig.selectedAccount).getUser(Long.valueOf(j));
            if (j == UserConfig.getInstance(UserConfig.selectedAccount).clientUserId || user == null || (tL_recentStory2 = user.stories_max_id) == null || tL_recentStory2.max_id <= 0 || user.stories_unavailable) {
                return 0;
            }
            int i = storiesController.dialogIdToMaxReadId.get(j, 0);
            TLRPC.TL_recentStory tL_recentStory3 = user.stories_max_id;
            if (tL_recentStory3.live) {
                return 3;
            }
            return tL_recentStory3.max_id > i ? 1 : 2;
        }
        TLRPC.Chat chat = MessagesController.getInstance(UserConfig.selectedAccount).getChat(Long.valueOf(-j));
        if (chat == null || (tL_recentStory = chat.stories_max_id) == null || tL_recentStory.max_id <= 0 || chat.stories_unavailable) {
            return 0;
        }
        int i2 = storiesController.dialogIdToMaxReadId.get(j, 0);
        TLRPC.TL_recentStory tL_recentStory4 = chat.stories_max_id;
        if (tL_recentStory4.live) {
            return 3;
        }
        return tL_recentStory4.max_id > i2 ? 1 : 2;
    }

    private static void drawProgress(Canvas canvas, AvatarStoryParams avatarStoryParams, View view, Paint paint) {
        Canvas canvas2;
        Paint paint2;
        avatarStoryParams.updateProgressParams();
        view.invalidate();
        boolean z = avatarStoryParams.inc;
        float f = avatarStoryParams.globalAngle;
        if (z) {
            canvas.drawArc(rectTmp, f, avatarStoryParams.sweepAngle * 360.0f, false, paint);
            paint2 = paint;
            canvas2 = canvas;
        } else {
            canvas2 = canvas;
            paint2 = paint;
            canvas2.drawArc(rectTmp, f + 360.0f, avatarStoryParams.sweepAngle * (-360.0f), false, paint2);
        }
        for (int i = 0; i < 16; i++) {
            float f2 = (i * 22.5f) + 10.0f;
            canvas2.drawArc(rectTmp, avatarStoryParams.globalAngle + f2, ((22.5f + f2) - 10.0f) - f2, false, paint2);
        }
    }

    private static void checkStoryCellGrayPaint(boolean z, Theme.ResourcesProvider resourcesProvider) {
        Paint[] paintArr = storyCellGreyPaint;
        if (paintArr[z ? 1 : 0] == null) {
            paintArr[z ? 1 : 0] = new Paint(1);
            storyCellGreyPaint[z ? 1 : 0].setStyle(Paint.Style.STROKE);
            storyCellGreyPaint[z ? 1 : 0].setStrokeWidth(AndroidUtilities.dpf2(1.3f));
            storyCellGreyPaint[z ? 1 : 0].setStrokeCap(Paint.Cap.ROUND);
        }
        int color = Theme.getColor(!z ? Theme.key_actionBarDefault : Theme.key_actionBarDefaultArchived, resourcesProvider);
        int[] iArr = storyCellGrayLastColor;
        if (iArr[z ? 1 : 0] != color) {
            iArr[z ? 1 : 0] = color;
            float fComputePerceivedBrightness = AndroidUtilities.computePerceivedBrightness(color);
            if (fComputePerceivedBrightness >= 0.721f) {
                storyCellGreyPaint[z ? 1 : 0].setColor(ColorUtils.blendARGB(color, -16777216, 0.2f));
            } else if (fComputePerceivedBrightness < 0.25f) {
                storyCellGreyPaint[z ? 1 : 0].setColor(ColorUtils.blendARGB(color, -1, 0.2f));
            } else {
                storyCellGreyPaint[z ? 1 : 0].setColor(ColorUtils.blendARGB(color, -1, 0.44f));
            }
        }
    }

    private static void checkGrayPaint(Theme.ResourcesProvider resourcesProvider) {
        if (grayPaint == null) {
            Paint paint = new Paint(1);
            grayPaint = paint;
            paint.setStyle(Paint.Style.STROKE);
            grayPaint.setStrokeWidth(AndroidUtilities.dpf2(1.3f));
            grayPaint.setStrokeCap(Paint.Cap.ROUND);
        }
        int color = Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider);
        if (grayLastColor != color) {
            grayLastColor = color;
            float fComputePerceivedBrightness = AndroidUtilities.computePerceivedBrightness(color);
            if (fComputePerceivedBrightness >= 0.721f) {
                grayPaint.setColor(ColorUtils.blendARGB(color, -16777216, 0.2f));
            } else if (fComputePerceivedBrightness < 0.25f) {
                grayPaint.setColor(ColorUtils.blendARGB(color, -1, 0.2f));
            } else {
                grayPaint.setColor(ColorUtils.blendARGB(color, -1, 0.44f));
            }
        }
    }

    private static void drawCircleInternal(Canvas canvas, View view, AvatarStoryParams avatarStoryParams, Paint paint, boolean z) {
        if (z || ExteraConfig.getAvatarCorners() < 28.0f) {
            RectF rectF = rectTmp;
            float ringCornerRadius = getRingCornerRadius(rectF, avatarStoryParams, z);
            float f = avatarStoryParams.progressToArc;
            if (f == 0.0f) {
                canvas.drawRoundRect(rectF, ringCornerRadius, ringCornerRadius, paint);
                return;
            } else {
                drawRoundRectSegmentExcluding(canvas, rectF, ringCornerRadius, 0.0f, 360.0f, (-f) / 2.0f, f / 2.0f, paint);
                return;
            }
        }
        float f2 = avatarStoryParams.progressToArc;
        if (f2 == 0.0f) {
            RectF rectF2 = rectTmp;
            canvas.drawCircle(rectF2.centerX(), rectF2.centerY(), rectF2.width() / 2.0f, paint);
        } else {
            canvas.drawArc(rectTmp, (f2 / 2.0f) + 360.0f, 360.0f - f2, false, paint);
        }
    }

    private static float getRingCornerRadius(RectF rectF, AvatarStoryParams avatarStoryParams, boolean z) {
        float fWidth = avatarStoryParams.originalAvatarRect.width();
        if (fWidth <= 0.0f) {
            return ExteraConfig.getAvatarCorners(rectF.width(), true, z);
        }
        float avatarCorners = avatarStoryParams.avatarRadius;
        if (avatarCorners < 0.0f) {
            avatarCorners = ExteraConfig.getAvatarCorners(fWidth, true, z);
        }
        return Math.max(0.0f, avatarCorners + ((rectF.width() - fWidth) / 2.0f));
    }

    private static void applyAvatarRadius(ImageReceiver imageReceiver, AvatarStoryParams avatarStoryParams, float f) {
        float f2 = avatarStoryParams.avatarRadius;
        if (f2 < 0.0f) {
            return;
        }
        int iMax = Math.max(0, Math.round(f2 - f));
        int[] roundRadius = imageReceiver.getRoundRadius();
        if (roundRadius[0] == iMax && roundRadius[3] == iMax) {
            return;
        }
        imageReceiver.setRoundRadius(iMax);
    }

    public static void drawRoundRectSegment(Canvas canvas, RectF rectF, float f, float f2, float f3, Paint paint) {
        float f4 = (f3 - f2) / 360.0f;
        if (f4 <= 0.0f) {
            return;
        }
        float fMin = Math.min(f, Math.min(rectF.width(), rectF.height()) / 2.0f);
        if (f4 >= 1.0f) {
            canvas.drawRoundRect(rectF, fMin, fMin, paint);
            return;
        }
        double degrees = (f2 - ((float) Math.toDegrees(Math.atan2((rectF.height() / 2.0f) - fMin, (-rectF.width()) / 2.0f)))) / 360.0f;
        float fFloor = (float) (degrees - Math.floor(degrees));
        float f5 = f4 + fFloor;
        Path path = forumRoundRectPath;
        path.rewind();
        path.addRoundRect(rectF, fMin, fMin, Path.Direction.CW);
        PathMeasure pathMeasure = forumRoundRectPathMeasure;
        pathMeasure.setPath(path, false);
        float length = pathMeasure.getLength();
        Path path2 = forumSegmentPath;
        path2.reset();
        pathMeasure.getSegment(fFloor * length, Math.min(f5, 1.0f) * length, path2, true);
        if (f5 > 1.0f) {
            Path path3 = forumWrappedSegmentPath;
            path3.rewind();
            pathMeasure.getSegment(0.0f, length * (f5 - 1.0f), path3, true);
            path2.addPath(path3);
        }
        canvas.drawPath(path2, paint);
    }

    private static float ringCornerAngle(double d, double d2, float f, float f2, float f3) {
        double d3 = f;
        double d4 = f2;
        double d5 = (d * d3) + (d2 * d4);
        double d6 = f3;
        double dSqrt = d5 + Math.sqrt(Math.max(0.0d, (d5 * d5) - (((d3 * d3) + (d4 * d4)) - (d6 * d6))));
        double d7 = (d * dSqrt) - d3;
        double d8 = (dSqrt * d2) - d4;
        if (d7 == 0.0d && d8 == 0.0d) {
            return 0.0f;
        }
        return (float) Math.atan2(d8, d7);
    }

    private static float ringLengthToAngle(float f, float f2, float f3, float f4) {
        double d;
        if (f4 <= 0.0f) {
            return 0.0f;
        }
        float f5 = f - f3;
        float f6 = f2 - f3;
        float f7 = (3.1415927f * f3) / 2.0f;
        if (f4 >= 180.0f) {
            return (f6 * 2.0f) + (f5 * 2.0f) + (f7 * 2.0f);
        }
        double radians = Math.toRadians(f4);
        double dCos = Math.cos(radians);
        double dSin = Math.sin(radians);
        if (dCos > 0.0d) {
            double d2 = ((double) f) * dSin;
            d = 0.0d;
            if (d2 <= ((double) f6) * dCos) {
                return (float) (d2 / dCos);
            }
        } else {
            d = 0.0d;
        }
        double d3 = ((double) f2) * dCos;
        if (d3 > ((double) f5) * dSin) {
            return f6 + (ringCornerAngle(dCos, dSin, f5, f6, f3) * f3);
        }
        float f8 = -f5;
        if (d3 >= ((double) f8) * dSin) {
            return (float) (((double) ((f6 + f7) + f5)) - (d3 / dSin));
        }
        if (dCos < d) {
            double d4 = ((double) f) * dSin;
            if (d4 <= ((double) (-f6)) * dCos) {
                return (float) (((double) ((f6 * 2.0f) + (f5 * 2.0f) + (f7 * 2.0f))) + (d4 / dCos));
            }
        }
        return f6 + f7 + (f5 * 2.0f) + ((ringCornerAngle(dCos, dSin, f8, f6, f3) - 1.5707964f) * f3);
    }

    private static void drawRoundRectSegmentExcluding(Canvas canvas, RectF rectF, float f, float f2, float f3, float f4, float f5, Paint paint) {
        float fWidth = rectF.width() / 2.0f;
        float fHeight = rectF.height() / 2.0f;
        float fMin = Math.min(f, Math.min(fWidth, fHeight));
        float f6 = (f5 - f4) / 2.0f;
        float f7 = fHeight - fMin;
        float f8 = ((fWidth - fMin) * 4.0f) + (4.0f * f7) + (6.2831855f * fMin);
        float fMin2 = (f6 <= 0.0f || f8 <= 0.0f) ? 0.0f : Math.min(180.0f, (ringLengthToAngle(fWidth, fHeight, fMin, f6) * 360.0f) / f8);
        if (fMin2 <= 0.0f) {
            drawRoundRectSegment(canvas, rectF, f, f2, f3, paint);
            return;
        }
        float degrees = ((float) Math.toDegrees(Math.atan2(f7, -fWidth))) + (((f7 / f8) + 0.5f) * 360.0f);
        if (Math.cos(Math.toRadians((f4 + f5) / 2.0f)) < 0.0d) {
            degrees += 180.0f;
        }
        while (degrees < f2 - 180.0f) {
            degrees += 360.0f;
        }
        while (degrees > f3 + 180.0f) {
            degrees -= 360.0f;
        }
        float f9 = degrees - fMin2;
        float f10 = degrees + fMin2;
        if (f3 - f2 >= 360.0f) {
            drawRoundRectSegment(canvas, rectF, f, f10, f9 + 360.0f, paint);
            return;
        }
        if (f10 <= f2 || f9 >= f3) {
            drawRoundRectSegment(canvas, rectF, f, f2, f3, paint);
            return;
        }
        if (f9 > f2) {
            drawRoundRectSegment(canvas, rectF, f, f2, f9, paint);
        }
        if (f10 < f3) {
            drawRoundRectSegment(canvas, rectF, f, f10, f3, paint);
        }
    }

    private static void drawSegment(Canvas canvas, RectF rectF, Paint paint, float f, float f2, AvatarStoryParams avatarStoryParams, boolean z) {
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        float f8;
        float f9;
        if (avatarStoryParams.useArcProgress) {
            boolean z2 = avatarStoryParams.isFirst;
            if (!z2 && !avatarStoryParams.isLast) {
                float f10 = avatarStoryParams.progressToArc;
                if (f < 90.0f) {
                    f3 = (-f10) / 2.0f;
                    f4 = f10 / 2.0f;
                } else {
                    f3 = ((-f10) / 2.0f) + 180.0f;
                    f4 = (f10 / 2.0f) + 180.0f;
                }
                f9 = f3;
                f8 = f4;
            } else if (avatarStoryParams.isLast) {
                f5 = avatarStoryParams.progressToArc;
                f6 = ((-f5) / 2.0f) + 180.0f;
                f7 = (f5 / 2.0f) + 180.0f;
                f8 = f7;
                f9 = f6;
            } else if (z2) {
                float f11 = avatarStoryParams.progressToArc;
                f6 = (-f11) / 2.0f;
                f7 = f11 / 2.0f;
                f8 = f7;
                f9 = f6;
            } else {
                f9 = 0.0f;
                f8 = 0.0f;
            }
        } else if (avatarStoryParams.isLast) {
            f5 = avatarStoryParams.progressToArc;
            f6 = ((-f5) / 2.0f) + 180.0f;
            f7 = (f5 / 2.0f) + 180.0f;
            f8 = f7;
            f9 = f6;
        } else {
            if (f < 90.0f) {
                f3 = avatarStoryParams.rightTopAngleToExclude;
                f4 = avatarStoryParams.rightBottomAngleToExclude;
            } else {
                f3 = -avatarStoryParams.leftTopAngleToExclude;
                f4 = avatarStoryParams.leftBottomAngleToExclude;
            }
            f9 = f3;
            f8 = f4;
        }
        if (z || ExteraConfig.getAvatarCorners() < 28.0f) {
            drawRoundRectSegmentExcluding(canvas, rectF, getRingCornerRadius(rectF, avatarStoryParams, z), f, f2, f9, f8, paint);
        } else {
            drawArcExcludeArc(canvas, rectF, paint, f, f2, f9, f8);
        }
    }

    public static int getInset(int i, int i2) {
        if (i == 3) {
            i = i2;
        }
        if (i == 2) {
            return AndroidUtilities.dp(3.0f);
        }
        if (i == 1) {
            return AndroidUtilities.dp(4.0f);
        }
        return 0;
    }

    public static Paint getUnreadCirclePaint(ImageReceiver imageReceiver, boolean z) {
        checkStoriesGradientTools(z);
        storiesGradientTools[z ? 1 : 0].setBounds(imageReceiver.getImageX(), imageReceiver.getImageY(), imageReceiver.getImageX2(), imageReceiver.getImageY2());
        return storiesGradientTools[z ? 1 : 0].paint;
    }

    private static void checkStoriesGradientTools(boolean z) {
        GradientTools[] gradientToolsArr = storiesGradientTools;
        if (gradientToolsArr[z ? 1 : 0] == null) {
            gradientToolsArr[z ? 1 : 0] = new GradientTools();
            GradientTools gradientTools = storiesGradientTools[z ? 1 : 0];
            gradientTools.isDiagonal = true;
            gradientTools.isRotate = true;
            if (z) {
                gradientTools.setColors(Theme.getColor(Theme.key_stories_circle_dialog1), Theme.getColor(Theme.key_stories_circle_dialog2));
            } else {
                gradientTools.setColors(Theme.getColor(Theme.key_stories_circle1), Theme.getColor(Theme.key_stories_circle2));
            }
            storiesGradientTools[z ? 1 : 0].paint.setStrokeWidth(AndroidUtilities.dpf2(2.0f));
            storiesGradientTools[z ? 1 : 0].paint.setStyle(Paint.Style.STROKE);
            storiesGradientTools[z ? 1 : 0].paint.setStrokeCap(Paint.Cap.ROUND);
        }
    }

    public static void updateColors() {
        GradientTools gradientTools = closeFriendsGradientTools;
        if (gradientTools != null) {
            gradientTools.setColors(Theme.getColor(Theme.key_stories_circle_closeFriends1), Theme.getColor(Theme.key_stories_circle_closeFriends2));
        }
        GradientTools gradientTools2 = liveGradientTools;
        if (gradientTools2 != null) {
            gradientTools2.setColors(Theme.getColor(Theme.key_stories_circle_live1), Theme.getColor(Theme.key_stories_circle_live2));
        }
        GradientTools gradientTools3 = storiesGradientTools[0];
        if (gradientTools3 != null) {
            gradientTools3.setColors(Theme.getColor(Theme.key_stories_circle_dialog1), Theme.getColor(Theme.key_stories_circle_dialog2));
        }
        GradientTools gradientTools4 = storiesGradientTools[1];
        if (gradientTools4 != null) {
            gradientTools4.setColors(Theme.getColor(Theme.key_stories_circle1), Theme.getColor(Theme.key_stories_circle2));
        }
        if (errorGradientTools != null) {
            int color = Theme.getColor(Theme.key_color_orange);
            int color2 = Theme.getColor(Theme.key_text_RedBold);
            errorGradientTools.setColors(ColorUtils.blendARGB(color, color2, 0.25f), color2);
        }
    }

    public static Paint getCloseFriendsPaint(ImageReceiver imageReceiver) {
        if (closeFriendsGradientTools == null) {
            GradientTools gradientTools = new GradientTools();
            closeFriendsGradientTools = gradientTools;
            gradientTools.isDiagonal = true;
            gradientTools.isRotate = true;
            gradientTools.setColors(Theme.getColor(Theme.key_stories_circle_closeFriends1), Theme.getColor(Theme.key_stories_circle_closeFriends2));
            closeFriendsGradientTools.paint.setStrokeWidth(AndroidUtilities.dpf2(2.0f));
            closeFriendsGradientTools.paint.setStyle(Paint.Style.STROKE);
            closeFriendsGradientTools.paint.setStrokeCap(Paint.Cap.ROUND);
        }
        closeFriendsGradientTools.setBounds(imageReceiver.getImageX(), imageReceiver.getImageY(), imageReceiver.getImageX2(), imageReceiver.getImageY2());
        return closeFriendsGradientTools.paint;
    }

    public static Paint getLivePaint(ImageReceiver imageReceiver) {
        if (liveGradientTools == null) {
            GradientTools gradientTools = new GradientTools();
            liveGradientTools = gradientTools;
            gradientTools.isDiagonal = true;
            gradientTools.isRotate = true;
            gradientTools.setColors(Theme.getColor(Theme.key_stories_circle_live1), Theme.getColor(Theme.key_stories_circle_live2));
            liveGradientTools.paint.setStrokeWidth(AndroidUtilities.dpf2(2.0f));
            liveGradientTools.paint.setStyle(Paint.Style.STROKE);
            liveGradientTools.paint.setStrokeCap(Paint.Cap.ROUND);
        }
        liveGradientTools.setBounds(imageReceiver.getImageX(), imageReceiver.getImageY(), imageReceiver.getImageX2(), imageReceiver.getImageY2());
        return liveGradientTools.paint;
    }

    public static Paint getErrorPaint(ImageReceiver imageReceiver) {
        if (errorGradientTools == null) {
            GradientTools gradientTools = new GradientTools();
            errorGradientTools = gradientTools;
            gradientTools.isDiagonal = true;
            gradientTools.isRotate = true;
            int color = Theme.getColor(Theme.key_color_orange);
            int color2 = Theme.getColor(Theme.key_text_RedBold);
            errorGradientTools.setColors(ColorUtils.blendARGB(color, color2, 0.25f), color2);
            errorGradientTools.paint.setStrokeWidth(AndroidUtilities.dpf2(2.0f));
            errorGradientTools.paint.setStyle(Paint.Style.STROKE);
            errorGradientTools.paint.setStrokeCap(Paint.Cap.ROUND);
        }
        errorGradientTools.setBounds(imageReceiver.getImageX(), imageReceiver.getImageY(), imageReceiver.getImageX2(), imageReceiver.getImageY2());
        return errorGradientTools.paint;
    }

    public static Paint getErrorPaint(RectF rectF) {
        if (errorGradientTools == null) {
            GradientTools gradientTools = new GradientTools();
            errorGradientTools = gradientTools;
            gradientTools.isDiagonal = true;
            gradientTools.isRotate = true;
            int color = Theme.getColor(Theme.key_color_orange);
            int color2 = Theme.getColor(Theme.key_text_RedBold);
            errorGradientTools.setColors(ColorUtils.blendARGB(color, color2, 0.25f), color2);
            errorGradientTools.paint.setStrokeWidth(AndroidUtilities.dpf2(2.0f));
            errorGradientTools.paint.setStyle(Paint.Style.STROKE);
            errorGradientTools.paint.setStrokeCap(Paint.Cap.ROUND);
        }
        errorGradientTools.setBounds(rectF.left, rectF.top, rectF.right, rectF.bottom);
        return errorGradientTools.paint;
    }

    public static void setStoryMiniImage(ImageReceiver imageReceiver, TL_stories.StoryItem storyItem) {
        ArrayList<TLRPC.PhotoSize> arrayList;
        if (storyItem == null) {
            return;
        }
        TLRPC.MessageMedia messageMedia = storyItem.media;
        TLRPC.Document document = messageMedia.document;
        if (document != null) {
            imageReceiver.setImage(ImageLocation.getForDocument(FileLoader.getClosestPhotoSizeWithSize(document.thumbs, 1000), storyItem.media.document), "100_100", null, null, ImageLoader.createStripedBitmap(storyItem.media.document.thumbs), 0L, null, storyItem, 0);
            return;
        }
        TLRPC.Photo photo = messageMedia != null ? messageMedia.photo : null;
        if (photo != null && (arrayList = photo.sizes) != null) {
            imageReceiver.setImage(null, null, ImageLocation.getForPhoto(FileLoader.getClosestPhotoSizeWithSize(arrayList, 1000), photo), "100_100", null, null, ImageLoader.createStripedBitmap(photo.sizes), 0L, null, storyItem, 0);
        } else {
            imageReceiver.clearImage();
        }
    }

    public static void setImage(ImageReceiver imageReceiver, TL_stories.StoryItem storyItem) {
        setImage(imageReceiver, storyItem, "320_320");
    }

    public static void setImage(ImageReceiver imageReceiver, TL_stories.StoryItem storyItem, String str) {
        ArrayList<TLRPC.PhotoSize> arrayList;
        TLRPC.Document document;
        if (storyItem == null) {
            return;
        }
        TLRPC.MessageMedia messageMedia = storyItem.media;
        if (messageMedia != null && (document = messageMedia.document) != null) {
            imageReceiver.setImage(ImageLocation.getForDocument(FileLoader.getClosestPhotoSizeWithSize(document.thumbs, Integer.MAX_VALUE), storyItem.media.document), str, null, null, ImageLoader.createStripedBitmap(storyItem.media.document.thumbs), 0L, null, storyItem, 0);
            imageReceiver.addDecorator(new StoryWidgetsImageDecorator(storyItem));
            return;
        }
        TLRPC.Photo photo = messageMedia != null ? messageMedia.photo : null;
        if (messageMedia instanceof TLRPC.TL_messageMediaUnsupported) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(10, 10, Bitmap.Config.ARGB_8888);
            bitmapCreateBitmap.eraseColor(ColorUtils.blendARGB(-16777216, -1, 0.2f));
            imageReceiver.setImageBitmap(bitmapCreateBitmap);
            imageReceiver.addDecorator(new StoryWidgetsImageDecorator(storyItem));
            return;
        }
        if (photo != null && (arrayList = photo.sizes) != null) {
            imageReceiver.setImage(null, null, ImageLocation.getForPhoto(FileLoader.getClosestPhotoSizeWithSize(arrayList, Integer.MAX_VALUE), photo), str, null, null, ImageLoader.createStripedBitmap(photo.sizes), 0L, null, storyItem, 0);
            imageReceiver.addDecorator(new StoryWidgetsImageDecorator(storyItem));
        } else {
            imageReceiver.clearImage();
        }
    }

    public static void setImage(ImageReceiver imageReceiver, StoriesController.UploadingStory uploadingStory) {
        if (uploadingStory.entry.isVideo) {
            imageReceiver.setImage(ImageLocation.getForPath(uploadingStory.firstFramePath), "320_180", null, null, null, 0L, null, null, 0);
        } else {
            imageReceiver.setImage(ImageLocation.getForPath(uploadingStory.path), "320_180", null, null, null, 0L, null, null, 0);
        }
    }

    public static void setThumbImage(AvatarDrawable avatarDrawable, ImageReceiver imageReceiver, TL_stories.StoryItem storyItem, int i, int i2) {
        ArrayList<TLRPC.PhotoSize> arrayList;
        TLRPC.Document document;
        TLRPC.MessageMedia messageMedia = storyItem.media;
        if (messageMedia instanceof TLRPC.TL_messageMediaVideoStream) {
            TLObject userOrChat = MessagesController.getInstance(imageReceiver.getCurrentAccount()).getUserOrChat(storyItem.dialogId);
            avatarDrawable.setInfo(userOrChat);
            imageReceiver.setForUserOrChat(userOrChat, avatarDrawable);
            return;
        }
        if (messageMedia != null && (document = messageMedia.document) != null) {
            imageReceiver.setImage(ImageLocation.getForDocument(FileLoader.getClosestPhotoSizeWithSize(document.thumbs, AndroidUtilities.dp(Math.max(i, i2)), false, null, true), storyItem.media.document), i + "_" + i2, null, null, ImageLoader.createStripedBitmap(storyItem.media.document.thumbs), 0L, null, storyItem, 0);
            return;
        }
        TLRPC.Photo photo = messageMedia != null ? messageMedia.photo : null;
        if (photo != null && (arrayList = photo.sizes) != null) {
            imageReceiver.setImage(null, null, ImageLocation.getForPhoto(FileLoader.getClosestPhotoSizeWithSize(arrayList, AndroidUtilities.dp(Math.max(i, i2)), false, null, true), photo), i + "_" + i2, null, null, ImageLoader.createStripedBitmap(photo.sizes), 0L, null, storyItem, 0);
            return;
        }
        imageReceiver.clearImage();
    }

    public static Drawable getExpiredStoryDrawable() {
        if (expiredStoryDrawable == null) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(360, 180, Bitmap.Config.ARGB_8888);
            bitmapCreateBitmap.eraseColor(-7829368);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            TextPaint textPaint = new TextPaint(1);
            textPaint.setTextSize(15.0f);
            textPaint.setTextAlign(Paint.Align.CENTER);
            textPaint.setColor(ColorUtils.setAlphaComponent(-16777216, 100));
            canvas.drawText("expired", 180.0f, 86.0f, textPaint);
            canvas.drawText("story", 180.0f, 106.0f, textPaint);
            expiredStoryDrawable = new BitmapDrawable(bitmapCreateBitmap);
        }
        return expiredStoryDrawable;
    }

    public static CharSequence getUploadingStr(TextView textView, boolean z, boolean z2) {
        String string;
        if (z2) {
            string = LocaleController.getString(C2807R.string.StoryEditing);
        } else {
            string = LocaleController.getString(C2807R.string.UploadingStory);
        }
        if (string.indexOf("…") <= 0) {
            return string;
        }
        SpannableStringBuilder spannableStringBuilderValueOf = SpannableStringBuilder.valueOf(string);
        UploadingDotsSpannable uploadingDotsSpannable = new UploadingDotsSpannable();
        spannableStringBuilderValueOf.setSpan(uploadingDotsSpannable, spannableStringBuilderValueOf.length() - 1, spannableStringBuilderValueOf.length(), 0);
        uploadingDotsSpannable.setParent(textView, z);
        return spannableStringBuilderValueOf;
    }

    public static void applyUploadingStr(SimpleTextView simpleTextView, boolean z, boolean z2) {
        String string;
        if (z2) {
            string = LocaleController.getString(C2807R.string.StoryEditing);
        } else {
            string = LocaleController.getString(C2807R.string.UploadingStory);
        }
        if (string.indexOf("…") > 0) {
            SpannableStringBuilder spannableStringBuilderValueOf = SpannableStringBuilder.valueOf(string);
            UploadingDotsSpannable uploadingDotsSpannable = new UploadingDotsSpannable();
            spannableStringBuilderValueOf.setSpan(uploadingDotsSpannable, spannableStringBuilderValueOf.length() - 1, spannableStringBuilderValueOf.length(), 0);
            uploadingDotsSpannable.setParent(simpleTextView, z);
            simpleTextView.setText(spannableStringBuilderValueOf);
            return;
        }
        simpleTextView.setText(string);
    }

    public static CharSequence createExpiredStoryString() {
        return createExpiredStoryString(false, C2807R.string.ExpiredStory, new Object[0]);
    }

    public static CharSequence createExpiredStoryString(boolean z, int i, Object... objArr) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) "d ").append((CharSequence) LocaleController.formatString(i, objArr));
        ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2807R.drawable.msg_mini_bomb);
        if (z) {
            coloredImageSpan.setScale(0.8f, 0.8f);
        } else {
            coloredImageSpan.setTopOffset(-1);
        }
        spannableStringBuilder.setSpan(coloredImageSpan, 0, 1, 0);
        return spannableStringBuilder;
    }

    public static CharSequence createReplyStoryString() {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) "d ").append((CharSequence) LocaleController.getString(C2807R.string.Story));
        spannableStringBuilder.setSpan(new ColoredImageSpan(C2807R.drawable.msg_mini_replystory2), 0, 1, 0);
        return spannableStringBuilder;
    }

    public static boolean hasExpiredViews(TL_stories.StoryItem storyItem) {
        return storyItem != null && ConnectionsManager.getInstance(UserConfig.selectedAccount).getCurrentTime() > storyItem.expire_date + 86400;
    }

    public static void applyViewedUser(TL_stories.StoryItem storyItem, TLRPC.User user) {
        if (user == null || storyItem.dialogId != UserConfig.getInstance(UserConfig.selectedAccount).clientUserId || hasExpiredViews(storyItem)) {
            return;
        }
        if (storyItem.views == null) {
            storyItem.views = new TL_stories.TL_storyViews();
        }
        TL_stories.StoryViews storyViews = storyItem.views;
        if (storyViews.views_count == 0) {
            storyViews.views_count = 1;
            storyViews.recent_viewers.add(Long.valueOf(user.id));
        }
    }

    public static void drawArcExcludeArc(Canvas canvas, RectF rectF, Paint paint, float f, float f2, float f3, float f4) {
        float f5;
        boolean z;
        float f6 = f2 - f;
        if (f >= f3 || f2 >= f3 + f6) {
            f5 = f;
            z = false;
        } else {
            f5 = f;
            canvas.drawArc(rectF, f5, Math.min(f2, f3) - f, false, paint);
            z = true;
        }
        float fMax = Math.max(f5, f4);
        float fMin = Math.min(f2, f3 + 360.0f);
        if (fMin >= fMax) {
            canvas.drawArc(rectF, fMax, fMin - fMax, false, paint);
        } else {
            if (z) {
                return;
            }
            if (f5 <= f3 || f2 >= f4) {
                canvas.drawArc(rectF, f5, f6, false, paint);
            }
        }
    }

    public static boolean isExpired(int i, TL_stories.StoryItem storyItem) {
        return ConnectionsManager.getInstance(i).getCurrentTime() > storyItem.expire_date;
    }

    public static String getStoryImageFilter() {
        int iMax = (int) (Math.max(AndroidUtilities.getRealScreenSize().x, AndroidUtilities.getRealScreenSize().y) / AndroidUtilities.density);
        return iMax + "_" + iMax;
    }

    /* JADX INFO: loaded from: classes7.dex */
    public static class EnsureStoryFileLoadedObject {
        private boolean cancelled;
        long dialogId;
        ImageReceiver imageReceiver;
        public Runnable runnable;
        StoriesController storiesController;

        private EnsureStoryFileLoadedObject(StoriesController storiesController, long j) {
            this.cancelled = false;
            this.dialogId = j;
            this.storiesController = storiesController;
        }

        public void cancel() {
            this.cancelled = true;
            this.storiesController.setLoading(this.dialogId, false);
        }
    }

    public static EnsureStoryFileLoadedObject ensureStoryFileLoaded(TL_stories.PeerStories peerStories, final Runnable runnable) {
        TL_stories.StoryItem storyItem;
        ArrayList<TLRPC.PhotoSize> arrayList;
        ArrayList<TLRPC.PhotoSize> arrayList2;
        TLRPC.Document document;
        if (peerStories == null || peerStories.stories.isEmpty() || DialogObject.getPeerDialogId(peerStories.peer) == UserConfig.getInstance(UserConfig.selectedAccount).clientUserId) {
            runnable.run();
            return null;
        }
        StoriesController storiesController = MessagesController.getInstance(UserConfig.selectedAccount).storiesController;
        int i = storiesController.dialogIdToMaxReadId.get(DialogObject.getPeerDialogId(peerStories.peer));
        int i2 = 0;
        while (true) {
            if (i2 >= peerStories.stories.size()) {
                storyItem = null;
                break;
            }
            if (peerStories.stories.get(i2).id > i) {
                storyItem = peerStories.stories.get(i2);
                break;
            }
            i2++;
        }
        if (storyItem == null) {
            storyItem = peerStories.stories.get(0);
        }
        TL_stories.StoryItem storyItem2 = storyItem;
        TLRPC.MessageMedia messageMedia = storyItem2.media;
        if (messageMedia != null && messageMedia.document != null) {
            File pathToAttach = FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(storyItem2.media.document, _UrlKt.FRAGMENT_ENCODE_SET, false);
            if (pathToAttach != null && pathToAttach.exists()) {
                runnable.run();
                return null;
            }
            File pathToAttach2 = FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(storyItem2.media.document, _UrlKt.FRAGMENT_ENCODE_SET, true);
            if (pathToAttach2 != null) {
                try {
                    int iLastIndexOf = pathToAttach2.getName().lastIndexOf(".");
                    if (iLastIndexOf > 0) {
                        File file = new File(pathToAttach2.getParentFile(), pathToAttach2.getName().substring(0, iLastIndexOf) + ".temp");
                        if (file.exists() && file.length() > 0) {
                            runnable.run();
                            return null;
                        }
                    }
                } catch (Exception unused) {
                }
            }
        } else {
            TLRPC.Photo photo = messageMedia != null ? messageMedia.photo : null;
            if (photo != null && (arrayList = photo.sizes) != null) {
                File pathToAttach3 = FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(FileLoader.getClosestPhotoSizeWithSize(arrayList, Integer.MAX_VALUE), _UrlKt.FRAGMENT_ENCODE_SET, false);
                if (pathToAttach3 != null && pathToAttach3.exists()) {
                    runnable.run();
                    return null;
                }
            } else {
                runnable.run();
                return null;
            }
        }
        final EnsureStoryFileLoadedObject ensureStoryFileLoadedObject = new EnsureStoryFileLoadedObject(storiesController, DialogObject.getPeerDialogId(peerStories.peer));
        ensureStoryFileLoadedObject.runnable = new Runnable() { // from class: org.telegram.ui.Stories.StoriesUtilities$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                StoriesUtilities.m21522$r8$lambda$vj5KJCnxfshabut8bbOCF844fQ(ensureStoryFileLoadedObject, runnable);
            }
        };
        final Runnable[] runnableArr = {runnable};
        Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Stories.StoriesUtilities$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                StoriesUtilities.m21521$r8$lambda$kfHW3kZyQMzq2sFs9GFKip6YvU(runnableArr, ensureStoryFileLoadedObject);
            }
        };
        AndroidUtilities.runOnUIThread(runnable2, 3000L);
        ImageReceiver imageReceiver = new ImageReceiver() { // from class: org.telegram.ui.Stories.StoriesUtilities.2
            @Override // org.telegram.messenger.ImageReceiver
            public boolean setImageBitmapByKey(Drawable drawable, String str, int i3, boolean z, int i4) {
                boolean imageBitmapByKey = super.setImageBitmapByKey(drawable, str, i3, z, i4);
                Runnable runnable3 = runnableArr[0];
                if (runnable3 != null) {
                    AndroidUtilities.cancelRunOnUIThread(runnable3);
                    ensureStoryFileLoadedObject.runnable.run();
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesUtilities$2$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        onDetachedFromWindow();
                    }
                });
                return imageBitmapByKey;
            }
        };
        ensureStoryFileLoadedObject.imageReceiver = imageReceiver;
        imageReceiver.setAllowLoadingOnAttachedOnly(true);
        ensureStoryFileLoadedObject.imageReceiver.onAttachedToWindow();
        String storyImageFilter = getStoryImageFilter();
        TLRPC.MessageMedia messageMedia2 = storyItem2.media;
        if (messageMedia2 != null && (document = messageMedia2.document) != null) {
            ensureStoryFileLoadedObject.imageReceiver.setImage(ImageLocation.getForDocument(document), storyImageFilter + "_pframe", null, null, null, 0L, null, storyItem2, 0);
        } else {
            TLRPC.Photo photo2 = messageMedia2 != null ? messageMedia2.photo : null;
            if (photo2 != null && (arrayList2 = photo2.sizes) != null) {
                ensureStoryFileLoadedObject.imageReceiver.setImage(null, null, ImageLocation.getForPhoto(FileLoader.getClosestPhotoSizeWithSize(arrayList2, Integer.MAX_VALUE), photo2), storyImageFilter, null, null, null, 0L, null, storyItem2, 0);
            } else {
                ensureStoryFileLoadedObject.runnable.run();
                return null;
            }
        }
        return ensureStoryFileLoadedObject;
    }

    /* JADX INFO: renamed from: $r8$lambda$vj-5KJCnxfshabut8bbOCF844fQ, reason: not valid java name */
    public static /* synthetic */ void m21522$r8$lambda$vj5KJCnxfshabut8bbOCF844fQ(EnsureStoryFileLoadedObject ensureStoryFileLoadedObject, Runnable runnable) {
        if (ensureStoryFileLoadedObject.cancelled) {
            return;
        }
        runnable.run();
    }

    /* JADX INFO: renamed from: $r8$lambda$kfHW3-kZyQMzq2sFs9GFKip6YvU, reason: not valid java name */
    public static /* synthetic */ void m21521$r8$lambda$kfHW3kZyQMzq2sFs9GFKip6YvU(Runnable[] runnableArr, EnsureStoryFileLoadedObject ensureStoryFileLoadedObject) {
        runnableArr[0] = null;
        ensureStoryFileLoadedObject.runnable.run();
        ImageReceiver imageReceiver = ensureStoryFileLoadedObject.imageReceiver;
        if (imageReceiver != null) {
            imageReceiver.onDetachedFromWindow();
        }
    }

    public static class AvatarStoryParams {
        public float additionalInset;
        public boolean allowLongress;
        public float alpha;
        public boolean animate;
        public int animateFromUnreadState;
        public float avatarRadius;
        ButtonBounce buttonBounce;
        public View child;
        public long crossfadeToDialog;
        public float crossfadeToDialogProgress;
        public int currentState;
        private long dialogId;
        public boolean drawHiddenStoriesAsSegments;
        public boolean drawInside;
        public boolean drawSegments;
        public boolean drawnLive;
        public boolean forceAnimateProgressToSegments;
        public int forceState;
        float globalAngle;
        public int globalState;
        boolean inc;
        public boolean isArchive;
        public boolean isDialogStoriesCell;
        public boolean isFirst;
        public boolean isLast;
        public final boolean isStoryCell;
        public float leftBottomAngleToExclude;
        public float leftTopAngleToExclude;
        Runnable longPressRunnable;
        UserStoriesLoadOperation operation;
        public RectF originalAvatarRect;
        boolean pressed;
        public int prevState;
        public int prevUnreadState;
        public float progressToArc;
        public float progressToProgressSegments;
        public float progressToSate;
        public float progressToSegments;
        public Theme.ResourcesProvider resourcesProvider;
        public float rightBottomAngleToExclude;
        public float rightTopAngleToExclude;
        public boolean showProgress;
        float startX;
        float startY;
        public int storyId;
        public TL_stories.StoryItem storyItem;
        float sweepAngle;
        public int unreadState;
        public boolean useArcProgress;

        public boolean isAvatarClickable(long j, TLRPC.Chat chat, TLRPC.User user) {
            return false;
        }

        public boolean onAvatarClick(View view, long j) {
            return false;
        }

        public void onLongPress() {
        }

        public AvatarStoryParams(boolean z) {
            this(z, null);
        }

        public AvatarStoryParams(boolean z, Theme.ResourcesProvider resourcesProvider) {
            this.drawSegments = true;
            this.avatarRadius = -1.0f;
            this.animate = true;
            this.progressToSegments = 1.0f;
            this.progressToArc = 0.0f;
            this.rightTopAngleToExclude = 0.0f;
            this.rightBottomAngleToExclude = 0.0f;
            this.leftTopAngleToExclude = 0.0f;
            this.leftBottomAngleToExclude = 0.0f;
            this.useArcProgress = true;
            this.alpha = 1.0f;
            this.progressToSate = 1.0f;
            this.showProgress = false;
            this.originalAvatarRect = new RectF();
            this.allowLongress = false;
            this.isStoryCell = z;
            this.resourcesProvider = resourcesProvider;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateProgressParams() {
            boolean z = this.inc;
            float f = this.sweepAngle;
            if (z) {
                float f2 = f + 0.016f;
                this.sweepAngle = f2;
                if (f2 >= 1.0f) {
                    this.sweepAngle = 1.0f;
                    this.inc = false;
                }
            } else {
                float f3 = f - 0.016f;
                this.sweepAngle = f3;
                if (f3 < 0.0f) {
                    this.sweepAngle = 0.0f;
                    this.inc = true;
                }
            }
            this.globalAngle += 1.152f;
        }

        public boolean checkOnTouchEvent(MotionEvent motionEvent, final View view) {
            TLRPC.User user;
            TLRPC.TL_recentStory tL_recentStory;
            boolean zHasHiddenStories;
            TLRPC.TL_recentStory tL_recentStory2;
            this.child = view;
            StoriesController storiesController = MessagesController.getInstance(UserConfig.selectedAccount).getStoriesController();
            boolean z = false;
            if (motionEvent.getAction() == 0 && this.originalAvatarRect.contains(motionEvent.getX(), motionEvent.getY())) {
                TLRPC.Chat chat = null;
                if (this.dialogId > 0) {
                    user = MessagesController.getInstance(UserConfig.selectedAccount).getUser(Long.valueOf(this.dialogId));
                } else {
                    chat = MessagesController.getInstance(UserConfig.selectedAccount).getChat(Long.valueOf(-this.dialogId));
                    user = null;
                }
                if (isAvatarClickable(this.dialogId, chat, user)) {
                    zHasHiddenStories = true;
                } else if (this.drawHiddenStoriesAsSegments) {
                    zHasHiddenStories = storiesController.hasHiddenStories();
                } else {
                    if (this.dialogId <= 0 ? MessagesController.getInstance(UserConfig.selectedAccount).getStoriesController().hasStories(this.dialogId) || (chat != null && !chat.stories_unavailable && (tL_recentStory = chat.stories_max_id) != null && tL_recentStory.max_id > 0) : MessagesController.getInstance(UserConfig.selectedAccount).getStoriesController().hasStories(this.dialogId) || (user != null && !user.stories_unavailable && (tL_recentStory2 = user.stories_max_id) != null && tL_recentStory2.max_id > 0)) {
                        z = true;
                    }
                    zHasHiddenStories = z;
                }
                if (this.dialogId != UserConfig.getInstance(UserConfig.selectedAccount).clientUserId && zHasHiddenStories) {
                    ButtonBounce buttonBounce = this.buttonBounce;
                    if (buttonBounce == null) {
                        this.buttonBounce = new ButtonBounce(view, 1.5f, 5.0f);
                    } else {
                        buttonBounce.setView(view);
                    }
                    view.getParent().requestDisallowInterceptTouchEvent(true);
                    this.buttonBounce.setPressed(true);
                    this.pressed = true;
                    this.startX = motionEvent.getX();
                    this.startY = motionEvent.getY();
                    if (this.allowLongress) {
                        Runnable runnable = this.longPressRunnable;
                        if (runnable != null) {
                            AndroidUtilities.cancelRunOnUIThread(runnable);
                        }
                        Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Stories.StoriesUtilities$AvatarStoryParams$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$checkOnTouchEvent$0(view);
                            }
                        };
                        this.longPressRunnable = runnable2;
                        AndroidUtilities.runOnUIThread(runnable2, ViewConfiguration.getLongPressTimeout());
                    }
                }
            } else if (motionEvent.getAction() == 2 && this.pressed) {
                if (Math.abs(this.startX - motionEvent.getX()) > AndroidUtilities.touchSlop || Math.abs(this.startY - motionEvent.getY()) > AndroidUtilities.touchSlop) {
                    ButtonBounce buttonBounce2 = this.buttonBounce;
                    if (buttonBounce2 != null) {
                        buttonBounce2.setView(view);
                        this.buttonBounce.setPressed(false);
                    }
                    Runnable runnable3 = this.longPressRunnable;
                    if (runnable3 != null) {
                        AndroidUtilities.cancelRunOnUIThread(runnable3);
                    }
                    view.getParent().requestDisallowInterceptTouchEvent(false);
                    this.pressed = false;
                }
            } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                ButtonBounce buttonBounce3 = this.buttonBounce;
                if (buttonBounce3 != null) {
                    buttonBounce3.setView(view);
                    this.buttonBounce.setPressed(false);
                }
                if (this.pressed && motionEvent.getAction() == 1) {
                    processOpenStory(view);
                }
                ViewParent parent = view.getParent();
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).requestDisallowInterceptTouchEvent(false);
                }
                this.pressed = false;
                Runnable runnable4 = this.longPressRunnable;
                if (runnable4 != null) {
                    AndroidUtilities.cancelRunOnUIThread(runnable4);
                }
            }
            return this.pressed;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$checkOnTouchEvent$0(View view) {
            try {
                view.performHapticFeedback(0);
            } catch (Exception unused) {
            }
            ButtonBounce buttonBounce = this.buttonBounce;
            if (buttonBounce != null) {
                buttonBounce.setPressed(false);
            }
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).requestDisallowInterceptTouchEvent(false);
            }
            this.pressed = false;
            onLongPress();
        }

        private void processOpenStory(View view) {
            TLRPC.TL_recentStory tL_recentStory;
            TLRPC.TL_recentStory tL_recentStory2;
            if (onAvatarClick(view, this.dialogId)) {
                return;
            }
            MessagesController messagesController = MessagesController.getInstance(UserConfig.selectedAccount);
            StoriesController storiesController = messagesController.getStoriesController();
            if (this.drawHiddenStoriesAsSegments) {
                openStory(0L, null);
                return;
            }
            if (this.dialogId != UserConfig.getInstance(UserConfig.selectedAccount).getClientUserId()) {
                boolean zHasStories = storiesController.hasStories(this.dialogId);
                long j = this.dialogId;
                if (zHasStories) {
                    openStory(j, null);
                    return;
                }
                if (j > 0) {
                    TLRPC.User user = messagesController.getUser(Long.valueOf(j));
                    if (user == null || user.stories_unavailable || (tL_recentStory2 = user.stories_max_id) == null || tL_recentStory2.max_id <= 0) {
                        return;
                    }
                    new UserStoriesLoadOperation().load(this.dialogId, view, this);
                    return;
                }
                TLRPC.Chat chat = messagesController.getChat(Long.valueOf(-j));
                if (chat == null || chat.stories_unavailable || (tL_recentStory = chat.stories_max_id) == null || tL_recentStory.max_id <= 0) {
                    return;
                }
                new UserStoriesLoadOperation().load(this.dialogId, view, this);
            }
        }

        public void openStory(long j, Runnable runnable) {
            BaseFragment lastFragment = LaunchActivity.getLastFragment();
            if (lastFragment == null || this.child == null) {
                return;
            }
            lastFragment.getOrCreateStoryViewer().doOnAnimationReady(runnable);
            ViewParent parent = this.child.getParent();
            lastFragment.getOrCreateStoryViewer().open(lastFragment.getContext(), j, parent instanceof RecyclerView ? StoriesListPlaceProvider.of((RecyclerListView) parent) : null);
        }

        public float getScale() {
            ButtonBounce buttonBounce = this.buttonBounce;
            if (buttonBounce == null) {
                return 1.0f;
            }
            return buttonBounce.getScale(0.08f);
        }

        public void reset() {
            UserStoriesLoadOperation userStoriesLoadOperation = this.operation;
            if (userStoriesLoadOperation != null) {
                userStoriesLoadOperation.cancel();
                this.operation = null;
            }
            this.buttonBounce = null;
            this.pressed = false;
        }

        public void onDetachFromWindow() {
            reset();
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    public static class UserStoriesLoadOperation {
        boolean canceled;
        private int currentAccount;
        long dialogId;
        int guid = ConnectionsManager.generateClassGuid();
        AvatarStoryParams params;
        int reqId;
        View view;

        public void load(final long j, final View view, final AvatarStoryParams avatarStoryParams) {
            int i = UserConfig.selectedAccount;
            this.currentAccount = i;
            this.dialogId = j;
            this.params = avatarStoryParams;
            this.view = view;
            final MessagesController messagesController = MessagesController.getInstance(i);
            messagesController.getStoriesController().setLoading(j, true);
            view.invalidate();
            TL_stories.TL_stories_getPeerStories tL_stories_getPeerStories = new TL_stories.TL_stories_getPeerStories();
            tL_stories_getPeerStories.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(j);
            this.reqId = ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_stories_getPeerStories, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesUtilities$UserStoriesLoadOperation$$ExternalSyntheticLambda0
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$load$3(j, view, avatarStoryParams, messagesController, tLObject, tL_error);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$load$3(final long j, final View view, final AvatarStoryParams avatarStoryParams, final MessagesController messagesController, final TLObject tLObject, TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesUtilities$UserStoriesLoadOperation$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$load$2(tLObject, j, view, avatarStoryParams, messagesController);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:7:0x0041  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public /* synthetic */ void lambda$load$2(TLObject tLObject, long j, View view, final AvatarStoryParams avatarStoryParams, MessagesController messagesController) {
            final UserStoriesLoadOperation userStoriesLoadOperation;
            final long j2;
            final View view2;
            boolean z;
            TLRPC.Chat chat;
            TLRPC.User user;
            if (tLObject != null) {
                TL_stories.TL_stories_peerStories tL_stories_peerStories = (TL_stories.TL_stories_peerStories) tLObject;
                MessagesController.getInstance(this.currentAccount).putUsers(tL_stories_peerStories.users, false);
                MessagesController.getInstance(this.currentAccount).putChats(tL_stories_peerStories.chats, false);
                TL_stories.PeerStories peerStories = tL_stories_peerStories.stories;
                if (peerStories.stories.isEmpty()) {
                    userStoriesLoadOperation = this;
                    j2 = j;
                    view2 = view;
                    z = true;
                } else {
                    MessagesController.getInstance(this.currentAccount).getStoriesController().putStories(j, peerStories);
                    userStoriesLoadOperation = this;
                    j2 = j;
                    view2 = view;
                    StoriesUtilities.ensureStoryFileLoaded(peerStories, new Runnable() { // from class: org.telegram.ui.Stories.StoriesUtilities$UserStoriesLoadOperation$$ExternalSyntheticLambda2
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$load$1(view2, j2, avatarStoryParams);
                        }
                    });
                    z = false;
                }
            }
            if (j2 > 0 && (user = messagesController.getUser(Long.valueOf(j2))) != null) {
                user.stories_unavailable = true;
                MessagesStorage.getInstance(userStoriesLoadOperation.currentAccount).putUsersAndChats(Collections.singletonList(user), null, false, true);
                messagesController.putUser(user, false);
            }
            if (j2 < 0 && (chat = messagesController.getChat(Long.valueOf(-j2))) != null) {
                chat.stories_unavailable = true;
                MessagesStorage.getInstance(userStoriesLoadOperation.currentAccount).putUsersAndChats(null, Collections.singletonList(chat), false, true);
                messagesController.putChat(chat, false);
            }
            if (z) {
                view2.invalidate();
                MessagesController.getInstance(userStoriesLoadOperation.currentAccount).getStoriesController().setLoading(j2, false);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$load$1(final View view, final long j, AvatarStoryParams avatarStoryParams) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesUtilities$UserStoriesLoadOperation$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$load$0(view, j);
                }
            }, 500L);
            avatarStoryParams.openStory(j, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$load$0(View view, long j) {
            view.invalidate();
            MessagesController.getInstance(this.currentAccount).getStoriesController().setLoading(j, false);
        }

        public void cancel() {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.reqId, false);
            this.canceled = true;
            this.params = null;
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    public static class StoryGradientTools {
        private final AnimatedColor animatedColor1;
        private final AnimatedColor animatedColor2;
        private int color1;
        private int color2;
        public final int currentAccount;
        private final Runnable invalidate;
        private final boolean isDialogCell;
        private final GradientTools tools;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public StoryGradientTools(View view, boolean z) {
            this(new Shaker$$ExternalSyntheticLambda0(view), z);
            Objects.requireNonNull(view);
        }

        public StoryGradientTools(Runnable runnable, boolean z) {
            this.currentAccount = UserConfig.selectedAccount;
            this.invalidate = runnable;
            this.isDialogCell = z;
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
            this.animatedColor1 = new AnimatedColor(runnable, 350L, cubicBezierInterpolator);
            this.animatedColor2 = new AnimatedColor(runnable, 350L, cubicBezierInterpolator);
            GradientTools gradientTools = new GradientTools();
            this.tools = gradientTools;
            gradientTools.isDiagonal = true;
            gradientTools.isRotate = true;
            resetColors(false);
            gradientTools.paint.setStrokeWidth(AndroidUtilities.dpf2(2.0f));
            gradientTools.paint.setStyle(Paint.Style.STROKE);
            gradientTools.paint.setStrokeCap(Paint.Cap.ROUND);
        }

        public void setUser(TLRPC.User user, boolean z) {
            TLRPC.PeerColor peerColor;
            setColorId((user == null || (peerColor = user.profile_color) == null) ? -1 : peerColor.color, z);
        }

        public void setChat(TLRPC.Chat chat, boolean z) {
            TLRPC.PeerColor peerColor;
            setColorId((chat == null || (peerColor = chat.profile_color) == null) ? -1 : peerColor.color, z);
        }

        public void setColorId(int i, boolean z) {
            MessagesController.PeerColors peerColors = MessagesController.getInstance(this.currentAccount).profilePeerColors;
            setColor(peerColors == null ? null : peerColors.getColor(i), z);
        }

        public void setColor(MessagesController.PeerColor peerColor, boolean z) {
            if (peerColor != null) {
                setColors(peerColor.getStoryColor1(Theme.isCurrentThemeDark()), peerColor.getStoryColor2(Theme.isCurrentThemeDark()), z);
            } else {
                resetColors(z);
            }
        }

        private void resetColors(boolean z) {
            if (this.isDialogCell) {
                setColors(Theme.getColor(Theme.key_stories_circle_dialog1), Theme.getColor(Theme.key_stories_circle_dialog2), z);
            } else {
                setColors(Theme.getColor(Theme.key_stories_circle1), Theme.getColor(Theme.key_stories_circle2), z);
            }
        }

        private void setColors(int i, int i2, boolean z) {
            this.color1 = i;
            this.color2 = i2;
            if (!z) {
                this.animatedColor1.set(i, true);
                this.animatedColor2.set(i2, true);
            }
            Runnable runnable = this.invalidate;
            if (runnable != null) {
                runnable.run();
            }
        }

        public Paint getPaint(RectF rectF) {
            this.tools.setColors(this.animatedColor1.set(this.color1), this.animatedColor2.set(this.color2));
            this.tools.setBounds(rectF.left, rectF.top, rectF.right, rectF.bottom);
            return this.tools.paint;
        }
    }
}
