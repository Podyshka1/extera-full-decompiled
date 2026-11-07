package org.telegram.ui.QrShare;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.Window;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;
import java.util.function.Consumer;
import kotlin.jvm.internal.LongCompanionObject;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserNameResolver;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.CameraScanActivity;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Gifts.GiftSheet;
import org.telegram.ui.OrientationController;
import org.telegram.ui.PremiumPreviewFragment;
import org.telegram.ui.ProfileActivity;
import org.telegram.ui.QrShare.EmojiPickOverlay;
import org.telegram.ui.QrShare.QrEmojiPanel;
import org.telegram.ui.QrShare.QrScanOverlay;
import org.telegram.ui.QrShare.QrShareActivity;
import org.telegram.ui.QrShare.QrShareServer;
import org.telegram.ui.QrShare.QrShareView;

/* JADX INFO: loaded from: classes7.dex */
public class QrShareActivity extends BaseFragment {
    private long chatId;
    private final int[] cutGridLoc;
    private final int[] cutOverlayLoc;
    private LinearGradient emojiFade;
    private final Paint emojiFadePaint;
    private float emojiGlassBottom;
    private RecyclerView emojiGrid;
    private final int[] emojiLoc;
    private QrEmojiPanel emojiView;
    private FrameLayout frame;
    private final int[] gridLoc;
    private final int[] gridLoc2;
    private boolean immediateOnOpen;
    private final Paint islandCutPaint;
    private final float[] islandCutRA;
    private final RectF islandCutRect;
    private boolean light;
    private boolean nativeBarsOff;
    private boolean opened;
    private float panelBottom;
    private float panelLeft;
    private float panelRight;
    private EmojiPickOverlay pickOverlay;
    private OrientationController.Request portraitRequest;
    private final Runnable preloadEmojiRunnable;
    private final int[] qrLoc2;
    private final Paint revealPaint;
    private LinearGradient revealShader;
    private boolean saveAfterPermission;
    private Boolean savedContrast;
    private QrScanOverlay scanOverlay;
    private QrShareServer server;
    private float shapeB;
    private float shapeL;
    private float shapeR;
    private float shapeRr;
    private float shapeT;
    private final Path stripClip;
    private int stripColorDrawn;
    private final RectF stripCut;
    private final RectF stripGlassRect;
    private int stripInsetBottom;
    private int stripInsetTop;
    private final int[] stripLoc;
    private final RectF stripRect;
    private final RimPainter stripRim;
    private int stripRimOut;
    private Paint stripTintPaint;
    private float stripTy;
    private boolean tabsStyled;
    private LinearGradient topFade;
    private final Matrix topFadeM;
    private final Paint topFadePaint;
    private int transitionGlobalLock;
    private int transitionLock;
    private int transitionLockAccount;
    private long userId;
    private QrShareView view;

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean canBeginSlide() {
        return false;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public ActionBar createActionBar(Context context) {
        return null;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean drawEdgeNavigationBar() {
        return false;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public int getNavigationBarColor() {
        return -16777216;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean isLightStatusBar() {
        return false;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean isSupportEdgeToEdge() {
        return true;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return false;
    }

    public QrShareActivity(Bundle bundle) {
        super(bundle);
        this.preloadEmojiRunnable = new Runnable() { // from class: org.telegram.ui.QrShare.QrShareActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.preloadEmoji();
            }
        };
        this.emojiFadePaint = new Paint();
        this.emojiGlassBottom = Float.NaN;
        this.gridLoc = new int[2];
        this.emojiLoc = new int[2];
        this.topFadePaint = new Paint();
        this.topFadeM = new Matrix();
        this.islandCutPaint = new Paint(1);
        this.islandCutRect = new RectF();
        this.islandCutRA = new float[2];
        this.cutOverlayLoc = new int[2];
        this.cutGridLoc = new int[2];
        this.transitionLock = -1;
        this.transitionGlobalLock = -1;
        this.transitionLockAccount = -1;
        this.revealPaint = new Paint();
        this.stripCut = new RectF();
        this.stripLoc = new int[2];
        this.gridLoc2 = new int[2];
        this.qrLoc2 = new int[2];
        this.stripClip = new Path();
        this.stripGlassRect = new RectF();
        this.stripRim = new RimPainter();
        this.stripRect = new RectF();
        this.hasOwnBackground = true;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        Bundle bundle = this.arguments;
        this.userId = bundle != null ? bundle.getLong("user_id") : 0L;
        Bundle bundle2 = this.arguments;
        this.chatId = bundle2 != null ? bundle2.getLong("chat_id") : 0L;
        Bundle bundle3 = this.arguments;
        this.immediateOnOpen = bundle3 != null && bundle3.getBoolean("immediate") && SharedConfig.getDevicePerformanceClass() == 2;
        if (this.userId == 0 && this.chatId == 0) {
            this.userId = getUserConfig().getClientUserId();
        }
        return super.onFragmentCreate();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        final QrBackdrops qrBackdrops = QrBackdrops.get(this.currentAccount);
        Backdrops.apply(qrBackdrops.getList());
        final List<TLRPC.TL_shareThemeBackdropOption> list = qrBackdrops.getList();
        qrBackdrops.load(new Runnable() { // from class: org.telegram.ui.QrShare.QrShareActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$0(qrBackdrops, list);
            }
        });
        lockPortrait();
        QrShareServer.Link linkResolveLink = QrShareServer.resolveLink(this.currentAccount, this.userId, this.chatId);
        this.frame = new FrameLayout(context);
        QrShareView qrShareView = new QrShareView(context, this.currentAccount, linkResolveLink.url, linkResolveLink.caption, linkResolveLink.captionIsUsername, new QrShareView.Delegate() { // from class: org.telegram.ui.QrShare.QrShareActivity.1
            @Override // org.telegram.ui.QrShare.QrShareView.Delegate
            public void onClose() {
                QrShareActivity.this.finishFragment();
            }

            @Override // org.telegram.ui.QrShare.QrShareView.Delegate
            public void onShare(String str) {
                QrShareActivity.this.shareLink(str);
            }

            @Override // org.telegram.ui.QrShare.QrShareView.Delegate
            public void onScan() {
                QrShareActivity.this.onScanClick();
            }

            @Override // org.telegram.ui.QrShare.QrShareView.Delegate
            public void onSave() {
                QrShareActivity.this.saveToGallery();
            }

            @Override // org.telegram.ui.QrShare.QrShareView.Delegate
            public void onBuyGifts() {
                QrShareActivity.this.openGiftStore();
            }

            @Override // org.telegram.ui.QrShare.QrShareView.Delegate
            public void onPremiumSubscribe() {
                QrShareActivity.this.openPremium();
            }

            @Override // org.telegram.ui.QrShare.QrShareView.Delegate
            public void onEmojiPanel(boolean z, float f, float f2) {
                QrShareActivity.this.placeEmojiPanel(z, f, f2);
            }

            @Override // org.telegram.ui.QrShare.QrShareView.Delegate
            public void onEmojiPanelBounds(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
                QrShareActivity.this.panelLeft = f;
                QrShareActivity.this.panelRight = f2;
                QrShareActivity.this.panelBottom = f3;
                QrShareActivity.this.shapeL = f4;
                QrShareActivity.this.shapeT = f5;
                QrShareActivity.this.shapeRr = f6;
                QrShareActivity.this.shapeB = f7;
                QrShareActivity.this.shapeR = f8;
                if (QrShareActivity.this.emojiView != null) {
                    float fMin = Math.min(QrShareActivity.this.emojiView.getHeight(), QrShareActivity.this.shapeB - (QrShareActivity.this.emojiView.getTop() + QrShareActivity.this.emojiView.getTranslationY()));
                    QrShareActivity qrShareActivity = QrShareActivity.this;
                    if (qrShareActivity.pickOverlay != null) {
                        fMin = QrShareActivity.this.pickOverlay.gridCutY(fMin);
                    }
                    qrShareActivity.emojiGlassBottom = fMin;
                    if (QrShareActivity.this.pickOverlay != null) {
                        QrShareActivity.this.pickOverlay.setGlassRight(QrShareActivity.this.shapeRr - QrShareActivity.this.pickOverlay.getLeft());
                    }
                    if (QrShareActivity.this.emojiGrid != null) {
                        QrShareActivity.this.emojiGrid.invalidate();
                    }
                    QrShareActivity.this.emojiView.invalidateOutline();
                }
                if (QrShareActivity.this.pickOverlay != null) {
                    QrShareActivity.this.pickOverlay.invalidateOutline();
                }
            }

            @Override // org.telegram.ui.QrShare.QrShareView.Delegate
            public void onFeeMode(int i) {
                if (QrShareActivity.this.server != null) {
                    QrShareActivity.this.server.onFeeMode(i);
                }
            }

            @Override // org.telegram.ui.QrShare.QrShareView.Delegate
            public void onResetCode() {
                if (QrShareActivity.this.server != null) {
                    QrShareActivity.this.server.onResetCode();
                }
            }

            @Override // org.telegram.ui.QrShare.QrShareView.Delegate
            public void onThemeChanged() {
                if (QrShareActivity.this.server != null) {
                    QrShareActivity.this.server.onThemeChanged();
                }
            }

            @Override // org.telegram.ui.QrShare.QrShareView.Delegate
            public void onSceneLight(boolean z) {
                QrShareActivity.this.light = false;
                QrShareActivity.this.applyWhiteBars();
            }
        });
        this.view = qrShareView;
        this.frame.addView(qrShareView, LayoutHelper.createFrame(-1, -1.0f));
        this.view.setImmediateOnOpen(this.immediateOnOpen);
        this.view.setRevealOpening(true);
        if (this.opened) {
            this.view.setReveal(1.0f);
            this.frame.postDelayed(this.preloadEmojiRunnable, 680L);
        } else {
            boolean zIsTablet = AndroidUtilities.isTablet();
            QrShareView qrShareView2 = this.view;
            if (zIsTablet) {
                qrShareView2.setRevealStatic();
            } else {
                qrShareView2.setReveal(0.0f);
            }
        }
        this.fragmentView = this.frame;
        QrShareServer qrShareServer = this.server;
        if (qrShareServer != null) {
            qrShareServer.release();
        }
        QrShareServer qrShareServer2 = new QrShareServer(this.currentAccount, this.view, linkResolveLink);
        this.server = qrShareServer2;
        qrShareServer2.start();
        return this.frame;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$0(QrBackdrops qrBackdrops, List list) {
        QrShareView qrShareView;
        List<TLRPC.TL_shareThemeBackdropOption> list2 = qrBackdrops.getList();
        if (list2 == null || list2 == list || (qrShareView = this.view) == null || this.isFinished) {
            return;
        }
        qrShareView.replacePalette(list2);
        QrShareServer qrShareServer = this.server;
        if (qrShareServer != null) {
            qrShareServer.onPaletteChanged();
        }
    }

    public void performShare() {
        QrShareView qrShareView = this.view;
        if (qrShareView != null) {
            shareLink(qrShareView.getCurrentLink());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void shareLink(String str) {
        QrShareView qrShareView;
        if (getParentActivity() == null || (qrShareView = this.view) == null || qrShareView.getCurrentLink() == null) {
            return;
        }
        Bitmap bitmapRenderShareImage = this.view.renderShareImage();
        Uri bitmapShareUri = bitmapRenderShareImage != null ? AndroidUtilities.getBitmapShareUri(bitmapRenderShareImage, "qr_tmp.jpg", Bitmap.CompressFormat.JPEG) : null;
        Intent intent = new Intent("android.intent.action.SEND");
        if (bitmapShareUri != null) {
            intent.setType("image/*");
            intent.putExtra("android.intent.extra.STREAM", bitmapShareUri);
            intent.addFlags(1);
        } else {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            intent.setType("text/plain");
            intent.putExtra("android.intent.extra.TEXT", str);
        }
        try {
            getParentActivity().startActivity(Intent.createChooser(intent, LocaleController.getString(C2807R.string.InviteByQRCode)));
        } catch (ActivityNotFoundException e) {
            FileLog.m1040e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openPremium() {
        presentFragment(new PremiumPreviewFragment("qr_emoji"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openGiftStore() {
        if (getParentActivity() == null) {
            return;
        }
        GiftSheet giftSheet = new GiftSheet(getParentActivity(), this.currentAccount, getUserConfig().getClientUserId(), null);
        giftSheet.setBrowseCollectibles();
        giftSheet.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveToGallery() {
        QrShareView qrShareView;
        Activity parentActivity = getParentActivity();
        if (parentActivity == null || (qrShareView = this.view) == null || qrShareView.getCurrentLink() == null) {
            return;
        }
        if ((Build.VERSION.SDK_INT <= 28 || BuildVars.NO_SCOPED_STORAGE) && parentActivity.checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
            this.saveAfterPermission = true;
            parentActivity.requestPermissions(new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 4);
        } else {
            final Bitmap bitmapRenderShareImage = this.view.renderShareImage();
            if (bitmapRenderShareImage == null) {
                return;
            }
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.QrShare.QrShareActivity$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$saveToGallery$3(bitmapRenderShareImage);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveToGallery$3(Bitmap bitmap) {
        final File file = new File(AndroidUtilities.getCacheDir(), "qr_code_" + System.currentTimeMillis() + ".png");
        boolean zCompress = false;
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                zCompress = bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                fileOutputStream.close();
            } finally {
            }
        } catch (Exception e) {
            FileLog.m1040e(e);
        }
        bitmap.recycle();
        if (zCompress) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.QrShare.QrShareActivity$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$saveToGallery$2(file);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveToGallery$2(File file) {
        Activity parentActivity = getParentActivity();
        if (parentActivity == null) {
            return;
        }
        MediaController.saveFile(file.getAbsolutePath(), parentActivity, 0, file.getName(), "image/png", new Utilities.Callback() { // from class: org.telegram.ui.QrShare.QrShareActivity$$ExternalSyntheticLambda16
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$saveToGallery$1((Uri) obj);
            }
        }, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveToGallery$1(Uri uri) {
        QrShareView qrShareView = this.view;
        if (qrShareView == null || this.isFinished) {
            return;
        }
        qrShareView.showSavedToast();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onScanClick() {
        if (getParentActivity() == null) {
            return;
        }
        if (getParentActivity().checkSelfPermission("android.permission.CAMERA") != 0) {
            getParentActivity().requestPermissions(new String[]{"android.permission.CAMERA"}, 34);
        } else {
            openScanner();
        }
    }

    private void openScanner() {
        if (this.scanOverlay != null || this.view == null || this.frame == null || getParentActivity() == null) {
            return;
        }
        RectF rectF = new RectF();
        RectF rectF2 = new RectF();
        this.view.getScanRect(rectF);
        this.view.getCloseRect(rectF2);
        if (rectF.isEmpty()) {
            rectF.set((this.frame.getWidth() / 2.0f) - AndroidUtilities.dp(20.0f), (this.frame.getHeight() / 2.0f) - AndroidUtilities.dp(20.0f), (this.frame.getWidth() / 2.0f) + AndroidUtilities.dp(20.0f), (this.frame.getHeight() / 2.0f) + AndroidUtilities.dp(20.0f));
        }
        this.view.setScanHidden(true);
        QrScanOverlay qrScanOverlay = new QrScanOverlay(getParentActivity(), rectF, rectF2, new QrScanOverlay.Listener() { // from class: org.telegram.ui.QrShare.QrShareActivity.2
            @Override // org.telegram.ui.QrShare.QrScanOverlay.Listener
            public void onScanned(String str) {
                if (QrShareActivity.this.getParentActivity() != null) {
                    Browser.openUrl(QrShareActivity.this.getParentActivity(), str);
                }
            }

            @Override // org.telegram.ui.QrShare.QrScanOverlay.Listener
            public void onClosed(QrScanOverlay qrScanOverlay2) {
                QrShareActivity.this.removeScanner(qrScanOverlay2);
            }
        });
        this.scanOverlay = qrScanOverlay;
        qrScanOverlay.setButtonLabel(LocaleController.getString(C2807R.string.QrScanQr));
        final QrScanOverlay qrScanOverlay2 = this.scanOverlay;
        qrScanOverlay2.setOnGallery(new Runnable() { // from class: org.telegram.ui.QrShare.QrShareActivity$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$openScanner$5(qrScanOverlay2);
            }
        });
        this.frame.addView(this.scanOverlay, LayoutHelper.createFrame(-1, -1.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openScanner$5(QrScanOverlay qrScanOverlay) {
        if (QrScanOverlay.checkGalleryPermission(getParentActivity())) {
            qrScanOverlay.close();
            QrScanOverlay.pickFromGallery(this, new QrScanOverlay$$ExternalSyntheticLambda2(), new Utilities.Callback() { // from class: org.telegram.ui.QrShare.QrShareActivity$$ExternalSyntheticLambda14
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$openScanner$4((String) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openScanner$4(String str) {
        if (getParentActivity() != null) {
            Browser.openUrl(getParentActivity(), str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeScanner(QrScanOverlay qrScanOverlay) {
        FrameLayout frameLayout = this.frame;
        if (frameLayout != null) {
            frameLayout.removeView(qrScanOverlay);
        }
        if (this.scanOverlay == qrScanOverlay) {
            this.scanOverlay = null;
        }
        QrShareView qrShareView = this.view;
        if (qrShareView != null) {
            qrShareView.setScanHidden(false);
        }
    }

    public static void openCameraScanActivity(BaseFragment baseFragment) {
        CameraScanActivity.showAsSheet(baseFragment, false, 1, scanDelegate(baseFragment));
    }

    /* JADX INFO: renamed from: org.telegram.ui.QrShare.QrShareActivity$3 */
    public class C57763 implements CameraScanActivity.CameraScanActivityDelegate {
        final /* synthetic */ int val$currentAccount;
        final /* synthetic */ BaseFragment val$fragment;

        public C57763(int i, BaseFragment baseFragment) {
            this.val$currentAccount = i;
            this.val$fragment = baseFragment;
        }

        @Override // org.telegram.ui.CameraScanActivity.CameraScanActivityDelegate
        public void didFindQr(String str) {
            String strExtractUsername = Browser.extractUsername(str);
            if (TextUtils.isEmpty(strExtractUsername)) {
                QrShareActivity.showScanError();
                return;
            }
            UserNameResolver userNameResolver = MessagesController.getInstance(this.val$currentAccount).getUserNameResolver();
            final BaseFragment baseFragment = this.val$fragment;
            userNameResolver.resolve(strExtractUsername, new Utilities.Callback() { // from class: org.telegram.ui.QrShare.QrShareActivity$3$$ExternalSyntheticLambda0
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    QrShareActivity.C57763.m20201$r8$lambda$UgvKbr_sE_mkUA76xIVR4ZBT8(baseFragment, (Long) obj);
                }
            });
        }

        /* JADX INFO: renamed from: $r8$lambda$U-gvKbr-_sE_mkUA76xIVR4ZBT8, reason: not valid java name */
        public static /* synthetic */ void m20201$r8$lambda$UgvKbr_sE_mkUA76xIVR4ZBT8(BaseFragment baseFragment, Long l) {
            if (baseFragment.isFinished) {
                return;
            }
            if (l == null || l.longValue() == LongCompanionObject.MAX_VALUE) {
                QrShareActivity.showScanError();
            } else {
                baseFragment.presentFragment(ProfileActivity.of(l.longValue()), true);
            }
        }
    }

    private static CameraScanActivity.CameraScanActivityDelegate scanDelegate(BaseFragment baseFragment) {
        return new C57763(baseFragment.getCurrentAccount(), baseFragment);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void showScanError() {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.QrShare.QrShareActivity$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                BulletinFactory.global().createSimpleBulletin(LocaleController.getString(C2807R.string.ScanQrCode), LocaleController.getString(C2807R.string.ErrorOccurred)).show();
            }
        });
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onRequestPermissionsResultFragment(int i, String[] strArr, int[] iArr) {
        if (i == 4) {
            boolean z = iArr.length > 0 && iArr[0] == 0;
            if (this.saveAfterPermission && z) {
                this.saveAfterPermission = false;
                saveToGallery();
            }
            this.saveAfterPermission = false;
            return;
        }
        if (getParentActivity() == null || i != 34) {
            return;
        }
        if (iArr.length > 0 && iArr[0] == 0) {
            openScanner();
        } else {
            new AlertDialog.Builder(getParentActivity()).setMessage(AndroidUtilities.replaceTags(LocaleController.getString(C2807R.string.QRCodePermissionNoCameraWithHint))).setPositiveButton(LocaleController.getString(C2807R.string.PermissionOpenSettings), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.QrShare.QrShareActivity$$ExternalSyntheticLambda0
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i2) {
                    this.f$0.lambda$onRequestPermissionsResultFragment$7(alertDialog, i2);
                }
            }).setNegativeButton(LocaleController.getString(C2807R.string.ContactsPermissionAlertNotNow), null).setTopAnimation(C2807R.raw.permission_request_camera, 72, false, Theme.getColor(Theme.key_dialogTopBackground)).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onRequestPermissionsResultFragment$7(AlertDialog alertDialog, int i) {
        try {
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.parse("package:" + ApplicationLoader.applicationContext.getPackageName()));
            getParentActivity().startActivity(intent);
        } catch (Exception e) {
            FileLog.m1040e(e);
        }
    }

    private void lockPortrait() {
        OrientationController orientationControllerOf = OrientationController.of(getParentActivity());
        if (orientationControllerOf == null || this.portraitRequest != null) {
            return;
        }
        this.portraitRequest = orientationControllerOf.requestPortrait();
    }

    private void unlockPortrait() {
        OrientationController.Request request = this.portraitRequest;
        if (request != null) {
            request.release();
            this.portraitRequest = null;
        }
    }

    private void layoutEmojiFinal() {
        QrShareView qrShareView;
        if (this.emojiView == null || (qrShareView = this.view) == null || qrShareView.getWidth() == 0) {
            return;
        }
        int iMax = Math.max(1, (int) (this.view.panelFinalBottom() - ((int) this.view.panelFinalTop())));
        int iPanelFinalLeft = (int) this.view.panelFinalLeft();
        int width = (int) (this.frame.getWidth() - this.view.panelFinalRight());
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.emojiView.getLayoutParams();
        if (layoutParams.height == iMax && layoutParams.leftMargin == iPanelFinalLeft && layoutParams.rightMargin == width) {
            return;
        }
        layoutParams.height = iMax;
        layoutParams.leftMargin = iPanelFinalLeft;
        layoutParams.rightMargin = width;
        this.emojiView.setLayoutParams(layoutParams);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void clearViews() {
        FrameLayout frameLayout = this.frame;
        if (frameLayout != null) {
            frameLayout.removeCallbacks(this.preloadEmojiRunnable);
        }
        QrScanOverlay qrScanOverlay = this.scanOverlay;
        if (qrScanOverlay != null) {
            qrScanOverlay.destroy();
            this.scanOverlay = null;
        }
        QrShareServer qrShareServer = this.server;
        if (qrShareServer != null) {
            qrShareServer.release();
            this.server = null;
        }
        super.clearViews();
        QrShareView qrShareView = this.view;
        if (qrShareView != null) {
            qrShareView.release();
            this.view = null;
        }
        this.frame = null;
        this.emojiView = null;
        this.pickOverlay = null;
        this.emojiGrid = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void preloadEmoji() {
        if (this.emojiView != null || this.view == null || this.isFinished || getParentActivity() == null) {
            return;
        }
        placeEmojiPanel(true, this.view.panelFinalTop(), 0.0f);
        this.emojiView.setVisibility(4);
        EmojiPickOverlay emojiPickOverlay = this.pickOverlay;
        if (emojiPickOverlay != null) {
            emojiPickOverlay.setVisibility(4);
        }
    }

    private static LinearGradient smoothFade(boolean z) {
        int[] iArr = new int[9];
        float[] fArr = new float[9];
        for (int i = 0; i < 9; i++) {
            float f = i / 8.0f;
            float f2 = f * f * (3.0f - (2.0f * f));
            if (!z) {
                f2 = 1.0f - f2;
            }
            iArr[i] = ((int) ((f2 * 255.0f) + 0.5f)) << 24;
            fArr[i] = f;
        }
        return new LinearGradient(0.0f, 0.0f, 0.0f, 1.0f, iArr, fArr, Shader.TileMode.CLAMP);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r17v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r17v9 */
    /* JADX WARN: Type inference failed for: r1v37 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r34v0, types: [android.view.View, android.view.ViewGroup, androidx.recyclerview.widget.RecyclerView] */
    /* JADX WARN: Type inference failed for: r3v56 */
    /* JADX WARN: Type inference failed for: r3v57, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r3v73 */
    /* JADX WARN: Type inference failed for: r6v28 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6, types: [int] */
    /* JADX INFO: renamed from: gridFades, reason: merged with bridge method [inline-methods] */
    public void lambda$styleEmojiTabs$13(Canvas canvas, RecyclerView recyclerView, View view) {
        float fMax;
        ?? r17;
        char c2;
        float f;
        float f2;
        Canvas canvas2;
        float f3;
        float fEaseOutBack;
        boolean z;
        QrEmojiPanel qrEmojiPanel;
        boolean z2 = false;
        if (recyclerView.isVerticalScrollBarEnabled()) {
            recyclerView.setVerticalScrollBarEnabled(false);
        }
        if (!this.nativeBarsOff && (qrEmojiPanel = this.emojiView) != null) {
            this.nativeBarsOff = true;
            disableNativeScrollbars(qrEmojiPanel);
        }
        if (this.emojiView == null || Float.isNaN(this.emojiGlassBottom)) {
            return;
        }
        QrShareView qrShareView = this.view;
        float fCascadeProgress = qrShareView != null ? qrShareView.cascadeProgress() : 1.0f;
        QrShareView qrShareView2 = this.view;
        boolean z3 = qrShareView2 != null && qrShareView2.sheetOpening();
        QrShareView qrShareView3 = this.view;
        float fSheetProgress = qrShareView3 != null ? qrShareView3.sheetProgress() : 1.0f;
        float f4 = 1.0f - fSheetProgress;
        float f5 = 1.0f - ((f4 * f4) * f4);
        float fRevealTime = z3 ? this.view.revealTime() : -1.0f;
        if (fRevealTime >= 0.0f) {
            float f6 = 1.0f - fRevealTime;
            fMax = ((1.0f - ((f6 * f6) * f6)) * 0.25f) + 0.75f;
        } else {
            fMax = fSheetProgress >= 0.999f ? 1.0f : Math.max(recyclerView.getScaleX(), (f5 * 0.25f) + 0.75f);
        }
        float fMin = z3 ? Math.min(1.0f, fSheetProgress / 0.55f) : 1.0f;
        if (fRevealTime >= 0.0f && fRevealTime < 1.0f) {
            this.view.invalidate();
        }
        if (fMax < 1.0f) {
            recyclerView.postInvalidateOnAnimation();
        }
        if (recyclerView.getScaleX() != fMax) {
            float top = 0.0f;
            ?? r3 = recyclerView;
            while (true) {
                z = z2;
                if (r3 == 0 || r3 == this.emojiView || !(r3.getParent() instanceof View)) {
                    break;
                }
                top += r3.getTop();
                View view2 = (View) r3.getParent();
                z2 = z ? 1 : 0;
                r3 = view2;
            }
            float height = Float.isNaN(this.emojiGlassBottom) ? recyclerView.getHeight() : Math.max(0.0f, Math.min(recyclerView.getHeight(), this.emojiGlassBottom - top));
            recyclerView.setPivotX(recyclerView.getWidth() / 2.0f);
            recyclerView.setPivotY(height);
            recyclerView.setScaleX(fMax);
            recyclerView.setScaleY(fMax);
            r17 = z;
        } else {
            r17 = 0;
        }
        if (recyclerView.getAlpha() != fMin) {
            recyclerView.setAlpha(fMin);
        }
        recyclerView.getLocationOnScreen(this.gridLoc);
        this.emojiView.getLocationOnScreen(this.emojiLoc);
        float f7 = this.gridLoc[1] - this.emojiLoc[1];
        float scaleY = recyclerView.getScaleY() > 0.01f ? recyclerView.getScaleY() : 1.0f;
        float width = recyclerView.getWidth();
        if (this.emojiFade == null) {
            LinearGradient linearGradientSmoothFade = smoothFade(r17);
            this.emojiFade = linearGradientSmoothFade;
            this.emojiFadePaint.setShader(linearGradientSmoothFade);
            Paint paint = this.emojiFadePaint;
            PorterDuff.Mode mode = PorterDuff.Mode.DST_IN;
            paint.setXfermode(new PorterDuffXfermode(mode));
            LinearGradient linearGradientSmoothFade2 = smoothFade(true);
            this.topFade = linearGradientSmoothFade2;
            this.topFadePaint.setShader(linearGradientSmoothFade2);
            this.topFadePaint.setXfermode(new PorterDuffXfermode(mode));
            this.islandCutPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        }
        if (view != null) {
            view.getLocationOnScreen(this.gridLoc);
            float f8 = this.gridLoc[1] - this.emojiLoc[1];
            float f9 = (f8 - f7) / scaleY;
            float height2 = ((view.getHeight() + AndroidUtilities.dp(12.0f)) / scaleY) + f9;
            c2 = 1;
            EmojiPickOverlay emojiPickOverlay = this.pickOverlay;
            if (emojiPickOverlay != null) {
                emojiPickOverlay.setTopClip((f8 + view.getHeight()) - this.stripInsetBottom);
            }
            float fStripLoc0X = stripLoc0X(view, recyclerView) / recyclerView.getScaleX();
            this.stripCut.set((this.stripRimOut / scaleY) + fStripLoc0X, (this.stripInsetTop / scaleY) + f9, fStripLoc0X + ((view.getWidth() - this.stripRimOut) / scaleY), ((view.getHeight() - this.stripInsetBottom) / scaleY) + f9);
            this.islandCutPaint.setAlpha(255);
            RectF rectF = this.stripCut;
            canvas.drawRoundRect(rectF, rectF.height() / 2.0f, this.stripCut.height() / 2.0f, this.islandCutPaint);
            this.topFadeM.setScale(1.0f, height2 - f9);
            this.topFadeM.postTranslate(0.0f, f9);
            this.topFade.setLocalMatrix(this.topFadeM);
            f = 0.0f;
            f2 = width;
            canvas.drawRect(0.0f, Math.min(f9, (-f7) / scaleY), f2, height2, this.topFadePaint);
        } else {
            c2 = 1;
            f = 0.0f;
            f2 = width;
        }
        float fDp = AndroidUtilities.dp(10.0f);
        float f10 = ((this.emojiGlassBottom - f7) - fDp) / scaleY;
        float f11 = fDp / scaleY;
        this.topFadeM.setScale(1.0f, f11);
        this.topFadeM.postTranslate(f, f10);
        this.emojiFade.setLocalMatrix(this.topFadeM);
        canvas.drawRect(0.0f, f10, f2, Math.max(f11 + f10, recyclerView.getHeight() + AndroidUtilities.dp(200.0f)), this.emojiFadePaint);
        ?? r1 = (fCascadeProgress >= 1.0f || z3) ? r17 : c2;
        if (!z3) {
            fSheetProgress = fCascadeProgress;
        }
        stepStrip(view, fSheetProgress);
        float fMax2 = Math.max(f, -f7);
        float f12 = this.emojiGlassBottom - f7;
        float height3 = f;
        for (?? r6 = r17; r6 < recyclerView.getChildCount(); r6++) {
            View childAt = recyclerView.getChildAt(r6);
            if (childAt instanceof QrEmojiPanel.Cell) {
                QrEmojiPanel.Cell cell = (QrEmojiPanel.Cell) childAt;
                if (height3 == f) {
                    height3 = childAt.getHeight();
                }
                if (r1 == 0 || height3 <= f) {
                    fEaseOutBack = 1.0f;
                } else {
                    float fMax3 = Math.max(1.0f, (f12 - fMax2) / height3);
                    float top2 = childAt.getTop() + (childAt.getHeight() / 2.0f);
                    if (fCascadeProgress >= f) {
                        fEaseOutBack = (QrShareView.easeOutBack(Math.max(f, Math.min(1.0f, ((fCascadeProgress * 470.0f) - (Math.max(f, ((f12 - top2) / height3) - 0.5f) * Math.min(45.0f, 250.0f / fMax3))) / 220.0f)), 1.2f) * 0.5f) + 0.5f;
                    } else {
                        float fMax4 = Math.max(f, Math.min(1.0f, (((-fCascadeProgress) * 150.0f) - (Math.max(f, ((top2 - fMax2) / height3) - 0.5f) * Math.min(25.0f, 60.0f / Math.max(1.0f, fMax3 - 1.0f)))) / 90.0f));
                        fEaseOutBack = 1.0f - ((0.4f * fMax4) * fMax4);
                    }
                }
                if (cell.cascadeScale != fEaseOutBack) {
                    cell.cascadeScale = fEaseOutBack;
                    cell.invalidate();
                }
            }
        }
        if (r1 == 0 || height3 <= f) {
            canvas2 = canvas;
            f3 = 1.0f;
        } else {
            float fMax5 = Math.max(1.0f, (f12 - fMax2) / height3);
            if (this.revealShader == null) {
                this.revealShader = new LinearGradient(0.0f, 0.0f, 0.0f, 1.0f, 0, -16777216, Shader.TileMode.CLAMP);
            }
            if (fCascadeProgress >= f) {
                float fMax6 = f12 - (Math.max(-1.0f, ((fCascadeProgress * 470.0f) - 38.5f) / Math.min(45.0f, 250.0f / fMax5)) * height3);
                f3 = 1.0f;
                this.topFadeM.setScale(1.0f, height3);
                this.topFadeM.postTranslate(f, fMax6 - (height3 / 2.0f));
            } else {
                float fMax7 = fMax2 + (Math.max(-1.0f, (((-fCascadeProgress) * 150.0f) - 76.5f) / Math.min(25.0f, 60.0f / Math.max(1.0f, fMax5 - 1.0f))) * height3);
                f3 = 1.0f;
                this.topFadeM.setScale(1.0f, height3);
                this.topFadeM.postTranslate(f, fMax7 - (height3 / 2.0f));
            }
            this.revealShader.setLocalMatrix(this.topFadeM);
            this.revealPaint.setShader(this.revealShader);
            if (this.revealPaint.getXfermode() == null) {
                this.revealPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
            }
            canvas2 = canvas;
            canvas2.drawRect(0.0f, 0.0f, f2, recyclerView.getHeight(), this.revealPaint);
            recyclerView.invalidate();
        }
        EmojiPickOverlay emojiPickOverlay2 = this.pickOverlay;
        if (emojiPickOverlay2 == null || !emojiPickOverlay2.islandCut(this.islandCutRect, this.islandCutRA)) {
            return;
        }
        this.pickOverlay.getLocationOnScreen(this.cutOverlayLoc);
        recyclerView.getLocationOnScreen(this.cutGridLoc);
        float scaleX = recyclerView.getScaleX() > 0.01f ? recyclerView.getScaleX() : f3;
        float scaleY2 = recyclerView.getScaleY() > 0.01f ? recyclerView.getScaleY() : f3;
        int[] iArr = this.cutOverlayLoc;
        int i = iArr[r17];
        int[] iArr2 = this.cutGridLoc;
        float f13 = i - iArr2[r17];
        float f14 = iArr[c2] - iArr2[c2];
        RectF rectF2 = this.islandCutRect;
        rectF2.set((rectF2.left + f13) / scaleX, (rectF2.top + f14) / scaleY2, (rectF2.right + f13) / scaleX, (rectF2.bottom + f14) / scaleY2);
        float[] fArr = this.islandCutRA;
        fArr[r17] = fArr[r17] / scaleY2;
        this.islandCutPaint.setAlpha((int) (fArr[c2] * 255.0f));
        RectF rectF3 = this.islandCutRect;
        float f15 = this.islandCutRA[r17];
        canvas2.drawRoundRect(rectF3, f15, f15, this.islandCutPaint);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void placeEmojiPanel(boolean z, float f, float f2) {
        QrEmojiPanel qrEmojiPanel = this.emojiView;
        if (!z) {
            if (qrEmojiPanel != null && qrEmojiPanel.getVisibility() == 0) {
                this.emojiView.setVisibility(4);
            }
            EmojiPickOverlay emojiPickOverlay = this.pickOverlay;
            if (emojiPickOverlay == null || emojiPickOverlay.getVisibility() != 0) {
                return;
            }
            this.pickOverlay.setVisibility(4);
            return;
        }
        if (qrEmojiPanel == null) {
            if (getParentActivity() == null) {
                return;
            }
            QrEmojiPanel qrEmojiPanel2 = new QrEmojiPanel(getContext(), this.currentAccount, new QrEmojiPanel.Delegate() { // from class: org.telegram.ui.QrShare.QrShareActivity.4
                @Override // org.telegram.ui.QrShare.QrEmojiPanel.Delegate
                public void onEmojiPicked(long j, TLRPC.Document document) {
                    if (QrShareActivity.this.view == null) {
                        return;
                    }
                    if (!QrShareActivity.this.getUserConfig().isPremium() && (QrShareActivity.this.emojiView == null || !QrShareActivity.this.emojiView.isPreset(j))) {
                        QrShareActivity.this.view.showPremiumEmojiToast();
                        return;
                    }
                    QrShareActivity.this.view.pickCustomEmoji(j, document);
                    if (QrShareActivity.this.emojiView != null) {
                        QrShareActivity.this.emojiView.addRecent(j);
                    }
                }

                @Override // org.telegram.ui.QrShare.QrEmojiPanel.Delegate
                public void onUnlock() {
                    QrShareActivity.this.openPremium();
                }
            }) { // from class: org.telegram.ui.QrShare.QrShareActivity.5
                @Override // android.view.ViewGroup, android.view.View
                public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                    if (QrShareActivity.this.view != null && QrShareActivity.this.view.feeMenuOpen()) {
                        if (motionEvent.getActionMasked() == 1) {
                            QrShareActivity.this.view.closeFeeMenu();
                        }
                        return true;
                    }
                    return super.dispatchTouchEvent(motionEvent);
                }

                @Override // android.view.ViewGroup, android.view.View
                public void dispatchDraw(Canvas canvas) {
                    float fMin = Math.min(getHeight(), QrShareActivity.this.shapeB - (getTop() + getTranslationY()));
                    QrShareActivity qrShareActivity = QrShareActivity.this;
                    if (qrShareActivity.pickOverlay != null) {
                        fMin = QrShareActivity.this.pickOverlay.gridCutY(fMin);
                    }
                    qrShareActivity.emojiGlassBottom = fMin;
                    if (QrShareActivity.this.pickOverlay != null) {
                        QrShareActivity.this.pickOverlay.setGlassRight(QrShareActivity.this.shapeRr - QrShareActivity.this.pickOverlay.getLeft());
                    }
                    super.dispatchDraw(canvas);
                }
            };
            this.emojiView = qrEmojiPanel2;
            qrEmojiPanel2.setOutlineProvider(new ViewOutlineProvider() { // from class: org.telegram.ui.QrShare.QrShareActivity.6
                @Override // android.view.ViewOutlineProvider
                public void getOutline(View view, Outline outline) {
                    float top = view.getTop() + view.getTranslationY();
                    float left = view.getLeft() + view.getTranslationX();
                    outline.setRoundRect(Math.round(QrShareActivity.this.shapeL - left), Math.round(QrShareActivity.this.shapeT - top), Math.round(QrShareActivity.this.shapeRr - left), Math.round(QrShareActivity.this.shapeB - top), QrShareActivity.this.shapeR);
                }
            });
            this.emojiView.setClipToOutline(true);
            EmojiPickOverlay emojiPickOverlay2 = new EmojiPickOverlay(getContext(), new EmojiPickOverlay.Host() { // from class: org.telegram.ui.QrShare.QrShareActivity.7
                @Override // org.telegram.ui.QrShare.EmojiPickOverlay.Host
                public List<String> pickedKeys() {
                    return QrShareActivity.this.view.pickedKeys();
                }

                @Override // org.telegram.ui.QrShare.EmojiPickOverlay.Host
                public Drawable emojiFor(String str) {
                    return QrShareActivity.this.view.emojiFor(str);
                }

                @Override // org.telegram.ui.QrShare.EmojiPickOverlay.Host
                public void removePickAt(int i) {
                    QrShareActivity.this.view.removePickAt(i);
                }

                @Override // org.telegram.ui.QrShare.EmojiPickOverlay.Host
                public int islandTint() {
                    return QrShareActivity.this.view.islandTint();
                }

                @Override // org.telegram.ui.QrShare.EmojiPickOverlay.Host
                public boolean drawBlur(Canvas canvas, float f3, float f4) {
                    return QrShareActivity.this.view.drawBlur(canvas, f3, f4);
                }

                @Override // org.telegram.ui.QrShare.EmojiPickOverlay.Host
                public void qrViewLocation(int[] iArr) {
                    QrShareActivity.this.view.getLocationOnScreen(iArr);
                }
            });
            this.pickOverlay = emojiPickOverlay2;
            emojiPickOverlay2.attach(this.emojiView);
            this.view.setOnPicksChanged(new Runnable() { // from class: org.telegram.ui.QrShare.QrShareActivity$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$placeEmojiPanel$8();
                }
            });
            this.pickOverlay.setOutlineProvider(this.emojiView.getOutlineProvider());
            this.pickOverlay.setClipToOutline(true);
            this.frame.addView(this.emojiView, LayoutHelper.createFrame(-1, -1, 48));
            layoutEmojiFinal();
            this.frame.post(new Runnable() { // from class: org.telegram.ui.QrShare.QrShareActivity$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.styleEmojiTabs();
                }
            });
        }
        layoutEmojiFinal();
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.emojiView.getLayoutParams();
        int i = layoutParams.height;
        int i2 = layoutParams.leftMargin;
        int i3 = layoutParams.rightMargin;
        if (this.pickOverlay.getParent() == null) {
            this.frame.addView(this.pickOverlay, LayoutHelper.createFrame(-1, -1, 48));
        }
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.pickOverlay.getLayoutParams();
        if (layoutParams2.height != i || layoutParams2.leftMargin != i2 || layoutParams2.rightMargin != i3) {
            layoutParams2.height = i;
            layoutParams2.leftMargin = i2;
            layoutParams2.rightMargin = i3;
            this.pickOverlay.setLayoutParams(layoutParams2);
        }
        this.pickOverlay.setTranslationY(f);
        this.pickOverlay.setAlpha(f2);
        this.pickOverlay.invalidateOutline();
        this.pickOverlay.invalidate();
        if (this.pickOverlay.getVisibility() != 0) {
            this.pickOverlay.setVisibility(0);
        }
        int iIslandFlatColor = this.view.islandFlatColor() ^ this.view.islandTint();
        if (this.emojiView.getTranslationY() != f || iIslandFlatColor != this.stripColorDrawn) {
            this.emojiView.setTranslationY(f);
            this.stripColorDrawn = iIslandFlatColor;
            this.emojiView.getTabs().invalidate();
        }
        this.emojiView.invalidateOutline();
        this.emojiView.setAlpha(f2);
        this.emojiView.setHeaderColor(this.view.sectionHeaderColor());
        if (this.emojiView.getVisibility() != 0) {
            this.emojiView.refreshRecent();
            this.emojiView.setVisibility(0);
        }
        if (this.tabsStyled) {
            return;
        }
        styleEmojiTabs();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$placeEmojiPanel$8() {
        EmojiPickOverlay emojiPickOverlay = this.pickOverlay;
        if (emojiPickOverlay != null) {
            emojiPickOverlay.invalidate();
        }
        updateGridBottomPad();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onTransitionAnimationEnd(boolean z, boolean z2) {
        QrShareView qrShareView;
        super.onTransitionAnimationEnd(z, z2);
        if (z) {
            this.opened = true;
        }
        if (z && (qrShareView = this.view) != null) {
            qrShareView.setReveal(1.0f);
        }
        if (!z || z2 || this.frame == null) {
            return;
        }
        long jMax = QrCodeLayer.introPlays() ? Math.max(0L, ((long) Math.round(RimTune.f1215v[51])) - 860) : 0L;
        this.frame.removeCallbacks(this.preloadEmojiRunnable);
        this.frame.postDelayed(this.preloadEmojiRunnable, jMax + 680);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public AnimatorSet onCustomTransitionAnimation(final boolean z, final Runnable runnable) {
        if (this.view == null || AndroidUtilities.isTablet()) {
            return null;
        }
        this.view.setRevealOpening(z);
        this.view.setReveal(z ? 0.0f : 1.0f);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(z ? 0.0f : 1.0f, z ? 1.0f : 0.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.QrShare.QrShareActivity$$ExternalSyntheticLambda3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$onCustomTransitionAnimation$9(valueAnimator);
            }
        });
        final AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(valueAnimatorOfFloat);
        animatorSet.setDuration(z ? 860L : 200L);
        animatorSet.setInterpolator(new LinearInterpolator());
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.QrShare.QrShareActivity.8
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                QrShareActivity.this.unlockTransition();
                QrShareActivity.this.view.setReveal(z ? 1.0f : 0.0f);
                runnable.run();
            }
        });
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.QrShare.QrShareActivity$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onCustomTransitionAnimation$10(animatorSet);
            }
        });
        return animatorSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCustomTransitionAnimation$9(ValueAnimator valueAnimator) {
        this.view.setReveal(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCustomTransitionAnimation$10(AnimatorSet animatorSet) {
        lockTransition();
        animatorSet.start();
    }

    private void lockTransition() {
        unlockTransition();
        boolean z = !this.immediateOnOpen;
        int i = this.currentAccount;
        this.transitionLockAccount = i;
        this.transitionLock = NotificationCenter.getInstance(i).setAnimationInProgress(-1, null, z);
        this.transitionGlobalLock = NotificationCenter.getGlobalInstance().setAnimationInProgress(-1, null, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unlockTransition() {
        if (this.transitionLock >= 0) {
            NotificationCenter.getInstance(this.transitionLockAccount).onAnimationFinish(this.transitionLock);
        }
        if (this.transitionGlobalLock >= 0) {
            NotificationCenter.getGlobalInstance().onAnimationFinish(this.transitionGlobalLock);
        }
        this.transitionGlobalLock = -1;
        this.transitionLock = -1;
    }

    private void stepStrip(View view, float f) {
        QrShareView qrShareView;
        float fMin;
        float f2;
        RecyclerView recyclerView;
        if (view == null || (qrShareView = this.view) == null) {
            return;
        }
        this.stripTy = this.shapeT - (qrShareView.panelFinalTop() - AndroidUtilities.dp(8.0f));
        float translationY = view.getTranslationY();
        float f3 = this.stripTy;
        if (translationY != f3) {
            view.setTranslationY(f3);
            view.invalidate();
        }
        if (f >= 1.0f) {
            fMin = 1.0f;
            f2 = 1.0f;
        } else if (f >= 0.0f) {
            float fMax = Math.max(0.0f, Math.min(1.0f, f));
            float f4 = 1.0f - fMax;
            f2 = ((1.0f - ((f4 * f4) * f4)) * 0.15f) + 0.85f;
            fMin = Math.min(1.0f, fMax / 0.35f);
        } else {
            float fMax2 = Math.max(0.0f, Math.min(1.0f, ((-f) * 150.0f) / 90.0f));
            f2 = 1.0f - ((0.15f * fMax2) * fMax2);
            fMin = 1.0f - fMax2;
        }
        if (view.getScaleX() != f2) {
            view.setPivotX(view.getWidth() / 2.0f);
            view.setPivotY(view.getHeight() / 2.0f);
            view.setScaleX(f2);
            view.setScaleY(f2);
            view.invalidate();
        }
        if (view.getAlpha() != fMin) {
            view.setAlpha(fMin);
        }
        if ((f2 == 1.0f && fMin == 1.0f) || (recyclerView = this.emojiGrid) == null) {
            return;
        }
        recyclerView.postInvalidateOnAnimation();
    }

    private static void disableNativeScrollbars(View view) {
        view.setVerticalScrollBarEnabled(false);
        view.setHorizontalScrollBarEnabled(false);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                disableNativeScrollbars(viewGroup.getChildAt(i));
            }
        }
    }

    private float stripLoc0X(View view, View view2) {
        view.getLocationOnScreen(this.stripLoc);
        view2.getLocationOnScreen(this.gridLoc2);
        return this.stripLoc[0] - this.gridLoc2[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: stripUnder, reason: merged with bridge method [inline-methods] */
    public void lambda$styleEmojiTabs$11(Canvas canvas, View view, float f, float f2, float f3, float f4) {
        if (this.emojiGrid == null || this.view == null) {
            return;
        }
        RectF rectF = this.stripCut;
        int i = this.stripRimOut;
        rectF.set(i + f, this.stripInsetTop + f2, f3 - i, f4 - this.stripInsetBottom);
        canvas.save();
        this.stripClip.rewind();
        Path path = this.stripClip;
        RectF rectF2 = this.stripCut;
        path.addRoundRect(rectF2, rectF2.height() / 2.0f, this.stripCut.height() / 2.0f, Path.Direction.CW);
        canvas.clipPath(this.stripClip);
        view.getLocationOnScreen(this.stripLoc);
        this.view.getLocationOnScreen(this.qrLoc2);
        float fMax = Math.max(0.01f, view.getScaleX());
        canvas.translate(f, f2);
        float f5 = 1.0f / fMax;
        canvas.scale(f5, f5);
        RectF rectF3 = this.stripGlassRect;
        RectF rectF4 = this.stripCut;
        rectF3.set((rectF4.left - f) * fMax, (rectF4.top - f2) * fMax, (rectF4.right - f) * fMax, (rectF4.bottom - f2) * fMax);
        QrShareView qrShareView = this.view;
        int i2 = this.stripLoc[0];
        int[] iArr = this.qrLoc2;
        qrShareView.drawSheetGlass(canvas, i2 - iArr[0], r7[1] - iArr[1], this.stripGlassRect);
        canvas.restore();
        if (this.stripTintPaint == null) {
            this.stripTintPaint = new Paint(1);
        }
        this.stripTintPaint.setColor(this.view.islandTint());
        RectF rectF5 = this.stripCut;
        canvas.drawRoundRect(rectF5, rectF5.height() / 2.0f, this.stripCut.height() / 2.0f, this.stripTintPaint);
    }

    private void updateGridBottomPad() {
        QrShareView qrShareView;
        RecyclerView recyclerView = this.emojiGrid;
        if (recyclerView == null || (qrShareView = this.view) == null) {
            return;
        }
        int iDp = AndroidUtilities.dp(qrShareView.pickedKeys().isEmpty() ? 12.0f : 73.0f);
        if (recyclerView.getPaddingBottom() != iDp) {
            recyclerView.setPadding(recyclerView.getPaddingLeft(), recyclerView.getPaddingTop(), recyclerView.getPaddingRight(), iDp);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void styleEmojiTabs() {
        QrEmojiPanel qrEmojiPanel;
        if (this.tabsStyled || (qrEmojiPanel = this.emojiView) == null) {
            return;
        }
        final QrEmojiPanel.Tabs tabs = qrEmojiPanel.getTabs();
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(872415231);
        gradientDrawable.setCornerRadius(AndroidUtilities.dp(20.0f));
        float[] fArr = RimTune.f1214g[0];
        int iCeil = (int) Math.ceil(AndroidUtilities.dpf2(fArr[4] + Math.max(0.0f, -fArr[8])));
        int i = iCeil - 3;
        this.stripRimOut = Math.max(0, i);
        this.stripInsetTop = Math.max(0, i);
        this.stripInsetBottom = Math.max(0, iCeil - 4);
        tabs.underDraw = new QrEmojiPanel.BoundsDraw() { // from class: org.telegram.ui.QrShare.QrShareActivity$$ExternalSyntheticLambda10
            @Override // org.telegram.ui.QrShare.QrEmojiPanel.BoundsDraw
            public final void draw(Canvas canvas, float f, float f2, float f3, float f4) {
                this.f$0.lambda$styleEmojiTabs$11(tabs, canvas, f, f2, f3, f4);
            }
        };
        tabs.overDraw = new QrEmojiPanel.BoundsDraw() { // from class: org.telegram.ui.QrShare.QrShareActivity$$ExternalSyntheticLambda11
            @Override // org.telegram.ui.QrShare.QrEmojiPanel.BoundsDraw
            public final void draw(Canvas canvas, float f, float f2, float f3, float f4) {
                this.f$0.lambda$styleEmojiTabs$12(canvas, f, f2, f3, f4);
            }
        };
        int paddingLeft = tabs.getPaddingLeft();
        int paddingTop = tabs.getPaddingTop();
        int paddingRight = tabs.getPaddingRight();
        int paddingBottom = tabs.getPaddingBottom();
        int i2 = this.stripRimOut;
        tabs.setBackground(new InsetDrawable((Drawable) gradientDrawable, i2, this.stripInsetTop, i2, this.stripInsetBottom));
        tabs.setPadding(paddingLeft, paddingTop, paddingRight, paddingBottom);
        tabs.setOutlineProvider(new ViewOutlineProvider() { // from class: org.telegram.ui.QrShare.QrShareActivity.9
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                outline.setRoundRect(QrShareActivity.this.stripRimOut, QrShareActivity.this.stripInsetTop, view.getWidth() - QrShareActivity.this.stripRimOut, view.getHeight() - QrShareActivity.this.stripInsetBottom, ((view.getHeight() - QrShareActivity.this.stripInsetTop) - QrShareActivity.this.stripInsetBottom) / 2.0f);
            }
        });
        tabs.setClipToOutline(true);
        if (tabs.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) tabs.getLayoutParams();
            int iDp = AndroidUtilities.dp(10.0f);
            int iDp2 = AndroidUtilities.dp(2.0f);
            if (marginLayoutParams.leftMargin != iDp || marginLayoutParams.rightMargin != iDp || marginLayoutParams.topMargin != iDp2) {
                marginLayoutParams.leftMargin = iDp;
                marginLayoutParams.rightMargin = iDp;
                marginLayoutParams.topMargin = iDp2;
                tabs.setLayoutParams(marginLayoutParams);
            }
        }
        final QrEmojiPanel.Grid grid = this.emojiView.getGrid();
        this.tabsStyled = true;
        grid.afterChildrenDraw = new Consumer() { // from class: org.telegram.ui.QrShare.QrShareActivity$$ExternalSyntheticLambda12
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$styleEmojiTabs$13(grid, tabs, (Canvas) obj);
            }
        };
        grid.beforeChildrenDraw = new Consumer() { // from class: org.telegram.ui.QrShare.QrShareActivity$$ExternalSyntheticLambda13
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$styleEmojiTabs$14(grid, (Canvas) obj);
            }
        };
        this.pickOverlay.attachGrid(grid);
        int iDp3 = AndroidUtilities.dp(44.0f);
        this.emojiGrid = grid;
        grid.setPadding(grid.getPaddingLeft(), iDp3, grid.getPaddingRight() + AndroidUtilities.dp(5.0f), grid.getPaddingBottom());
        updateGridBottomPad();
        grid.setClipToPadding(false);
        grid.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.QrShare.QrShareActivity.10
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i3, int i4) {
                if (tabs.getTranslationY() != QrShareActivity.this.stripTy) {
                    tabs.setTranslationY(QrShareActivity.this.stripTy);
                    tabs.invalidate();
                }
            }
        });
        tabs.bringToFront();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$styleEmojiTabs$12(Canvas canvas, float f, float f2, float f3, float f4) {
        RectF rectF = this.stripRect;
        int i = this.stripRimOut;
        rectF.set(f + i, f2 + this.stripInsetTop, f3 - i, f4 - this.stripInsetBottom);
        RimPainter rimPainter = this.stripRim;
        RectF rectF2 = this.stripRect;
        rimPainter.draw(canvas, rectF2, rectF2.height() / 2.0f, 0, 1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$styleEmojiTabs$14(QrEmojiPanel.Grid grid, Canvas canvas) {
        this.pickOverlay.drawUnder(canvas, grid);
        if (this.view.pickedKeys().isEmpty()) {
            return;
        }
        this.pickOverlay.invalidate();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
        QrScanOverlay qrScanOverlay = this.scanOverlay;
        if (qrScanOverlay != null) {
            qrScanOverlay.destroy();
            removeScanner(this.scanOverlay);
        }
        restoreBars();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyWhiteBars() {
        Activity parentActivity = getParentActivity();
        if (parentActivity == null) {
            return;
        }
        Window window = parentActivity.getWindow();
        AndroidUtilities.setLightNavigationBar(parentActivity, false);
        AndroidUtilities.setLightStatusBar(window, false);
        if (Build.VERSION.SDK_INT >= 29) {
            if (this.savedContrast == null) {
                this.savedContrast = Boolean.valueOf(window.isNavigationBarContrastEnforced());
            }
            window.setNavigationBarContrastEnforced(false);
        }
    }

    private void restoreBars() {
        Activity parentActivity = getParentActivity();
        if (parentActivity == null || Build.VERSION.SDK_INT < 29 || this.savedContrast == null) {
            return;
        }
        parentActivity.getWindow().setNavigationBarContrastEnforced(this.savedContrast.booleanValue());
        this.savedContrast = null;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        applyWhiteBars();
        if (getParentActivity() != null) {
            AndroidUtilities.setLightNavigationBar(getParentActivity(), false);
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onBackPressed(boolean z) {
        QrScanOverlay qrScanOverlay = this.scanOverlay;
        if (qrScanOverlay != null) {
            if (z) {
                qrScanOverlay.close();
            }
            return false;
        }
        QrShareView qrShareView = this.view;
        if (qrShareView == null || !qrShareView.canConsumeBack()) {
            return super.onBackPressed(z);
        }
        if (z) {
            this.view.onBackPressed();
        }
        return false;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        unlockTransition();
        unlockPortrait();
        FrameLayout frameLayout = this.frame;
        if (frameLayout != null) {
            frameLayout.removeCallbacks(this.preloadEmojiRunnable);
        }
        QrScanOverlay qrScanOverlay = this.scanOverlay;
        if (qrScanOverlay != null) {
            qrScanOverlay.destroy();
            this.scanOverlay = null;
        }
        QrShareServer qrShareServer = this.server;
        if (qrShareServer != null) {
            qrShareServer.release();
            this.server = null;
        }
        QrShareView qrShareView = this.view;
        if (qrShareView != null) {
            qrShareView.release();
        }
    }
}
