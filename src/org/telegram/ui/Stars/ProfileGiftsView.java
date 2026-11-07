package org.telegram.ui.Stars;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import java.util.ArrayList;
import java.util.HashSet;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_stars;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.AnimatedFloat;
import org.telegram.ui.Components.ButtonBounce;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.ProfileActivity;
import org.telegram.ui.Stars.StarsController;
import org.telegram.ui.Stars.StarsReactionsSheet;

/* JADX INFO: loaded from: classes7.dex */
public class ProfileGiftsView extends View implements NotificationCenter.NotificationCenterDelegate {
    private float actionBarProgress;
    private boolean active;
    private final View avatarContainer;
    private final ProfileActivity.AvatarImageView avatarImage;
    public float collapseProgress;
    private final int currentAccount;
    private float cy;
    private final long dialogId;
    public float expandProgress;
    private float expandY;
    private final TimeInterpolator giftCollapseXInterpolator;
    private final TimeInterpolator giftCollapseYInterpolator;
    public final HashSet<Long> giftIds;
    public final ArrayList<Gift> gifts;
    public boolean isOpening;
    private float left;
    private StarsController.GiftsList list;
    public int maxCount;
    private float maxExpandY;
    public final ArrayList<Gift> oldGifts;
    private Gift pressedGift;
    private float progressToInsets;
    private final Theme.ResourcesProvider resourcesProvider;
    private float right;
    private final AnimatedFloat rightAnimated;

    public void setActive(boolean z) {
        this.active = z;
    }

    public ProfileGiftsView(Context context, int i, long j, View view, ProfileActivity.AvatarImageView avatarImageView, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.active = true;
        this.rightAnimated = new AnimatedFloat(this, 0L, 350L, CubicBezierInterpolator.EASE_OUT_QUINT);
        this.progressToInsets = 1.0f;
        this.oldGifts = new ArrayList<>();
        this.gifts = new ArrayList<>();
        this.giftIds = new HashSet<>();
        this.giftCollapseXInterpolator = new DecelerateInterpolator();
        this.giftCollapseYInterpolator = new LinearInterpolator();
        this.currentAccount = i;
        this.dialogId = j;
        this.avatarContainer = view;
        this.avatarImage = avatarImageView;
        this.resourcesProvider = resourcesProvider;
    }

    public void setExpandProgress(float f) {
        if (this.expandProgress != f) {
            this.expandProgress = f;
            invalidate();
        }
    }

    public void setCollapseProgress(float f, boolean z) {
        this.isOpening = z;
        float fClamp01 = Utilities.clamp01((f - 0.3f) / 0.7f);
        if (this.collapseProgress != fClamp01) {
            this.collapseProgress = fClamp01;
            invalidate();
        }
    }

    public void setActionBarActionMode(float f) {
        this.actionBarProgress = f;
        invalidate();
    }

    public void setBounds(float f, float f2, float f3, boolean z, int i) {
        boolean z2 = Math.abs(f - this.left) > 0.1f || Math.abs(f2 - this.right) > 0.1f || Math.abs(f3 - this.cy) > 0.1f;
        this.left = f;
        this.right = f2;
        if (!z) {
            this.rightAnimated.set(f2, true);
        }
        this.cy = f3;
        this.maxExpandY = i + f3;
        if (z2) {
            invalidate();
        }
    }

    public void setExpandCoords(float f) {
        this.expandY = f;
        invalidate();
    }

    public void setProgressToStoriesInsets(float f) {
        if (this.progressToInsets == f) {
            return;
        }
        this.progressToInsets = f;
        invalidate();
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.starUserGiftsLoaded);
        ArrayList<Gift> arrayList = this.gifts;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Gift gift = arrayList.get(i);
            i++;
            gift.emojiDrawable.addView(this);
        }
        update();
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.starUserGiftsLoaded);
        ArrayList<Gift> arrayList = this.gifts;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Gift gift = arrayList.get(i);
            i++;
            gift.emojiDrawable.removeView(this);
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.starUserGiftsLoaded && ((Long) objArr[0]).longValue() == this.dialogId) {
            update();
        }
    }

    public final class Gift {
        public AnimatedFloat animatedFloat;
        public final ButtonBounce bounce;
        public final int color;
        public final TLRPC.Document document;
        public final long documentId;
        public AnimatedEmojiDrawable emojiDrawable;
        public RadialGradient gradient;
        public Paint gradientPaint;
        public final long id;
        private StarsReactionsSheet.Particles particles;
        public final String slug;
        public int position = -1;
        public final Matrix gradientMatrix = new Matrix();
        public final RectF bounds = new RectF();

        public Gift(TL_stars.TL_starGiftUnique tL_starGiftUnique) {
            this.bounce = new ButtonBounce(ProfileGiftsView.this);
            this.id = tL_starGiftUnique.id;
            TLRPC.Document document = tL_starGiftUnique.getDocument();
            this.document = document;
            this.documentId = document == null ? 0L : document.id;
            this.color = ((TL_stars.starGiftAttributeBackdrop) StarsController.findAttribute(tL_starGiftUnique.attributes, TL_stars.starGiftAttributeBackdrop.class)).center_color | (-16777216);
            this.slug = tL_starGiftUnique.slug;
            initParticles();
        }

        private void initParticles() {
            this.particles = new StarsReactionsSheet.Particles(1, 6);
            float fDp = AndroidUtilities.dp(36.0f);
            float f = (-fDp) / 2.0f;
            float f2 = fDp / 2.0f;
            this.particles.bounds.set(f, f, f2, f2);
        }

        public boolean equals(Gift gift) {
            return gift != null && gift.id == this.id;
        }

        public void copy(Gift gift) {
            this.gradient = gift.gradient;
            this.emojiDrawable = gift.emojiDrawable;
            this.gradientPaint = gift.gradientPaint;
            this.animatedFloat = gift.animatedFloat;
            this.particles = gift.particles;
            this.position = gift.position;
        }

        public void draw(Canvas canvas, float f, float f2, float f3, float f4, float f5, float f6) {
            if (f5 <= 0.0f) {
                return;
            }
            float fDp = AndroidUtilities.dp(45.0f);
            float f7 = fDp / 2.0f;
            this.bounds.set(f - f7, f2 - f7, f + f7, f2 + f7);
            canvas.save();
            canvas.translate(f, f2);
            canvas.rotate(f4);
            float scale = f3 * this.bounce.getScale(0.1f);
            canvas.scale(scale, scale);
            this.particles.process();
            this.particles.draw(canvas, this.color, f5);
            Paint paint = this.gradientPaint;
            if (paint != null) {
                paint.setAlpha((int) (f5 * 255.0f * f6));
                float f8 = (-fDp) / 2.0f;
                canvas.drawRect(f8, f8, f7, f7, this.gradientPaint);
            }
            if (this.emojiDrawable != null) {
                int iDp = AndroidUtilities.dp(24.0f);
                int i = (-iDp) / 2;
                int i2 = iDp / 2;
                this.emojiDrawable.setBounds(i, i, i2, i2);
                this.emojiDrawable.setAlpha((int) (255.0f * f5));
                this.emojiDrawable.draw(canvas);
            }
            canvas.restore();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0047  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void update() {
        TLRPC.EmojiStatus emojiStatus;
        boolean z;
        Gift gift;
        Gift gift2;
        ProfileGiftsView profileGiftsView;
        if (MessagesController.getInstance(this.currentAccount).enableGiftsInProfile) {
            this.maxCount = MessagesController.getInstance(this.currentAccount).stargiftsPinnedToTopLimit;
            this.oldGifts.clear();
            this.oldGifts.addAll(this.gifts);
            this.gifts.clear();
            this.giftIds.clear();
            long j = this.dialogId;
            int i = this.currentAccount;
            if (j >= 0) {
                TLRPC.User user = MessagesController.getInstance(i).getUser(Long.valueOf(this.dialogId));
                emojiStatus = user == null ? null : user.emoji_status;
            } else {
                TLRPC.User user2 = MessagesController.getInstance(i).getUser(Long.valueOf(-this.dialogId));
                if (user2 != null) {
                    emojiStatus = user2.emoji_status;
                }
            }
            if (emojiStatus instanceof TLRPC.TL_emojiStatusCollectible) {
                this.giftIds.add(Long.valueOf(((TLRPC.TL_emojiStatusCollectible) emojiStatus).collectible_id));
            }
            StarsController.GiftsList profileGiftsList = StarsController.getInstance(this.currentAccount).getProfileGiftsList(this.dialogId);
            this.list = profileGiftsList;
            if (profileGiftsList != null) {
                for (int i2 = 0; i2 < this.list.gifts.size(); i2++) {
                    TL_stars.SavedStarGift savedStarGift = this.list.gifts.get(i2);
                    if (!savedStarGift.unsaved && savedStarGift.pinned_to_top) {
                        TL_stars.StarGift starGift = savedStarGift.gift;
                        if (starGift instanceof TL_stars.TL_starGiftUnique) {
                            Gift gift3 = new Gift((TL_stars.TL_starGiftUnique) starGift);
                            if (!this.giftIds.contains(Long.valueOf(gift3.id))) {
                                this.gifts.add(gift3);
                                this.giftIds.add(Long.valueOf(gift3.id));
                            }
                        }
                    }
                }
            }
            if (this.gifts.size() != this.oldGifts.size()) {
                z = true;
                break;
            }
            for (int i3 = 0; i3 < this.gifts.size(); i3++) {
                if (!this.gifts.get(i3).equals(this.oldGifts.get(i3))) {
                    z = true;
                    break;
                }
            }
            z = false;
            int i4 = 0;
            while (i4 < this.gifts.size()) {
                Gift gift4 = this.gifts.get(i4);
                int i5 = 0;
                while (true) {
                    if (i5 >= this.oldGifts.size()) {
                        gift2 = null;
                        break;
                    } else {
                        if (this.oldGifts.get(i5).id == gift4.id) {
                            gift2 = this.oldGifts.get(i5);
                            break;
                        }
                        i5++;
                    }
                }
                if (gift2 != null) {
                    gift4.copy(gift2);
                    profileGiftsView = this;
                } else {
                    float fDp = AndroidUtilities.dp(22.5f);
                    int i6 = gift4.color;
                    gift4.gradient = new RadialGradient(0.0f, 0.0f, fDp, new int[]{i6, Theme.multAlpha(i6, 0.0f)}, new float[]{0.0f, 1.0f}, Shader.TileMode.CLAMP);
                    Paint paint = new Paint(1);
                    gift4.gradientPaint = paint;
                    paint.setShader(gift4.gradient);
                    TLRPC.Document document = gift4.document;
                    int i7 = this.currentAccount;
                    if (document != null) {
                        gift4.emojiDrawable = AnimatedEmojiDrawable.make(i7, 0, document);
                    } else {
                        gift4.emojiDrawable = AnimatedEmojiDrawable.make(i7, 0, gift4.documentId);
                    }
                    profileGiftsView = this;
                    AnimatedFloat animatedFloat = new AnimatedFloat(profileGiftsView, 0L, 320L, (TimeInterpolator) null);
                    gift4.animatedFloat = animatedFloat;
                    animatedFloat.force(0.0f);
                    if (profileGiftsView.isAttachedToWindow()) {
                        gift4.emojiDrawable.addView(profileGiftsView);
                    }
                }
                i4++;
                this = profileGiftsView;
            }
            ProfileGiftsView profileGiftsView2 = this;
            ArrayList arrayList = new ArrayList();
            for (int i8 = 0; i8 < profileGiftsView2.maxCount; i8++) {
                arrayList.add(Integer.valueOf(i8));
            }
            for (int i9 = 0; i9 < profileGiftsView2.oldGifts.size(); i9++) {
                Gift gift5 = profileGiftsView2.oldGifts.get(i9);
                int i10 = 0;
                while (true) {
                    if (i10 >= profileGiftsView2.gifts.size()) {
                        gift = null;
                        break;
                    } else {
                        if (profileGiftsView2.gifts.get(i10).id == gift5.id) {
                            gift = profileGiftsView2.gifts.get(i10);
                            break;
                        }
                        i10++;
                    }
                }
                if (gift == null) {
                    gift5.emojiDrawable.removeView(profileGiftsView2);
                    gift5.emojiDrawable = null;
                    gift5.gradient = null;
                } else {
                    arrayList.remove(Integer.valueOf(gift5.position));
                }
            }
            if (!arrayList.isEmpty()) {
                BagRandomizer bagRandomizer = new BagRandomizer(arrayList);
                for (int i11 = 0; i11 < profileGiftsView2.gifts.size(); i11++) {
                    Gift gift6 = profileGiftsView2.gifts.get(i11);
                    if (gift6.position == -1) {
                        gift6.position = ((Integer) bagRandomizer.next()).intValue();
                    }
                }
            }
            if (z) {
                profileGiftsView2.invalidate();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01ce A[SYNTHETIC] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void dispatchDraw(Canvas canvas) {
        float fDp;
        int iDp;
        float fLerp;
        float f;
        float f2;
        float fLerp2;
        float f3;
        float fMin;
        float fClamp01;
        if (this.gifts.isEmpty()) {
            return;
        }
        float f4 = 1.0f;
        if (this.expandProgress >= 1.0f || this.collapseProgress <= 0.0f) {
            return;
        }
        float x = this.avatarContainer.getX();
        float y = this.avatarContainer.getY();
        float width = this.avatarContainer.getWidth() * this.avatarContainer.getScaleX();
        float height = this.avatarContainer.getHeight() * this.avatarContainer.getScaleY();
        float fDpf2 = AndroidUtilities.dpf2(96.0f);
        float f5 = 2.0f;
        float fMin2 = Math.min(x, (getWidth() - fDpf2) / 2.0f);
        float fMax = Math.max(y, (this.maxExpandY - fDpf2) / 2.0f);
        float fMax2 = Math.max(width, fDpf2);
        float fMax3 = Math.max(height, fDpf2);
        canvas.save();
        Canvas canvas2 = canvas;
        canvas2.clipRect(0.0f, 0.0f, getWidth(), this.expandY);
        float f6 = fMin2 + (fMax2 / 2.0f);
        float f7 = (fMax3 / 2.0f) + fMax;
        float f8 = x + (width / 2.0f);
        float f9 = y + (height / 2.0f);
        float f10 = this.expandY;
        float f11 = f10 / this.maxExpandY;
        float fClamp012 = Utilities.clamp01((f10 - (AndroidUtilities.statusBarHeight + ActionBar.getCurrentActionBarHeight())) / AndroidUtilities.dp(50.0f));
        int i = 0;
        while (i < this.gifts.size()) {
            Gift gift = this.gifts.get(i);
            float f12 = gift.animatedFloat.set(f4);
            float fLerp3 = AndroidUtilities.lerp(0.5f, f4, f12);
            float f13 = f4;
            float f14 = f5;
            float f15 = (f13 - this.expandProgress) * f12 * (f13 - this.actionBarProgress) * fClamp012;
            int i2 = gift.position;
            if (i2 == 0) {
                fDp = (f6 / f14) - (AndroidUtilities.dp(20.0f) * f11);
                iDp = AndroidUtilities.dp(13.0f);
            } else {
                if (i2 == 1) {
                    f = fClamp012;
                    f2 = f11;
                    fLerp2 = ((f6 * f14) / 3.0f) - (AndroidUtilities.dp(6.0f) * f11);
                    fLerp = fMax - AndroidUtilities.dp(4.0f);
                } else {
                    if (i2 == 2) {
                        fLerp = (fMax + fMax3) - AndroidUtilities.dp(16.0f);
                        f2 = f11;
                        f3 = 0.9f;
                        f = fClamp012;
                        fLerp2 = ((f6 * f14) / 3.0f) - (AndroidUtilities.dp(12.0f) * f11);
                    } else if (i2 == 3) {
                        fDp = (1.5f * f6) + (AndroidUtilities.dp(20.0f) * f11);
                        iDp = AndroidUtilities.dp(13.0f);
                    } else if (i2 == 4) {
                        float f16 = fClamp012;
                        fLerp2 = ((f6 * 4.0f) / 3.0f) + (AndroidUtilities.dp(12.0f) * f11);
                        fLerp = fMax - AndroidUtilities.dp(4.0f);
                        f3 = 0.9f;
                        f = f16;
                        f2 = f11;
                    } else {
                        fLerp = (fMax + fMax3) - AndroidUtilities.dp(16.0f);
                        f = fClamp012;
                        f2 = f11;
                        fLerp2 = ((4.0f * f6) / 3.0f) + (AndroidUtilities.dp(12.0f) * f11);
                    }
                    if (this.isOpening || f12 >= f13) {
                        fMin = this.collapseProgress;
                    } else {
                        fMin = Math.min(f12, this.collapseProgress);
                    }
                    float f17 = f3 * 0.2f;
                    fClamp01 = fMin >= f13 - f17 ? f13 : Utilities.clamp01(((fMin - 0.32000002f) + f17) / 0.67999995f);
                    if (fClamp01 < f13) {
                        fLerp2 = AndroidUtilities.lerp(f8, fLerp2, this.giftCollapseXInterpolator.getInterpolation(fClamp01));
                        fLerp = AndroidUtilities.lerp(f9, fLerp, this.giftCollapseYInterpolator.getInterpolation(fClamp01));
                        fLerp3 = AndroidUtilities.lerp(fLerp3 / f14, fLerp3, fClamp01);
                    }
                    gift.draw(canvas2, fLerp2, fLerp, fLerp3, 0.0f, f15, 1.0f);
                    i++;
                    canvas2 = canvas;
                    f4 = f13;
                    f5 = f14;
                    fClamp012 = f;
                    f11 = f2;
                }
                f3 = 0.0f;
                if (this.isOpening) {
                    fMin = this.collapseProgress;
                }
                float f172 = f3 * 0.2f;
                if (fMin >= f13 - f172) {
                }
                if (fClamp01 < f13) {
                }
                gift.draw(canvas2, fLerp2, fLerp, fLerp3, 0.0f, f15, 1.0f);
                i++;
                canvas2 = canvas;
                f4 = f13;
                f5 = f14;
                fClamp012 = f;
                f11 = f2;
            }
            fLerp = f7 - iDp;
            f = fClamp012;
            f2 = f11;
            fLerp2 = fDp;
            f3 = 1.6f;
            if (this.isOpening) {
            }
            float f1722 = f3 * 0.2f;
            if (fMin >= f13 - f1722) {
            }
            if (fClamp01 < f13) {
            }
            gift.draw(canvas2, fLerp2, fLerp, fLerp3, 0.0f, f15, 1.0f);
            i++;
            canvas2 = canvas;
            f4 = f13;
            f5 = f14;
            fClamp012 = f;
            f11 = f2;
        }
        canvas.restore();
    }

    public Gift getGiftUnder(float f, float f2) {
        for (int i = 0; i < this.gifts.size(); i++) {
            if (this.gifts.get(i).bounds.contains(f, f2)) {
                return this.gifts.get(i);
            }
        }
        return null;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        Gift gift;
        if (!this.active) {
            return false;
        }
        Gift giftUnder = getGiftUnder(motionEvent.getX(), motionEvent.getY());
        if (motionEvent.getAction() == 0) {
            this.pressedGift = giftUnder;
            if (giftUnder != null) {
                giftUnder.bounce.setPressed(true);
            }
        } else if (motionEvent.getAction() == 2) {
            Gift gift2 = this.pressedGift;
            if (gift2 != giftUnder && gift2 != null) {
                gift2.bounce.setPressed(false);
                this.pressedGift = null;
            }
        } else if (motionEvent.getAction() == 1) {
            Gift gift3 = this.pressedGift;
            if (gift3 != null) {
                onGiftClick(gift3);
                this.pressedGift.bounce.setPressed(false);
                this.pressedGift = null;
            }
        } else if (motionEvent.getAction() == 3 && (gift = this.pressedGift) != null) {
            gift.bounce.setPressed(false);
            this.pressedGift = null;
        }
        return this.pressedGift != null;
    }

    public void onGiftClick(Gift gift) {
        Browser.openUrl(getContext(), "https://t.me/nft/" + gift.slug);
    }
}
