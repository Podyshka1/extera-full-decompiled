package org.telegram.p029ui;

import android.graphics.Canvas;
import android.graphics.PointF;
import android.graphics.drawable.Drawable;
import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BirthdayController;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.Cells.TextDetailCell;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.RLottieDrawable;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.spoilers.SpoilersTextView;
import org.telegram.p029ui.ProfileBirthdayEffect;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_account;
import p022j$.time.LocalDate;
import p022j$.time.Period;

/* JADX INFO: loaded from: classes6.dex */
public class ProfileBirthdayEffect extends View {
    public static String[] interactions = {"🎉", "🎆", "🎈"};
    public static String interactionsPack = "EmojiAnimations";
    public static String numbersEmojipack = "FestiveFontEmoji";
    private boolean attached;
    private boolean autoplayed;
    private final int currentAccount;
    private final long dialogId;
    private BirthdayEffectFetcher fetcher;
    private BirthdayEffectFetcher fetcherToSet;
    private boolean isPlaying;
    private long lastTime;
    private final ProfileActivity profileActivity;
    public PointF sourcePoint;

    /* JADX INFO: renamed from: t */
    private float f2134t;

    public ProfileBirthdayEffect(ProfileActivity profileActivity, BirthdayEffectFetcher birthdayEffectFetcher) {
        super(profileActivity.getContext());
        this.sourcePoint = new PointF();
        this.f2134t = 1.0f;
        this.isPlaying = false;
        this.currentAccount = profileActivity.getCurrentAccount();
        this.dialogId = profileActivity.getDialogId();
        this.profileActivity = profileActivity;
        this.fetcher = birthdayEffectFetcher;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.fetcher.loaded) {
            int i = 1;
            if (!this.attached) {
                for (int i2 = 0; i2 < this.fetcher.allAssets.size(); i2++) {
                    ((ImageReceiverAsset) this.fetcher.allAssets.get(i2)).setParentView(this);
                }
                this.attached = true;
                if (!this.autoplayed) {
                    this.autoplayed = true;
                    post(new Runnable() { // from class: org.telegram.ui.ProfileBirthdayEffect$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$onDraw$0();
                        }
                    });
                }
            }
            if (this.isPlaying) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                this.f2134t = Utilities.clamp(this.f2134t + (Utilities.clamp(jCurrentTimeMillis - this.lastTime, 20L, 0L) / 4200.0f), 1.0f, 0.0f);
                this.lastTime = jCurrentTimeMillis;
                updateSourcePoint();
                float filterWidth = EmojiAnimationsOverlay.getFilterWidth();
                float f = 2.0f;
                this.fetcher.interactionAsset.setImageCoords((getWidth() - AndroidUtilities.m1124dp(filterWidth)) / 2.0f, Math.max(0.0f, this.sourcePoint.y - (AndroidUtilities.m1124dp(filterWidth) * 0.5f)), AndroidUtilities.m1124dp(filterWidth), AndroidUtilities.m1124dp(filterWidth));
                canvas.save();
                canvas.scale(-1.0f, 1.0f, getWidth() / 2.0f, 0.0f);
                this.fetcher.interactionAsset.draw(canvas);
                this.fetcher.interactionAsset.setAlpha(1.0f - ((this.f2134t - 0.9f) / 0.1f));
                canvas.restore();
                int iM1124dp = AndroidUtilities.m1124dp(110.0f);
                int size = this.fetcher.digitAssets.size() - 1;
                while (size >= 0) {
                    ImageReceiverAsset imageReceiverAsset = (ImageReceiverAsset) this.fetcher.digitAssets.get(size);
                    float f2 = size;
                    float fCascade = AndroidUtilities.cascade(this.f2134t, f2, this.fetcher.digitAssets.size(), 1.8f);
                    float f3 = iM1124dp;
                    float f4 = 0.88f * f3;
                    float width = (getWidth() - ((this.fetcher.digitAssets.size() - i) * f4)) / f;
                    PointF pointF = this.sourcePoint;
                    float f5 = pointF.x;
                    float f6 = pointF.y;
                    float f7 = f5 + (f4 * f2) + ((width - f5) * fCascade);
                    float f8 = f;
                    float fPow = f6 - ((f6 + f3) * ((float) Math.pow(this.f2134t, 2.0d)));
                    float interpolation = CubicBezierInterpolator.EASE_OUT_QUINT.getInterpolation(Utilities.clamp(fCascade / 0.4f, 1.0f, 0.0f));
                    float f9 = (f3 / f8) * interpolation;
                    float f10 = f3 * interpolation;
                    imageReceiverAsset.setImageCoords(f7 - f9, fPow - f9, f10, f10);
                    imageReceiverAsset.draw(canvas);
                    size--;
                    f = f8;
                    i = 1;
                }
                if (this.f2134t >= 1.0f) {
                    this.isPlaying = false;
                    updateFetcher(this.fetcherToSet);
                    this.fetcherToSet = null;
                    return;
                }
                invalidate();
            }
        }
    }

    public void updateFetcher(BirthdayEffectFetcher birthdayEffectFetcher) {
        if (this.fetcher == birthdayEffectFetcher || birthdayEffectFetcher == null) {
            return;
        }
        if (this.isPlaying) {
            this.fetcherToSet = birthdayEffectFetcher;
            return;
        }
        if (this.attached) {
            for (int i = 0; i < this.fetcher.allAssets.size(); i++) {
                ((ImageReceiverAsset) this.fetcher.allAssets.get(i)).setParentView(null);
            }
            this.attached = false;
        }
        this.fetcher.removeView(this);
        this.fetcher = birthdayEffectFetcher;
        if (this.attached) {
            return;
        }
        for (int i2 = 0; i2 < birthdayEffectFetcher.allAssets.size(); i2++) {
            ((ImageReceiverAsset) birthdayEffectFetcher.allAssets.get(i2)).setParentView(this);
        }
        this.attached = true;
    }

    /* JADX INFO: renamed from: start, reason: merged with bridge method [inline-methods] */
    public boolean lambda$onDraw$0() {
        if (!this.fetcher.loaded || this.f2134t < 1.0f) {
            return false;
        }
        if (this.fetcher.interactionAsset.getLottieAnimation() != null) {
            this.fetcher.interactionAsset.getLottieAnimation().setCurrentFrame(0, false);
            this.fetcher.interactionAsset.getLottieAnimation().restart(true);
        }
        this.isPlaying = true;
        this.f2134t = 0.0f;
        invalidate();
        return true;
    }

    public void hide() {
        animate().alpha(0.0f).setDuration(200L).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).start();
    }

    private void updateSourcePoint() {
        RecyclerListView listView = this.profileActivity.getListView();
        int i = this.profileActivity.birthdayRow;
        if (i < 0) {
            return;
        }
        for (int i2 = 0; i2 < listView.getChildCount(); i2++) {
            View childAt = listView.getChildAt(i2);
            if (i == listView.getChildAdapterPosition(childAt) && (childAt instanceof TextDetailCell)) {
                SpoilersTextView spoilersTextView = ((TextDetailCell) childAt).textView;
                this.sourcePoint.set(listView.getX() + childAt.getX() + spoilersTextView.getX() + AndroidUtilities.m1124dp(12.0f), listView.getY() + childAt.getY() + spoilersTextView.getY() + (spoilersTextView.getMeasuredHeight() / 2.0f));
                return;
            }
        }
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.fetcher.addView(this);
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.attached) {
            for (int i = 0; i < this.fetcher.allAssets.size(); i++) {
                ((ImageReceiverAsset) this.fetcher.allAssets.get(i)).setParentView(null);
            }
            this.attached = false;
        }
        this.fetcher.removeView(this);
    }

    /* JADX INFO: loaded from: classes3.dex */
    public static class BirthdayEffectFetcher {
        public final int age;
        public final int currentAccount;
        private boolean detachLater;
        public ImageReceiverAsset interactionAsset;
        private boolean loaded;
        private final boolean[] setsLoaded;
        public ArrayList digitAssets = new ArrayList();
        public ArrayList allAssets = new ArrayList();
        public ArrayList loadedAssets = new ArrayList();
        private ArrayList callbacks = new ArrayList();
        public ArrayList views = new ArrayList();

        /* JADX INFO: renamed from: of */
        public static BirthdayEffectFetcher m1297of(int i, TLRPC.UserFull userFull, BirthdayEffectFetcher birthdayEffectFetcher) {
            TL_account.TL_birthday tL_birthday;
            if (!LiteMode.isEnabled(2) || !BirthdayController.isToday(userFull)) {
                if (birthdayEffectFetcher == null) {
                    return null;
                }
                birthdayEffectFetcher.detach(false);
                return null;
            }
            int years = (userFull == null || (tL_birthday = userFull.birthday) == null || (tL_birthday.flags & 1) == 0) ? 0 : Period.between(LocalDate.m596of(tL_birthday.year, tL_birthday.month, tL_birthday.day), LocalDate.now()).getYears();
            if (birthdayEffectFetcher != null) {
                if (birthdayEffectFetcher.age == years) {
                    return birthdayEffectFetcher;
                }
                birthdayEffectFetcher.detach(false);
            }
            return new BirthdayEffectFetcher(i, years);
        }

        private BirthdayEffectFetcher(int i, int i2) {
            boolean[] zArr = new boolean[2];
            this.setsLoaded = zArr;
            this.currentAccount = i;
            this.age = i2;
            if (i2 <= 0) {
                zArr[0] = true;
            } else {
                final ArrayList arrayList = new ArrayList();
                final HashSet hashSet = new HashSet();
                String str = _UrlKt.FRAGMENT_ENCODE_SET + i2;
                for (int i3 = 0; i3 < str.length(); i3++) {
                    int iCharAt = str.charAt(i3) - '0';
                    if (iCharAt >= 0 && iCharAt <= 9) {
                        arrayList.add(Integer.valueOf(iCharAt));
                        hashSet.add(Integer.valueOf(iCharAt));
                    }
                }
                TLRPC.TL_inputStickerSetShortName tL_inputStickerSetShortName = new TLRPC.TL_inputStickerSetShortName();
                tL_inputStickerSetShortName.short_name = ProfileBirthdayEffect.numbersEmojipack;
                MediaDataController.getInstance(i).getStickerSet(tL_inputStickerSetShortName, 0, false, new Utilities.Callback() { // from class: org.telegram.ui.ProfileBirthdayEffect$BirthdayEffectFetcher$$ExternalSyntheticLambda0
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$new$1(hashSet, arrayList, (TLRPC.TL_messages_stickerSet) obj);
                    }
                });
            }
            final String str2 = ProfileBirthdayEffect.interactions[Utilities.random.nextInt(ProfileBirthdayEffect.interactions.length)];
            TLRPC.TL_inputStickerSetShortName tL_inputStickerSetShortName2 = new TLRPC.TL_inputStickerSetShortName();
            tL_inputStickerSetShortName2.short_name = ProfileBirthdayEffect.interactionsPack;
            MediaDataController.getInstance(i).getStickerSet(tL_inputStickerSetShortName2, 0, false, new Utilities.Callback() { // from class: org.telegram.ui.ProfileBirthdayEffect$BirthdayEffectFetcher$$ExternalSyntheticLambda1
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$new$3(str2, (TLRPC.TL_messages_stickerSet) obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1(HashSet hashSet, ArrayList arrayList, TLRPC.TL_messages_stickerSet tL_messages_stickerSet) {
            HashMap map = new HashMap();
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                Integer num = (Integer) it.next();
                TLRPC.Document documentFindSticker = SelectAnimatedEmojiDialog.findSticker(tL_messages_stickerSet, num + "️⃣");
                if (documentFindSticker == null) {
                    documentFindSticker = SelectAnimatedEmojiDialog.findSticker(tL_messages_stickerSet, num + "⃣");
                }
                if (documentFindSticker == null) {
                    FileLog.m1134e("couldn't find " + num + "️⃣ emoji in " + ProfileBirthdayEffect.numbersEmojipack);
                    return;
                }
                map.put(num, documentFindSticker);
            }
            HashMap map2 = new HashMap();
            for (Map.Entry entry : map.entrySet()) {
                Integer num2 = (Integer) entry.getKey();
                num2.intValue();
                final ImageReceiverAsset imageReceiverAsset = new ImageReceiverAsset();
                this.allAssets.add(imageReceiverAsset);
                imageReceiverAsset.setEmoji((TLRPC.Document) entry.getValue(), "80_80", tL_messages_stickerSet, new Runnable() { // from class: org.telegram.ui.ProfileBirthdayEffect$BirthdayEffectFetcher$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$new$0(imageReceiverAsset);
                    }
                });
                imageReceiverAsset.onAttachedToWindow();
                map2.put(num2, imageReceiverAsset);
            }
            for (int i = 0; i < arrayList.size(); i++) {
                Integer num3 = (Integer) arrayList.get(i);
                num3.intValue();
                this.digitAssets.add((ImageReceiverAsset) map2.get(num3));
            }
            this.setsLoaded[0] = true;
            checkWhenLoaded();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(ImageReceiverAsset imageReceiverAsset) {
            this.loadedAssets.add(imageReceiverAsset);
            checkWhenLoaded();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$3(String str, TLRPC.TL_messages_stickerSet tL_messages_stickerSet) {
            TLRPC.Document documentFindSticker = SelectAnimatedEmojiDialog.findSticker(tL_messages_stickerSet, str);
            if (documentFindSticker == null) {
                FileLog.m1134e("couldn't find " + str + " sticker in " + ProfileBirthdayEffect.interactionsPack);
                return;
            }
            ImageReceiverAsset imageReceiverAsset = new ImageReceiverAsset();
            this.interactionAsset = imageReceiverAsset;
            this.allAssets.add(imageReceiverAsset);
            int filterWidth = EmojiAnimationsOverlay.getFilterWidth();
            this.interactionAsset.setAutoRepeat(0);
            this.interactionAsset.setEmoji(documentFindSticker, filterWidth + "_" + filterWidth + "_precache", tL_messages_stickerSet, new Runnable() { // from class: org.telegram.ui.ProfileBirthdayEffect$BirthdayEffectFetcher$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$2();
                }
            });
            this.interactionAsset.onAttachedToWindow();
            this.setsLoaded[1] = true;
            checkWhenLoaded();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$2() {
            this.loadedAssets.add(this.interactionAsset);
            checkWhenLoaded();
        }

        public void checkWhenLoaded() {
            if (this.loaded || this.loadedAssets.size() < this.allAssets.size()) {
                return;
            }
            boolean[] zArr = this.setsLoaded;
            int i = 0;
            if (zArr[0] && zArr[1]) {
                this.loaded = true;
                ArrayList arrayList = this.callbacks;
                int size = arrayList.size();
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    ((Runnable) obj).run();
                }
                this.callbacks.clear();
            }
        }

        public void subscribe(Runnable runnable) {
            if (this.loaded) {
                runnable.run();
            } else {
                this.callbacks.add(runnable);
            }
        }

        public void detach(boolean z) {
            if (!z && !this.views.isEmpty()) {
                this.detachLater = true;
                return;
            }
            this.callbacks.clear();
            for (int i = 0; i < this.allAssets.size(); i++) {
                ((ImageReceiverAsset) this.allAssets.get(i)).onDetachedFromWindow();
            }
            this.allAssets.clear();
        }

        public void addView(ProfileBirthdayEffect profileBirthdayEffect) {
            this.views.add(profileBirthdayEffect);
        }

        public void removeView(ProfileBirthdayEffect profileBirthdayEffect) {
            this.views.remove(profileBirthdayEffect);
            if (this.views.isEmpty() && this.detachLater) {
                detach(true);
                this.detachLater = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class ImageReceiverAsset extends ImageReceiver {
        private ImageReceiverAsset() {
        }

        /* JADX INFO: renamed from: org.telegram.ui.ProfileBirthdayEffect$ImageReceiverAsset$1 */
        class C65171 implements ImageReceiver.ImageReceiverDelegate {
            final /* synthetic */ Runnable[] val$callback;

            @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
            public /* synthetic */ void didSetImageBitmap(int i, String str, Drawable drawable) {
                ImageReceiver.ImageReceiverDelegate.CC.$default$didSetImageBitmap(this, i, str, drawable);
            }

            @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
            public /* synthetic */ void onAnimationReady(ImageReceiver imageReceiver) {
                ImageReceiver.ImageReceiverDelegate.CC.$default$onAnimationReady(this, imageReceiver);
            }

            C65171(Runnable[] runnableArr) {
                this.val$callback = runnableArr;
            }

            @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
            public void didSetImage(ImageReceiver imageReceiver, boolean z, boolean z2, boolean z3) {
                if (!imageReceiver.hasBitmapImage() || this.val$callback[0] == null) {
                    return;
                }
                RLottieDrawable lottieAnimation = imageReceiver.getLottieAnimation();
                if (lottieAnimation == null) {
                    this.val$callback[0].run();
                    this.val$callback[0] = null;
                } else if (lottieAnimation.isGeneratingCache()) {
                    final Runnable[] runnableArr = this.val$callback;
                    lottieAnimation.whenCacheDone = new Runnable() { // from class: org.telegram.ui.ProfileBirthdayEffect$ImageReceiverAsset$1$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            ProfileBirthdayEffect.ImageReceiverAsset.C65171.m17619$r8$lambda$KpChqogLAmWFbTAkMrzQEJILDc(runnableArr);
                        }
                    };
                } else {
                    this.val$callback[0].run();
                    this.val$callback[0] = null;
                }
            }

            /* JADX INFO: renamed from: $r8$lambda$KpChqo-gLAmWFbTAkMrzQEJILDc, reason: not valid java name */
            public static /* synthetic */ void m17619$r8$lambda$KpChqogLAmWFbTAkMrzQEJILDc(Runnable[] runnableArr) {
                runnableArr[0].run();
                runnableArr[0] = null;
            }
        }

        public void setEmoji(TLRPC.Document document, String str, TLRPC.TL_messages_stickerSet tL_messages_stickerSet, Runnable runnable) {
            setDelegate(new C65171(new Runnable[]{runnable}));
            setImage(ImageLocation.getForDocument(document), str, null, null, tL_messages_stickerSet, 0);
        }
    }
}
