package org.telegram.ui.Wallet;

import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.DashPathEffect;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import android.os.SystemClock;
import android.text.Layout;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.OvershootInterpolator;
import androidx.core.graphics.ColorUtils;
import com.android.dx.io.Opcodes;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Random;
import java.util.Set;
import java.util.function.ToLongFunction;
import okhttp3.internal.url._UrlKt;
import org.json.JSONObject;
import org.telegram.messenger.AiTonesController$$ExternalSyntheticLambda0;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.AppGlobalConfig;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_stars;
import org.telegram.tgnet.tl.TL_stories;
import org.telegram.tgnet.tl.TL_wallet;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.RLottieDrawable;
import org.telegram.ui.Stories.recorder.HintView2;
import org.telegram.ui.Wallet.GramWallet;
import org.telegram.ui.Wallet.WalletGiftStickers;

/* JADX INFO: loaded from: classes8.dex */
final class WalletGiftStickers extends View {
    private long addedCounter;
    private boolean applying;
    private final Spring bin;
    private final Spring binHover;
    private final WalletCardComponent card;
    private final View cardLayer;
    private final ArrayList<WalletGiftCell> cells;
    private WalletGiftCell demoCell;
    private boolean dirty;
    private boolean disposed;
    private long downTime;
    private float downX;
    private float downY;
    private HintView2 dragTipView;
    private float dragX;
    private float dragY;
    private boolean dragging;
    private final Paint erasePaint;
    private final Matrix face;
    private boolean fadeReveal;
    private final BaseFragment fragment;
    private boolean fromCard;
    private boolean handling;
    private float height;
    private float hintClock;
    private final Spring hintDemo;
    private boolean hintDragOn;
    private float[] hintFit;
    private boolean hintOn;
    private final float[] hintPose;
    private final ViewTreeObserver.OnScrollChangedListener hintScroll;
    private Sticker hintSticker;
    private HintView2 hintView;
    private boolean hintWanted;
    private boolean holding;
    private final Host host;
    private final Matrix inverse;
    private final Spring kickH;
    private final Spring kickV;
    private float knobAngle;
    private float knobBase;
    private float knobDistance;
    private float knobScale;
    private float knobTotal;
    private long lastFrame;
    private final Paint line;
    private final Runnable longPress;
    private boolean menuOpen;
    private final float[] mesh;
    private final int[] meshColors;
    private Sticker oldStyle;
    private boolean onArt;
    private float originalAngle;
    private float originalScale;
    private int originalState;
    private float originalX;
    private float originalY;
    private final RectF outlineBounds;
    private final Paint outlineFill;
    private final Matrix outlineMatrix;
    private final Paint outlinePaint;
    private final Path outlinePath;
    private final Spring outlineShow;
    private boolean overBin;
    private final Matrix overlayTransform;
    private boolean ownsTouch;
    private final Paint paint;
    private final Path path;
    private final View patternLayer;
    private boolean peeled;
    private boolean pending;
    private String pendingStyle;
    private final Runnable pickUp;
    private final Paint plainPaint;
    private final RectF plainRect;
    private final float[] point;
    private int pointerId;
    private final SharedPreferences prefs;
    private final boolean readOnly;
    private final RectF rect;
    private float releaseVelocityY;
    private float reveal;
    private float revealX;
    private float revealY;
    private final ArrayList<Ripple> ripples;
    private float rotX;
    private float rotY;
    private final ViewTreeObserver.OnPreDrawListener rotationSync;
    private Sticker selected;
    private final Paint selectionDash;
    private final Paint selectionDot;
    private final Paint selectionStroke;
    private final Runnable sendCard;
    private TL_wallet.card serverCard;
    private String serverSignature;
    private final LinearGradient sheen;
    private final Matrix sheenMatrix;
    private final Paint sheenPaint;
    private Sticker shownStyle;
    private boolean snapped;
    private final Path sparkPath;
    private final ArrayList<Spark> sparks;
    private final Spring squash;
    private final RectF stickerBounds;
    private final LinkedHashMap<String, Sticker> stickers;
    private String styleKey;
    private int syncRequestId;
    private final Paint text;
    private final Runnable tick;
    private final Matrix tileTransform;
    private Sticker touched;
    private boolean trashClosing;
    private final RLottieDrawable trashDrawable;
    private final Spring trashFrame;
    private final Paint trashPaint;
    private VelocityTracker velocity;
    private final Rect visible;
    private float width;

    /* JADX INFO: renamed from: z */
    private long f1259z;

    public interface Host {
        void bringCard();

        void cancelChildTouches();

        boolean isCardShown();

        void onDragFinished();

        void showCardFor(long j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static float angle(float f) {
        float f2 = f % 360.0f;
        if (f2 > 180.0f) {
            f2 -= 360.0f;
        }
        return f2 < -180.0f ? f2 + 360.0f : f2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean syncRotation() {
        float cardRotationX = this.card.getCardRotationX();
        float cardRotationY = this.card.getCardRotationY();
        if (cardRotationX == this.rotX && cardRotationY == this.rotY) {
            return true;
        }
        this.rotX = cardRotationX;
        this.rotY = cardRotationY;
        this.cardLayer.invalidate();
        return true;
    }

    public void wakeHint() {
        if (this.hintOn) {
            wake();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        WalletGiftCell walletGiftCellCell;
        Sticker sticker = this.touched;
        if (sticker == null || this.dragging) {
            return;
        }
        if (this.fromCard) {
            this.holding = true;
            this.selected = sticker;
            this.knobAngle = Float.NaN;
            this.knobDistance = Float.NaN;
            this.knobTotal = 0.0f;
            this.snapped = false;
            this.knobBase = sticker.rotation.target;
            sticker.realSize.set(0.0f);
            this.touched.press.with(260.0f, 0.58f).to(1.0f);
            Sticker sticker2 = this.touched;
            long j = this.f1259z + 1;
            this.f1259z = j;
            sticker2.f1266z = j;
            sticker2.image.setAllowStartLottieAnimation(true);
            this.touched.image.startAnimation();
            performHapticFeedback(0);
            wake();
            return;
        }
        if (!this.ownsTouch || (walletGiftCellCell = cell(sticker)) == null) {
            return;
        }
        showMenu(walletGiftCellCell);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1() {
        if (!this.pending || this.touched == null) {
            return;
        }
        claim();
        performHapticFeedback(4);
        WalletGiftCell walletGiftCellCell = cell(this.touched);
        if (walletGiftCellCell != null) {
            walletGiftCellCell.takeDrawnScale();
            walletGiftCellCell.animate().scaleX(0.94f).scaleY(0.94f).setDuration(100L).start();
        }
        wake();
    }

    public WalletGiftStickers(WalletActivity walletActivity, WalletCardComponent walletCardComponent, Host host) {
        this(walletActivity, walletCardComponent, host, null);
    }

    public WalletGiftStickers(BaseFragment baseFragment, WalletCardComponent walletCardComponent, TL_wallet.card cardVar) {
        this(baseFragment, walletCardComponent, null, cardVar);
    }

    private WalletGiftStickers(BaseFragment baseFragment, WalletCardComponent walletCardComponent, Host host, TL_wallet.card cardVar) {
        SharedPreferences sharedPreferences;
        super(baseFragment.getContext());
        this.stickers = new LinkedHashMap<>();
        this.cells = new ArrayList<>();
        this.ripples = new ArrayList<>();
        this.face = new Matrix();
        this.inverse = new Matrix();
        this.tileTransform = new Matrix();
        this.overlayTransform = new Matrix();
        this.paint = new Paint(3);
        this.plainPaint = new Paint(3);
        this.plainRect = new RectF();
        Paint paint = new Paint(1);
        this.line = paint;
        Paint paint2 = new Paint(1);
        this.text = paint2;
        this.rect = new RectF();
        this.path = new Path();
        this.point = new float[2];
        this.mesh = new float[450];
        this.meshColors = new int[Opcodes.SHR_INT_LIT8];
        this.bin = new Spring(0.0f, 260.0f, 0.78f);
        this.binHover = new Spring(0.0f, 420.0f, 0.72f);
        this.squash = new Spring(1.0f, 420.0f, 0.38f);
        this.kickH = new Spring(0.0f, 170.0f, 0.42f);
        this.kickV = new Spring(0.0f, 170.0f, 0.42f);
        this.sparks = new ArrayList<>();
        this.sparkPath = new Path();
        Paint paint3 = new Paint(1);
        this.sheenPaint = paint3;
        LinearGradient linearGradient = new LinearGradient(0.0f, 0.0f, 1.0f, 0.0f, new int[]{16777215, 16777215, 352321535, 16777215, 16777215}, new float[]{0.0f, 0.36f, 0.5f, 0.64f, 1.0f}, Shader.TileMode.CLAMP);
        this.sheen = linearGradient;
        this.sheenMatrix = new Matrix();
        this.trashFrame = new Spring(0.0f, 120.0f, 1.0f);
        this.trashPaint = new Paint(1);
        this.selectionDash = new Paint(1);
        this.selectionDot = new Paint(1);
        this.selectionStroke = new Paint(1);
        this.reveal = 1.0f;
        this.revealX = 0.5f;
        this.revealY = 0.5f;
        this.sendCard = new Runnable() { // from class: org.telegram.ui.Wallet.WalletGiftStickers$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.sendCard();
            }
        };
        this.hintPose = new float[3];
        this.hintDemo = new Spring(0.0f, 260.0f, 1.0f);
        this.outlineShow = new Spring(0.0f, 220.0f, 1.0f);
        Paint paint4 = new Paint(1);
        this.outlinePaint = paint4;
        Paint paint5 = new Paint(1);
        this.outlineFill = paint5;
        this.outlineMatrix = new Matrix();
        this.outlinePath = new Path();
        this.outlineBounds = new RectF();
        this.hintScroll = new ViewTreeObserver.OnScrollChangedListener() { // from class: org.telegram.ui.Wallet.WalletGiftStickers$$ExternalSyntheticLambda6
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public final void onScrollChanged() {
                this.f$0.wakeHint();
            }
        };
        this.rotationSync = new ViewTreeObserver.OnPreDrawListener() { // from class: org.telegram.ui.Wallet.WalletGiftStickers$$ExternalSyntheticLambda7
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                return this.f$0.syncRotation();
            }
        };
        this.longPress = new Runnable() { // from class: org.telegram.ui.Wallet.WalletGiftStickers$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        };
        this.pickUp = new Runnable() { // from class: org.telegram.ui.Wallet.WalletGiftStickers$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$1();
            }
        };
        this.tick = new RunnableC64953();
        this.stickerBounds = new RectF();
        Paint paint6 = new Paint(1);
        this.erasePaint = paint6;
        paint6.setColor(-16777216);
        paint6.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        this.visible = new Rect();
        this.fragment = baseFragment;
        boolean z = cardVar != null;
        this.readOnly = z;
        RLottieDrawable rLottieDrawable = new RLottieDrawable(C2807R.raw.wallet_gift_trash, AndroidUtilities.dp(42.0f), AndroidUtilities.dp(42.0f), true, null);
        this.trashDrawable = rLottieDrawable;
        rLottieDrawable.setMasterParent(this);
        this.card = walletCardComponent;
        this.host = host;
        paint3.setShader(linearGradient);
        paint3.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_ATOP));
        if (z) {
            sharedPreferences = null;
        } else {
            sharedPreferences = getContext().getSharedPreferences("wallet_card_stickers_" + baseFragment.getCurrentAccount() + "_" + GramWallet.getInstance(baseFragment.getCurrentAccount()).getAddress(), 0);
        }
        this.prefs = sharedPreferences;
        this.styleKey = z ? null : sharedPreferences.getString("style", null);
        this.hintOn = (z || MessagesController.getGlobalMainSettings().getBoolean("walletcardstickerhint", false)) ? false : true;
        Paint.Style style = Paint.Style.STROKE;
        paint4.setStyle(style);
        Paint.Cap cap = Paint.Cap.ROUND;
        paint4.setStrokeCap(cap);
        paint4.setStrokeJoin(Paint.Join.ROUND);
        paint5.setColor(-1);
        setImportantForAccessibility(2);
        setTranslationZ(AndroidUtilities.dp(24.0f));
        paint.setStyle(style);
        paint.setStrokeCap(cap);
        paint2.setTypeface(AndroidUtilities.bold());
        View view = new View(getContext()) { // from class: org.telegram.ui.Wallet.WalletGiftStickers.1
            @Override // android.view.View
            public void onDraw(Canvas canvas) {
                WalletGiftStickers.this.drawPatterns(canvas);
            }
        };
        this.patternLayer = view;
        View view2 = new View(getContext()) { // from class: org.telegram.ui.Wallet.WalletGiftStickers.2
            @Override // android.view.View
            public void onDraw(Canvas canvas) {
                WalletGiftStickers.this.drawOnCard(canvas);
            }
        };
        this.cardLayer = view2;
        view.setTag(WalletCard2DView.BACK_PATTERN);
        walletCardComponent.getFrontFace().addView(view, 0, LayoutHelper.createFrame(-1, -1.0f));
        walletCardComponent.getFrontFace().addView(view2, walletCardComponent.getStickerLayerIndex(), LayoutHelper.createFrame(-1, -1.0f));
        if (z) {
            view2.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: org.telegram.ui.Wallet.WalletGiftStickers$$ExternalSyntheticLambda10
                @Override // android.view.View.OnLayoutChangeListener
                public final void onLayoutChange(View view3, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                    this.f$0.lambda$new$2(view3, i, i2, i3, i4, i5, i6, i7, i8);
                }
            });
            applyCard(cardVar);
        } else {
            loadCard();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        if (i3 - i == i7 - i5 && i4 - i2 == i8 - i6) {
            return;
        }
        Iterator<Sticker> it = this.stickers.values().iterator();
        while (it.hasNext()) {
            it.next().restored = false;
        }
        wake();
    }

    public static final class Spring {
        float damping;
        float stiffness;
        float target;
        float value;
        float velocity;

        public Spring(float f, float f2, float f3) {
            this.target = f;
            this.value = f;
            this.stiffness = f2;
            this.damping = f3;
        }

        public Spring set(float f) {
            this.target = f;
            this.value = f;
            this.velocity = 0.0f;
            return this;
        }

        public Spring to(float f) {
            this.target = f;
            return this;
        }

        public Spring with(float f, float f2) {
            this.stiffness = f;
            this.damping = f2;
            return this;
        }

        public boolean step(float f) {
            float fSqrt = this.damping * 2.0f * ((float) Math.sqrt(this.stiffness));
            while (f > 0.0f) {
                float fMin = Math.min(f, 0.0020833334f);
                float f2 = this.velocity;
                float f3 = -this.stiffness;
                float f4 = this.value;
                float f5 = f2 + (((f3 * (f4 - this.target)) - (fSqrt * f2)) * fMin);
                this.velocity = f5;
                this.value = f4 + (f5 * fMin);
                f -= fMin;
            }
            boolean z = Math.abs(this.value - this.target) > 0.002f || Math.abs(this.velocity) > 0.02f;
            if (!z) {
                set(this.target);
            }
            return z;
        }
    }

    public final class Sticker {
        long added;
        final Spring appear;
        final Spring arcX;
        final Spring arcY;
        Bitmap art;
        TL_stars.starGiftAttributeBackdrop backdrop;
        final Spring border;
        boolean contact;
        final Spring curl;
        float curlX;
        float curlY;
        boolean flewIn;
        float homeAngle;
        float homeCell;
        float homeDuration;
        float homeScale;
        float homeT;
        float homeX;
        float homeY;
        final ImageReceiver image;
        final Spring impact;
        final String key;
        Bitmap lastBitmap;
        int lastImageFrame;
        final Spring lift;
        TL_wallet.nftItem nft;
        Path outline;
        int[] outlineAlpha;
        int[] outlineInput;
        int[] outlineLine;
        int[] outlineOutput;
        boolean outlineStale;
        boolean outlining;
        final ImageReceiver pattern;
        boolean perched;
        Bitmap plain;
        Canvas plainCanvas;
        boolean playOnce;
        boolean playStarted;
        final Spring press;
        final Spring realSize;
        boolean restored;
        boolean ribbonOn;
        boolean ring;
        final Spring rotation;
        final Spring scale;
        Bitmap shadow;
        boolean slapped;
        final Spring[] springs;
        int state;
        boolean tossed;
        final Spring user;

        /* JADX INFO: renamed from: x */
        final Spring f1264x;

        /* JADX INFO: renamed from: y */
        final Spring f1265y;

        /* JADX INFO: renamed from: z */
        long f1266z;

        public Sticker(TL_wallet.nftItem nftitem) {
            this.image = new ImageReceiver(WalletGiftStickers.this) { // from class: org.telegram.ui.Wallet.WalletGiftStickers.Sticker.1
                @Override // org.telegram.messenger.ImageReceiver, org.telegram.ui.Components.AnimatedEmojiSpan.InvalidateHolder
                public void invalidate() {
                    super.invalidate();
                    WalletGiftStickers.this.wake();
                }
            };
            this.pattern = new ImageReceiver(WalletGiftStickers.this.patternLayer);
            Spring spring = new Spring(0.0f, 900.0f, 0.86f);
            this.f1264x = spring;
            Spring spring2 = new Spring(0.0f, 900.0f, 0.86f);
            this.f1265y = spring2;
            Spring spring3 = new Spring(1.0f, 420.0f, 0.78f);
            this.scale = spring3;
            Spring spring4 = new Spring(1.0f, 700.0f, 0.9f);
            this.user = spring4;
            Spring spring5 = new Spring(0.0f, 700.0f, 0.9f);
            this.rotation = spring5;
            Spring spring6 = new Spring(0.0f, 380.0f, 0.82f);
            this.lift = spring6;
            Spring spring7 = new Spring(0.0f, 30.0f, 1.0f);
            this.curl = spring7;
            Spring spring8 = new Spring(0.0f, 520.0f, 0.62f);
            this.press = spring8;
            Spring spring9 = new Spring(0.0f, 300.0f, 1.0f);
            this.border = spring9;
            Spring spring10 = new Spring(0.0f, 150.0f, 0.82f);
            this.arcX = spring10;
            Spring spring11 = new Spring(0.0f, 150.0f, 0.82f);
            this.arcY = spring11;
            Spring spring12 = new Spring(0.0f, 240.0f, 1.0f);
            this.impact = spring12;
            Spring spring13 = new Spring(0.0f, 700.0f, 1.0f);
            this.realSize = spring13;
            Spring spring14 = new Spring(1.0f, 260.0f, 1.0f);
            this.appear = spring14;
            this.springs = new Spring[]{spring, spring2, spring3, spring4, spring5, spring6, spring7, spring8, spring9, spring10, spring11, spring12, spring13, spring14};
            this.lastImageFrame = -2;
            this.curlY = 1.0f;
            this.homeCell = 1.0f;
            this.nft = nftitem;
            this.key = nftitem.address;
            ArrayList<TL_stars.StarGiftAttribute> arrayList = nftitem.gift.attributes;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                TL_stars.StarGiftAttribute starGiftAttribute = arrayList.get(i);
                i++;
                TL_stars.StarGiftAttribute starGiftAttribute2 = starGiftAttribute;
                if (starGiftAttribute2 instanceof TL_stars.starGiftAttributeBackdrop) {
                    this.backdrop = (TL_stars.starGiftAttributeBackdrop) starGiftAttribute2;
                }
                if (starGiftAttribute2 instanceof TL_stars.starGiftAttributePattern) {
                    this.pattern.setImage(ImageLocation.getForDocument(((TL_stars.starGiftAttributePattern) starGiftAttribute2).document), "60_60_firstframe", null, null, nftitem.gift, 1);
                }
            }
            ImageReceiver.ImageReceiverDelegate imageReceiverDelegate = new ImageReceiver.ImageReceiverDelegate() { // from class: org.telegram.ui.Wallet.WalletGiftStickers$Sticker$$ExternalSyntheticLambda0
                @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
                public final void didSetImage(ImageReceiver imageReceiver, boolean z, boolean z2, boolean z3) {
                    this.f$0.lambda$new$0(imageReceiver, z, z2, z3);
                }
            };
            this.image.setDelegate(imageReceiverDelegate);
            this.pattern.setDelegate(imageReceiverDelegate);
            this.image.setCurrentAccount(WalletGiftStickers.this.fragment.getCurrentAccount());
            this.pattern.setCurrentAccount(WalletGiftStickers.this.fragment.getCurrentAccount());
            this.image.setAllowStartLottieAnimation(false);
            this.image.setAutoRepeat(1);
            this.image.setImage(ImageLocation.getForDocument(nftitem.gift.getDocument()), "120_120_nolimit", null, null, nftitem.gift, 1);
            if (WalletGiftStickers.this.isAttachedToWindow()) {
                this.image.onAttachedToWindow();
                this.pattern.onAttachedToWindow();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(ImageReceiver imageReceiver, boolean z, boolean z2, boolean z3) {
            WalletGiftStickers.this.wake();
        }

        public boolean onCard() {
            int i = this.state;
            return i == 2 || i == 1;
        }

        public Bitmap bitmap() {
            Bitmap bitmap = this.image.getBitmap();
            if (bitmap == null || bitmap.isRecycled()) {
                return this.art;
            }
            RLottieDrawable lottieAnimation = this.image.getLottieAnimation();
            int currentFrame = lottieAnimation == null ? 0 : lottieAnimation.getCurrentFrame();
            Bitmap bitmap2 = this.plain;
            if (bitmap2 != null && this.lastBitmap == bitmap && this.lastImageFrame == currentFrame) {
                return this.art;
            }
            this.lastBitmap = bitmap;
            this.lastImageFrame = currentFrame;
            if (bitmap2 == null) {
                this.plain = Bitmap.createBitmap(288, 288, Bitmap.Config.ARGB_8888);
                this.plainCanvas = new Canvas(this.plain);
            }
            this.plain.eraseColor(0);
            WalletGiftStickers.this.plainRect.set(10.0f, 10.0f, 278.0f, 278.0f);
            this.plainCanvas.drawBitmap(bitmap, (Rect) null, WalletGiftStickers.this.plainRect, WalletGiftStickers.this.plainPaint);
            if (this.outlining) {
                this.outlineStale = true;
            } else {
                outline();
            }
            return this.art;
        }

        private void outline() {
            if (this.outlineInput == null) {
                this.outlineInput = new int[82944];
                this.outlineOutput = new int[82944];
                this.outlineAlpha = new int[82944];
                this.outlineLine = new int[WalletStickerOutline.lineBufferSize()];
            }
            this.plain.getPixels(this.outlineInput, 0, 288, 0, 0, 288, 288);
            this.outlining = true;
            this.outlineStale = false;
            final boolean z = this.shadow == null;
            final int[] iArr = this.outlineInput;
            final int[] iArr2 = this.outlineOutput;
            final int[] iArr3 = this.outlineAlpha;
            final int[] iArr4 = this.outlineLine;
            WalletStickerOutline.queue().postRunnable(new Runnable() { // from class: org.telegram.ui.Wallet.WalletGiftStickers$Sticker$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$outline$2(iArr, iArr2, iArr3, iArr4, z);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$outline$2(int[] iArr, final int[] iArr2, int[] iArr3, int[] iArr4, boolean z) {
            WalletStickerOutline.compose(iArr, iArr2, iArr3, iArr4);
            final Bitmap bitmapShadow = (z && WalletStickerOutline.covered(iArr2)) ? WalletStickerOutline.shadow(iArr2) : null;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletGiftStickers$Sticker$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$outline$1(iArr2, bitmapShadow);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$outline$1(int[] iArr, Bitmap bitmap) {
            this.outlining = false;
            if (WalletGiftStickers.this.disposed) {
                return;
            }
            if (this.art == null) {
                this.art = Bitmap.createBitmap(288, 288, Bitmap.Config.ARGB_8888);
                if (WalletGiftStickers.this.card.isShown() && WalletGiftStickers.this.card.getAlpha() > 0.0f) {
                    this.appear.set(0.0f).to(1.0f);
                }
            }
            this.art.setPixels(iArr, 0, 288, 0, 0, 288, 288);
            if (bitmap != null && this.shadow == null) {
                this.shadow = bitmap;
            }
            if (this.outlineStale) {
                outline();
            }
            WalletGiftStickers.this.wake();
        }
    }

    public void bind(WalletGiftCell walletGiftCell) {
        if (!this.cells.contains(walletGiftCell)) {
            this.cells.add(walletGiftCell);
        }
        Sticker stickerEnsure = ensure(walletGiftCell.nft);
        walletGiftCell.setWalletStickerState(stickerEnsure.state == 0 ? 0.0f : 1.0f, stickerEnsure.ribbonOn, false);
        wake();
    }

    public void unbind(WalletGiftCell walletGiftCell) {
        this.cells.remove(walletGiftCell);
    }

    private boolean allowed(Sticker sticker) {
        TL_wallet.nftItem nftitem;
        return (sticker == null || (nftitem = sticker.nft) == null || nftitem.gift == null) ? false : true;
    }

    private boolean colorAllowed(Sticker sticker) {
        return allowed(sticker) && isCardBgGift(this.fragment.getCurrentAccount(), sticker.nft.gift.slug);
    }

    public static boolean isCardBgGift(int i, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        int iLastIndexOf = str.lastIndexOf(45);
        Set<String> set = AppGlobalConfig.getInstance(i).walletCardBgGifts.get();
        if (set != null) {
            if (iLastIndexOf > 0) {
                str = str.substring(0, iLastIndexOf);
            }
            if (set.contains(str)) {
                return true;
            }
        }
        return false;
    }

    public boolean isColorApplied(TL_wallet.nftItem nftitem) {
        String str;
        return (nftitem == null || (str = nftitem.address) == null || !str.equals(this.styleKey)) ? false : true;
    }

    public boolean isOnCard(TL_wallet.nftItem nftitem) {
        String str;
        Sticker sticker;
        return (nftitem == null || (str = nftitem.address) == null || (sticker = this.stickers.get(str)) == null || !sticker.onCard()) ? false : true;
    }

    public void toggleColor(TL_wallet.nftItem nftitem) {
        if (geometry()) {
            lambda$showMenu$3(ensure(nftitem));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: toggleColor, reason: merged with bridge method [inline-methods] */
    public void lambda$showMenu$3(Sticker sticker) {
        if (sticker.key.equals(this.styleKey)) {
            clearStyle();
            return;
        }
        if (colorAllowed(sticker)) {
            this.styleKey = sticker.key;
            if (sticker.onCard()) {
                startReveal(sticker, false);
                changed();
            } else {
                this.pendingStyle = sticker.key;
                toss(sticker);
                if (sticker.state == 0) {
                    this.pendingStyle = null;
                    this.styleKey = null;
                } else {
                    changed();
                }
            }
            save();
        }
    }

    private Sticker ensure(TL_wallet.nftItem nftitem) {
        Sticker sticker = this.stickers.get(nftitem.address);
        if (sticker == null) {
            sticker = new Sticker(nftitem);
            this.stickers.put(nftitem.address, sticker);
        }
        sticker.nft = nftitem;
        return sticker;
    }

    public void sync(GramWallet.CollectiblesList collectiblesList) {
        ArrayList<TL_wallet.nftItem> arrayList = collectiblesList.collectibles;
        int size = arrayList.size();
        boolean z = false;
        int i = 0;
        while (i < size) {
            TL_wallet.nftItem nftitem = arrayList.get(i);
            i++;
            TL_wallet.nftItem nftitem2 = nftitem;
            if (nftitem2.gift != null) {
                ensure(nftitem2);
            }
        }
        Iterator<Sticker> it = this.stickers.values().iterator();
        while (it.hasNext()) {
            Sticker next = it.next();
            if (next.state != 3 && collectiblesList.isSending(next.key)) {
                if (next.key.equals(this.styleKey) || next.key.equals(this.pendingStyle)) {
                    this.pendingStyle = null;
                    this.styleKey = null;
                    startReveal(null, true);
                }
                it.remove();
                SharedPreferences sharedPreferences = this.prefs;
                if (sharedPreferences != null) {
                    sharedPreferences.edit().remove(next.key).apply();
                }
                z = true;
            }
        }
        if (z && !this.readOnly) {
            save();
            changed();
        }
        wake();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCell(WalletGiftCell walletGiftCell, Sticker sticker) {
        walletGiftCell.setWalletStickerState(sticker.state == 0 ? 0.0f : 1.0f, sticker.ribbonOn);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public WalletGiftCell cell(Sticker sticker) {
        ArrayList<WalletGiftCell> arrayList = this.cells;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            WalletGiftCell walletGiftCell = arrayList.get(i);
            i++;
            WalletGiftCell walletGiftCell2 = walletGiftCell;
            if (walletGiftCell2.isAttachedToWindow() && walletGiftCell2.nft.address.equals(sticker.key)) {
                return walletGiftCell2;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RectF tile(Sticker sticker) {
        WalletGiftCell walletGiftCellCell = cell(sticker);
        if (walletGiftCellCell != null && walletGiftCellCell.isShown()) {
            WalletCardComponent.transformToRoot(walletGiftCellCell, this.tileTransform);
            WalletCardComponent.transformToRoot(this, this.overlayTransform);
            Matrix matrix = this.overlayTransform;
            if (!matrix.invert(matrix)) {
                return null;
            }
            this.tileTransform.postConcat(this.overlayTransform);
            RectF rectF = new RectF(0.0f, 0.0f, walletGiftCellCell.getWidth(), walletGiftCellCell.getHeight());
            this.tileTransform.mapRect(rectF);
            if (rectF.bottom > 0.0f && rectF.top < getHeight()) {
                return rectF;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float artShare(Sticker sticker) {
        WalletGiftCell walletGiftCellCell = cell(sticker);
        if (walletGiftCellCell == null || walletGiftCellCell.getWidth() <= 0 || walletGiftCellCell.imageView.getWidth() <= 0) {
            return 0.77f;
        }
        return ((walletGiftCellCell.imageView.getWidth() / walletGiftCellCell.getWidth()) * 288.0f) / 268.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean geometry() {
        this.width = this.card.getFrontFace().getWidth();
        float height = this.card.getFrontFace().getHeight();
        this.height = height;
        return this.width > 0.0f && height > 0.0f && this.card.getFrontFaceTransform(this, this.face) && this.face.invert(this.inverse);
    }

    private float[] local(float f, float f2) {
        float[] fArr = {f, f2};
        this.inverse.mapPoints(fArr);
        return fArr;
    }

    private float[] root(float f, float f2) {
        float[] fArr = {f, f2};
        this.face.mapPoints(fArr);
        return fArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float size() {
        return this.width * 0.231f;
    }

    private float binY() {
        return (getHeight() - AndroidUtilities.dp(64.0f)) - AndroidUtilities.navigationBarHeight;
    }

    public void toggle(TL_wallet.nftItem nftitem) {
        if (geometry()) {
            Sticker stickerEnsure = ensure(nftitem);
            if (stickerEnsure.onCard()) {
                if (this.host.isCardShown()) {
                    home(stickerEnsure);
                } else {
                    snapHome(stickerEnsure);
                }
            } else if (stickerEnsure.state == 0 && allowed(stickerEnsure)) {
                toss(stickerEnsure);
            }
            changed();
        }
    }

    private void snapHome(Sticker sticker) {
        if (sticker.key.equals(this.styleKey)) {
            clearStyle();
        }
        sticker.perched = false;
        back(sticker);
        WalletGiftCell walletGiftCellCell = cell(sticker);
        if (walletGiftCellCell != null) {
            walletGiftCellCell.setScaleX(0.93f);
            walletGiftCellCell.setScaleY(0.93f);
            walletGiftCellCell.animate().scaleX(1.0f).scaleY(1.0f).setDuration(260L).setInterpolator(new OvershootInterpolator(2.0f)).start();
        }
        performHapticFeedback(3);
        save();
        wake();
    }

    public void showMenu(WalletGiftCell walletGiftCell) {
        removeCallbacks(this.longPress);
        this.menuOpen = true;
        this.ownsTouch = false;
        getParent().requestDisallowInterceptTouchEvent(false);
        VelocityTracker velocityTracker = this.velocity;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.velocity = null;
        }
        walletGiftCell.releaseIntoDrawnScale(150L);
        final Sticker stickerEnsure = ensure(walletGiftCell.nft);
        if (!allowed(stickerEnsure) && !stickerEnsure.onCard()) {
            this.menuOpen = false;
            return;
        }
        ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(this.fragment, (View) walletGiftCell, true);
        itemOptionsMakeOptions.setDimAlpha(51);
        if (colorAllowed(stickerEnsure) || stickerEnsure.key.equals(this.styleKey)) {
            itemOptionsMakeOptions.add(C2807R.drawable.msg_colors, LocaleController.getString(stickerEnsure.key.equals(this.styleKey) ? C2807R.string.WalletGiftRemoveColor : C2807R.string.WalletGiftApplyColor), new Runnable() { // from class: org.telegram.ui.Wallet.WalletGiftStickers$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$showMenu$3(stickerEnsure);
                }
            });
        }
        itemOptionsMakeOptions.add(C2807R.drawable.msg_sticker, LocaleController.getString(stickerEnsure.onCard() ? C2807R.string.WalletGiftRemoveFromCard : C2807R.string.WalletGiftAddToCard), new Runnable() { // from class: org.telegram.ui.Wallet.WalletGiftStickers$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showMenu$4(stickerEnsure);
            }
        });
        itemOptionsMakeOptions.setOnDismiss(new Runnable() { // from class: org.telegram.ui.Wallet.WalletGiftStickers$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showMenu$5();
            }
        });
        itemOptionsMakeOptions.show();
        performHapticFeedback(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showMenu$4(Sticker sticker) {
        toggle(sticker.nft);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showMenu$5() {
        this.menuOpen = false;
        this.touched = null;
        wake();
    }

    public boolean touch(MotionEvent motionEvent) {
        float yVelocity;
        Sticker sticker;
        int i;
        if (this.readOnly) {
            return false;
        }
        if (this.card.isBackFacing() && !this.ownsTouch && !this.pending) {
            return false;
        }
        if (this.disposed || this.menuOpen || !geometry()) {
            return this.ownsTouch;
        }
        if (this.hintOn) {
            wake();
        }
        int actionMasked = motionEvent.getActionMasked();
        float xVelocity = 0.0f;
        if (actionMasked == 0) {
            removeCallbacks(this.longPress);
            removeCallbacks(this.pickUp);
            this.touched = null;
            this.peeled = false;
            this.handling = false;
            this.holding = false;
            this.dragging = false;
            this.pending = false;
            this.ownsTouch = false;
            this.pointerId = motionEvent.getPointerId(0);
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            float[] fArrLocal = local(x, y);
            boolean zHandleAt = handleAt(x, y);
            this.handling = zHandleAt;
            Sticker stickerStickerAt = zHandleAt ? this.selected : stickerAt(fArrLocal[0], fArrLocal[1]);
            this.touched = stickerStickerAt;
            if (!this.handling && stickerStickerAt != this.selected) {
                this.selected = null;
                wake();
            }
            Sticker sticker2 = this.touched;
            this.fromCard = sticker2 != null;
            if (sticker2 == null) {
                Iterator<Sticker> it = this.stickers.values().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Sticker next = it.next();
                    RectF rectFTile = tile(next);
                    if (rectFTile != null && rectFTile.contains(x, y)) {
                        if (allowed(next)) {
                            this.onArt = Math.abs(x - rectFTile.centerX()) < rectFTile.width() * 0.35f && Math.abs(y - rectFTile.centerY()) < rectFTile.height() * 0.35f;
                            this.touched = next;
                        }
                    }
                }
            }
            Sticker sticker3 = this.touched;
            if (sticker3 == null || ((i = sticker3.state) != 0 && i != 2)) {
                this.touched = null;
                return false;
            }
            this.downX = x;
            this.downY = y;
            this.downTime = SystemClock.uptimeMillis();
            Sticker sticker4 = this.touched;
            this.originalState = sticker4.state;
            this.originalX = sticker4.f1264x.target;
            this.originalY = sticker4.f1265y.target;
            this.originalAngle = sticker4.rotation.target;
            this.originalScale = sticker4.user.target;
            VelocityTracker velocityTracker = this.velocity;
            if (velocityTracker != null) {
                velocityTracker.recycle();
            }
            VelocityTracker velocityTrackerObtain = VelocityTracker.obtain();
            this.velocity = velocityTrackerObtain;
            velocityTrackerObtain.addMovement(motionEvent);
            if (this.handling) {
                this.knobAngle = Float.NaN;
                this.knobDistance = Float.NaN;
                this.knobTotal = 0.0f;
                Sticker sticker5 = this.touched;
                this.knobBase = sticker5.rotation.target;
                this.snapped = false;
                long j = this.f1259z + 1;
                this.f1259z = j;
                sticker5.f1266z = j;
                rotate(sticker5, x, y);
            } else {
                postDelayed(this.longPress, this.fromCard ? 450L : 500L);
            }
            if (this.fromCard) {
                this.ownsTouch = true;
                getParent().requestDisallowInterceptTouchEvent(true);
                wake();
                return true;
            }
            this.pending = true;
            postDelayed(this.pickUp, 170L);
            return false;
        }
        if (!this.ownsTouch && !this.pending) {
            return false;
        }
        VelocityTracker velocityTracker2 = this.velocity;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(motionEvent);
        }
        int iFindPointerIndex = motionEvent.findPointerIndex(this.pointerId);
        boolean z = actionMasked == 6 && motionEvent.getPointerId(motionEvent.getActionIndex()) == this.pointerId;
        if (iFindPointerIndex < 0) {
            if (this.pending) {
                abandon();
            } else {
                finishTouch(true, 0.0f, 0.0f);
            }
            return true;
        }
        float x2 = motionEvent.getX(iFindPointerIndex);
        float y2 = motionEvent.getY(iFindPointerIndex);
        if (this.pending) {
            if (actionMasked != 2 || Utilities.dist(x2, y2, this.downX, this.downY) <= ViewConfiguration.get(getContext()).getScaledTouchSlop()) {
                if (actionMasked == 1 || actionMasked == 3 || z) {
                    abandon();
                }
            } else {
                if (this.onArt && this.touched.state == 0) {
                    claim();
                    startDrag(this.touched, x2, y2);
                    drag(this.touched, x2, y2);
                    wake();
                    return true;
                }
                abandon();
            }
            return false;
        }
        if (actionMasked == 2 && (sticker = this.touched) != null) {
            if (this.holding || this.handling) {
                rotate(sticker, x2, y2);
            } else if (Utilities.dist(x2, y2, this.downX, this.downY) > ViewConfiguration.get(getContext()).getScaledTouchSlop()) {
                removeCallbacks(this.longPress);
                if (!this.dragging && (this.fromCard || this.touched.state == 0)) {
                    startDrag(this.touched, x2, y2);
                }
                if (this.dragging) {
                    drag(this.touched, x2, y2);
                }
            }
            wake();
        }
        if (actionMasked == 1 || actionMasked == 3 || z) {
            VelocityTracker velocityTracker3 = this.velocity;
            if (velocityTracker3 != null) {
                velocityTracker3.computeCurrentVelocity(1000);
                xVelocity = this.velocity.getXVelocity(this.pointerId);
                yVelocity = this.velocity.getYVelocity(this.pointerId);
            } else {
                yVelocity = 0.0f;
            }
            finishTouch(actionMasked == 3, xVelocity, yVelocity);
        }
        return true;
    }

    private void claim() {
        this.pending = false;
        this.ownsTouch = true;
        removeCallbacks(this.pickUp);
        this.host.cancelChildTouches();
        getParent().requestDisallowInterceptTouchEvent(true);
    }

    private void abandon() {
        this.pending = false;
        removeCallbacks(this.pickUp);
        removeCallbacks(this.longPress);
        this.touched = null;
        VelocityTracker velocityTracker = this.velocity;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.velocity = null;
        }
        wake();
    }

    private void rotate(Sticker sticker, float f, float f2) {
        float fDp;
        float[] fArrRoot = root(sticker.f1264x.value, sticker.f1265y.value);
        float fDist = Utilities.dist(f, f2, fArrRoot[0], fArrRoot[1]);
        if (Float.isNaN(this.knobDistance)) {
            this.knobDistance = fDist;
            this.knobScale = sticker.user.target;
        }
        if (Math.abs(fDist - this.knobDistance) > AndroidUtilities.dp(5.0f)) {
            sticker.realSize.with(700.0f, 1.0f).to(1.0f);
        }
        float fDp2 = AndroidUtilities.dp(32.0f) / size();
        boolean z = this.handling;
        float f3 = this.knobScale;
        if (z) {
            fDp = (f3 * fDist) / Math.max(1.0f, this.knobDistance);
        } else {
            fDp = f3 + (((fDist - this.knobDistance) / AndroidUtilities.dp(110.0f)) * (1.21f - fDp2));
        }
        sticker.user.with(900.0f, 1.0f).to(Math.max(fDp2, Math.min(1.21f, fDp)));
        if (fDist < AndroidUtilities.dp(14.0f)) {
            this.knobAngle = Float.NaN;
            return;
        }
        float degrees = (float) Math.toDegrees(Math.atan2(f2 - fArrRoot[1], f - fArrRoot[0]));
        if (!Float.isNaN(this.knobAngle)) {
            this.knobTotal += angle(degrees - this.knobAngle);
        }
        this.knobAngle = degrees;
        float f4 = this.knobBase + this.knobTotal;
        float fRound = Math.round(f4 / 90.0f) * 90;
        boolean z2 = Math.abs(f4 - fRound) < 5.0f;
        if (z2 && !this.snapped) {
            performHapticFeedback(4);
        }
        this.snapped = z2;
        Spring springWith = sticker.rotation.with(900.0f, 0.95f);
        if (z2) {
            f4 = fRound;
        }
        springWith.to(f4);
    }

    private void startDrag(Sticker sticker, float f, float f2) {
        float[] fArrRoot;
        this.selected = null;
        this.dragging = true;
        boolean z = this.originalState == 2;
        this.peeled = z;
        if (this.hintOn) {
            this.hintDragOn = sticker == this.hintSticker && !z;
            this.hintWanted = false;
            this.hintOn = false;
            MessagesController.getGlobalMainSettings().edit().putBoolean("walletcardstickerhint", true).apply();
        }
        if (sticker.perched) {
            sticker.perched = false;
            sticker.user.with(420.0f, 0.8f).to(1.0f);
        }
        WalletGiftCell walletGiftCellCell = cell(sticker);
        if (walletGiftCellCell != null) {
            walletGiftCellCell.animate().scaleX(1.0f).scaleY(1.0f).setDuration(220L).start();
        }
        this.overBin = false;
        if (this.peeled) {
            fArrRoot = root(sticker.f1264x.value, sticker.f1265y.value);
        } else {
            RectF rectFTile = tile(sticker);
            if (rectFTile == null) {
                return;
            }
            float[] fArr = {rectFTile.centerX(), rectFTile.centerY()};
            sticker.scale.with(500.0f, 0.75f).set((rectFTile.width() * artShare(sticker)) / size());
            sticker.border.set(0.0f);
            this.host.bringCard();
            fArrRoot = fArr;
        }
        sticker.f1264x.with(1100.0f, 0.9f).set(fArrRoot[0]);
        sticker.f1265y.with(1100.0f, 0.9f).set(fArrRoot[1]);
        sticker.state = 3;
        long j = this.f1259z + 1;
        this.f1259z = j;
        sticker.f1266z = j;
        sticker.border.to(1.0f);
        sticker.lift.with(320.0f, 0.75f).to(1.0f);
        sticker.press.set(0.0f);
        this.dragX = fArrRoot[0] - f;
        this.dragY = fArrRoot[1] - f2;
        this.bin.to(this.peeled ? 1.0f : 0.0f);
        performHapticFeedback(3);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0030  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void drag(Sticker sticker, float f, float f2) {
        boolean z;
        float size;
        float f3 = this.dragX * 0.9f;
        this.dragX = f3;
        float f4 = this.dragY * 0.9f;
        this.dragY = f4;
        float[] fArrLocal = local(f3 + f, f4 + f2);
        boolean z2 = false;
        float f5 = fArrLocal[0];
        if (f5 < 0.0f || f5 > this.width) {
            z = false;
        } else {
            float f6 = fArrLocal[1];
            if (f6 >= 0.0f && f6 <= this.height) {
                z = true;
            }
        }
        if (this.peeled && !z && Utilities.dist(f, f2, getWidth() / 2.0f, binY()) < AndroidUtilities.dp(78.0f)) {
            z2 = true;
        }
        if (z2 != this.overBin) {
            performHapticFeedback(4);
        }
        this.overBin = z2;
        this.bin.to((!this.peeled || z) ? 0.0f : 1.0f);
        this.binHover.to(z2 ? 1.0f : 0.0f);
        sticker.f1264x.to(z2 ? binIconX() : f + this.dragX);
        sticker.f1265y.to(z2 ? binY() - AndroidUtilities.dp(46.0f) : f2 + this.dragY);
        RectF rectFTile = tile(sticker);
        float size2 = rectFTile == null ? size() : rectFTile.width();
        Spring spring = sticker.scale;
        if (z2) {
            size = AndroidUtilities.dp(38.0f) / size();
        } else {
            size = 1.24f * (z ? 1.0f : (size2 * 0.77f) / size());
        }
        spring.to(size);
        if (this.peeled) {
            Spring springWith = sticker.rotation.with(260.0f, 0.9f);
            float f7 = sticker.rotation.value;
            springWith.to(f7 + angle((z ? this.originalAngle : 0.0f) - f7));
        }
    }

    public boolean isInteracting() {
        return this.ownsTouch;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0179  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void finishTouch(boolean z, float f, float f2) {
        boolean z2;
        boolean z3;
        float[] fArrFitting;
        getParent().requestDisallowInterceptTouchEvent(false);
        removeCallbacks(this.longPress);
        removeCallbacks(this.pickUp);
        this.releaseVelocityY = f2;
        if (this.dragging) {
            this.host.onDragFinished();
        }
        Sticker sticker = this.touched;
        if (sticker != null) {
            WalletGiftCell walletGiftCellCell = cell(sticker);
            if (walletGiftCellCell != null) {
                walletGiftCellCell.animate().scaleX(1.0f).scaleY(1.0f).setDuration(220L).start();
            }
            if (this.dragging) {
                if (z && this.originalState == 2) {
                    float[] fArrLocal = local(sticker.f1264x.value, sticker.f1265y.value);
                    sticker.user.to(this.originalScale);
                    sticker.rotation.to(this.originalAngle);
                    place(sticker, fArrLocal, new float[]{this.originalX, this.originalY, this.originalScale}, false);
                } else if (z) {
                    home(sticker);
                } else if (this.overBin) {
                    sticker.state = 5;
                    long j = this.f1259z + 1;
                    this.f1259z = j;
                    sticker.f1266z = j;
                    sticker.added = 0L;
                    this.trashClosing = true;
                    Spring spring = this.trashFrame;
                    spring.set(Math.max(30.0f, spring.value));
                    sticker.f1264x.with(500.0f, 0.9f).to(binIconX());
                    sticker.f1265y.with(500.0f, 0.9f).to(binY());
                    sticker.scale.with(240.0f, 0.95f).to(0.0f);
                    sticker.lift.to(0.0f);
                    sticker.rotation.to(0.0f);
                    if (sticker.key.equals(this.styleKey)) {
                        clearStyle();
                    }
                    performHapticFeedback(16);
                } else {
                    float[] fArrLocal2 = local(sticker.f1264x.value, sticker.f1265y.value);
                    float f3 = fArrLocal2[0];
                    if (f3 < 0.0f || f3 > this.width) {
                        z2 = false;
                        z3 = this.peeled && ((float) Math.hypot((double) f, (double) f2)) > ((float) AndroidUtilities.dp(700.0f)) && (z2 || f2 < ((float) (-AndroidUtilities.dp(600.0f))));
                        fArrFitting = !z2 ? fitting(sticker, fArrLocal2[0], fArrLocal2[1], false) : null;
                        if (z3) {
                            fArrFitting = fitting(sticker, Math.max(0.0f, Math.min(this.width, fArrLocal2[0] + (f * 0.08f))), Math.max(0.0f, Math.min(this.height, fArrLocal2[1] + (f2 * 0.08f))), true);
                        }
                        if (fArrFitting == null) {
                            place(sticker, fArrLocal2, fArrFitting, false);
                        } else {
                            home(sticker);
                        }
                        if (fArrFitting != null) {
                            sticker.flewIn = z3;
                            if (z3) {
                                sticker.f1264x.with(260.0f, 0.8f);
                                sticker.f1265y.with(260.0f, 0.8f);
                            }
                        }
                    } else {
                        float f4 = fArrLocal2[1];
                        if (f4 >= 0.0f && f4 <= this.height) {
                            z2 = true;
                        }
                        if (this.peeled) {
                            if (!z2) {
                            }
                            if (z3) {
                            }
                            if (fArrFitting == null) {
                            }
                            if (fArrFitting != null) {
                            }
                        }
                    }
                }
            } else if (this.holding || this.handling) {
                sticker.press.with(380.0f, 0.62f).to(0.0f);
                Spring spring2 = sticker.rotation;
                spring2.value = angle(spring2.value);
                Spring spring3 = sticker.rotation;
                spring3.target = angle(spring3.target);
            } else if (!z) {
                if (!this.fromCard) {
                    ((WalletActivity) this.fragment).openWalletCollectible(sticker.nft);
                } else {
                    this.selected = sticker;
                    sticker.scale.velocity += 3.0f;
                    long j2 = this.f1259z + 1;
                    this.f1259z = j2;
                    sticker.f1266z = j2;
                    sticker.playOnce = true;
                    sticker.playStarted = false;
                    sticker.image.setAllowStartLottieAnimation(true);
                    sticker.image.startAnimation();
                    performHapticFeedback(3);
                }
            }
        }
        VelocityTracker velocityTracker = this.velocity;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.velocity = null;
        }
        if (sticker != null && (this.dragging || this.holding || this.handling)) {
            changed();
        }
        this.hintDragOn = false;
        this.peeled = false;
        this.overBin = false;
        this.handling = false;
        this.holding = false;
        this.dragging = false;
        this.pending = false;
        this.ownsTouch = false;
        this.touched = null;
        this.bin.to(0.0f);
        this.binHover.to(0.0f);
        save();
        wake();
    }

    private ArrayList<RectF> obstacles() {
        ArrayList<RectF> stickerObstacles = this.card.getStickerObstacles();
        float f = this.width * 0.012f;
        int size = stickerObstacles.size();
        int i = 0;
        while (i < size) {
            RectF rectF = stickerObstacles.get(i);
            i++;
            float f2 = -f;
            rectF.inset(f2, f2);
        }
        stickerObstacles.get(2).left -= this.width * 0.035f;
        return stickerObstacles;
    }

    private static float distanceTo(RectF rectF, float f, float f2) {
        return Utilities.dist(f, f2, Math.max(rectF.left, Math.min(rectF.right, f)), Math.max(rectF.top, Math.min(rectF.bottom, f2)));
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x01d5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private float[] fitting(Sticker sticker, float f, float f2, boolean z) {
        float f3;
        float f4;
        float f5;
        float fMin;
        char c2;
        char c3 = 3;
        if (!z) {
            sticker.perched = false;
            return new float[]{f, f2, sticker.user.target};
        }
        ArrayList<RectF> arrayListObstacles = obstacles();
        float fDp = AndroidUtilities.dp(32.0f) / size();
        float f6 = sticker.user.target;
        sticker.perched = false;
        ArrayList arrayList = new ArrayList();
        for (Sticker sticker2 : this.stickers.values()) {
            if (sticker2 != sticker && sticker2.onCard()) {
                arrayList.add(sticker2);
            }
        }
        boolean z2 = (Float.isNaN(f) || Float.isNaN(f2)) ? false : true;
        if (!z2 && sticker == this.hintSticker && this.hintFit != null && arrayList.isEmpty()) {
            return (float[]) this.hintFit.clone();
        }
        if (z2) {
            f3 = f;
            f4 = f2;
        } else {
            f3 = this.width * 0.6f;
            f4 = this.height * 0.68f;
        }
        Random random = new Random((((long) sticker.key.hashCode()) * 7919) + (((long) arrayList.size()) * 31) + (System.nanoTime() / 400000000));
        float fNextFloat = (random.nextFloat() * 0.04f) + 0.05f;
        float f7 = 0.5f;
        float fNextFloat2 = this.width * (((random.nextFloat() - 0.5f) * 0.08f) + 0.5f);
        float fNextFloat3 = this.height * (((random.nextFloat() - 0.5f) * 0.08f) + 0.55f);
        float size = size() * fDp * 0.5f;
        float f8 = -3.4028235E38f;
        float[] fArr = null;
        float fDp2 = size;
        while (fDp2 <= this.height - size) {
            float f9 = f7;
            float fDp3 = size;
            while (true) {
                float f10 = this.width;
                if (fDp3 <= f10 - size) {
                    float fMin2 = Math.min(Math.min(fDp3, f10 - fDp3), Math.min(fDp2, this.height - fDp2));
                    float f11 = fNextFloat;
                    float fMin3 = Math.min(Math.max(0.74f, 1.0f - (arrayList.size() * fNextFloat)) * f6, fMin2 / (size() * f9));
                    int size2 = arrayListObstacles.size();
                    float f12 = fDp;
                    float f13 = f6;
                    int i = 0;
                    float fMin4 = Float.MAX_VALUE;
                    while (i < size2) {
                        RectF rectF = arrayListObstacles.get(i);
                        i++;
                        fMin4 = Math.min(fMin4, distanceTo(rectF, fDp3, fDp2));
                        arrayListObstacles = arrayListObstacles;
                    }
                    ArrayList<RectF> arrayList2 = arrayListObstacles;
                    float fMin5 = Math.min(fMin3, fMin4 / (size() * 0.44f));
                    int size3 = arrayList.size();
                    for (int i2 = 0; i2 < size3; i2++) {
                        Sticker sticker3 = (Sticker) arrayList.get(i2);
                        fMin5 = Math.min(fMin5, (Utilities.dist(fDp3, fDp2, sticker3.f1264x.target, sticker3.f1265y.target) / (size() * 0.29f)) - sticker3.user.target);
                        size3 = size3;
                    }
                    float fClamp01 = fMin5 * ((Utilities.clamp01((fMin2 - ((size() * f9) * fMin5)) / AndroidUtilities.dp(14.0f)) * 0.1f) + 0.9f);
                    if (fClamp01 >= f12) {
                        if (arrayList.isEmpty()) {
                            float f14 = this.width;
                            float f15 = (f14 * 0.6f) + ((f3 - (f14 * 0.6f)) * 0.2f);
                            float f16 = this.height;
                            fMin = (Utilities.dist(fDp3, fDp2, f15, (f16 * 0.68f) + ((f4 - (f16 * 0.68f)) * 0.2f)) * (-0.45f)) + (1.1f * fClamp01 * size()) + (random.nextFloat() * AndroidUtilities.dp(5.0f));
                            f5 = fClamp01;
                        } else {
                            float f17 = fDp3 * fClamp01 * fClamp01;
                            float f18 = fDp2 * fClamp01 * fClamp01;
                            float f19 = fClamp01 * fClamp01;
                            int size4 = arrayList.size();
                            f5 = fClamp01;
                            int i3 = 0;
                            float fMin6 = Float.MAX_VALUE;
                            float fMax = 0.0f;
                            while (i3 < size4) {
                                Object obj = arrayList.get(i3);
                                int i4 = i3 + 1;
                                Sticker sticker4 = (Sticker) obj;
                                float f20 = f17;
                                int i5 = size4;
                                fMin6 = Math.min(fMin6, Utilities.dist(fDp3, fDp2, sticker4.f1264x.target, sticker4.f1265y.target) - ((size() * 0.4f) * (sticker4.user.target + f5)));
                                float f21 = sticker4.user.target;
                                float f22 = f21 * f21;
                                float f23 = sticker4.f1264x.target;
                                f18 += sticker4.f1265y.target * f22;
                                f19 += f22;
                                fMax = fMax + Math.max(0.0f, 1.0f - (Math.abs(f23 - fDp3) / (size() * 0.12f))) + Math.max(0.0f, 1.0f - (Math.abs(sticker4.f1265y.target - fDp2) / (size() * 0.12f)));
                                f17 = f20 + (f23 * f22);
                                i3 = i4;
                                size4 = i5;
                            }
                            fMin = ((((((((fMin6 < 0.0f ? fMin6 * 2.5f : Math.min(fMin6, size() * 0.3f)) * 1.2f) + ((f5 * 0.9f) * size())) + (Math.min(Math.min(fMin2, fMin4), size()) * 0.2f)) - (Utilities.dist(f17 / f19, f18 / f19, fNextFloat2, fNextFloat3) * 0.35f)) - ((fMax * size()) * 0.08f)) - (Utilities.dist(fDp3, fDp2, this.width * f9, this.height * 0.55f) * 0.04f)) + (random.nextFloat() * AndroidUtilities.dp(10.0f))) - (z2 ? Utilities.dist(fDp3, fDp2, f3, f4) * 0.04f : 0.0f);
                        }
                        if (fMin > f8) {
                            c2 = 3;
                            fArr = new float[]{fDp3, fDp2, f5};
                            f8 = fMin;
                        } else {
                            c2 = 3;
                        }
                    }
                    fDp3 += AndroidUtilities.dp(5.0f);
                    c3 = c2;
                    fDp = f12;
                    f6 = f13;
                    arrayListObstacles = arrayList2;
                    fNextFloat = f11;
                }
            }
            fDp2 += AndroidUtilities.dp(5.0f);
            f7 = f9;
            c3 = c3;
            fNextFloat = fNextFloat;
        }
        return fArr;
    }

    private void toss(Sticker sticker) {
        this.host.showCardFor(2600L);
        if (geometry()) {
            float[] fArrFitting = fitting(sticker, Float.NaN, Float.NaN, true);
            RectF rectFTile = tile(sticker);
            if (fArrFitting == null || rectFTile == null) {
                final WalletGiftCell walletGiftCellCell = cell(sticker);
                if (walletGiftCellCell != null) {
                    walletGiftCellCell.animate().rotation(3.0f).setDuration(90L).withEndAction(new Runnable() { // from class: org.telegram.ui.Wallet.WalletGiftStickers$$ExternalSyntheticLambda11
                        @Override // java.lang.Runnable
                        public final void run() {
                            walletGiftCellCell.animate().rotation(0.0f).setDuration(120L).start();
                        }
                    }).start();
                    return;
                }
                return;
            }
            sticker.scale.set((rectFTile.width() * artShare(sticker)) / size());
            sticker.border.set(0.0f);
            sticker.lift.set(1.0f);
            place(sticker, local(rectFTile.centerX(), rectFTile.centerY()), fArrFitting, true);
            performHapticFeedback(3);
        }
    }

    private void place(Sticker sticker, float[] fArr, float[] fArr2, boolean z) {
        if (sticker.added == 0) {
            long j = this.addedCounter + 1;
            this.addedCounter = j;
            sticker.added = j;
            evictOverLimit(sticker);
        }
        sticker.state = 1;
        sticker.slapped = false;
        sticker.ring = false;
        sticker.contact = false;
        sticker.flewIn = z;
        sticker.tossed = z;
        long j2 = this.f1259z + 1;
        this.f1259z = j2;
        sticker.f1266z = j2;
        sticker.arcX.set(0.0f);
        sticker.arcY.set(0.0f);
        sticker.f1264x.with(z ? 150.0f : 500.0f, z ? 0.82f : 1.0f).set(fArr[0]).to(fArr2[0]);
        sticker.f1265y.with(z ? 150.0f : 500.0f, z ? 0.82f : 1.0f).set(fArr[1]).to(fArr2[1]);
        sticker.user.to(fArr2[2]);
        sticker.scale.with(300.0f, 0.5f).to(1.0f);
        sticker.lift.with(z ? 110.0f : 150.0f, 0.9f).to(0.0f);
        sticker.border.to(1.0f);
        sticker.press.to(0.0f);
        float f = fArr2[0] - fArr[0];
        float f2 = fArr2[1] - fArr[1];
        float fMax = Math.max(1.0f, (float) Math.hypot(f, f2));
        sticker.curlX = fMax > ((float) AndroidUtilities.dp(6.0f)) ? f / fMax : 0.0f;
        sticker.curlY = fMax > ((float) AndroidUtilities.dp(6.0f)) ? f2 / fMax : 1.0f;
        sticker.curl.set(0.9f).to(0.0f);
        if (z) {
            float fMin = Math.min(AndroidUtilities.dp(110.0f), 0.32f * fMax);
            float f3 = f >= 0.0f ? -1.0f : 1.0f;
            sticker.arcX.set(0.0f).velocity = ((-f2) / fMax) * fMin * f3 * 20.0f;
            sticker.arcY.set(0.0f).velocity = ((((f / fMax) * fMin) * f3) - (fMin * 0.5f)) * 20.0f;
        }
        save();
        wake();
    }

    private void evictOverLimit(Sticker sticker) {
        ArrayList arrayList = new ArrayList();
        for (Sticker sticker2 : this.stickers.values()) {
            if (sticker2 != sticker && sticker2.onCard()) {
                arrayList.add(sticker2);
            }
        }
        if (arrayList.size() < 10) {
            return;
        }
        arrayList.sort(Comparator.comparingLong(new ToLongFunction() { // from class: org.telegram.ui.Wallet.WalletGiftStickers$$ExternalSyntheticLambda14
            @Override // java.util.function.ToLongFunction
            public final long applyAsLong(Object obj) {
                return ((WalletGiftStickers.Sticker) obj).added;
            }
        }));
        for (int i = 0; i <= arrayList.size() - 10; i++) {
            Sticker sticker3 = (Sticker) arrayList.get(i);
            if (this.host.isCardShown()) {
                home(sticker3);
            } else {
                snapHome(sticker3);
            }
        }
        changed();
    }

    private void home(Sticker sticker) {
        sticker.added = 0L;
        if (sticker.key.equals(this.styleKey)) {
            clearStyle();
        }
        if (sticker.onCard()) {
            float[] fArrRoot = root(sticker.f1264x.value, sticker.f1265y.value);
            sticker.f1264x.set(fArrRoot[0]);
            sticker.f1265y.set(fArrRoot[1]);
        }
        sticker.state = 4;
        sticker.homeT = 0.0f;
        sticker.homeX = sticker.f1264x.value;
        sticker.homeY = sticker.f1265y.value;
        sticker.homeScale = sticker.scale.value * sticker.user.value;
        sticker.homeAngle = sticker.rotation.value;
        sticker.homeDuration = this.releaseVelocityY > ((float) AndroidUtilities.dp(650.0f)) ? 0.32f : 0.44f;
        this.releaseVelocityY = 0.0f;
        WalletGiftCell walletGiftCellCell = cell(sticker);
        if (walletGiftCellCell != null) {
            walletGiftCellCell.animate().cancel();
            walletGiftCellCell.takeDrawnScale();
        }
        sticker.homeCell = walletGiftCellCell != null ? walletGiftCellCell.getScaleX() : 1.0f;
        RectF rectFTile = tile(sticker);
        if (rectFTile != null) {
            float fCenterX = rectFTile.centerX() - sticker.homeX;
            float fCenterY = rectFTile.centerY() - sticker.homeY;
            float fHypot = (float) Math.hypot(fCenterX, fCenterY);
            sticker.curlX = fHypot > ((float) AndroidUtilities.dp(6.0f)) ? fCenterX / fHypot : 0.0f;
            sticker.curlY = fHypot > ((float) AndroidUtilities.dp(6.0f)) ? fCenterY / fHypot : 1.0f;
        }
        sticker.press.set(0.0f);
        sticker.user.set(1.0f);
        long j = this.f1259z + 1;
        this.f1259z = j;
        sticker.f1266z = j;
        save();
        wake();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void back(Sticker sticker) {
        sticker.state = 0;
        sticker.added = 0L;
        sticker.scale.set(1.0f);
        sticker.user.set(1.0f);
        sticker.rotation.set(0.0f);
        sticker.border.set(0.0f);
        sticker.lift.set(0.0f);
        sticker.curl.set(0.0f);
        WalletGiftCell walletGiftCellCell = cell(sticker);
        if (walletGiftCellCell != null) {
            walletGiftCellCell.animate().cancel();
            walletGiftCellCell.setScaleX(1.0f);
            walletGiftCellCell.setScaleY(1.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startReveal(Sticker sticker, boolean z) {
        this.oldStyle = this.shownStyle;
        this.shownStyle = sticker;
        this.reveal = 0.0f;
        this.fadeReveal = z;
        if (sticker != null) {
            this.revealX = sticker.f1264x.target / this.width;
            this.revealY = sticker.f1265y.target / this.height;
        }
        wake();
    }

    private void clearStyle() {
        this.pendingStyle = null;
        this.styleKey = null;
        startReveal(null, true);
        save();
        changed();
    }

    private void save() {
        if (!this.readOnly && this.width > 0.0f && this.height > 0.0f) {
            SharedPreferences.Editor editorEdit = this.prefs.edit();
            for (Sticker sticker : this.stickers.values()) {
                if (sticker.onCard()) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("x", sticker.f1264x.target / this.width);
                        jSONObject.put("y", sticker.f1265y.target / this.height);
                        jSONObject.put("r", sticker.rotation.target);
                        jSONObject.put("s", sticker.user.target);
                        jSONObject.put("q", sticker.perched);
                        editorEdit.putString(sticker.key, jSONObject.toString());
                    } catch (Exception unused) {
                    }
                } else {
                    editorEdit.remove(sticker.key);
                }
            }
            String str = this.styleKey;
            if (str == null) {
                editorEdit.remove("style");
            } else {
                editorEdit.putString("style", str);
            }
            editorEdit.apply();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void restore(Sticker sticker) {
        if (sticker.restored) {
            return;
        }
        sticker.restored = true;
        String string = this.readOnly ? null : this.prefs.getString(sticker.key, null);
        if (this.serverCard != null) {
            TL_wallet.cardSticker cardstickerServerSticker = serverSticker(sticker.key);
            if (cardstickerServerSticker != null) {
                putOnCard(sticker, cardstickerServerSticker.coordinates, perched(string));
                return;
            }
            return;
        }
        if (string == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(string);
            sticker.user.set((float) jSONObject.optDouble("s", 1.0d));
            sticker.rotation.set((float) jSONObject.optDouble("r", 0.0d));
            sticker.perched = jSONObject.optBoolean("q");
            float[] fArr = {((float) jSONObject.getDouble("x")) * this.width, ((float) jSONObject.getDouble("y")) * this.height, sticker.user.target};
            sticker.f1264x.set(fArr[0]);
            sticker.f1265y.set(fArr[1]);
            sticker.user.set(fArr[2]);
            sticker.state = 2;
            long j = this.f1259z + 1;
            this.f1259z = j;
            sticker.f1266z = j;
            sticker.border.set(1.0f);
            if (sticker.added == 0) {
                long j2 = this.addedCounter + 1;
                this.addedCounter = j2;
                sticker.added = j2;
            }
            if (sticker.key.equals(this.styleKey)) {
                this.shownStyle = sticker;
                this.oldStyle = sticker;
                this.reveal = 1.0f;
                applyStyle();
            }
        } catch (Exception unused) {
        }
    }

    private static boolean perched(String str) {
        if (str == null) {
            return false;
        }
        try {
            return new JSONObject(str).optBoolean("q");
        } catch (Exception unused) {
            return false;
        }
    }

    private void putOnCard(Sticker sticker, TL_stories.MediaAreaCoordinates mediaAreaCoordinates, boolean z) {
        sticker.user.set((float) (mediaAreaCoordinates.f1058w / 23.100000381469727d));
        sticker.rotation.set(angle((float) mediaAreaCoordinates.rotation));
        sticker.perched = z;
        sticker.f1264x.set((((float) mediaAreaCoordinates.f1059x) / 100.0f) * this.width);
        sticker.f1265y.set((((float) mediaAreaCoordinates.f1060y) / 100.0f) * this.height);
        sticker.scale.set(1.0f);
        sticker.lift.set(0.0f);
        sticker.curl.set(0.0f);
        sticker.arcX.set(0.0f);
        sticker.arcY.set(0.0f);
        sticker.press.set(0.0f);
        sticker.state = 2;
        long j = this.f1259z + 1;
        this.f1259z = j;
        sticker.f1266z = j;
        sticker.border.set(1.0f);
        if (sticker.added == 0) {
            long j2 = this.addedCounter + 1;
            this.addedCounter = j2;
            sticker.added = j2;
        }
        if (sticker.key.equals(this.styleKey)) {
            this.shownStyle = sticker;
            this.oldStyle = sticker;
            this.reveal = 1.0f;
            applyStyle();
        }
    }

    private void loadCard() {
        int currentAccount = this.fragment.getCurrentAccount();
        MessagesController messagesController = MessagesController.getInstance(currentAccount);
        long clientUserId = UserConfig.getInstance(currentAccount).getClientUserId();
        TLRPC.UserFull userFull = messagesController.getUserFull(clientUserId);
        if (userFull != null) {
            TL_wallet.card cardVar = userFull.wallet_card;
            if (cardVar == null) {
                cardVar = new TL_wallet.card();
            }
            applyCard(cardVar);
            return;
        }
        messagesController.loadFullUser(messagesController.getUser(Long.valueOf(clientUserId)), 0, true, new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletGiftStickers$$ExternalSyntheticLambda12
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$loadCard$9((TLRPC.UserFull) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadCard$9(final TLRPC.UserFull userFull) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletGiftStickers$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadCard$8(userFull);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadCard$8(TLRPC.UserFull userFull) {
        if (this.disposed || userFull == null) {
            return;
        }
        TL_wallet.card cardVar = userFull.wallet_card;
        if (cardVar == null) {
            cardVar = new TL_wallet.card();
        }
        applyCard(cardVar);
    }

    private TL_wallet.cardSticker serverSticker(String str) {
        ArrayList<TL_wallet.cardSticker> arrayList;
        TL_wallet.card cardVar = this.serverCard;
        if (cardVar != null && (arrayList = cardVar.stickers) != null) {
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                TL_wallet.cardSticker cardsticker = arrayList.get(i);
                i++;
                TL_wallet.cardSticker cardsticker2 = cardsticker;
                TL_wallet.nftItem nftitem = cardsticker2.nft;
                if (nftitem != null && str.equals(nftitem.address)) {
                    return cardsticker2;
                }
            }
        }
        return null;
    }

    private void applyCard(TL_wallet.card cardVar) {
        int i;
        this.serverCard = cardVar;
        this.serverSignature = signature(cardVar);
        if (this.dirty || this.syncRequestId != 0 || this.ownsTouch) {
            return;
        }
        TL_wallet.nftItem nftitem = cardVar.bg_nft_item;
        Sticker stickerEnsure = null;
        String str = nftitem == null ? null : nftitem.address;
        boolean zEquals = TextUtils.equals(str, this.styleKey);
        if (!zEquals) {
            this.styleKey = str;
            this.pendingStyle = null;
        }
        ArrayList<TL_wallet.cardSticker> arrayList = cardVar.stickers;
        if (arrayList != null) {
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                TL_wallet.cardSticker cardsticker = arrayList.get(i2);
                i2++;
                TL_wallet.nftItem nftitem2 = cardsticker.nft;
                if (nftitem2 != null && nftitem2.gift != null) {
                    ensure(nftitem2);
                }
            }
        }
        if (this.readOnly) {
            TL_wallet.nftItem nftitem3 = cardVar.bg_nft_item;
            if (nftitem3 != null && nftitem3.gift != null) {
                stickerEnsure = ensure(nftitem3);
            }
            this.oldStyle = stickerEnsure;
            this.shownStyle = stickerEnsure;
            this.reveal = 1.0f;
            applyStyle();
            wake();
            return;
        }
        if (!geometry()) {
            wake();
            return;
        }
        this.applying = true;
        ArrayList<Sticker> arrayListOrdered = ordered();
        int size2 = arrayListOrdered.size();
        int i3 = 0;
        while (i3 < size2) {
            Sticker sticker = arrayListOrdered.get(i3);
            i3++;
            Sticker sticker2 = sticker;
            if (sticker2.restored && (i = sticker2.state) != 3 && i != 4 && i != 5) {
                TL_wallet.cardSticker cardstickerServerSticker = serverSticker(sticker2.key);
                if (cardstickerServerSticker != null) {
                    if (!sticker2.onCard() || !coordinates(sticker2).equals(format(cardstickerServerSticker.coordinates))) {
                        putOnCard(sticker2, cardstickerServerSticker.coordinates, sticker2.perched);
                    }
                } else if (sticker2.onCard()) {
                    home(sticker2);
                }
            }
        }
        ArrayList<TL_wallet.cardSticker> arrayList2 = cardVar.stickers;
        if (arrayList2 != null) {
            int size3 = arrayList2.size();
            int i4 = 0;
            while (i4 < size3) {
                TL_wallet.cardSticker cardsticker2 = arrayList2.get(i4);
                i4++;
                TL_wallet.nftItem nftitem4 = cardsticker2.nft;
                Sticker sticker3 = nftitem4 == null ? null : this.stickers.get(nftitem4.address);
                if (sticker3 != null && sticker3.state == 2) {
                    long j = this.f1259z + 1;
                    this.f1259z = j;
                    sticker3.f1266z = j;
                }
            }
        }
        if (!zEquals) {
            String str2 = this.styleKey;
            Sticker sticker4 = str2 == null ? null : this.stickers.get(str2);
            if (sticker4 == null || !sticker4.onCard()) {
                startReveal(null, true);
            } else {
                startReveal(sticker4, false);
            }
        }
        this.applying = false;
        save();
        wake();
    }

    private void changed() {
        if (this.readOnly || this.applying) {
            return;
        }
        this.dirty = true;
        AndroidUtilities.cancelRunOnUIThread(this.sendCard);
        AndroidUtilities.runOnUIThread(this.sendCard, 1500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendCard() {
        if (this.dirty && this.syncRequestId == 0) {
            if (!this.disposed && (this.ownsTouch || !geometry())) {
                AndroidUtilities.runOnUIThread(this.sendCard, 1000L);
                return;
            }
            if (localSignature().equals(this.serverSignature)) {
                this.dirty = false;
                return;
            }
            TL_wallet.setCardStickers setcardstickers = new TL_wallet.setCardStickers();
            ArrayList<Sticker> arrayListOrdered = ordered();
            int size = arrayListOrdered.size();
            int i = 0;
            while (i < size) {
                Sticker sticker = arrayListOrdered.get(i);
                i++;
                Sticker sticker2 = sticker;
                if (sticker2.onCard()) {
                    TL_wallet.inputWalletCardSticker inputwalletcardsticker = new TL_wallet.inputWalletCardSticker();
                    inputwalletcardsticker.nft_address = sticker2.key;
                    inputwalletcardsticker.coordinates = toCoordinates(sticker2);
                    setcardstickers.stickers.add(inputwalletcardsticker);
                    if (sticker2.key.equals(this.styleKey) && colorAllowed(sticker2)) {
                        setcardstickers.bg_nft_address = sticker2.key;
                    }
                }
            }
            this.dirty = false;
            final int currentAccount = this.fragment.getCurrentAccount();
            final TL_wallet.card cardVar = this.serverCard;
            updateUserFull(currentAccount, localCard(setcardstickers));
            this.syncRequestId = ConnectionsManager.getInstance(currentAccount).sendRequestTyped(setcardstickers, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.WalletGiftStickers$$ExternalSyntheticLambda1
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$sendCard$10(currentAccount, cardVar, (TL_wallet.card) obj, (TLRPC.TL_error) obj2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendCard$10(int i, TL_wallet.card cardVar, TL_wallet.card cardVar2, TLRPC.TL_error tL_error) {
        this.syncRequestId = 0;
        if (cardVar2 != null) {
            updateUserFull(i, cardVar2);
            if (this.disposed) {
                return;
            }
            if (this.dirty) {
                this.serverCard = cardVar2;
                this.serverSignature = signature(cardVar2);
                sendCard();
                return;
            }
            applyCard(cardVar2);
            return;
        }
        if (cardVar != null) {
            updateUserFull(i, cardVar);
        }
        if (this.disposed) {
            return;
        }
        if (tL_error != null) {
            BulletinFactory.of(this.fragment).showForError(tL_error);
        }
        this.dirty = false;
        TL_wallet.card cardVar3 = this.serverCard;
        if (cardVar3 != null) {
            applyCard(cardVar3);
        }
    }

    private TL_wallet.card localCard(TL_wallet.setCardStickers setcardstickers) {
        TL_wallet.card cardVar = new TL_wallet.card();
        TL_wallet.card cardVar2 = this.serverCard;
        if (cardVar2 != null) {
            cardVar.address = cardVar2.address;
            cardVar.balance = cardVar2.balance;
        }
        ArrayList<TL_wallet.inputWalletCardSticker> arrayList = setcardstickers.stickers;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            TL_wallet.inputWalletCardSticker inputwalletcardsticker = arrayList.get(i);
            i++;
            TL_wallet.inputWalletCardSticker inputwalletcardsticker2 = inputwalletcardsticker;
            Sticker sticker = this.stickers.get(inputwalletcardsticker2.nft_address);
            if (sticker != null && sticker.nft != null) {
                TL_wallet.cardSticker cardsticker = new TL_wallet.cardSticker();
                cardsticker.nft = sticker.nft;
                cardsticker.coordinates = inputwalletcardsticker2.coordinates;
                cardVar.stickers.add(cardsticker);
                if (inputwalletcardsticker2.nft_address.equals(setcardstickers.bg_nft_address)) {
                    cardVar.bg_nft_item = sticker.nft;
                }
            }
        }
        return cardVar;
    }

    private static void updateUserFull(int i, TL_wallet.card cardVar) {
        TLRPC.UserFull userFull = MessagesController.getInstance(i).getUserFull(UserConfig.getInstance(i).getClientUserId());
        if (userFull == null) {
            return;
        }
        userFull.wallet_card = cardVar;
        MessagesStorage.getInstance(i).updateUserInfo(userFull, false);
    }

    private TL_stories.MediaAreaCoordinates toCoordinates(Sticker sticker) {
        TL_stories.TL_mediaAreaCoordinates tL_mediaAreaCoordinates = new TL_stories.TL_mediaAreaCoordinates();
        float size = size() * sticker.user.target;
        tL_mediaAreaCoordinates.f1059x = round((sticker.f1264x.target / this.width) * 100.0f);
        tL_mediaAreaCoordinates.f1060y = round((sticker.f1265y.target / this.height) * 100.0f);
        tL_mediaAreaCoordinates.f1058w = round((size / this.width) * 100.0f);
        tL_mediaAreaCoordinates.f1057h = round((size / this.height) * 100.0f);
        float f = sticker.rotation.target % 360.0f;
        if (f < 0.0f) {
            f += 360.0f;
        }
        tL_mediaAreaCoordinates.rotation = round(f);
        return tL_mediaAreaCoordinates;
    }

    private static double round(float f) {
        return ((double) Math.round(f * 100.0f)) / 100.0d;
    }

    private String coordinates(Sticker sticker) {
        return format(toCoordinates(sticker));
    }

    private static String format(TL_stories.MediaAreaCoordinates mediaAreaCoordinates) {
        if (mediaAreaCoordinates == null) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        return String.format(Locale.US, "%.2f,%.2f,%.2f,%.2f", Double.valueOf(mediaAreaCoordinates.f1059x), Double.valueOf(mediaAreaCoordinates.f1060y), Double.valueOf(mediaAreaCoordinates.f1058w), Double.valueOf(mediaAreaCoordinates.rotation % 360.0d));
    }

    private String localSignature() {
        StringBuilder sb = new StringBuilder();
        ArrayList<Sticker> arrayListOrdered = ordered();
        int size = arrayListOrdered.size();
        String str = null;
        int i = 0;
        while (i < size) {
            Sticker sticker = arrayListOrdered.get(i);
            i++;
            Sticker sticker2 = sticker;
            if (sticker2.onCard()) {
                sb.append(sticker2.key);
                sb.append(':');
                sb.append(coordinates(sticker2));
                sb.append(';');
                if (sticker2.key.equals(this.styleKey) && colorAllowed(sticker2)) {
                    str = sticker2.key;
                }
            }
        }
        sb.append("bg:");
        sb.append(str);
        return sb.toString();
    }

    private static String signature(TL_wallet.card cardVar) {
        StringBuilder sb = new StringBuilder();
        ArrayList<TL_wallet.cardSticker> arrayList = cardVar.stickers;
        if (arrayList != null) {
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                TL_wallet.cardSticker cardsticker = arrayList.get(i);
                i++;
                TL_wallet.cardSticker cardsticker2 = cardsticker;
                TL_wallet.nftItem nftitem = cardsticker2.nft;
                if (nftitem != null) {
                    sb.append(nftitem.address);
                    sb.append(':');
                    sb.append(format(cardsticker2.coordinates));
                    sb.append(';');
                }
            }
        }
        sb.append("bg:");
        TL_wallet.nftItem nftitem2 = cardVar.bg_nft_item;
        sb.append(nftitem2 == null ? null : nftitem2.address);
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyStyle() {
        Sticker sticker = this.oldStyle;
        float[] fArrOf = WalletGiftPalette.of(sticker == null ? null : sticker.backdrop);
        Sticker sticker2 = this.shownStyle;
        float[] fArrOf2 = WalletGiftPalette.of(sticker2 == null ? null : sticker2.backdrop);
        boolean z = this.fadeReveal;
        float f = this.reveal;
        float fPow = z ? f * f * (3.0f - (f * 2.0f)) : 1.0f - ((float) Math.pow(1.0f - f, 4.0d));
        float[] fArr = new float[18];
        System.arraycopy(new float[]{fArrOf[0], fArrOf[1], fArrOf[2], fArrOf2[0], fArrOf2[1], fArrOf2[2], this.revealX, this.revealY, fPow, this.fadeReveal ? 1.0f : 0.0f}, 0, fArr, 0, 10);
        Sticker sticker3 = this.oldStyle;
        WalletGiftPalette.putBackdrop(fArr, 0, sticker3 == null ? null : sticker3.backdrop);
        Sticker sticker4 = this.shownStyle;
        WalletGiftPalette.putBackdrop(fArr, 1, sticker4 == null ? null : sticker4.backdrop);
        this.card.setStickerStyle(fArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void wake() {
        if (this.disposed || !isAttachedToWindow()) {
            return;
        }
        removeCallbacks(this.tick);
        postOnAnimation(this.tick);
    }

    /* JADX INFO: renamed from: org.telegram.ui.Wallet.WalletGiftStickers$3 */
    public class RunnableC64953 implements Runnable {
        public RunnableC64953() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r15v0 */
        /* JADX WARN: Type inference failed for: r15v1, types: [int] */
        /* JADX WARN: Type inference failed for: r15v5 */
        @Override // java.lang.Runnable
        public void run() {
            WalletGiftStickers walletGiftStickers;
            WalletGiftStickers walletGiftStickers2;
            int i;
            boolean zStep;
            float f;
            float f2;
            float f3;
            if (WalletGiftStickers.this.disposed || !WalletGiftStickers.this.isAttachedToWindow()) {
                return;
            }
            long jUptimeMillis = SystemClock.uptimeMillis();
            float fMin = WalletGiftStickers.this.lastFrame == 0 ? 0.016666668f : Math.min(0.032f, (jUptimeMillis - WalletGiftStickers.this.lastFrame) / 1000.0f);
            WalletGiftStickers.this.lastFrame = jUptimeMillis;
            if (WalletGiftStickers.this.geometry()) {
                boolean z = false;
                boolean zStep2 = false;
                for (Sticker sticker : WalletGiftStickers.this.stickers.values()) {
                    WalletGiftStickers.this.restore(sticker);
                    if (sticker.onCard()) {
                        sticker.bitmap();
                    }
                    Spring[] springArr = sticker.springs;
                    int length = springArr.length;
                    for (?? r15 = z; r15 < length; r15++) {
                        zStep2 |= springArr[r15].step(fMin);
                    }
                    int i2 = sticker.state;
                    if (i2 == 1) {
                        Spring spring = sticker.f1264x;
                        float f4 = spring.value + sticker.arcX.value;
                        Spring spring2 = sticker.f1265y;
                        float fDist = Utilities.dist(f4, spring2.value + sticker.arcY.value, spring.target, spring2.target);
                        if (!sticker.ring && sticker.lift.value < 0.36f && fDist < AndroidUtilities.dp(24.0f)) {
                            sticker.ring = true;
                            WalletGiftStickers.this.ripples.add(new Ripple(sticker.f1264x.target, sticker.f1265y.target));
                        }
                        if (sticker.contact || sticker.lift.value >= 0.22f || fDist >= AndroidUtilities.dp(12.0f)) {
                            f3 = 1.4f;
                        } else {
                            sticker.contact = true;
                            sticker.impact.set(1.0f).to(0.0f);
                            Spring spring3 = WalletGiftStickers.this.squash;
                            boolean z2 = sticker.flewIn;
                            spring3.with(z2 ? 420.0f : 260.0f, z2 ? 0.38f : 0.85f);
                            Spring spring4 = WalletGiftStickers.this.squash;
                            float f5 = spring4.velocity;
                            boolean z3 = sticker.flewIn;
                            spring4.velocity = f5 - (z3 ? 0.75f : 0.28f);
                            float f6 = z3 ? 3.4f : 1.4f;
                            f3 = 1.4f;
                            WalletGiftStickers.this.kickH.velocity += ((sticker.f1264x.target / WalletGiftStickers.this.width) - 0.5f) * 2.0f * f6;
                            WalletGiftStickers.this.kickV.velocity += ((sticker.f1265y.target / WalletGiftStickers.this.height) - 0.5f) * 2.0f * f6;
                            if (sticker.flewIn) {
                                WalletGiftStickers.this.spawnSparks(sticker.f1264x.target, sticker.f1265y.target);
                            }
                            if (sticker.key.equals(WalletGiftStickers.this.pendingStyle)) {
                                WalletGiftStickers.this.startReveal(sticker, z);
                                WalletGiftStickers.this.pendingStyle = null;
                            }
                        }
                        if (!sticker.slapped && sticker.curl.value < 0.3f) {
                            sticker.slapped = true;
                            sticker.scale.velocity -= f3;
                            WalletGiftStickers.this.performHapticFeedback(3);
                        }
                        if (sticker.slapped && fDist < 0.5f && Math.abs(sticker.scale.value - 1.0f) < 0.004f && Math.abs(sticker.scale.velocity) < 0.02f) {
                            sticker.state = 2;
                            Spring spring5 = sticker.f1264x;
                            spring5.set(spring5.target);
                            Spring spring6 = sticker.f1265y;
                            spring6.set(spring6.target);
                        }
                        f = fMin;
                        f2 = 0.0f;
                        zStep2 = true;
                    } else {
                        if (i2 == 4) {
                            float fMin2 = Math.min(1.0f, sticker.homeT + (fMin / sticker.homeDuration));
                            sticker.homeT = fMin2;
                            float f7 = 1.0f - fMin2;
                            float f8 = 1.0f - (f7 * f7);
                            final WalletGiftCell walletGiftCellCell = WalletGiftStickers.this.cell(sticker);
                            float fClamp01 = Utilities.clamp01(fMin2 / 0.5f);
                            float fLerp = walletGiftCellCell != null ? AndroidUtilities.lerp(sticker.homeCell, 1.0f, fClamp01 * fClamp01 * (3.0f - (fClamp01 * 2.0f))) : 1.0f;
                            if (walletGiftCellCell != null) {
                                walletGiftCellCell.setScaleX(fLerp);
                                walletGiftCellCell.setScaleY(fLerp);
                            }
                            RectF rectFTile = WalletGiftStickers.this.tile(sticker);
                            if (rectFTile == null) {
                                sticker.scale.set(sticker.homeScale * (1.0f - f8));
                                f = fMin;
                                f2 = 0.0f;
                            } else {
                                f = fMin;
                                float fSin = (float) Math.sin(((double) f8) * 3.141592653589793d);
                                f2 = 0.0f;
                                float fMin3 = Math.min(AndroidUtilities.dp(90.0f), Utilities.dist(rectFTile.centerX(), rectFTile.centerY(), sticker.homeX, sticker.homeY) * 0.28f);
                                sticker.f1264x.set(AndroidUtilities.lerp(sticker.homeX, rectFTile.centerX(), f8));
                                sticker.f1265y.set(AndroidUtilities.lerp(sticker.homeY, rectFTile.centerY(), f8) - ((((1.0f - f8) * 2.0f) * f8) * fMin3));
                                sticker.scale.set(AndroidUtilities.lerp(sticker.homeScale, ((rectFTile.width() / fLerp) * WalletGiftStickers.this.artShare(sticker)) / WalletGiftStickers.this.size(), f8) * ((0.05f * fSin) + 1.0f) * AndroidUtilities.lerp(1.0f, fLerp, f8));
                                sticker.lift.set(fSin * 0.8f);
                                Spring spring7 = sticker.rotation;
                                float f9 = sticker.homeAngle;
                                spring7.set(f9 + (WalletGiftStickers.angle(-f9) * f8));
                                sticker.border.set(Utilities.clamp01(1.0f - ((f8 - 0.35f) / 0.4f)));
                            }
                            if (fMin2 >= 1.0f) {
                                WalletGiftStickers.this.back(sticker);
                                if (walletGiftCellCell != null) {
                                    walletGiftCellCell.animate().scaleX(0.955f).scaleY(0.955f).setDuration(70L).setInterpolator(null).withEndAction(new Runnable() { // from class: org.telegram.ui.Wallet.WalletGiftStickers$3$$ExternalSyntheticLambda0
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            walletGiftCellCell.animate().scaleX(1.0f).scaleY(1.0f).setDuration(260L).setInterpolator(new OvershootInterpolator(2.0f)).start();
                                        }
                                    }).start();
                                }
                            }
                        } else {
                            f = fMin;
                            f2 = 0.0f;
                            if (i2 == 5) {
                                if (sticker.scale.value < 0.03f) {
                                    WalletGiftStickers.this.back(sticker);
                                }
                            }
                        }
                        zStep2 = true;
                    }
                    if (sticker.onCard()) {
                        sticker.ribbonOn = true;
                    } else if (sticker.state == 0) {
                        sticker.ribbonOn = false;
                    }
                    if (sticker.image.isLottieRunning()) {
                        RLottieDrawable lottieAnimation = sticker.image.getLottieAnimation();
                        int currentFrame = lottieAnimation == null ? 0 : lottieAnimation.getCurrentFrame();
                        if (currentFrame >= 2) {
                            sticker.playStarted = true;
                        }
                        boolean z4 = sticker.playOnce && !sticker.playStarted && sticker.state == 2;
                        if (sticker.press.target == f2 && !z4 && lottieAnimation != null && currentFrame < 2) {
                            sticker.image.stopAnimation();
                            sticker.image.setAllowStartLottieAnimation(false);
                            sticker.playOnce = false;
                        }
                        zStep2 = true;
                    }
                    fMin = f;
                    z = false;
                }
                float f10 = fMin;
                boolean zStepHint = zStep2 | WalletGiftStickers.this.stepHint(f10);
                int size = WalletGiftStickers.this.sparks.size();
                while (true) {
                    size--;
                    walletGiftStickers = WalletGiftStickers.this;
                    if (size < 0) {
                        break;
                    }
                    Spark spark = (Spark) walletGiftStickers.sparks.get(size);
                    spark.age += f10;
                    float fExp = (float) Math.exp((-2.4f) * f10);
                    float f11 = spark.vx * fExp;
                    spark.vx = f11;
                    float f12 = spark.vy * fExp;
                    spark.vy = f12;
                    spark.f1262x += f11 * f10;
                    spark.f1263y += f12 * f10;
                    spark.rot += f10 * 90.0f;
                    if (spark.age >= spark.life) {
                        WalletGiftStickers.this.sparks.remove(size);
                    }
                }
                if (!walletGiftStickers.sparks.isEmpty()) {
                    zStepHint = true;
                }
                int size2 = WalletGiftStickers.this.ripples.size();
                while (true) {
                    size2--;
                    walletGiftStickers2 = WalletGiftStickers.this;
                    if (size2 < 0) {
                        break;
                    }
                    Ripple ripple = (Ripple) walletGiftStickers2.ripples.get(size2);
                    float f13 = ripple.age + f10;
                    ripple.age = f13;
                    if (f13 > 0.42f) {
                        WalletGiftStickers.this.ripples.remove(size2);
                    }
                }
                if (walletGiftStickers2.reveal < 1.0f) {
                    WalletGiftStickers walletGiftStickers3 = WalletGiftStickers.this;
                    walletGiftStickers3.reveal = Math.min(1.0f, walletGiftStickers3.reveal + (f10 / (WalletGiftStickers.this.fadeReveal ? 0.45f : 1.2f)));
                    WalletGiftStickers.this.applyStyle();
                    zStepHint = true;
                }
                Iterator it = WalletGiftStickers.this.stickers.values().iterator();
                boolean z5 = false;
                while (it.hasNext()) {
                    if (((Sticker) it.next()).state == 5) {
                        z5 = true;
                    }
                }
                WalletGiftStickers.this.bin.to(((WalletGiftStickers.this.dragging && WalletGiftStickers.this.peeled && WalletGiftStickers.this.bin.target > 0.0f) || z5 || WalletGiftStickers.this.trashClosing) ? 1.0f : 0.0f);
                WalletGiftStickers.this.binHover.to((WalletGiftStickers.this.overBin || z5 || WalletGiftStickers.this.trashClosing) ? 1.0f : 0.0f);
                boolean z6 = WalletGiftStickers.this.trashClosing;
                WalletGiftStickers walletGiftStickers4 = WalletGiftStickers.this;
                if (z6) {
                    walletGiftStickers4.trashFrame.set(Math.min(66.0f, WalletGiftStickers.this.trashFrame.value + (60.0f * f10)));
                    if (WalletGiftStickers.this.trashFrame.value >= 66.0f) {
                        i = 0;
                        WalletGiftStickers.this.trashClosing = false;
                        WalletGiftStickers.this.trashFrame.set(0.0f);
                    } else {
                        i = 0;
                    }
                    zStep = true;
                } else {
                    i = 0;
                    walletGiftStickers4.trashFrame.to(WalletGiftStickers.this.overBin ? 28.0f : 0.0f);
                    zStep = zStepHint | WalletGiftStickers.this.trashFrame.step(f10);
                }
                boolean zStep3 = WalletGiftStickers.this.bin.step(f10) | WalletGiftStickers.this.binHover.step(f10) | WalletGiftStickers.this.squash.step(f10) | WalletGiftStickers.this.kickH.step(f10) | WalletGiftStickers.this.kickV.step(f10) | zStep;
                WalletGiftStickers.this.card.setStickerImpact(WalletGiftStickers.this.squash.value);
                WalletGiftStickers.this.card.setStickerKick(Math.max(-1.0f, Math.min(1.0f, WalletGiftStickers.this.kickH.value)), Math.max(-1.0f, Math.min(1.0f, WalletGiftStickers.this.kickV.value)));
                WalletGiftStickers walletGiftStickers5 = WalletGiftStickers.this;
                walletGiftStickers5.rotX = walletGiftStickers5.card.getCardRotationX();
                WalletGiftStickers walletGiftStickers6 = WalletGiftStickers.this;
                walletGiftStickers6.rotY = walletGiftStickers6.card.getCardRotationY();
                ArrayList arrayList = WalletGiftStickers.this.cells;
                int size3 = arrayList.size();
                while (i < size3) {
                    Object obj = arrayList.get(i);
                    i++;
                    WalletGiftCell walletGiftCell = (WalletGiftCell) obj;
                    Sticker sticker2 = (Sticker) WalletGiftStickers.this.stickers.get(walletGiftCell.nft.address);
                    if (sticker2 != null) {
                        WalletGiftStickers.this.updateCell(walletGiftCell, sticker2);
                    }
                }
                WalletGiftStickers.this.invalidate();
                WalletGiftStickers.this.cardLayer.invalidate();
                WalletGiftStickers.this.patternLayer.invalidate();
                if (zStep3 || !WalletGiftStickers.this.ripples.isEmpty() || WalletGiftStickers.this.ownsTouch) {
                    WalletGiftStickers.this.postOnAnimation(this);
                } else {
                    WalletGiftStickers.this.lastFrame = 0L;
                }
            }
        }
    }

    public static final class Ripple {
        float age;

        /* JADX INFO: renamed from: x */
        float f1260x;

        /* JADX INFO: renamed from: y */
        float f1261y;

        public Ripple(float f, float f2) {
            this.f1260x = f;
            this.f1261y = f2;
        }
    }

    public static final class Spark {
        float age;
        float life;
        float rot;
        float size;
        float vx;
        float vy;

        /* JADX INFO: renamed from: x */
        float f1262x;

        /* JADX INFO: renamed from: y */
        float f1263y;

        private Spark() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void spawnSparks(float f, float f2) {
        Random random = new Random();
        for (int i = 0; i < 14; i++) {
            Spark spark = new Spark();
            float fNextFloat = ((float) (((double) (i / 14.0f)) * 3.141592653589793d * 2.0d)) + (random.nextFloat() * 0.35f);
            float fDp = AndroidUtilities.dp(265.0f) + (random.nextFloat() * AndroidUtilities.dp(180.0f));
            spark.f1262x = f;
            spark.f1263y = f2;
            double d = fNextFloat;
            spark.vx = ((float) Math.cos(d)) * fDp;
            spark.vy = ((float) Math.sin(d)) * fDp;
            spark.size = AndroidUtilities.dp(0.8f) + (random.nextFloat() * AndroidUtilities.dp(1.1f));
            spark.life = (random.nextFloat() * 0.35f) + 0.7f;
            spark.rot = random.nextFloat() * 360.0f;
            this.sparks.add(spark);
        }
    }

    private ArrayList<Sticker> ordered() {
        ArrayList<Sticker> arrayList = new ArrayList<>(this.stickers.values());
        arrayList.sort(Comparator.comparingLong(new ToLongFunction() { // from class: org.telegram.ui.Wallet.WalletGiftStickers$$ExternalSyntheticLambda0
            @Override // java.util.function.ToLongFunction
            public final long applyAsLong(Object obj) {
                return ((WalletGiftStickers.Sticker) obj).f1266z;
            }
        }));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void drawOnCard(Canvas canvas) {
        float f;
        float f2;
        RectF rectF;
        int i;
        int i2;
        ArrayList<Sticker> arrayList;
        RectF rectF2;
        RectF rectF3;
        RectF rectF4;
        WalletGiftStickers walletGiftStickers;
        Canvas canvas2;
        int iSaveLayer;
        Canvas canvas3;
        float f3;
        int i3;
        float f4;
        WalletGiftStickers walletGiftStickers2 = this;
        if (walletGiftStickers2.width <= 0.0f) {
            return;
        }
        walletGiftStickers2.paint.setShader(null);
        walletGiftStickers2.paint.setColorFilter(null);
        ArrayList<Spark> arrayList2 = walletGiftStickers2.sparks;
        int size = arrayList2.size();
        int i4 = 0;
        while (true) {
            f = 0.4f;
            f2 = 0.9f;
            if (i4 >= size) {
                break;
            }
            Spark spark = arrayList2.get(i4);
            i4++;
            Spark spark2 = spark;
            float f5 = spark2.age / spark2.life;
            if (f5 < 0.1f) {
                f4 = f5 / 0.1f;
            } else {
                float f6 = 1.0f - ((f5 - 0.1f) / 0.9f);
                f4 = f6 * f6;
            }
            float f7 = spark2.size * ((0.4f * f4) + 0.6f);
            walletGiftStickers2.paint.setColor(-1);
            walletGiftStickers2.paint.setAlpha((int) (Utilities.clamp01(f4) * 130.0f));
            canvas.save();
            canvas.translate(spark2.f1262x, spark2.f1263y);
            canvas.rotate(spark2.rot);
            walletGiftStickers2.sparkPath.rewind();
            float f8 = -f7;
            float f9 = f8 * 2.0f;
            walletGiftStickers2.sparkPath.moveTo(0.0f, f9);
            float f10 = f7 * 0.35f;
            float f11 = f8 * 0.35f;
            walletGiftStickers2.sparkPath.lineTo(f10, f11);
            float f12 = f7 * 2.0f;
            walletGiftStickers2.sparkPath.lineTo(f12, 0.0f);
            walletGiftStickers2.sparkPath.lineTo(f10, f10);
            walletGiftStickers2.sparkPath.lineTo(0.0f, f12);
            walletGiftStickers2.sparkPath.lineTo(f11, f10);
            walletGiftStickers2.sparkPath.lineTo(f9, 0.0f);
            walletGiftStickers2.sparkPath.lineTo(f11, f11);
            walletGiftStickers2.sparkPath.close();
            canvas.drawPath(walletGiftStickers2.sparkPath, walletGiftStickers2.paint);
            canvas.restore();
        }
        walletGiftStickers2.paint.setAlpha(255);
        ArrayList<Ripple> arrayList3 = walletGiftStickers2.ripples;
        int size2 = arrayList3.size();
        int i5 = 0;
        while (i5 < size2) {
            Ripple ripple = arrayList3.get(i5);
            i5++;
            Ripple ripple2 = ripple;
            float fClamp01 = 1.0f - Utilities.clamp01(ripple2.age / 0.42f);
            walletGiftStickers2.line.setColor(-1);
            walletGiftStickers2.line.setAlpha((int) (fClamp01 * 90.0f));
            walletGiftStickers2.line.setStrokeWidth(AndroidUtilities.dp(2.4f) * fClamp01);
            canvas.drawCircle(ripple2.f1260x, ripple2.f1261y, walletGiftStickers2.size() * (((1.0f - ((fClamp01 * fClamp01) * fClamp01)) * 0.43f) + 0.42f), walletGiftStickers2.line);
            f = f;
            f2 = f2;
        }
        float f13 = f;
        float f14 = f2;
        drawHintOutline(canvas);
        float f15 = (walletGiftStickers2.rotY + (walletGiftStickers2.rotX * 0.6f)) / 10.0f;
        walletGiftStickers2.sheenMatrix.setScale(walletGiftStickers2.width * 1.5f, 1.0f);
        walletGiftStickers2.sheenMatrix.postRotate(-24.0f);
        Matrix matrix = walletGiftStickers2.sheenMatrix;
        float f16 = walletGiftStickers2.width;
        matrix.postTranslate(((-f16) * 0.25f) + (f15 * f16 * 0.45f), 0.0f);
        walletGiftStickers2.sheen.setLocalMatrix(walletGiftStickers2.sheenMatrix);
        ArrayList<RectF> stickerObstacles = walletGiftStickers2.card.getStickerObstacles();
        RectF rectF5 = stickerObstacles.get(0);
        RectF rectF6 = stickerObstacles.get(1);
        int i6 = 2;
        RectF rectF7 = stickerObstacles.get(2);
        RectF rectF8 = stickerObstacles.get(3);
        RectF rectF9 = stickerObstacles.get(4);
        RectF rectF10 = stickerObstacles.get(5);
        ArrayList<Sticker> arrayListOrdered = walletGiftStickers2.ordered();
        int size3 = arrayListOrdered.size();
        int i7 = 0;
        float f17 = 0.0f;
        float f18 = 0.0f;
        float f19 = 0.0f;
        float f20 = 0.0f;
        while (i7 < size3) {
            int i8 = i7 + 1;
            Sticker sticker = arrayListOrdered.get(i7);
            ArrayList<Sticker> arrayList4 = arrayListOrdered;
            int i9 = sticker.state;
            if (i9 == i6 || (i9 == 1 && (!sticker.tossed || sticker.lift.value <= 0.3f))) {
                Bitmap bitmap = sticker.bitmap();
                float f21 = sticker.press.value;
                float fClamp012 = Utilities.clamp01(sticker.appear.value);
                float size4 = walletGiftStickers2.size() * sticker.scale.value * sticker.user.value * (((1.0f - (sticker.realSize.value * f14)) * 0.04f * f21) + 1.0f) * ((0.2f * fClamp012) + 0.8f);
                if (bitmap == null || size4 < 1.0f) {
                    rectF = rectF8;
                    rectF2 = rectF9;
                    rectF3 = rectF7;
                    i2 = size3;
                    arrayList = arrayList4;
                    i = 2;
                    rectF4 = rectF6;
                    walletGiftStickers = walletGiftStickers2;
                    f17 = f17;
                } else {
                    float fMax = Math.max(sticker.lift.value, 0.7f * f21);
                    float fDp = AndroidUtilities.dp(1.5f) + (AndroidUtilities.dp(9.0f) * fMax);
                    float fSin = ((float) Math.sin(Math.toRadians(walletGiftStickers2.rotY))) * fDp * 2.2f;
                    rectF = rectF8;
                    float fSin2 = ((float) Math.sin(Math.toRadians(walletGiftStickers2.rotX))) * fDp * 2.2f;
                    float f22 = sticker.f1264x.value + sticker.arcX.value + fSin;
                    float fDp2 = ((sticker.f1265y.value + sticker.arcY.value) + fSin2) - (AndroidUtilities.dp(4.0f) * fMax);
                    float f23 = sticker.f1264x.value - (fSin * 0.3f);
                    float f24 = (sticker.f1265y.value - (0.3f * fSin2)) + (0.22f * fDp);
                    i2 = size3;
                    float fClamp013 = Utilities.clamp01((3.0f * fMax) + (f21 * 1.5f) + sticker.impact.value + sticker.curl.value);
                    float f25 = f17;
                    walletGiftStickers2.stickerBounds.set(Math.min(f22, f23) - size4, Math.min(fDp2, f24) - size4, Math.max(f22, f23) + size4, Math.max(fDp2, f24) + size4);
                    boolean zIntersects = RectF.intersects(walletGiftStickers2.stickerBounds, rectF);
                    float f26 = size4 * f13;
                    walletGiftStickers2.rect.set(f22 - f26, fDp2 - f26, f22 + f26, fDp2 + f26);
                    float fMax2 = Math.max(f18, Math.max(coverage(walletGiftStickers2.rect, rectF5), coverage(walletGiftStickers2.rect, rectF9)) * fClamp012);
                    float fMax3 = Math.max(f19, coverage(walletGiftStickers2.rect, rectF6) * fClamp012);
                    float fMax4 = Math.max(f20, coverage(walletGiftStickers2.rect, rectF10) * fClamp012);
                    float fMax5 = Math.max(f25, coverage(walletGiftStickers2.rect, rectF7) * fClamp012);
                    if (zIntersects) {
                        canvas2 = canvas;
                        iSaveLayer = canvas2.saveLayer(walletGiftStickers2.stickerBounds, null);
                    } else {
                        canvas2 = canvas;
                        iSaveLayer = -1;
                    }
                    canvas2.save();
                    canvas2.rotate(sticker.rotation.value, f23, f24);
                    rectF3 = rectF7;
                    rectF2 = rectF9;
                    arrayList = arrayList4;
                    rectF4 = rectF6;
                    i = 2;
                    drawShadow(canvas2, sticker, f23, f24, ((0.08f * fMax) + 0.97f + (sticker.impact.value * 0.07f)) * size4, Math.max(fMax, sticker.curl.value * 0.5f), sticker.impact.value, fClamp013 * fClamp012);
                    walletGiftStickers = this;
                    canvas.restore();
                    float f27 = f22 - size4;
                    float f28 = fDp2 - size4;
                    float f29 = f22 + size4;
                    float f30 = fDp2 + size4;
                    int iSaveLayer2 = canvas.saveLayer(f27, f28, f29, f30, null);
                    walletGiftStickers.paint.setAlpha((int) (255.0f * fClamp012));
                    float f31 = sticker.curl.value;
                    if (f31 > 0.004f) {
                        canvas3 = canvas;
                        f3 = fMax2;
                        i3 = iSaveLayer2;
                        walletGiftStickers.drawCurl(canvas3, sticker, bitmap, f22, fDp2, size4, f31, 1.0f);
                        walletGiftStickers = walletGiftStickers;
                    } else {
                        canvas3 = canvas;
                        f3 = fMax2;
                        i3 = iSaveLayer2;
                        canvas3.save();
                        canvas3.rotate(sticker.rotation.value, f22, fDp2);
                        float f32 = size4 / 2.0f;
                        walletGiftStickers.rect.set(f22 - f32, fDp2 - f32, f22 + f32, fDp2 + f32);
                        canvas3.drawBitmap(bitmap, (Rect) null, walletGiftStickers.rect, walletGiftStickers.paint);
                        canvas3.restore();
                    }
                    walletGiftStickers.paint.setAlpha(255);
                    Canvas canvas4 = canvas3;
                    canvas4.drawRect(f27, f28, f29, f30, walletGiftStickers.sheenPaint);
                    canvas4.restoreToCount(i3);
                    if (zIntersects) {
                        if (zIntersects) {
                            walletGiftStickers.card.getQrButtonPath(walletGiftStickers.path, walletGiftStickers.width, walletGiftStickers.height);
                            canvas4.drawPath(walletGiftStickers.path, walletGiftStickers.erasePaint);
                        }
                        canvas4.restoreToCount(iSaveLayer);
                    }
                    f20 = fMax4;
                    f17 = fMax5;
                    f18 = f3;
                    f19 = fMax3;
                }
            } else {
                rectF = rectF8;
                rectF2 = rectF9;
                rectF3 = rectF7;
                i2 = size3;
                arrayList = arrayList4;
                i = 2;
                rectF4 = rectF6;
                walletGiftStickers = walletGiftStickers2;
            }
            walletGiftStickers2 = walletGiftStickers;
            rectF6 = rectF4;
            i7 = i8;
            rectF7 = rectF3;
            rectF9 = rectF2;
            arrayListOrdered = arrayList;
            size3 = i2;
            i6 = i;
            rectF8 = rectF;
        }
        drawSelection(canvas);
        walletGiftStickers2.card.setStickerTextShadow(f18, f19, f20, f17);
    }

    private static float coverage(RectF rectF, RectF rectF2) {
        float fMin = Math.min(rectF.right, rectF2.right) - Math.max(rectF.left, rectF2.left);
        float fMin2 = Math.min(rectF.bottom, rectF2.bottom) - Math.max(rectF.top, rectF2.top);
        if (fMin <= 0.0f || fMin2 <= 0.0f || rectF2.width() <= 0.0f || rectF2.height() <= 0.0f) {
            return 0.0f;
        }
        return Utilities.clamp01(((fMin * fMin2) / (rectF2.width() * rectF2.height())) * 4.0f);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        float f;
        float f2;
        float f3;
        Canvas canvas2 = canvas;
        if (geometry()) {
            drawBin(canvas);
            this.paint.setShader(null);
            this.paint.setColorFilter(null);
            this.paint.setAlpha(255);
            ArrayList<Sticker> arrayListOrdered = ordered();
            int size = arrayListOrdered.size();
            int i = 0;
            while (i < size) {
                int i2 = i + 1;
                Sticker sticker = arrayListOrdered.get(i);
                float f4 = sticker.f1264x.value;
                float f5 = sticker.f1265y.value;
                float size2 = size() * sticker.scale.value * sticker.user.value;
                float f6 = sticker.lift.value;
                int i3 = sticker.state;
                if (i3 == 1 && sticker.tossed && f6 > 0.3f) {
                    float[] fArrRoot = root(f4 + sticker.arcX.value, f5 + sticker.arcY.value);
                    f = fArrRoot[0];
                    f2 = fArrRoot[1];
                    size2 *= (0.15f * f6) + 1.0f;
                } else if (i3 == 3 || i3 == 4 || i3 == 5) {
                    f = f4;
                    f2 = f5;
                } else {
                    i = i2;
                }
                float f7 = size2;
                Bitmap bitmap = sticker.bitmap();
                if (bitmap != null && f7 >= 1.0f) {
                    canvas2.save();
                    canvas2.rotate(sticker.rotation.value, f, f2);
                    float f8 = f2;
                    float f9 = f;
                    drawShadow(canvas2, sticker, f9, AndroidUtilities.dp(1.5f) + f2 + (AndroidUtilities.dp(5.0f) * f6), ((0.04f * f6) + 1.0f) * f7, f6, 0.0f, 1.0f);
                    canvas.restore();
                    float fClamp01 = Utilities.clamp01(sticker.border.value);
                    if (sticker.state == 4 && sticker.homeT > 0.6f && cell(sticker) != null) {
                        float fClamp012 = Utilities.clamp01((sticker.homeT - 0.6f) / 0.4f);
                        float f10 = (1.0f - ((fClamp012 * fClamp012) * (3.0f - (fClamp012 * 2.0f)))) * 0.45f;
                        float fClamp013 = (1.0f - (Utilities.clamp01(-sticker.curlY) * 0.6f)) * 0.55f;
                        if (fClamp01 < 1.0f) {
                            this.paint.setAlpha((int) ((1.0f - fClamp01) * 255.0f));
                            f3 = f7;
                            drawCurl(canvas, sticker, sticker.plain, f9, f8, f3, f10, fClamp013);
                            f9 = f9;
                        } else {
                            f3 = f7;
                        }
                        if (fClamp01 > 0.0f) {
                            this.paint.setAlpha((int) (fClamp01 * 255.0f));
                            canvas2 = canvas;
                            drawCurl(canvas2, sticker, bitmap, f9, f8, f3, f10, fClamp013);
                        } else {
                            canvas2 = canvas;
                        }
                        this.paint.setAlpha(255);
                    } else {
                        canvas2 = canvas;
                        canvas2.save();
                        canvas2.rotate(sticker.rotation.value, f9, f8);
                        float f11 = f7 / 2.0f;
                        this.rect.set(f9 - f11, f8 - f11, f9 + f11, f8 + f11);
                        if (fClamp01 < 1.0f) {
                            this.paint.setAlpha((int) ((1.0f - fClamp01) * 255.0f));
                            canvas2.drawBitmap(sticker.plain, (Rect) null, this.rect, this.paint);
                        }
                        if (fClamp01 > 0.0f) {
                            this.paint.setAlpha((int) (fClamp01 * 255.0f));
                            canvas2.drawBitmap(bitmap, (Rect) null, this.rect, this.paint);
                        }
                        this.paint.setAlpha(255);
                        canvas2.restore();
                    }
                }
                i = i2;
            }
        }
    }

    private void drawShadow(Canvas canvas, Sticker sticker, float f, float f2, float f3, float f4, float f5, float f6) {
        if (f6 <= 0.01f || sticker.shadow == null) {
            return;
        }
        float f7 = (((f3 * 176.0f) / 128.0f) * ((0.05f * f4) + 1.0f)) / 2.0f;
        this.rect.set(f - f7, f2 - f7, f + f7, f2 + f7);
        int alpha = this.paint.getAlpha();
        this.paint.setColor(-16044452);
        this.paint.setAlpha((int) (Utilities.clamp01((f4 * (-0.049999997f)) + 0.16f + (f5 * 0.12f)) * 255.0f * Utilities.clamp01(sticker.border.value) * f6));
        canvas.drawBitmap(sticker.shadow, (Rect) null, this.rect, this.paint);
        this.paint.setColor(-1);
        this.paint.setAlpha(alpha);
    }

    private void drawCurl(Canvas canvas, Sticker sticker, Bitmap bitmap, float f, float f2, float f3, float f4, float f5) {
        drawCurl(canvas, bitmap, f, f2, f3, f4, f5, sticker.rotation.value, sticker.curlX, sticker.curlY);
    }

    private void drawCurl(Canvas canvas, Bitmap bitmap, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        float f9;
        float f10 = f3;
        float f11 = ((-f10) / 2.0f) + (f10 * f4);
        float f12 = 0.3f * f10;
        float f13 = 3.2f * f10;
        float f14 = 0.72f * f5;
        float f15 = f12 * f14;
        double d = f6;
        float fCos = (float) Math.cos(Math.toRadians(d));
        float fSin = (float) Math.sin(Math.toRadians(d));
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i > 14) {
                canvas.drawBitmapMesh(bitmap, 14, 14, this.mesh, 0, this.meshColors, 0, this.paint);
                return;
            }
            int i3 = 0;
            for (int i4 = 14; i3 <= i4; i4 = 14) {
                float f16 = ((i3 / 14.0f) - 0.5f) * f10;
                float f17 = ((i / 14.0f) - 0.5f) * f10;
                float f18 = (f16 * fCos) - (f17 * fSin);
                float f19 = (f16 * fSin) + (f17 * fCos);
                float fSin2 = (f18 * f7) + (f19 * f8);
                float f20 = ((-f18) * f8) + (f19 * f7);
                float f21 = f11 - fSin2;
                float fCos2 = 0.0f;
                float fCos3 = 1.0f;
                if (f21 > 0.0f) {
                    float fMin = Math.min(f14, f21 / f12);
                    float fMax = Math.max(0.0f, f21 - f15);
                    f9 = f11;
                    double d2 = fMin;
                    fSin2 = (f9 - (((float) Math.sin(d2)) * f12)) - (((float) Math.cos(d2)) * fMax);
                    fCos2 = ((1.0f - ((float) Math.cos(d2))) * f12) + (fMax * ((float) Math.sin(d2)));
                    fCos3 = (((float) Math.cos(d2)) * 0.38f) + 0.62f;
                } else {
                    f9 = f11;
                }
                float f22 = f13 / (f13 - fCos2);
                float[] fArr = this.mesh;
                int i5 = i2 * 2;
                fArr[i5] = f + (((fSin2 * f7) - (f20 * f8)) * f22);
                fArr[i5 + 1] = (f2 + (((fSin2 * f8) + (f20 * f7)) * f22)) - (fCos2 * 0.15f);
                int i6 = (int) (255.0f * fCos3);
                this.meshColors[i2] = Color.rgb(i6, i6, i6);
                i3++;
                f10 = f3;
                i2++;
                f11 = f9;
            }
            i++;
            f10 = f3;
        }
    }

    private Sticker hintCandidate() {
        RectF rectFTile;
        WalletGiftCell walletGiftCellCell;
        Sticker sticker = this.hintSticker;
        if (sticker != null && sticker.state == 0 && (walletGiftCellCell = cell(sticker)) != null && fullyShown(walletGiftCellCell) && allowed(this.hintSticker)) {
            return this.hintSticker;
        }
        ArrayList<WalletGiftCell> arrayList = this.cells;
        int size = arrayList.size();
        float f = 0.0f;
        int i = 0;
        Sticker sticker2 = null;
        float f2 = 0.0f;
        while (i < size) {
            WalletGiftCell walletGiftCell = arrayList.get(i);
            i++;
            WalletGiftCell walletGiftCell2 = walletGiftCell;
            Sticker sticker3 = this.stickers.get(walletGiftCell2.nft.address);
            if (sticker3 != null && sticker3.state == 0 && allowed(sticker3) && walletGiftCell2.isAttachedToWindow() && fullyShown(walletGiftCell2) && (rectFTile = tile(sticker3)) != null) {
                if (sticker2 != null) {
                    float f3 = rectFTile.top;
                    if (f3 < f - 1.0f || (Math.abs(f3 - f) <= 1.0f && rectFTile.left < f2)) {
                    }
                }
                f = rectFTile.top;
                f2 = rectFTile.left;
                sticker2 = sticker3;
            }
        }
        return sticker2;
    }

    private boolean fullyShown(WalletGiftCell walletGiftCell) {
        return walletGiftCell.isShown() && walletGiftCell.getGlobalVisibleRect(this.visible) && this.visible.width() >= walletGiftCell.getWidth() - 1 && this.visible.height() >= walletGiftCell.getHeight() - 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean stepHint(float f) {
        Sticker stickerHintCandidate;
        if (this.readOnly) {
            return false;
        }
        WalletGiftCell walletGiftCell = null;
        if (this.hintOn && (stickerHintCandidate = hintCandidate()) != null && stickerHintCandidate != this.hintSticker) {
            this.hintSticker = stickerHintCandidate;
            this.hintFit = null;
            this.hintClock = 0.0f;
        }
        Sticker sticker = this.hintSticker;
        WalletGiftCell walletGiftCellCell = sticker == null ? null : cell(sticker);
        boolean z = this.hintOn && sticker != null && sticker.state == 0 && allowed(sticker) && walletGiftCellCell != null && fullyShown(walletGiftCellCell) && !this.menuOpen && !this.ownsTouch;
        if (sticker != null && (z || this.hintDragOn)) {
            sticker.bitmap();
            if (this.hintFit == null && sticker.art != null) {
                this.hintFit = fitting(sticker, this.width * 0.6f, this.height * 0.68f, true);
                sticker.perched = false;
            }
        }
        this.hintDemo.to(z ? 1.0f : 0.0f);
        this.outlineShow.to((!(z || this.hintDragOn) || this.hintFit == null || outlineOf(sticker) == null) ? 0.0f : 1.0f);
        boolean zStep = this.hintDemo.step(f) | this.outlineShow.step(f);
        float f2 = this.hintDemo.value;
        boolean z2 = f2 > 0.002f || this.outlineShow.value > 0.002f;
        if (z2) {
            this.hintClock += f;
        } else {
            this.hintClock = 0.0f;
            if (!this.hintOn && !this.hintDragOn) {
                this.hintFit = null;
            }
        }
        WalletGiftCell walletGiftCell2 = (sticker == null || sticker.state != 0 || sticker.plain == null || f2 <= 0.002f || !posed()) ? null : walletGiftCellCell;
        WalletGiftCell walletGiftCell3 = this.demoCell;
        if (walletGiftCell3 != null && walletGiftCell3 != walletGiftCell2) {
            walletGiftCell3.setHintDemo(false);
        }
        this.demoCell = walletGiftCell2;
        if (walletGiftCell2 != null) {
            walletGiftCell2.setHintDemo(true);
        }
        if (z && this.hintDemo.value > 0.5f) {
            walletGiftCell = walletGiftCellCell;
        }
        updateHintBubbles(walletGiftCell);
        return zStep || z2;
    }

    private float[] hintPose(float f) {
        this.hintPose[0] = (ease(f, 0.45f, 0.82f) - ease(f, 1.3f, 1.72f)) * 0.9f;
        this.hintPose[1] = (ease(f, 0.6f, 0.92f) - ease(f, 1.18f, 1.46f)) + (((float) Math.sin(((double) Utilities.clamp01((f - 0.92f) / 0.26f)) * 3.141592653589793d)) * 0.035f);
        this.hintPose[2] = ease(f, 1.58f, 1.7f) - ease(f, 1.7f, 1.92f);
        return this.hintPose;
    }

    private static float ease(float f, float f2, float f3) {
        float fClamp01 = Utilities.clamp01((f - f2) / (f3 - f2));
        return fClamp01 * fClamp01 * (3.0f - (fClamp01 * 2.0f));
    }

    private boolean posed() {
        float[] fArrHintPose = hintPose(this.hintClock % 2.0f);
        return Math.max(fArrHintPose[0], Math.max(fArrHintPose[1], fArrHintPose[2])) * Utilities.clamp01(this.hintDemo.value) >= 0.003f;
    }

    public void drawHintDemo(Canvas canvas, WalletGiftCell walletGiftCell) {
        float f;
        float f2;
        float f3;
        Sticker sticker = this.hintSticker;
        if (walletGiftCell != this.demoCell || sticker == null || sticker.plain == null) {
            return;
        }
        this.paint.setShader(null);
        this.paint.setColorFilter(null);
        float fClamp01 = Utilities.clamp01(this.hintDemo.value);
        float[] fArrHintPose = hintPose(this.hintClock % 2.0f);
        float f4 = fArrHintPose[0] * fClamp01;
        float f5 = fArrHintPose[1] * fClamp01;
        float f6 = fArrHintPose[2] * fClamp01;
        BackupImageView backupImageView = walletGiftCell.imageView;
        float left = walletGiftCell.card.getLeft() + backupImageView.getLeft() + (backupImageView.getWidth() / 2.0f);
        float top = walletGiftCell.card.getTop() + backupImageView.getTop() + (backupImageView.getHeight() / 2.0f);
        float width = ((backupImageView.getWidth() * 288) / 268.0f) * (((0.07f * f5) + 1.0f) - (f6 * 0.025f));
        if (f5 > 0.01f && sticker.shadow != null) {
            float f7 = ((176.0f * width) / 128.0f) / 2.0f;
            float fDp = (AndroidUtilities.dp(2.0f) * f5) + top;
            this.rect.set(left - f7, fDp - f7, left + f7, fDp + f7);
            this.paint.setColor(-16777216);
            this.paint.setAlpha((int) (60.0f * f5));
            canvas.drawBitmap(sticker.shadow, (Rect) null, this.rect, this.paint);
            this.paint.setColor(-1);
        }
        float fClamp012 = sticker.art == null ? 0.0f : Utilities.clamp01(1.4f * f5);
        float fDp2 = top - (AndroidUtilities.dp(5.0f) * f5);
        float f8 = f5 * (-5.0f);
        if (fClamp012 < 0.99f) {
            this.paint.setAlpha(255);
            f = width;
            f2 = left;
            f3 = f8;
            drawCurl(canvas, sticker.plain, f2, fDp2, f, f4, 1.0f, f3, 0.24f, 0.97f);
        } else {
            f = width;
            f2 = left;
            f3 = f8;
        }
        if (fClamp012 > 0.01f) {
            this.paint.setAlpha((int) (fClamp012 * 255.0f));
            drawCurl(canvas, sticker.art, f2, fDp2, f, f4, 1.0f, f3, 0.24f, 0.97f);
        }
        this.paint.setAlpha(255);
    }

    private void drawHintOutline(Canvas canvas) {
        float fClamp01 = Utilities.clamp01(this.outlineShow.value);
        if (fClamp01 < 0.01f || !hintOutline()) {
            return;
        }
        this.outlineFill.setAlpha((int) (22.0f * fClamp01));
        canvas.drawPath(this.outlinePath, this.outlineFill);
        float fDp = AndroidUtilities.dp(6.0f);
        float fDp2 = AndroidUtilities.dp(4.5f);
        float f = fDp + fDp2;
        this.outlinePaint.setPathEffect(new DashPathEffect(new float[]{fDp, fDp2}, f - ((this.hintClock * AndroidUtilities.dp(18.0f)) % f)));
        this.outlinePaint.setStrokeWidth(AndroidUtilities.dp(3.2f));
        this.outlinePaint.setColor(Color.argb((int) (40.0f * fClamp01), 0, 18, 48));
        canvas.drawPath(this.outlinePath, this.outlinePaint);
        this.outlinePaint.setStrokeWidth(AndroidUtilities.dp(1.8f));
        this.outlinePaint.setColor(Color.argb((int) (fClamp01 * 180.0f), 255, 255, 255));
        canvas.drawPath(this.outlinePath, this.outlinePaint);
    }

    private boolean hintOutline() {
        Path pathOutlineOf = this.hintFit == null ? null : outlineOf(this.hintSticker);
        if (pathOutlineOf == null) {
            return false;
        }
        float size = size() * this.hintFit[2];
        this.outlineMatrix.setScale(size, size);
        Matrix matrix = this.outlineMatrix;
        float[] fArr = this.hintFit;
        matrix.postTranslate(fArr[0], fArr[1]);
        pathOutlineOf.transform(this.outlineMatrix, this.outlinePath);
        return true;
    }

    private Path outlineOf(Sticker sticker) {
        Bitmap bitmap;
        int i;
        int i2;
        boolean z;
        int i3;
        if (sticker == null || sticker.outline != null || (bitmap = sticker.art) == null) {
            if (sticker == null) {
                return null;
            }
            return sticker.outline;
        }
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, 128, 128, true);
        int[] iArr = new int[16384];
        bitmapCreateScaledBitmap.getPixels(iArr, 0, 128, 0, 0, 128, 128);
        if (bitmapCreateScaledBitmap != sticker.art) {
            bitmapCreateScaledBitmap.recycle();
        }
        boolean[] zArr = new boolean[16384];
        int i4 = -1;
        for (int i5 = 0; i5 < 16384; i5++) {
            boolean z2 = (iArr[i5] >>> 24) >= 110;
            zArr[i5] = z2;
            if (i4 < 0 && z2) {
                i4 = i5;
            }
        }
        if (i4 < 0) {
            return null;
        }
        int i6 = 8;
        int[] iArr2 = {-1, -1, 0, 1, 1, 1, 0, -1};
        int[] iArr3 = {0, -1, -1, -1, 0, 1, 1, 1};
        int i7 = i4 % 128;
        int i8 = i4 / 128;
        int i9 = i7 - 1;
        float[] fArrCopyOf = new float[512];
        int i10 = i8;
        int i11 = i10;
        int i12 = i7;
        int i13 = 0;
        int i14 = 0;
        while (true) {
            if (i13 >= 20000) {
                i = 0;
                break;
            }
            int i15 = i14 * 2;
            i = 0;
            if (i15 + 2 > fArrCopyOf.length) {
                fArrCopyOf = Arrays.copyOf(fArrCopyOf, fArrCopyOf.length * 2);
            }
            fArrCopyOf[i15] = i12 + 0.5f;
            fArrCopyOf[i15 + 1] = i10 + 0.5f;
            i14++;
            int i16 = 0;
            while (i16 < i6 && (iArr2[i16] != i9 - i12 || iArr3[i16] != i11 - i10)) {
                i16++;
            }
            int i17 = 1;
            while (true) {
                if (i17 > i6) {
                    i2 = i6;
                    z = false;
                    break;
                }
                int i18 = (i16 + i17) % i6;
                i2 = i6;
                int i19 = i12 + iArr2[i18];
                int i20 = i10;
                i10 = i20 + iArr3[i18];
                if (i19 >= 0 && i10 >= 0) {
                    i3 = i16;
                    if (i19 < 128 && i10 < 128 && zArr[(i10 * 128) + i19]) {
                        int i21 = (i18 + 7) % 8;
                        int i22 = i12 + iArr2[i21];
                        i11 = i20 + iArr3[i21];
                        i9 = i22;
                        i12 = i19;
                        z = true;
                        break;
                    }
                } else {
                    i3 = i16;
                }
                i17++;
                i16 = i3;
                i6 = i2;
                i10 = i20;
            }
            if (!z || (i12 == i7 && i10 == i8)) {
                break;
            }
            i13++;
            i6 = i2;
        }
        int i23 = (i14 + 1) / 2;
        if (i23 < 3) {
            return null;
        }
        float[] fArr = new float[i23 * 2];
        for (int i24 = i; i24 < i14; i24 += 2) {
            float f = 0.0f;
            float f2 = 0.0f;
            for (int i25 = -3; i25 <= 3; i25++) {
                int i26 = ((((i24 + i25) % i14) + i14) % i14) * 2;
                f += fArrCopyOf[i26];
                f2 += fArrCopyOf[i26 + 1];
            }
            fArr[i24] = ((f / 7.0f) / 128.0f) - 0.5f;
            fArr[i24 + 1] = ((f2 / 7.0f) / 128.0f) - 0.5f;
        }
        Path path = new Path();
        path.moveTo((fArr[i] + fArr[2]) / 2.0f, (fArr[1] + fArr[3]) / 2.0f);
        int i27 = 1;
        while (i27 <= i23) {
            int i28 = i27 % i23;
            i27++;
            int i29 = i28 * 2;
            float f3 = fArr[i29];
            float f4 = fArr[i29 + 1];
            int i30 = (i27 % i23) * 2;
            path.quadTo(f3, f4, (fArr[i30] + f3) / 2.0f, (fArr[i30 + 1] + f4) / 2.0f);
        }
        path.close();
        sticker.outline = path;
        return path;
    }

    private HintView2 hintBubble(int i, boolean z) {
        HintView2 duration = new HintView2(getContext(), 3).setMultilineText(true).setInnerPadding(11.0f, 6.0f, z ? 15.0f : 11.0f, 7.0f).setCloseButton(z).setTextAlign(Layout.Alignment.ALIGN_NORMAL).setRounding(12.0f).setDuration(-1L);
        String string = LocaleController.getString(i);
        duration.setMaxWidthPx(HintView2.cutInFancyHalf(string, duration.getTextPaint()));
        duration.setText(string);
        duration.setPadding(AndroidUtilities.dp(16.0f), 0, AndroidUtilities.dp(16.0f), 0);
        duration.setTranslationZ(getTranslationZ() + 1.0f);
        ((ViewGroup) getParent()).addView(duration, LayoutHelper.createFrame(-1, 150, 48));
        return duration;
    }

    private static void pointHint(HintView2 hintView2, float f, float f2) {
        direct(hintView2, 3);
        hintView2.setJointPx(0.0f, f - hintView2.getPaddingLeft());
        hintView2.setTranslationY(f2 - hintView2.getLayoutParams().height);
        hintView2.invalidate();
    }

    private static void pointHintBelow(HintView2 hintView2, float f, float f2) {
        direct(hintView2, 1);
        hintView2.setJointPx(0.0f, f - hintView2.getPaddingLeft());
        hintView2.setTranslationY(f2);
        hintView2.invalidate();
    }

    private static void direct(HintView2 hintView2, int i) {
        if ((hintView2.getTag() instanceof Integer) && ((Integer) hintView2.getTag()).intValue() == i) {
            return;
        }
        hintView2.setTag(Integer.valueOf(i));
        hintView2.setDirection(i);
        hintView2.setJointPx(1.0f, 0.0f);
    }

    private void updateHintBubbles(WalletGiftCell walletGiftCell) {
        Host host;
        if (getParent() instanceof ViewGroup) {
            RectF rectFTile = walletGiftCell == null ? null : tile(this.hintSticker);
            if (rectFTile != null) {
                HintView2 hintView2 = this.hintView;
                if (hintView2 == null) {
                    this.hintView = hintBubble(C2807R.string.WalletGiftDragHint, true);
                } else if (this.hintWanted && !hintView2.shown()) {
                    dismissHint();
                    return;
                }
                pointHint(this.hintView, rectFTile.centerX(), rectFTile.top + AndroidUtilities.dp(4.0f));
                if (!this.hintView.shown()) {
                    this.hintView.show();
                }
                this.hintWanted = true;
            } else {
                this.hintWanted = false;
                HintView2 hintView22 = this.hintView;
                if (hintView22 != null && hintView22.shown()) {
                    this.hintView.hide();
                }
            }
            if (this.hintDragOn && this.outlineShow.value > 0.5f && (host = this.host) != null && host.isCardShown() && hintOutline()) {
                if (this.dragTipView == null) {
                    this.dragTipView = hintBubble(C2807R.string.WalletGiftDragHere, false);
                }
                this.outlinePath.computeBounds(this.outlineBounds, true);
                float[] fArrRoot = root(this.outlineBounds.centerX(), this.outlineBounds.top);
                if ((fArrRoot[1] - AndroidUtilities.dp(2.0f)) - AndroidUtilities.dp(56.0f) < AndroidUtilities.statusBarHeight + ActionBar.getCurrentActionBarHeight()) {
                    float[] fArrRoot2 = root(this.outlineBounds.centerX(), this.outlineBounds.bottom);
                    pointHintBelow(this.dragTipView, fArrRoot2[0], fArrRoot2[1] + AndroidUtilities.dp(2.0f));
                } else {
                    pointHint(this.dragTipView, fArrRoot[0], fArrRoot[1] - AndroidUtilities.dp(2.0f));
                }
                if (this.dragTipView.shown()) {
                    return;
                }
                this.dragTipView.show();
                return;
            }
            HintView2 hintView23 = this.dragTipView;
            if (hintView23 == null || !hintView23.shown()) {
                return;
            }
            this.dragTipView.hide();
        }
    }

    private void dismissHint() {
        this.hintWanted = false;
        this.hintDragOn = false;
        this.hintOn = false;
        HintView2 hintView2 = this.hintView;
        if (hintView2 != null && hintView2.shown()) {
            this.hintView.hide();
        }
        if (!this.readOnly) {
            MessagesController.getGlobalMainSettings().edit().putBoolean("walletcardstickerhint", true).apply();
        }
        wake();
    }

    private float selectionSize(Sticker sticker) {
        return size() * sticker.scale.value * sticker.user.value * ((sticker.press.value * 0.04f * (1.0f - (sticker.realSize.value * 0.9f))) + 1.0f);
    }

    private Sticker stickerAt(float f, float f2) {
        Sticker sticker = null;
        for (Sticker sticker2 : this.stickers.values()) {
            if (sticker2.state == 2 && Utilities.dist(f, f2, sticker2.f1264x.value, sticker2.f1265y.value) < selectionSize(sticker2) * 0.44f && (sticker == null || sticker2.f1266z > sticker.f1266z)) {
                sticker = sticker2;
            }
        }
        return sticker;
    }

    private boolean handleAt(float f, float f2) {
        Sticker sticker = this.selected;
        if (sticker != null && sticker.state == 2) {
            float fSelectionSize = (selectionSize(sticker) * 0.5f) + AndroidUtilities.dp(9.0f);
            double radians = Math.toRadians(sticker.rotation.value);
            for (int i = -1; i <= 1; i += 2) {
                float f3 = i * fSelectionSize;
                float[] fArrRoot = root(sticker.f1264x.value + sticker.arcX.value + (((float) Math.cos(radians)) * f3), sticker.f1265y.value + sticker.arcY.value + (f3 * ((float) Math.sin(radians))));
                if (Utilities.dist(f, f2, fArrRoot[0], fArrRoot[1]) < AndroidUtilities.dp(22.0f)) {
                    return true;
                }
            }
        }
        return false;
    }

    private void drawSelection(Canvas canvas) {
        Sticker sticker = this.selected;
        if (sticker == null || sticker.state != 2) {
            return;
        }
        float f = sticker.f1264x.value + sticker.arcX.value;
        float f2 = sticker.f1265y.value + sticker.arcY.value;
        float fSelectionSize = (selectionSize(sticker) * 0.5f) + AndroidUtilities.dp(9.0f);
        this.selectionDash.setColor(-1);
        Paint paint = this.selectionDash;
        Paint.Style style = Paint.Style.STROKE;
        paint.setStyle(style);
        this.selectionDash.setStrokeCap(Paint.Cap.ROUND);
        this.selectionDash.setStrokeWidth(AndroidUtilities.dp(2.0f));
        if (this.selectionDash.getPathEffect() == null) {
            this.selectionDash.setPathEffect(new DashPathEffect(new float[]{AndroidUtilities.dp(10.0f), AndroidUtilities.dp(10.0f)}, 0.5f));
        }
        this.selectionDash.setShadowLayer(AndroidUtilities.dp(0.75f), 0.0f, 0.0f, 1342177280);
        this.selectionStroke.setColor(-1);
        this.selectionStroke.setStyle(style);
        this.selectionStroke.setStrokeWidth(AndroidUtilities.dp(2.66f));
        this.selectionStroke.setShadowLayer(AndroidUtilities.dp(0.75f), 0.0f, 0.0f, 1342177280);
        this.selectionDot.setColor(-15033089);
        canvas.save();
        canvas.rotate(sticker.rotation.value, f, f2);
        float f3 = f - fSelectionSize;
        float f4 = f2 - fSelectionSize;
        float f5 = f + fSelectionSize;
        float f6 = f2 + fSelectionSize;
        canvas.drawArc(f3, f4, f5, f6, 0.0f, 180.0f, false, this.selectionDash);
        canvas.drawArc(f3, f4, f5, f6, 180.0f, 180.0f, false, this.selectionDash);
        for (int i = -1; i <= 1; i += 2) {
            float f7 = (i * fSelectionSize) + f;
            canvas.drawCircle(f7, f2, AndroidUtilities.dp(5.66f), this.selectionStroke);
            canvas.drawCircle(f7, f2, AndroidUtilities.dp(4.66f), this.selectionDot);
        }
        canvas.restore();
    }

    private float binOpenWidth() {
        this.text.setTextSize(AndroidUtilities.dp(15.0f));
        return AndroidUtilities.dp(72.0f) + this.text.measureText(LocaleController.getString(C2807R.string.Remove));
    }

    private float binIconX() {
        return ((getWidth() / 2.0f) - (binOpenWidth() / 2.0f)) + AndroidUtilities.dp(30.0f);
    }

    private void drawBin(Canvas canvas) {
        float f = this.bin.value;
        if (f < 0.01f) {
            return;
        }
        float fMax = Math.max(0.0f, Math.min(1.2f, this.binHover.value));
        float fClamp01 = Utilities.clamp01(fMax);
        float fDp = AndroidUtilities.dp(56.0f) + ((binOpenWidth() - AndroidUtilities.dp(56.0f)) * fMax);
        canvas.save();
        canvas.translate(getWidth() / 2.0f, binY() + ((1.0f - f) * AndroidUtilities.dp(90.0f)));
        float f2 = (f * 0.4f) + 0.6f;
        canvas.scale(f2, f2);
        this.paint.setColor(ColorUtils.blendARGB(Theme.getColor(Theme.key_windowBackgroundWhite, this.fragment.getResourceProvider()), -1750963, fClamp01));
        this.paint.setAlpha((int) (Utilities.clamp01(f) * 255.0f));
        float f3 = (-fDp) / 2.0f;
        float f4 = fDp / 2.0f;
        this.rect.set(f3, -AndroidUtilities.dp(28.0f), f4, AndroidUtilities.dp(28.0f));
        canvas.drawRoundRect(this.rect, AndroidUtilities.dp(28.0f), AndroidUtilities.dp(28.0f), this.paint);
        float fDp2 = (f3 + AndroidUtilities.dp(30.0f)) * fClamp01;
        float fDp3 = AndroidUtilities.dp(21.0f);
        this.trashDrawable.setCurrentFrame(Math.round(this.trashFrame.value), false);
        float f5 = fDp2 - fDp3;
        float f6 = -fDp3;
        float f7 = fDp2 + fDp3;
        this.trashDrawable.setBounds((int) f5, (int) f6, (int) f7, (int) fDp3);
        this.trashPaint.setColorFilter(new PorterDuffColorFilter(ColorUtils.blendARGB(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.fragment.getResourceProvider()), -1, fClamp01), PorterDuff.Mode.SRC_IN));
        this.trashPaint.setAlpha((int) (Utilities.clamp01(f) * 255.0f));
        int iSaveLayer = canvas.saveLayer(f5, f6, f7, fDp3, this.trashPaint);
        this.trashDrawable.draw(canvas);
        canvas.restoreToCount(iSaveLayer);
        if (fClamp01 > 0.02f) {
            this.text.setColor(-1);
            this.text.setAlpha((int) (Utilities.clamp01((fClamp01 - 0.4f) / 0.6f) * 255.0f));
            Paint.FontMetrics fontMetrics = this.text.getFontMetrics();
            canvas.save();
            canvas.clipRect(AndroidUtilities.dp(22.0f) + fDp2, -AndroidUtilities.dp(28.0f), f4 - AndroidUtilities.dp(16.0f), AndroidUtilities.dp(28.0f));
            canvas.drawText(LocaleController.getString(C2807R.string.Remove), fDp2 + AndroidUtilities.dp(22.0f), (-(fontMetrics.ascent + fontMetrics.descent)) / 2.0f, this.text);
            canvas.restore();
        }
        canvas.restore();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void drawPatterns(Canvas canvas) {
        WalletGiftStickers walletGiftStickers;
        Canvas canvas2;
        if (this.width <= 0.0f) {
            return;
        }
        boolean z = this.fadeReveal;
        float f = this.reveal;
        float fPow = z ? f * f * (3.0f - (f * 2.0f)) : 1.0f - ((float) Math.pow(1.0f - f, 4.0d));
        boolean z2 = this.fadeReveal;
        float f2 = (z2 || fPow >= 1.0f) ? -1.0f : this.width * 1.2f * fPow;
        Sticker sticker = this.oldStyle;
        if (sticker == null || fPow >= 1.0f) {
            walletGiftStickers = this;
            canvas2 = canvas;
        } else {
            walletGiftStickers = this;
            canvas2 = canvas;
            walletGiftStickers.drawPattern(canvas2, sticker, z2 ? 1.0f - fPow : 1.0f, f2, true);
        }
        Sticker sticker2 = walletGiftStickers.shownStyle;
        if (sticker2 != null) {
            walletGiftStickers.drawPattern(canvas2, sticker2, walletGiftStickers.fadeReveal ? fPow : 1.0f, f2, false);
        }
    }

    private void drawPattern(Canvas canvas, Sticker sticker, float f, float f2, boolean z) {
        float f3;
        int i;
        Bitmap bitmap = sticker.pattern.getBitmap();
        if (bitmap == null || sticker.backdrop == null) {
            return;
        }
        canvas.save();
        WalletCardGeometry.setFacePath(this.path, this.width, this.height);
        canvas.clipPath(this.path);
        this.card.getQrButtonPath(this.path, this.width, this.height);
        canvas.clipPath(this.path, Region.Op.DIFFERENCE);
        if (f2 >= 0.0f && !z) {
            this.path.rewind();
            this.path.addCircle(this.revealX * this.width, this.revealY * this.height, f2, Path.Direction.CW);
            canvas.clipPath(this.path);
        }
        this.paint.setColorFilter(new PorterDuffColorFilter(sticker.backdrop.pattern_color | (-16777216), PorterDuff.Mode.SRC_IN));
        float f4 = this.width / 336.0f;
        float f5 = this.height / 205.0f;
        int i2 = 16;
        int i3 = 0;
        int i4 = 16;
        while (i4 < 336) {
            int i5 = ((i3 % 2) * 18) + i2;
            while (i5 < 205) {
                float f6 = i4 * f4;
                float f7 = i5 * f5;
                float fSin = 12.0f * f4;
                float fClamp01 = Utilities.clamp01(Math.min(Math.min(i4, 336 - i4), Math.min(i5, 205 - i5)) / 48.0f);
                float fClamp012 = 0.15f * f * fClamp01 * fClamp01 * (3.0f - (fClamp01 * 2.0f));
                if (f2 >= 0.0f) {
                    f3 = f4;
                    float fClamp013 = Utilities.clamp01((f2 - Utilities.dist(f6, f7, this.revealX * this.width, this.revealY * this.height)) / AndroidUtilities.dp(120.0f));
                    if (z) {
                        fSin *= 1.0f - (0.8f * fClamp013);
                        fClamp012 *= 1.0f - Utilities.clamp01(fClamp013 * 1.6f);
                    } else {
                        i = i5;
                        fSin *= (((((float) Math.sin(((double) fClamp013) * 3.141592653589793d)) * 0.28f) + fClamp013) * 0.8f) + 0.2f;
                        fClamp012 *= Utilities.clamp01(fClamp013 * 1.6f);
                        this.paint.setAlpha((int) (fClamp012 * 255.0f));
                        float f8 = fSin / 2.0f;
                        this.rect.set(f6 - f8, f7 - f8, f6 + f8, f7 + f8);
                        canvas.drawBitmap(bitmap, (Rect) null, this.rect, this.paint);
                        i5 = i + 37;
                        f4 = f3;
                    }
                } else {
                    f3 = f4;
                }
                i = i5;
                this.paint.setAlpha((int) (fClamp012 * 255.0f));
                float f82 = fSin / 2.0f;
                this.rect.set(f6 - f82, f7 - f82, f6 + f82, f7 + f82);
                canvas.drawBitmap(bitmap, (Rect) null, this.rect, this.paint);
                i5 = i + 37;
                f4 = f3;
            }
            i4 += 33;
            i3++;
            i2 = 16;
        }
        this.paint.setColorFilter(null);
        this.paint.setAlpha(255);
        canvas.restore();
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        wake();
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnScrollChangedListener(this.hintScroll);
        getViewTreeObserver().addOnPreDrawListener(this.rotationSync);
        for (Sticker sticker : this.stickers.values()) {
            sticker.image.onAttachedToWindow();
            sticker.pattern.onAttachedToWindow();
        }
        wake();
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        getViewTreeObserver().removeOnScrollChangedListener(this.hintScroll);
        getViewTreeObserver().removeOnPreDrawListener(this.rotationSync);
        removeCallbacks(this.tick);
        removeCallbacks(this.longPress);
        for (Sticker sticker : this.stickers.values()) {
            sticker.image.onDetachedFromWindow();
            sticker.pattern.onDetachedFromWindow();
        }
        this.lastFrame = 0L;
        super.onDetachedFromWindow();
    }

    public void dispose() {
        AndroidUtilities.removeFromParent(this.hintView);
        AndroidUtilities.removeFromParent(this.dragTipView);
        this.dragTipView = null;
        this.hintView = null;
        save();
        AndroidUtilities.cancelRunOnUIThread(this.sendCard);
        this.selected = null;
        this.disposed = true;
        if (this.dirty) {
            sendCard();
        }
        this.trashDrawable.recycle(false);
        removeCallbacks(this.tick);
        removeCallbacks(this.longPress);
        removeCallbacks(this.pickUp);
        VelocityTracker velocityTracker = this.velocity;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.velocity = null;
        }
        for (Sticker sticker : this.stickers.values()) {
            sticker.image.onDetachedFromWindow();
            sticker.pattern.onDetachedFromWindow();
        }
        this.cells.clear();
    }
}
