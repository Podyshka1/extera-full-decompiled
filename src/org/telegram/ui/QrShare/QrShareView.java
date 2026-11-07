package org.telegram.ui.QrShare;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Build;
import android.os.SystemClock;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.LongSparseArray;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AnimationUtils;
import android.widget.OverScroller;
import androidx.core.graphics.ColorUtils;
import com.android.dx.io.Opcodes;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.GlassOutlineStyle;
import com.exteragram.messenger.utils.ui.QrGlassUiHelper;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.regex.Matcher;
import kotlin.jvm.internal.CharCompanionObject;
import kotlin.jvm.internal.LongCompanionObject;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_stars;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.BackDrawable;
import org.telegram.ui.Cells.SettingsSearchCell;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.AnimatedFileDrawable;
import org.telegram.ui.Components.AnimatedTextView;
import org.telegram.ui.Components.BatchParticlesDrawHelper;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.RLottieDrawable;
import org.telegram.ui.Components.RLottieNative;
import org.telegram.ui.Components.StaticLayoutEx;
import org.telegram.ui.QrShare.QrCodeLayer;
import org.telegram.ui.QrShare.QrGiftSymbol;
import org.telegram.ui.Stars.StarGiftPatterns;
import org.telegram.ui.Stars.StarsController;

/* JADX INFO: loaded from: classes7.dex */
public class QrShareView extends View {
    private static int[] DEEP_CENTER;
    private static int[] DEEP_EDGE;
    private static int[] DEEP_QR;
    private static QrCodeLayer.Code cachedFee;
    private static String cachedFeeFor;
    private static int shadowE;
    private static int shadowK;
    private static volatile byte[] shadowMask;
    private static int shadowN;
    private final float GIFT_HEADER;
    private final float TILE_R;
    private final float appearSalt;
    private boolean applyingTheme;
    private Bitmap backdrop;
    private float backdropCell;
    private int backdropCount;
    private final RectF backdropDst;
    private final Matrix backdropMatrix;
    private final Paint backdropPaint;
    private Bitmap backdropRing;
    private boolean backdropRingOn;
    private final Paint backdropRoundPaint;
    private BitmapShader backdropShader;
    private boolean backdropValid;
    private long barAt;
    private float barFrom;
    private boolean barHidden;
    private float barK;
    private String baseLink;
    private final int[] bdColors;
    private final int[] bdColorsDrawn;
    private final float[] bdGeom;
    private final float[] bdGeomDrawn;
    private final float[] bdWave;
    private final float[] bdWaveDrawn;
    private Bitmap bgLight;
    private final RectF bgLightDst;
    private final Paint bgLightPaint;
    private int[] bgLightPx;
    private Object bgNode;
    private int blurBuiltVersion;
    private Object blurNode;
    private final TextPaint bold;
    private float burnEdgeX;
    private float burnFrac;
    private TextPaint buyDarken;
    private final TextPaint buyKnock;
    private final String buyLabel;
    private final RectF buyRect;
    private final TextPaint buyText;
    private float bx;
    private float by;
    private float bz;
    private String caption;
    private boolean captionIsUsername;
    private final Paint cardPaint;
    private long cardPulseStart;
    private Bitmap cardShadow;
    private int cardShadowColor;
    private final Paint cardShadowPaint;
    private int[] cardShadowPx;
    private boolean cardShadowQueued;
    private long cascadeAt;
    private boolean cascadeClosing;
    private float cascadeDy;
    private boolean cascadeFired;
    private int cascadeFirstRow;
    private int cascadeLastRow;
    private int cascadeMaskN;
    private float cascadeMin;
    private boolean cascadeOvershoot;
    private final Paint cascadePaint;
    private final float[] cascadeRects;
    private float cascadeRowStagger;
    private float cascadeScale;
    private float cascadeT;
    private boolean caughtFling;
    private long chipBounceStart;
    private boolean chipBurstPending;
    private float chipEdgeAmp;
    private final Path chipEdgePath;
    private final float[] chipEdgeX;
    private final RectF chipFillRect;
    private final TextPaint chipPaint;
    private final RectF chipRect;
    private final LinearGradient chipSheen;
    private final Matrix chipSheenM;
    private boolean chipShown;
    private boolean chipSkipGlass;
    private float chipSweep;
    private final AnimatedTextView.AnimatedTextDrawable chipText;
    private Bitmap clockPlain;
    private final long clockStart;
    private Bitmap clockX;
    private long closeAt;
    private final RectF closeRect;
    private float contentA;
    private int cpN;
    private final float[] cpage;
    private final float[] cpay;
    private final boolean[] cpburn;
    private final byte[] cpkind;
    private final float[] cplife;
    private final float[] cprot;
    private final float[] cpsize;
    private final float[] cpsx;
    private final float[] cpsy;
    private final float[] cpvr;
    private final float[] cpvx;
    private final float[] cpvy;
    private final float[] cpwf;
    private final float[] cpwp;
    private final float[] cpx;
    private final float[] cpy;
    private final Path crescentA;
    private final Path crescentB;
    private final int currentAccount;
    private final Paint cutPaint;
    private final Delegate delegate;
    private long deselectAt;
    private TLRPC.Document dogDoc;
    private long dogFadeStart;
    private TLRPC.TL_inputStickerSetShortName dogInput;
    private boolean dogSetRequested;
    private float downScroll;
    private float downX;
    private float downY;
    private boolean dragging;
    private boolean drawnOnce;
    private float edgeAng;
    private Bitmap edgeBitmap;
    private Bitmap edgeFor;
    private float edgeOff;
    private final Paint edgeOutPaint;
    private float edgeW;
    private final HashMap<String, Drawable> emojiCache;
    private final RectF emojiDst;
    private final Paint emojiPaint;
    private final HashMap<String, String> emojiTextOf;
    private final Paint emojiTextPaint;
    private AnimatedEmojiDrawable emptyDog;
    private long emptyDogDocId;
    private RLottieDrawable emptyLottie;
    private final TextPaint emptySub;
    private boolean emptySubChat;
    private StaticLayout emptySubLayout;
    private int emptySubW;
    private final TextPaint emptyTitle;
    private final String emptyTitleText;
    private final ArrayList<Rect> exclusion;
    private String expA;
    private String expB;
    private String expC;
    private String expiryText;
    private final Matrix fadeMatrix;
    private final Paint fadePaint;
    private final LinearGradient fadeTop;
    private String feeA;
    private String feeB;
    private QrCodeLayer.Code feeCode;
    private float fieldCos;
    private float fieldSin;
    private float fieldT;
    private final Paint fill;
    private long fillEndsAt;
    private boolean firstSweepSet;
    private float frameK;
    private boolean free;
    private QrCodeLayer.Code freeCode;
    private String freeLink;
    private long freeUntil;
    private final int[] giftCol;
    private long giftOpenAt;
    private final HashMap<Long, TilePattern> giftPatterns;
    private final HashMap<Long, Long> giftSavedIds;
    private final HashMap<Long, AnimatedEmojiDrawable> giftThumbs;
    private final ArrayList<TL_stars.TL_starGiftUnique> gifts;
    private boolean giftsEndReached;
    private StarsController.GiftsList giftsList;
    private final NotificationCenter.NotificationCenterDelegate giftsObserver;
    private long giftsOwner;
    private boolean giftsPrewarmed;
    private final RectF glassBody;
    private boolean glassButton;
    private int glassFill;
    private final Matrix glassMatrix;
    private boolean glassSheet;
    private boolean glassSmall;
    private float glideFromX;
    private float glideFromY;
    private long glideStart;
    private float glideVX;
    private float glideVY;
    private boolean gliding;
    private float glintGate;
    private final Matrix glintM;
    private final Paint glintPaint;
    private final LinearGradient glintRampDown;
    private final LinearGradient glintRampUp;
    private final SensorEventListener gravityListener;
    private float gx;
    private float gy;
    private float gz;
    private boolean haveG;
    private int headerColor;
    private int headerColorFor;
    private final float[] hotX;
    private final float[] hotY;
    private final Drawable icClock;
    private final BackDrawable icClose;
    private final Drawable icCopy;
    private final Drawable icDownload;
    private final Drawable icGift;
    private final Drawable icPalette;
    private final Drawable icPremiumMain;
    private final Drawable icRetry;
    private final Drawable icScan;
    private final Drawable icShare;
    private final Drawable icSmile;
    private final Drawable icStar;
    private final Paint iconPaint;
    private float idleDt;
    private float idleK;
    private float idleResumeAt;
    private boolean immediateFrame;
    private boolean immediateOnOpen;
    private int insetBottom;
    private int insetTop;
    private boolean instantTheme;
    private final SparseIntArray islandFlat;
    private int islandFlatVersion;
    private final RectF islandRect;
    private final double[] lab1;
    private final double[] lab2;
    private final double[] labOut;
    private String lastChip;
    private int lastChipSec;
    private int lastColorIndex;
    private float lastFieldT;
    private float lastMenuH;
    private float lastMenuTarget;
    private float lastSheetTarget;
    private long lastStep;
    private Bitmap lastSymbol;
    private long lastTempChipSec;
    private long lastTiltNs;
    private float lastWallT;
    private float liftBuiltK;
    private int liftBuiltScene;
    private int liftBuiltVersion;
    private Object liftNode;
    private boolean liftThis;
    private float lightSweepStart;
    private long linkExpires;
    private final RLottieDrawable logo;
    private final Path logoClip;
    private Bitmap logoOptimal;
    private final Paint logoOptimalPaint;
    private final Runnable longPress;
    private boolean longPressed;
    private float menu;
    private float menuAnimFrom;
    private long menuAnimStart;
    private final RectF menuBounds;
    private float menuH;
    private float menuHVel;
    private final Path menuPath;
    private int menuPressed;
    private final RectF[] menuRows;
    private float menuTarget;
    private boolean menuTimerOn;
    private float menuW;
    private final Paint metalPaint;
    private PorterDuffColorFilter metalTintF;
    private int metalTintKey;
    private final RectF modelDst;
    private final Paint modelOutlinePaint;
    private final Paint modelPaint;
    private final RectF morphRect;
    private float motionT;
    private Drawable nameAt;
    private boolean nameBurst;
    private StaticLayout nameLayout;
    private int nameLayoutWidth;
    private final TextPaint nameTextPaint;
    private int nbCells;
    private float nbInkL;
    private float nbInkW;
    private StaticLayout nbLayout;
    private int nbN;
    private final boolean[] nbOut;
    private final LinearGradient nbWipe;
    private final Paint nbWipePaint;
    private final float[] nbage;
    private final float[] nbay;
    private final float[] nbcx;
    private final float[] nbcy;
    private final float[] nblife;
    private final float[] nbsize;
    private final boolean[] nbspark;
    private final float[] nbsx;
    private final float[] nbsy;
    private final float[] nbthr;
    private final float[] nbvx;
    private final float[] nbvy;
    private final float[] nbwf;
    private final float[] nbwp;
    private final float[] nbx;
    private final float[] nby;
    private final NodeSprings nodes;
    private Pattern oldPattern;
    private Scene oldScene;
    private Runnable onPicksChanged;
    private boolean openDone;
    private int openFrames;
    private float orbitX;
    private float orbitY;
    private final Paint ownRipplePaint;
    private final Path ownRipplePath;
    private float paidFrom;
    private float paidK;
    private long paidKAt;
    private float paidTarget;
    private float panBaseX;
    private float panBaseY;
    private boolean panMoved;
    private float panX;
    private float panY;
    private float panelAlpha;
    private int panelScene;
    private final RectF panelShape;
    private float panelTop;
    private boolean panelVisible;
    private boolean panning;
    private final Path path;
    private Pattern pattern;
    private long patternStart;
    private final ArrayList<String> picked;
    private float placeMin;
    private long pressDownAt;
    private int pressGift;
    private final float[] pressK;
    private final long[] pressStart;
    private int pressSwatch;
    private final long[] pressT;
    private int pressedRipple;
    private float prevMenu;
    private int prevSelGift;
    private final Runnable prewarmGiftsRunnable;
    private final long[] psKey;
    private final float[] psL1;
    private final float[] psL2;
    private float psLight;
    private final float[] psO1;
    private final float[] psO2;
    private float psOut;
    private final long[] psT;
    private final boolean[] psUsed;
    private final QrCodeLayer qr;
    private float qrBounceFrom;
    private long qrBounceStart;
    private final Random random;
    private float rawTiltX;
    private float rawTiltY;
    private String recordedFor;
    private final RectF rect;
    private final RectF rect2;
    private final RectF rect3;
    private final RectF rect4;
    private long releaseAt;
    private final float[] releaseK;
    private final long[] releaseT;
    private float restoreFreeW;
    private float reveal;
    private float revealCorner;
    private long revealOpenAt;
    private boolean revealOpening;
    private float revealX;
    private int rimBuiltVersion;
    private final Path rimGrown;
    private int rimLightColor;
    private final SweepGradient[] rimOuterSweeps;
    private final Matrix rimTmpM;
    private final Rect[] rippleBounds;
    private final ColorStateList rippleDark;
    private final boolean[] rippleHeld;
    private final ColorStateList rippleLight;
    private final boolean[] rippleLightSet;
    private final RippleDrawable[] ripples;
    private final RectF saveRect;
    private boolean scanHidden;
    private final String scanLabel;
    private final RectF scanRect;
    private final Paint scanText;
    private Scene scene;
    private VelocityTracker scrollVelocity;
    private final OverScroller scroller;
    private float selA;
    private int selGift;
    private float selTarget;
    private SensorManager sensors;
    private final Matrix shaderMatrix;
    private final RectF shadowDst;
    private final float[] shadowDx;
    private final float[] shadowDy;
    private final Rect shadowSrc;
    private final int[] shadowSx;
    private long shareAt;
    private float shareFrom;
    private boolean shareHidden;
    private float shareK;
    private final RectF shareRect;
    private boolean sharing;
    private long shatterAt;
    private boolean shatterPending;
    private final RectF shatterRect;
    private float sheet;
    private float sheetAnimFrom;
    private long sheetAnimStart;
    private long sheetHAt;
    private float sheetHCur;
    private float sheetLift;
    private final RectF sheetRect;
    private float sheetScroll;
    private float sheetTarget;
    private float shineC;
    private float shineCore;
    private float shineD;
    private float shineDEnv;
    private float shineEnv;
    private float shineK;
    private final Paint shinePaint;
    private float shineW;
    private boolean shining;
    private String shownToastAction;
    private int shownToastIcon;
    private String shownToastText;
    private float slotAlpha;
    private float slotCore;
    private float slotD;
    private float slotDEnv;
    private float slotLight;
    private float slotPulse;
    private float slotRot;
    private float slotScaleK;
    private float slotX;
    private float slotY;
    private final float[] spAng;
    private final float[] spH;
    private final long[] spKey;
    private int spN;
    private final float[] spSide;
    private final float[] spX;
    private final float[] spY;
    private final RectF sparkOval;
    private long springStart;
    private float springX;
    private float springY;
    private boolean springing;
    private final Path star;
    private final float[] startK;
    private float stretchBaseX;
    private float stretchBaseY;
    private float stretchX;
    private float stretchY;
    private float stripH;
    private final RectF[] stripRects;
    private final Paint stroke;
    private int swPrev;
    private float swPrevA;
    private int swSel;
    private float swSelA;
    private long swatchDownAt;
    private int[] swatchFor;
    private final RimPainter swatchRim;
    private LinearGradient[] swatchShaders;
    private long swatchUpAt;
    private float swatchUpFrom;
    private float sweepDX;
    private float sweepDY;
    private boolean sweepDone;
    private float sweepFrom;
    private float sweepPeriod;
    private long sweepStart;
    private float sweepTo;
    private final float[] symBX;
    private final float[] symBY;
    private final int[] symC;
    private final float[] symFitA;
    private final float[] symH5;
    private int symN;
    private final int[] symR;
    private int tab;
    private Drawable[] tabIcons;
    private float tabX;
    private final RectF tabsRect;
    private String tempChipText;
    private float tempFrom;
    private float tempK;
    private long tempKAt;
    private boolean tempLink;
    private float tempTarget;
    private final TextPaint text;
    private boolean themeEditable;
    private int tileFor;
    private float[] tileH5;
    private final Matrix tileM;
    private int tileN;
    private final LongSparseArray<RadialGradient> tileShaders;
    private float[] tileX;
    private float[] tileY;
    private float tiltX;
    private float tiltY;
    private final RectF timerArc;
    private boolean timerOn;
    private boolean timerOnly;
    private final Paint timerPaint;
    private boolean timerWaiting;
    private final SparseArray<PorterDuffColorFilter> tints;
    private float toast;
    private String toastAction;
    private boolean toastActionDown;
    private final RectF toastActionRect;
    private float toastBlurR;
    private RLottieDrawable toastCheck;
    private Object toastContent;
    private long toastDelayUntil;
    private boolean toastFastHide;
    private long toastFreezeAt;
    private boolean toastFrozen;
    private float toastFrozenCy;
    private int toastIcon;
    private final TextPaint toastMedium;
    private long toastOpenedAt;
    private long toastPhaseStart;
    private final RectF toastRect;
    private RLottieDrawable toastSave;
    private boolean toastShown;
    private RLottieDrawable toastStar;
    private String toastText;
    private float toastTextSize;
    private long toastUntil;
    private final Path tornPath;
    private float tsC;
    private float tsEnv;
    private boolean tsHave;
    private long tsLastNs;
    private float tsLastX;
    private float tsLastY;
    private long tsMovedAt;
    private float uiK;
    private final ViewConfiguration vc;
    private VelocityTracker velocity;
    private float wanderX;
    private float wanderY;
    private float wave;
    private int waveId;
    private final Path wavePath;
    private long waveStart;
    private float waveX;
    private float waveY;
    private long wobbleStart;
    private static final String[] EMOJI_SETS = {"❤️", "🔥", "🎉", "😎", "🚀", "💎", "💙", "✨", "⭐", "🍀", "🐸", "🦄", "🌈", "🍕", "👻", "🍒", "🌸", "⚡", "🏆", "🎁", "👀", "😍", "🥳", "🤩", "🐱", "🐶", "🦋", "🌙", "☀️", "🍓", "🍩", "🎈", "🎮", "🎧", "💜", "🌊"};
    private static final float DRIFT_ANGLE = (float) Math.atan2(-5.5d, -3.5d);
    static int DEFAULT_COLOR = Backdrops.indexOfName("Black");
    static int TUNED_COLOR = Backdrops.indexOfName("Neon Blue");
    private static final int MODEL_OUTLINE_PX = AndroidUtilities.dp(70.0f);
    private static final float SIN18 = (float) Math.sin(Math.toRadians(18.0d));
    private static final float COS18 = (float) Math.cos(Math.toRadians(18.0d));
    private static final CubicBezierInterpolator SHEET_EASE = new CubicBezierInterpolator(0.16d, 1.0d, 0.3d, 1.0d);
    private static final int[] ST_PRESSED = {R.attr.state_pressed, R.attr.state_enabled};
    private static final int[] ST_IDLE = {R.attr.state_enabled};

    public interface Delegate {
        void onBuyGifts();

        void onClose();

        void onEmojiPanel(boolean z, float f, float f2);

        void onEmojiPanelBounds(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8);

        void onFeeMode(int i);

        void onPremiumSubscribe();

        void onResetCode();

        void onSave();

        void onScan();

        void onSceneLight(boolean z);

        void onShare(String str);

        void onThemeChanged();
    }

    public static final class Pattern {
        Drawable[] emoji;
        long[] emojiIds;
        long[] emojiShownAt;
        boolean[] emojiText;
        Bitmap fallback;
        QrGiftSymbol.Loader giftLoader;
        Object giftParent;
        int ink;
        Bitmap inkBitmap;
        int inkBitmapColor;
        Bitmap inkBitmapFor;
        Bitmap inkFallback;
        int inkFallbackColor;
        Bitmap inkFallbackFor;
        PorterDuffColorFilter litTint;
        AnimatedEmojiDrawable model;
        TLRPC.Document modelDoc;
        long modelFrameAt;
        Bitmap modelOutline;
        long modelReadyAt;
        long readyAt;
        boolean released;
        AnimatedEmojiDrawable symbol;
        Bitmap symbolBitmap;
        TLRPC.Document symbolDoc;
        int symbolSeed;
        int type;
        boolean waveSwap;
        final Paint tintPaint = new Paint(2);
        int giftIndex = -1;
        int shineColor = -1;
        int litTintFor = -1;
        final Paint glowPaint = new Paint(2);
    }

    public static final class Scene {
        int center;
        int edge;
        int index;
        boolean light;
        int mid;
        int pattern;
        int qr;
        int shade;
        int type;
        boolean vertical;
    }

    private static float backOut(float f) {
        float f2 = f - 1.0f;
        return (2.70158f * f2 * f2 * f2) + 1.0f + (1.70158f * f2 * f2);
    }

    private static double clamp01(double d) {
        if (d < 0.0d) {
            return 0.0d;
        }
        if (d > 1.0d) {
            return 1.0d;
        }
        return d;
    }

    private static float closeCurve(float f) {
        float f2 = 0.0f;
        float f3 = f;
        float f4 = 1.0f;
        for (int i = 0; i < 12; i++) {
            f3 = (f2 + f4) / 2.0f;
            float f5 = 1.0f - f3;
            float f6 = 3.0f * f5;
            if ((f5 * f6 * f3 * 0.5f) + (f6 * f3 * f3 * 0.9f) + (f3 * f3 * f3) < f) {
                f2 = f3;
            } else {
                f4 = f3;
            }
        }
        return ((1.0f - f3) * 3.0f * f3 * f3 * 0.5f) + (f3 * f3 * f3);
    }

    public static float easeOutBack(float f, float f2) {
        float f3 = f - 1.0f;
        return ((f2 + 1.0f) * f3 * f3 * f3) + 1.0f + (f2 * f3 * f3);
    }

    private static float hash01(int i, int i2, int i3) {
        int i4 = (i * 374761393) + (i2 * 668265263) + (i3 * 1442695041);
        int i5 = (i4 ^ (i4 >>> 13)) * 1274126177;
        return ((i5 ^ (i5 >>> 16)) & 65535) / 65535.0f;
    }

    public static double latticeHash(int i, int i2) {
        long j = (((long) i2) * (-4417276706812531889L)) ^ (((long) i) * (-7046029254386353131L));
        long j2 = (j ^ (j >>> 31)) * (-4658895280553007687L);
        long j3 = (j2 ^ (j2 >>> 27)) * (-7723592293110705685L);
        return ((j3 ^ (j3 >>> 31)) >>> 11) / 9.007199254740992E15d;
    }

    private static long nodeKey(int i, int i2, int i3) {
        return (((((long) i2) & 1073741823) << 30) ^ (((long) i) << 60)) ^ (((long) i3) & 1073741823);
    }

    private static boolean ownRipple(int i) {
        return true;
    }

    private void releaseScene(Scene scene) {
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    public void setThemeEditable(boolean z) {
        if (this.themeEditable != z) {
            this.themeEditable = z;
            invalidate();
        }
    }

    public void setTimerOnly(boolean z) {
        this.timerOnly = z;
    }

    private static String[] menuTitles(boolean z) {
        return new String[]{LocaleController.getString(C2807R.string.QrNoPaidMenuReset), LocaleController.getString(z ? C2807R.string.QrNoPaidMenuDisableTimer : C2807R.string.QrNoPaidMenuEnableTimer), LocaleController.getString(C2807R.string.QrNoPaidMenuRestoreFee)};
    }

    private static String[] menuSubtitles(boolean z) {
        return new String[]{null, LocaleController.getString(z ? C2807R.string.QrNoPaidMenuDisableTimerInfo : C2807R.string.QrNoPaidMenuEnableTimerInfo), null};
    }

    private void startTimerWait() {
        this.timerWaiting = true;
        this.freeUntil = System.currentTimeMillis() + 60000;
    }

    private long timerLeft(long j) {
        if (this.timerWaiting) {
            return 60000L;
        }
        return Math.max(0L, this.freeUntil - j);
    }

    private void chipEmit(float f, float f2, float f3) {
        float fDp;
        float fNextFloat;
        float f4;
        float fDpf2;
        int i = this.cpN;
        if (i >= 320) {
            return;
        }
        this.cpN = i + 1;
        float fNextFloat2 = this.random.nextFloat();
        this.cpkind[i] = (byte) (fNextFloat2 < 0.65f ? 0 : fNextFloat2 < 0.9f ? 1 : 2);
        this.cpburn[i] = false;
        this.cpx[i] = f + ((this.random.nextFloat() - 0.5f) * AndroidUtilities.dp(4.0f));
        this.cpy[i] = f2;
        float[] fArr = this.cpsize;
        byte b2 = this.cpkind[i];
        if (b2 == 0) {
            fDp = AndroidUtilities.dp(1.4f);
            fNextFloat = this.random.nextFloat();
            f4 = 1.6f;
        } else {
            if (b2 == 1) {
                fDpf2 = AndroidUtilities.dpf2(0.7f) + (this.random.nextFloat() * AndroidUtilities.dpf2(0.7f));
                fArr[i] = fDpf2;
                this.cpvx[i] = (-AndroidUtilities.dp(30.0f)) + (this.random.nextFloat() * AndroidUtilities.dp(80.0f));
                this.cpvy[i] = (-AndroidUtilities.dp(50.0f)) - (this.random.nextFloat() * AndroidUtilities.dp(100.0f));
                this.cplife[i] = Math.max(0.05f, Math.min((this.random.nextFloat() * 0.2f) + 0.3f, f3));
                this.cpage[i] = 0.0f;
                this.cprot[i] = this.random.nextFloat() * 90.0f;
                this.cpvr[i] = (this.random.nextFloat() - 0.5f) * 1080.0f;
            }
            fDp = AndroidUtilities.dp(3.0f);
            fNextFloat = this.random.nextFloat();
            f4 = 1.5f;
        }
        fDpf2 = fDp + (fNextFloat * AndroidUtilities.dp(f4));
        fArr[i] = fDpf2;
        this.cpvx[i] = (-AndroidUtilities.dp(30.0f)) + (this.random.nextFloat() * AndroidUtilities.dp(80.0f));
        this.cpvy[i] = (-AndroidUtilities.dp(50.0f)) - (this.random.nextFloat() * AndroidUtilities.dp(100.0f));
        this.cplife[i] = Math.max(0.05f, Math.min((this.random.nextFloat() * 0.2f) + 0.3f, f3));
        this.cpage[i] = 0.0f;
        this.cprot[i] = this.random.nextFloat() * 90.0f;
        this.cpvr[i] = (this.random.nextFloat() - 0.5f) * 1080.0f;
    }

    private void shatterBurst(RectF rectF, RectF rectF2) {
        float f;
        float f2;
        float f3;
        char c2;
        float f4;
        float fDpf2;
        float fNextFloat;
        float fDpf22;
        RectF rectF3 = rectF;
        float fDp = AndroidUtilities.dp(3.0f);
        float fCenterX = rectF2.centerX();
        float fCenterY = rectF2.centerY();
        int iMax = Math.max(1, (int) (rectF3.width() / fDp));
        int iMax2 = Math.max(1, (int) (rectF3.height() / fDp));
        char c3 = CharCompanionObject.MIN_VALUE;
        float fMin = Math.min(1.0f, 260.0f / (iMax * iMax2));
        int i = 0;
        while (i < iMax2) {
            int i2 = 0;
            while (i2 < iMax) {
                if (this.random.nextFloat() > fMin || this.cpN >= 320) {
                    f = fDp;
                    f2 = fCenterX;
                    f3 = fCenterY;
                    c2 = c3;
                    f4 = fMin;
                } else {
                    float fNextFloat2 = rectF3.left + ((i2 + 0.5f + ((this.random.nextFloat() - 0.5f) * 0.8f)) * fDp);
                    float fNextFloat3 = rectF3.top + ((i + 0.5f + ((this.random.nextFloat() - 0.5f) * 0.8f)) * fDp);
                    float fHeight = rectF2.height() / 2.0f;
                    if (fNextFloat2 < rectF2.left + fHeight) {
                        f4 = fMin;
                        f = fDp;
                        if (Math.hypot(fNextFloat2 - (r15 + fHeight), fNextFloat3 - fCenterY) > fHeight) {
                            f2 = fCenterX;
                            f3 = fCenterY;
                            c2 = CharCompanionObject.MIN_VALUE;
                        }
                    } else {
                        f = fDp;
                        f4 = fMin;
                    }
                    float f5 = fNextFloat2 - fCenterX;
                    float f6 = fNextFloat3 - fCenterY;
                    f2 = fCenterX;
                    f3 = fCenterY;
                    float fMax = Math.max(1.0f, (float) Math.hypot(f5, f6));
                    float f7 = f5 / fMax;
                    float f8 = f6 / fMax;
                    float fDp2 = AndroidUtilities.dp(60.0f) + (this.random.nextFloat() * AndroidUtilities.dp(140.0f));
                    boolean z = this.random.nextFloat() < 0.15f;
                    int i3 = this.cpN;
                    this.cpN = i3 + 1;
                    this.cpkind[i3] = (byte) (z ? 4 : 3);
                    this.cpburn[i3] = false;
                    this.cpx[i3] = fNextFloat2;
                    this.cpy[i3] = fNextFloat3;
                    this.cpsx[i3] = fNextFloat2;
                    this.cpsy[i3] = fNextFloat3;
                    this.cpvx[i3] = (f7 * fDp2) + ((this.random.nextFloat() - 0.5f) * AndroidUtilities.dp(60.0f));
                    this.cpvy[i3] = ((f8 * fDp2) - (AndroidUtilities.dp(40.0f) + (this.random.nextFloat() * AndroidUtilities.dp(80.0f)))) + ((this.random.nextFloat() - 0.5f) * AndroidUtilities.dp(60.0f));
                    float[] fArr = this.cpsize;
                    if (z) {
                        fDpf2 = AndroidUtilities.dpf2(1.4f);
                        fNextFloat = this.random.nextFloat();
                        fDpf22 = AndroidUtilities.dpf2(0.8f);
                    } else {
                        fDpf2 = AndroidUtilities.dpf2(1.0f);
                        fNextFloat = this.random.nextFloat();
                        fDpf22 = AndroidUtilities.dpf2(1.2f);
                    }
                    fArr[i3] = fDpf2 + (fNextFloat * fDpf22);
                    this.cplife[i3] = (this.random.nextFloat() * 0.3f) + 0.35f;
                    this.cpage[i3] = 0.0f;
                    float[] fArr2 = this.cprot;
                    c2 = CharCompanionObject.MIN_VALUE;
                    fArr2[i3] = 1.0f;
                    this.cpvr[i3] = 0.0f;
                    this.cpay[i3] = 0.0f;
                    this.cpwf[i3] = 0.0f;
                    this.cpwp[i3] = 0.0f;
                }
                i2++;
                rectF3 = rectF;
                fCenterX = f2;
                fCenterY = f3;
                c3 = c2;
                fMin = f4;
                fDp = f;
            }
            i++;
            rectF3 = rectF;
        }
        invalidate();
    }

    private void chipEmitBurn(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, boolean z, boolean z2) {
        int i = this.cpN;
        if (i >= 320) {
            return;
        }
        this.cpN = i + 1;
        this.cpkind[i] = z ? (byte) 1 : (byte) 0;
        this.cpburn[i] = true;
        this.cpx[i] = f;
        this.cpy[i] = f2;
        this.cpvx[i] = f3;
        this.cpvy[i] = f4;
        this.cpsx[i] = f;
        this.cpsy[i] = f2;
        this.cpay[i] = f5;
        this.cpwf[i] = z2 ? (this.random.nextFloat() * 3.0f) + 4.0f : 0.0f;
        this.cpwp[i] = this.random.nextFloat() * 6.2832f;
        this.cpsize[i] = f6;
        this.cplife[i] = f7;
        this.cpage[i] = 0.0f;
        this.cprot[i] = f8;
        this.cpvr[i] = 0.0f;
    }

    public void showSavedToast() {
        showToast(C2807R.drawable.msg_download, LocaleController.getString(C2807R.string.QrSavedToGallery));
    }

    public void showPremiumEmojiToast() {
        lambda$showToast$9(0, LocaleController.getString(C2807R.string.QrPremiumEmojiToast), LocaleController.getString(C2807R.string.QrPremiumSubscribe));
        haptic();
    }

    public QrShareView(Context context, int i, String str, String str2, boolean z, Delegate delegate) {
        super(context);
        this.themeEditable = true;
        this.wave = 1.0f;
        this.clockStart = AnimationUtils.currentAnimationTimeMillis();
        this.shaderMatrix = new Matrix();
        this.pattern = new Pattern();
        this.picked = new ArrayList<>();
        this.emojiCache = new HashMap<>();
        Paint paint = new Paint(3);
        this.shinePaint = paint;
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        paint.setColorFilter(new PorterDuffColorFilter(-1, mode));
        this.lastFieldT = -1.0f;
        this.qr = new QrCodeLayer();
        this.timerOn = true;
        this.menuTimerOn = true;
        this.sweepTo = 0.0f;
        this.burnFrac = 1.0f;
        this.chipPaint = new TextPaint(1);
        this.feeA = _UrlKt.FRAGMENT_ENCODE_SET;
        this.feeB = _UrlKt.FRAGMENT_ENCODE_SET;
        this.cpx = new float[320];
        this.cpy = new float[320];
        this.cpvx = new float[320];
        this.cpvy = new float[320];
        this.cplife = new float[320];
        this.cpage = new float[320];
        this.cpsize = new float[320];
        this.cprot = new float[320];
        this.cpvr = new float[320];
        this.cpsx = new float[320];
        this.cpsy = new float[320];
        this.cpay = new float[320];
        this.cpwf = new float[320];
        this.cpwp = new float[320];
        this.cpkind = new byte[320];
        this.cpburn = new boolean[320];
        this.random = new Random();
        this.tab = 0;
        this.toastActionRect = new RectF();
        this.gifts = new ArrayList<>();
        this.giftSavedIds = new HashMap<>();
        this.fill = new Paint(1);
        this.stroke = new Paint(1);
        this.cardPaint = new Paint(1);
        this.text = new TextPaint(1);
        this.bold = new TextPaint(1);
        this.path = new Path();
        this.star = new Path();
        this.rect = new RectF();
        this.blurBuiltVersion = -1;
        this.scanText = new Paint(1);
        this.scanLabel = LocaleController.getString(C2807R.string.QrScanQr);
        this.cutPaint = new Paint(1);
        this.headerColorFor = 1;
        this.emojiTextOf = new HashMap<>();
        this.giftCol = new int[3];
        this.giftsObserver = new NotificationCenter.NotificationCenterDelegate() { // from class: org.telegram.ui.QrShare.QrShareView$$ExternalSyntheticLambda1
            @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
            public final void didReceivedNotification(int i2, int i3, Object[] objArr) {
                this.f$0.lambda$new$7(i2, i3, objArr);
            }
        };
        this.prewarmGiftsRunnable = new Runnable() { // from class: org.telegram.ui.QrShare.QrShareView$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.prewarmGiftDrawables();
            }
        };
        this.qrBounceFrom = 1.0f;
        this.shatterRect = new RectF();
        TextPaint textPaint = new TextPaint(1);
        this.toastMedium = textPaint;
        textPaint.setTypeface(AndroidUtilities.bold());
        this.lastChipSec = -1;
        this.tempTarget = -1.0f;
        this.paidTarget = -1.0f;
        this.lastTempChipSec = -1L;
        this.tempChipText = _UrlKt.FRAGMENT_ENCODE_SET;
        this.sheetHCur = -1.0f;
        this.logoOptimalPaint = new Paint(3);
        this.frameK = 1.0f;
        this.backdropPaint = new Paint(2);
        this.backdropRoundPaint = new Paint(3);
        this.backdropMatrix = new Matrix();
        this.backdropDst = new RectF();
        this.bdGeom = new float[14];
        this.bdGeomDrawn = new float[14];
        this.bdColors = new int[7];
        this.bdColorsDrawn = new int[7];
        this.bdWave = new float[15];
        this.bdWaveDrawn = new float[15];
        this.revealCorner = -1.0f;
        this.lab1 = new double[3];
        this.lab2 = new double[3];
        this.labOut = new double[3];
        this.exclusion = new ArrayList<>();
        this.insetTop = AndroidUtilities.statusBarHeight;
        this.insetBottom = AndroidUtilities.navigationBarHeight;
        this.bgLightPaint = new Paint(2);
        this.bgLightDst = new RectF();
        this.sweepPeriod = 5.0f;
        this.sweepDX = -0.7071f;
        this.sweepDY = 0.7071f;
        this.shineK = 1.0f;
        this.nodes = new NodeSprings();
        this.idleK = 1.0f;
        this.lastWallT = -1.0f;
        this.wavePath = new Path();
        this.edgeW = -1.0f;
        this.edgeOff = -1.0f;
        this.edgeAng = -1.0f;
        Paint paint2 = new Paint(2);
        this.edgeOutPaint = paint2;
        PorterDuff.Mode mode2 = PorterDuff.Mode.DST_OUT;
        paint2.setXfermode(new PorterDuffXfermode(mode2));
        this.symR = new int[1024];
        this.symC = new int[1024];
        this.symBX = new float[1024];
        this.symBY = new float[1024];
        this.symFitA = new float[1024];
        this.symH5 = new float[1024];
        this.tileFor = -1;
        this.metalTintKey = -1;
        this.psKey = new long[2048];
        this.psO1 = new float[2048];
        this.psO2 = new float[2048];
        this.psL1 = new float[2048];
        this.psL2 = new float[2048];
        this.psT = new long[2048];
        this.psUsed = new boolean[2048];
        Paint paint3 = new Paint(2);
        this.metalPaint = paint3;
        paint3.setColorFilter(new PorterDuffColorFilter(-1, mode));
        this.appearSalt = (float) Math.random();
        this.modelPaint = new Paint(2);
        this.modelOutlinePaint = new Paint(2);
        this.modelDst = new RectF();
        this.spX = new float[96];
        this.spY = new float[96];
        this.spSide = new float[96];
        this.spAng = new float[96];
        this.spH = new float[96];
        this.spKey = new long[96];
        this.emojiPaint = new Paint(2);
        Paint paint4 = new Paint(2);
        this.emojiTextPaint = paint4;
        paint4.setColorFilter(new PorterDuffColorFilter(-1, mode));
        this.emojiDst = new RectF();
        this.reveal = 1.0f;
        this.uiK = 1.0f;
        this.revealOpening = true;
        this.revealX = 1.0f;
        this.cardShadowPaint = new Paint(2);
        this.shadowSrc = new Rect();
        this.shadowDst = new RectF();
        this.shadowSx = new int[4];
        this.shadowDx = new float[4];
        this.shadowDy = new float[4];
        this.nbcx = new float[240];
        this.nbcy = new float[240];
        this.nbthr = new float[240];
        this.nbOut = new boolean[240];
        this.nbx = new float[240];
        this.nby = new float[240];
        this.nbvx = new float[240];
        this.nbvy = new float[240];
        this.nbay = new float[240];
        this.nbsx = new float[240];
        this.nbsy = new float[240];
        this.nbsize = new float[240];
        this.nblife = new float[240];
        this.nbage = new float[240];
        this.nbwf = new float[240];
        this.nbwp = new float[240];
        this.nbspark = new boolean[240];
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        LinearGradient linearGradient = new LinearGradient(0.0f, 0.0f, 1.0f, 0.0f, -16777216, 0, tileMode);
        this.nbWipe = linearGradient;
        Paint paint5 = new Paint(1);
        this.nbWipePaint = paint5;
        paint5.setShader(linearGradient);
        paint5.setXfermode(new PorterDuffXfermode(mode2));
        this.logoClip = new Path();
        this.nameTextPaint = new TextPaint(65);
        this.chipRect = new RectF();
        this.chipFillRect = new RectF();
        this.chipEdgePath = new Path();
        this.chipEdgeX = new float[7];
        this.tileM = new Matrix();
        this.chipSheenM = new Matrix();
        this.chipSheen = new LinearGradient(0.0f, 0.0f, 1.0f, 0.0f, new int[]{16777215, -1, 16777215}, new float[]{0.0f, 0.88f, 1.0f}, tileMode);
        this.tileShaders = new LongSparseArray<>();
        this.tornPath = new Path();
        this.sparkOval = new RectF();
        this.rect2 = new RectF();
        this.glassBody = new RectF();
        this.glintRampUp = new LinearGradient(0.0f, 0.0f, 1.0f, 0.0f, 16777215, -1, tileMode);
        this.glintRampDown = new LinearGradient(0.0f, 0.0f, 1.0f, 0.0f, -1, 16777215, tileMode);
        this.glintM = new Matrix();
        this.glintPaint = new Paint();
        this.cascadeMin = 0.85f;
        this.cascadeRects = new float[320];
        Paint paint6 = new Paint();
        this.cascadePaint = paint6;
        PorterDuff.Mode mode3 = PorterDuff.Mode.DST_IN;
        paint6.setXfermode(new PorterDuffXfermode(mode3));
        this.cascadeScale = 1.0f;
        this.cascadeOvershoot = true;
        this.liftBuiltK = -1.0f;
        this.liftBuiltVersion = -1;
        this.islandFlat = new SparseIntArray();
        this.islandFlatVersion = -1;
        this.rimBuiltVersion = -1;
        this.rimOuterSweeps = new SweepGradient[4];
        this.gz = 9.81f;
        this.bz = 9.81f;
        this.gravityListener = new SensorEventListener() { // from class: org.telegram.ui.QrShare.QrShareView.1
            @Override // android.hardware.SensorEventListener
            public void onAccuracyChanged(Sensor sensor, int i2) {
            }

            @Override // android.hardware.SensorEventListener
            public void onSensorChanged(SensorEvent sensorEvent) {
                QrShareView.this.gx = sensorEvent.values[0];
                QrShareView.this.gy = sensorEvent.values[1];
                QrShareView.this.gz = sensorEvent.values[2];
                if (QrShareView.this.haveG) {
                    return;
                }
                QrShareView qrShareView = QrShareView.this;
                qrShareView.bx = qrShareView.gx;
                QrShareView qrShareView2 = QrShareView.this;
                qrShareView2.by = qrShareView2.gy;
                QrShareView qrShareView3 = QrShareView.this;
                qrShareView3.bz = qrShareView3.gz;
                QrShareView.this.haveG = true;
            }
        };
        this.rimTmpM = new Matrix();
        this.rimGrown = new Path();
        this.rect4 = new RectF();
        this.crescentA = new Path();
        this.crescentB = new Path();
        this.rimLightColor = -1;
        this.rect3 = new RectF();
        this.glassMatrix = new Matrix();
        this.tints = new SparseArray<>();
        this.closeRect = new RectF();
        this.shareRect = new RectF();
        this.saveRect = new RectF();
        this.scanRect = new RectF();
        this.tabsRect = new RectF();
        this.barK = 1.0f;
        this.barFrom = 1.0f;
        this.shareK = 1.0f;
        this.shareFrom = 1.0f;
        this.sheetRect = new RectF();
        this.islandRect = new RectF();
        this.GIFT_HEADER = 0.0f;
        LinearGradient linearGradient2 = new LinearGradient(0.0f, 0.0f, 0.0f, 1.0f, new int[]{0, 805306368, -1627389952, -285212672, -16777216}, new float[]{0.0f, 0.25f, 0.5f, 0.75f, 1.0f}, tileMode);
        this.fadeTop = linearGradient2;
        Paint paint7 = new Paint();
        this.fadePaint = paint7;
        paint7.setXfermode(new PorterDuffXfermode(mode3));
        paint7.setShader(linearGradient2);
        this.fadeMatrix = new Matrix();
        this.stripRects = new RectF[]{new RectF(), new RectF(), new RectF(), new RectF(), new RectF(), new RectF()};
        this.panelTop = -1.0f;
        this.panelAlpha = -1.0f;
        this.panelShape = new RectF();
        this.giftThumbs = new HashMap<>();
        this.giftPatterns = new HashMap<>();
        this.selGift = -1;
        this.lastColorIndex = DEFAULT_COLOR;
        this.pressGift = -1;
        this.prevSelGift = -1;
        this.TILE_R = AndroidUtilities.dp(20.17f);
        this.pressSwatch = -1;
        this.swatchUpAt = -1L;
        this.swatchUpFrom = 1.0f;
        this.buyRect = new RectF();
        this.emptyTitle = new TextPaint(1);
        this.emptySub = new TextPaint(1);
        this.buyText = new TextPaint(1);
        TextPaint textPaint2 = new TextPaint(129);
        this.buyKnock = textPaint2;
        textPaint2.setXfermode(new PorterDuffXfermode(mode2));
        this.emptyTitleText = LocaleController.getString(C2807R.string.QrNoGiftsTitle);
        this.buyLabel = LocaleController.getString(C2807R.string.QrBrowseGifts);
        int[] iArr = Backdrops.CENTER;
        this.swatchShaders = new LinearGradient[iArr.length];
        this.swatchFor = new int[iArr.length];
        this.swatchRim = new RimPainter();
        this.swSel = -100;
        this.swPrev = -100;
        this.menuRows = new RectF[]{new RectF(), new RectF(), new RectF()};
        this.menuPressed = -1;
        this.menuPath = new Path();
        this.morphRect = new RectF();
        this.menuBounds = new RectF();
        this.toastRect = new RectF();
        this.iconPaint = new Paint(3);
        this.timerPaint = new Paint(1);
        this.timerArc = new RectF();
        this.toastBlurR = -1.0f;
        this.scroller = new OverScroller(getContext());
        this.vc = ViewConfiguration.get(getContext());
        this.longPress = new Runnable() { // from class: org.telegram.ui.QrShare.QrShareView$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$13();
            }
        };
        this.ripples = new RippleDrawable[12];
        this.rippleDark = ColorStateList.valueOf(738197503);
        this.rippleLight = ColorStateList.valueOf(335544320);
        this.rippleLightSet = new boolean[12];
        this.pressedRipple = -1;
        this.ownRipplePaint = new Paint(1);
        this.ownRipplePath = new Path();
        this.hotX = new float[12];
        this.hotY = new float[12];
        this.pressStart = new long[12];
        this.releaseT = new long[12];
        this.releaseK = new float[12];
        this.startK = new float[12];
        this.pressK = new float[12];
        this.pressT = new long[12];
        this.rippleHeld = new boolean[12];
        this.rippleBounds = new Rect[12];
        for (int i2 = 0; i2 < 12; i2++) {
            this.rippleBounds[i2] = new Rect();
        }
        this.currentAccount = i;
        this.baseLink = str;
        this.caption = str2;
        this.captionIsUsername = z;
        this.delegate = delegate;
        this.icShare = m1090d(C2807R.drawable.msg_share);
        this.icDownload = m1090d(C2807R.drawable.msg_download);
        this.icScan = m1090d(C2807R.drawable.msg_qr_scan);
        this.scanText.setTypeface(AndroidUtilities.bold());
        Drawable drawableM1090d = m1090d(C2807R.drawable.msg_colors);
        this.icPalette = drawableM1090d;
        Drawable drawableM1090d2 = m1090d(C2807R.drawable.input_smile);
        this.icSmile = drawableM1090d2;
        Drawable drawableM1090d3 = m1090d(C2807R.drawable.menu_gift);
        this.icGift = drawableM1090d3;
        this.icClose = new BackDrawable(true);
        this.icRetry = m1090d(C2807R.drawable.msg_retry);
        this.icClock = m1090d(C2807R.drawable.msg_recent);
        this.icStar = new QrStarDrawable();
        this.icCopy = m1090d(C2807R.drawable.msg_copy);
        this.icPremiumMain = m1090d(C2807R.drawable.menu_premium_main);
        this.tabIcons = new Drawable[]{drawableM1090d, drawableM1090d2, drawableM1090d3};
        RLottieDrawable rLottieDrawable = new RLottieDrawable(C2807R.raw.plane_logo_plain, AndroidUtilities.dp(60.0f), AndroidUtilities.dp(60.0f), false, null);
        this.logo = rLottieDrawable;
        rLottieDrawable.setMasterParent(this);
        rLottieDrawable.setAutoRepeat(1);
        rLottieDrawable.setCallback(this);
        rLottieDrawable.start();
        Paint paint8 = this.cutPaint;
        Paint.Style style = Paint.Style.STROKE;
        paint8.setStyle(style);
        this.cutPaint.setStrokeCap(Paint.Cap.ROUND);
        this.cutPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        this.text.setTextSize(AndroidUtilities.dp(11.0f));
        this.bold.setTypeface(AndroidUtilities.bold());
        this.stroke.setStyle(style);
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = new AnimatedTextView.AnimatedTextDrawable(false, true, true);
        this.chipText = animatedTextDrawable;
        animatedTextDrawable.setTextSize(AndroidUtilities.dp(11.0f));
        animatedTextDrawable.setAnimationProperties(0.35f, 0L, 280L, CubicBezierInterpolator.EASE_OUT_QUINT);
        animatedTextDrawable.setCallback(this);
        animatedTextDrawable.setGravity(3);
        Scene sceneColorScene = colorScene(DEFAULT_COLOR);
        this.scene = sceneColorScene;
        this.rimLightColor = rimLightFor(sceneColorScene.edge);
        if (str != null) {
            rebuildCodes();
            this.qr.assemble(this.feeCode);
        }
        updateChipText(false);
    }

    public void setLinks(final String str, String str2, boolean z) {
        if (!TextUtils.equals(this.caption, str2) || this.captionIsUsername != z) {
            this.caption = str2;
            this.captionIsUsername = z;
            this.nameLayout = null;
            this.nameLayoutWidth = 0;
        }
        if (TextUtils.equals(this.baseLink, str)) {
            return;
        }
        this.baseLink = str;
        buildCode(str, new Utilities.Callback() { // from class: org.telegram.ui.QrShare.QrShareView$$ExternalSyntheticLambda12
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$setLinks$0(str, (QrCodeLayer.Code) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setLinks$0(String str, QrCodeLayer.Code code) {
        if (TextUtils.equals(this.baseLink, str)) {
            boolean z = this.feeCode == null;
            this.feeCode = code;
            if (this.free) {
                return;
            }
            if (z) {
                this.qr.assemble(code);
                invalidate();
            } else {
                swapCode(code);
            }
        }
    }

    public void setFreeLink(final String str) {
        if (TextUtils.equals(this.freeLink, str)) {
            return;
        }
        this.freeLink = str;
        if (str == null) {
            this.freeCode = null;
        } else {
            buildCode(str, new Utilities.Callback() { // from class: org.telegram.ui.QrShare.QrShareView$$ExternalSyntheticLambda8
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$setFreeLink$1(str, (QrCodeLayer.Code) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setFreeLink$1(String str, QrCodeLayer.Code code) {
        if (TextUtils.equals(this.freeLink, str)) {
            this.freeCode = code;
            if (this.free && this.timerOn && this.timerWaiting) {
                this.timerWaiting = false;
                this.freeUntil = System.currentTimeMillis() + 60000;
                this.lastChipSec = -1;
            }
            if (this.free) {
                swapCode(code);
            }
        }
    }

    private void buildCode(final String str, final Utilities.Callback<QrCodeLayer.Code> callback) {
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.QrShare.QrShareView$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                QrShareView.m20206$r8$lambda$4jvzRigU0GJrSoxngIKtSVNBTg(str, callback);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$4jvzRigU0G-JrSoxngIKtSVNBTg, reason: not valid java name */
    public static /* synthetic */ void m20206$r8$lambda$4jvzRigU0GJrSoxngIKtSVNBTg(String str, final Utilities.Callback callback) {
        final QrCodeLayer.Code codeBuild = QrCodeLayer.build(str, AndroidUtilities.dp(240.0f));
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.QrShare.QrShareView$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                callback.run(codeBuild);
            }
        });
    }

    public String getCurrentLink() {
        String str;
        if (this.free && (str = this.freeLink) != null && this.freeCode != null) {
            return str;
        }
        if (this.feeCode != null) {
            return this.baseLink;
        }
        return null;
    }

    /* JADX INFO: renamed from: d */
    private Drawable m1090d(int i) {
        return getContext().getResources().getDrawable(i).mutate();
    }

    private boolean hasBlur(Canvas canvas) {
        return blurAllowed() && blurNow() && canvas.isHardwareAccelerated() && QrRender.hasDisplayList(this.blurNode);
    }

    private boolean blurNow() {
        return this.openDone || this.immediateOnOpen;
    }

    public void setImmediateOnOpen(boolean z) {
        this.immediateOnOpen = z;
    }

    private static boolean blurAllowed() {
        return QrRender.hasEffects() && LiteMode.isEnabled(256);
    }

    private boolean blurPending(Canvas canvas) {
        return this.backdrop != null;
    }

    private void drawBlurStandIn(Canvas canvas) {
        Bitmap bitmap = this.backdrop;
        if (bitmap != null) {
            drawBackdropBitmap(canvas, bitmap);
        }
    }

    private void drawBlurStandIn(Canvas canvas, RectF rectF, float f, float f2) {
        if (this.backdrop == null || this.backdropShader == null) {
            return;
        }
        float f3 = this.backdropCell;
        this.backdropMatrix.setScale(f3, f3);
        float f4 = (-f3) / 2.0f;
        this.backdropMatrix.postTranslate(f4, f4);
        this.backdropShader.setLocalMatrix(this.backdropMatrix);
        this.backdropRoundPaint.setAlpha((int) (Utilities.clamp01(f2) * 255.0f));
        canvas.drawRoundRect(rectF, f, f, this.backdropRoundPaint);
        this.backdropRoundPaint.setAlpha(255);
    }

    private void drawBlurNode(Canvas canvas, Object obj) {
        canvas.save();
        canvas.scale(9.0f, 9.0f);
        QrRender.draw(canvas, obj);
        canvas.restore();
    }

    private void drawFrost(Canvas canvas, RectF rectF, float f) {
        Scene scene = this.scene;
        this.fill.setColor((scene != null ? ColorUtils.blendARGB(scene.center, scene.edge, 0.5f) : -12947803) | (-16777216));
        this.fill.setAlpha((int) (Utilities.clamp01(f) * 224.4f));
        canvas.drawRect(rectF, this.fill);
    }

    private static int deepen(int i, boolean z) {
        double[] dArr = new double[3];
        ColorUtils.colorToLAB(i, dArr);
        if (!z) {
            return i;
        }
        double dMax = Math.max(0.0d, dArr[0] - 3.0d);
        dArr[0] = dMax;
        double d = dArr[1] * 1.03d;
        dArr[1] = d;
        double d2 = dArr[2] * 1.03d;
        dArr[2] = d2;
        return ColorUtils.LABToColor(dMax, d, d2);
    }

    private static void buildDeep() {
        if (DEEP_CENTER != null) {
            return;
        }
        int length = Backdrops.CENTER.length;
        DEEP_CENTER = new int[length];
        DEEP_EDGE = new int[length];
        DEEP_QR = new int[length];
        for (int i = 0; i < length; i++) {
            DEEP_CENTER[i] = deepen(Backdrops.CENTER[i], false);
            DEEP_EDGE[i] = deepen(Backdrops.EDGE[i], true);
            DEEP_QR[i] = contrastMatchedQr(DEEP_CENTER[i], DEEP_EDGE[i]);
        }
    }

    private static int deepCenter(int i) {
        if (i == TUNED_COLOR) {
            return -12602881;
        }
        buildDeep();
        return DEEP_CENTER[i];
    }

    private static int deepEdge(int i) {
        if (i == TUNED_COLOR) {
            return -15308082;
        }
        buildDeep();
        return DEEP_EDGE[i];
    }

    public static void onBackdropsChanged(int i, int i2) {
        DEFAULT_COLOR = i;
        TUNED_COLOR = i2;
        DEEP_QR = null;
        DEEP_EDGE = null;
        DEEP_CENTER = null;
    }

    public static int slotIndex(int i) {
        return Backdrops.orderToIndex(i);
    }

    private Scene colorScene(int i) {
        Scene scene = new Scene();
        scene.type = 0;
        scene.index = i;
        if (i == TUNED_COLOR) {
            scene.center = -12602881;
            scene.edge = -15308082;
            scene.pattern = Backdrops.PATTERN[i];
            scene.vertical = true;
        } else {
            scene.center = deepen(Backdrops.CENTER[i], false);
            scene.edge = deepen(Backdrops.EDGE[i], true);
            scene.pattern = Backdrops.PATTERN[i];
        }
        if (i == TUNED_COLOR) {
            scene.qr = -16747023;
        } else {
            buildDeep();
            scene.qr = DEEP_QR[i];
        }
        buildShaders(scene);
        return scene;
    }

    public static int shadeFor(int i) {
        double[] dArr = new double[3];
        ColorUtils.colorToLAB(i, dArr);
        return ColorUtils.setAlphaComponent(ColorUtils.LABToColor(Math.min(96.0d, dArr[0] + 24.0d), dArr[1] * 0.75d, dArr[2] * 0.75d), 26);
    }

    private static void buildShaders(Scene scene) {
        scene.shade = shadeFor(scene.center);
        scene.mid = QrCodeLayer.mixOklab(scene.center, scene.edge, 0.5f);
    }

    private static int symbolInk(int i, int i2, int i3) {
        int iLABToColor = i | (-16777216);
        int i4 = i2 | (-16777216);
        if (ColorUtils.calculateContrast(iLABToColor, i4) < 1.15d) {
            double[] dArr = new double[3];
            ColorUtils.colorToLAB(iLABToColor, dArr);
            for (int i5 = 0; i5 < 40 && ColorUtils.calculateContrast(iLABToColor, i4) < 1.15d; i5++) {
                double dMax = Math.max(0.0d, dArr[0] - 2.0d);
                dArr[0] = dMax;
                iLABToColor = ColorUtils.LABToColor(dMax, dArr[1], dArr[2]);
            }
        }
        return ColorUtils.setAlphaComponent(iLABToColor, 95);
    }

    private static int brighter(int i) {
        double[] dArr = {dMin, 0.0d, 0.0d};
        ColorUtils.colorToLAB(i | (-16777216), dArr);
        double dMin = Math.min(97.0d, dArr[0] + 20.0d);
        float[] fArr = new float[3];
        Color.colorToHSV(ColorUtils.LABToColor(dMin, dArr[1], dArr[2]), fArr);
        fArr[1] = Math.min(1.0f, fArr[1] * 1.15f);
        return Color.HSVToColor(fArr);
    }

    private void pickGift(int i, float f, float f2) {
        TLRPC.Document document;
        TLRPC.Document document2;
        TL_stars.TL_starGiftUnique tL_starGiftUnique = this.gifts.get(i);
        Scene scene = new Scene();
        scene.type = 2;
        scene.index = i;
        Pattern pattern = new Pattern();
        pattern.type = 2;
        pattern.giftIndex = i;
        long j = tL_starGiftUnique.id;
        pattern.symbolSeed = (int) (j ^ (j >>> 32));
        ArrayList<TL_stars.StarGiftAttribute> arrayList = tL_starGiftUnique.attributes;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            TL_stars.StarGiftAttribute starGiftAttribute = arrayList.get(i2);
            i2++;
            TL_stars.StarGiftAttribute starGiftAttribute2 = starGiftAttribute;
            if ((starGiftAttribute2 instanceof TL_stars.starGiftAttributePattern) && (document2 = ((TL_stars.starGiftAttributePattern) starGiftAttribute2).document) != null) {
                pattern.symbolDoc = document2;
                pattern.symbol = AnimatedEmojiDrawable.make(this.currentAccount, 9, document2);
            } else if ((starGiftAttribute2 instanceof TL_stars.starGiftAttributeModel) && (document = ((TL_stars.starGiftAttributeModel) starGiftAttribute2).document) != null) {
                pattern.modelDoc = document;
                pattern.model = AnimatedEmojiDrawable.make(this.currentAccount, 24, document);
            }
        }
        giftColors(i, this.giftCol);
        scene.center = deepen(this.giftCol[0], false);
        int iDeepen = deepen(this.giftCol[1], true);
        scene.edge = iDeepen;
        scene.pattern = this.giftCol[2];
        scene.qr = contrastMatchedQr(scene.center, iDeepen);
        buildShaders(scene);
        pattern.ink = symbolInk(scene.pattern, scene.center, scene.edge);
        pattern.shineColor = brighter(symbolInk(scene.pattern, scene.center, scene.edge)) | (-16777216);
        pattern.glowPaint.setColorFilter(new PorterDuffColorFilter(pattern.shineColor, PorterDuff.Mode.SRC_IN));
        pattern.litTintFor = -1;
        pattern.giftParent = tL_starGiftUnique;
        AnimatedEmojiDrawable animatedEmojiDrawable = pattern.symbol;
        if (animatedEmojiDrawable != null) {
            animatedEmojiDrawable.addView(this);
        }
        AnimatedEmojiDrawable animatedEmojiDrawable2 = pattern.model;
        if (animatedEmojiDrawable2 != null) {
            animatedEmojiDrawable2.addView(this);
        }
        loadModelOutline(pattern);
        this.picked.clear();
        setScene(scene, f, f2);
        if (!this.instantTheme) {
            this.qrBounceFrom = bounce(this.qrBounceStart, 0.03f, 0.005f);
            this.qrBounceStart = AnimationUtils.currentAnimationTimeMillis();
        }
        setPattern(pattern);
    }

    private void loadModelOutline(final Pattern pattern) {
        Path path;
        int i;
        int i2;
        TLRPC.Document document = pattern.modelDoc;
        if (document == null) {
            return;
        }
        int i3 = 0;
        int i4 = 0;
        while (true) {
            if (i4 >= document.thumbs.size()) {
                path = null;
                break;
            } else {
                if (document.thumbs.get(i4) instanceof TLRPC.TL_photoPathSize) {
                    path = ((TLRPC.TL_photoPathSize) document.thumbs.get(i4)).svgPath;
                    break;
                }
                i4++;
            }
        }
        if (path == null) {
            return;
        }
        while (true) {
            if (i3 >= document.attributes.size()) {
                i = 512;
                i2 = 512;
                break;
            }
            TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i3);
            if (((documentAttribute instanceof TLRPC.TL_documentAttributeImageSize) || (documentAttribute instanceof TLRPC.TL_documentAttributeVideo)) && (i = documentAttribute.f1017w) > 0 && (i2 = documentAttribute.f1016h) > 0) {
                break;
            } else {
                i3++;
            }
        }
        final Path path2 = new Path(path);
        int i5 = MODEL_OUTLINE_PX;
        final float f = i5 / i;
        final float f2 = i5 / i2;
        final int i6 = pattern.ink;
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.QrShare.QrShareView$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadModelOutline$5(f, f2, i6, path2, pattern);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadModelOutline$5(float f, float f2, int i, Path path, final Pattern pattern) {
        final Bitmap bitmapCreateBitmap;
        try {
            int i2 = MODEL_OUTLINE_PX;
            bitmapCreateBitmap = Bitmap.createBitmap(i2, i2, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            canvas.scale(f, f2);
            Paint paint = new Paint(1);
            paint.setColor(i);
            canvas.drawPath(path, paint);
            bitmapCreateBitmap.prepareToDraw();
        } catch (Throwable th) {
            FileLog.m1040e(th);
            bitmapCreateBitmap = null;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.QrShare.QrShareView$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadModelOutline$4(pattern, bitmapCreateBitmap);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadModelOutline$4(Pattern pattern, Bitmap bitmap) {
        if (pattern.released || bitmap == null) {
            return;
        }
        pattern.modelOutline = bitmap;
        invalidate();
    }

    public List<String> pickedKeys() {
        return this.picked;
    }

    public Drawable emojiFor(String str) {
        return emojiDrawable(str);
    }

    public void removePickAt(int i) {
        if (i < 0 || i >= this.picked.size()) {
            return;
        }
        this.picked.remove(i);
        applyEmojiPattern();
        haptic();
    }

    public int islandTint() {
        Scene scene = this.scene;
        if (scene != null) {
            return scene.shade;
        }
        return 872415231;
    }

    public int sectionHeaderColor() {
        Scene scene = this.scene;
        int i = scene != null ? scene.center : -16777216;
        if (i != this.headerColorFor) {
            this.headerColorFor = i;
            this.headerColor = (ColorUtils.blendARGB(-1, oklchRelight(i, 0.75f, 1.3f, 0.16f), 0.13f) & 16777215) | (-1728053248);
        }
        return this.headerColor;
    }

    private static float srgbToLin(int i) {
        float f = i / 255.0f;
        return f <= 0.04045f ? f / 12.92f : (float) Math.pow((f + 0.055f) / 1.055f, 2.4000000953674316d);
    }

    private static int linToSrgb(float f) {
        float fMax = Math.max(0.0f, Math.min(1.0f, f));
        return Math.round(Math.max(0.0f, Math.min(1.0f, fMax <= 0.0031308f ? fMax * 12.92f : (((float) Math.pow(fMax, 0.4166666567325592d)) * 1.055f) - 0.055f)) * 255.0f);
    }

    public static int oklchRelight(int i, float f, float f2, float f3) {
        float fSrgbToLin = srgbToLin(Color.red(i));
        float fSrgbToLin2 = srgbToLin(Color.green(i));
        float fSrgbToLin3 = srgbToLin(Color.blue(i));
        float fCbrt = (float) Math.cbrt((0.41222146f * fSrgbToLin) + (0.53633255f * fSrgbToLin2) + (0.051445995f * fSrgbToLin3));
        float fCbrt2 = (float) Math.cbrt((0.2119035f * fSrgbToLin) + (0.6806995f * fSrgbToLin2) + (0.10739696f * fSrgbToLin3));
        float fCbrt3 = (float) Math.cbrt((fSrgbToLin * 0.08830246f) + (fSrgbToLin2 * 0.28171885f) + (fSrgbToLin3 * 0.6299787f));
        float f4 = ((1.9779985f * fCbrt) - (2.4285922f * fCbrt2)) + (0.4505937f * fCbrt3);
        float f5 = ((fCbrt * 0.025904037f) + (fCbrt2 * 0.78277177f)) - (fCbrt3 * 0.80867577f);
        float fHypot = (float) Math.hypot(f4, f5);
        float fMin = fHypot > 1.0E-5f ? Math.min(f3, f2 * fHypot) / fHypot : 0.0f;
        float f6 = f4 * fMin;
        float f7 = f5 * fMin;
        float f8 = (0.39633778f * f6) + f + (0.21580376f * f7);
        float f9 = (f - (0.105561346f * f6)) - (0.06385417f * f7);
        float f10 = (f - (f6 * 0.08948418f)) - (f7 * 1.2914855f);
        float f11 = f8 * f8 * f8;
        float f12 = f9 * f9 * f9;
        float f13 = f10 * f10 * f10;
        return Color.rgb(linToSrgb(((4.0767417f * f11) - (3.3077116f * f12)) + (0.23096994f * f13)), linToSrgb((((-1.268438f) * f11) + (2.6097574f * f12)) - (0.34131938f * f13)), linToSrgb(((f11 * (-0.0041960864f)) - (f12 * 0.7034186f)) + (f13 * 1.7076147f)));
    }

    public boolean drawSheetGlass(Canvas canvas, float f, float f2, RectF rectF) {
        this.fill.setColor(islandFlatColor());
        canvas.drawRect(rectF, this.fill);
        return true;
    }

    public boolean drawBlur(Canvas canvas, float f, float f2) {
        if (!hasBlur(canvas) && blurPending(canvas)) {
            canvas.save();
            canvas.translate(-f, -f2);
            drawBlurStandIn(canvas);
            canvas.restore();
            return true;
        }
        if (!QrRender.hasEffects() || !hasBlur(canvas)) {
            Scene scene = this.scene;
            canvas.drawColor(ColorUtils.setAlphaComponent(scene != null ? ColorUtils.blendARGB(scene.center, scene.edge, 0.5f) : -12947803, Opcodes.SHL_INT_LIT8));
            return true;
        }
        canvas.save();
        canvas.translate(-f, -f2);
        drawBlurNode(canvas, this.blurNode);
        canvas.restore();
        return true;
    }

    public void pickCustomEmoji(long j, TLRPC.Document document) {
        AnimatedEmojiDrawable animatedEmojiDrawableMake;
        String str = "c:" + j;
        if (!this.emojiCache.containsKey(str)) {
            int i = this.currentAccount;
            if (document != null) {
                animatedEmojiDrawableMake = AnimatedEmojiDrawable.make(i, 2, document);
            } else {
                animatedEmojiDrawableMake = AnimatedEmojiDrawable.make(i, 2, j);
            }
            animatedEmojiDrawableMake.addView(this);
            this.emojiCache.put(str, animatedEmojiDrawableMake);
        }
        addEmoji(str);
    }

    public static String normKey(String str) {
        return (str == null || str.startsWith("c:")) ? str : str.replace("️", _UrlKt.FRAGMENT_ENCODE_SET);
    }

    private void addEmoji(String str) {
        String strNormKey = normKey(str);
        int iIndexOf = this.picked.indexOf(strNormKey);
        ArrayList<String> arrayList = this.picked;
        if (iIndexOf >= 0) {
            arrayList.remove(iIndexOf);
        } else {
            if (arrayList.size() >= 6) {
                this.picked.remove(0);
            }
            this.picked.add(strNormKey);
        }
        applyEmojiPattern();
        haptic();
    }

    private void removeEmoji(String str) {
        int iLastIndexOf = this.picked.lastIndexOf(str);
        if (iLastIndexOf < 0) {
            return;
        }
        this.picked.remove(iLastIndexOf);
        applyEmojiPattern();
        haptic();
    }

    public void setOnPicksChanged(Runnable runnable) {
        this.onPicksChanged = runnable;
    }

    private Pattern emojiPatternOrNone() {
        long jHashCode;
        Pattern pattern = new Pattern();
        if (!this.picked.isEmpty()) {
            pattern.type = 1;
            pattern.emoji = new Drawable[this.picked.size()];
            pattern.emojiIds = new long[this.picked.size()];
            pattern.emojiText = new boolean[this.picked.size()];
            long[] jArr = new long[this.picked.size()];
            pattern.emojiShownAt = jArr;
            if (this.openDone) {
                Arrays.fill(jArr, 1L);
            }
            for (int i = 0; i < pattern.emoji.length; i++) {
                String str = this.picked.get(i);
                pattern.emoji[i] = emojiDrawable(str);
                if (str.startsWith("c:")) {
                    try {
                        jHashCode = Long.parseLong(str.substring(2));
                    } catch (NumberFormatException unused) {
                        jHashCode = 0;
                    }
                } else {
                    jHashCode = 0;
                }
                long[] jArr2 = pattern.emojiIds;
                if (jHashCode <= 0) {
                    jHashCode = (-1) - (((long) str.hashCode()) & 4294967295L);
                }
                jArr2[i] = jHashCode;
                pattern.emojiText[i] = QrEmojiPanel.isTextColor(pattern.emoji[i]);
            }
        }
        return pattern;
    }

    private void applyEmojiPattern() {
        Scene scene;
        Runnable runnable = this.onPicksChanged;
        if (runnable != null) {
            runnable.run();
        }
        if (!this.applyingTheme && !this.picked.isEmpty() && (scene = this.scene) != null && (scene.type != 0 || this.pattern.type == 2)) {
            this.deselectAt = AnimationUtils.currentAnimationTimeMillis();
            this.prevSelGift = -1;
            this.selTarget = 0.0f;
            setSceneFromCard(colorScene(this.lastColorIndex));
        }
        setPattern(emojiPatternOrNone());
        if (!this.instantTheme) {
            this.cardPulseStart = AnimationUtils.currentAnimationTimeMillis();
        }
        notifyThemeChanged();
    }

    public void setInstantTheme(boolean z) {
        this.instantTheme = z;
    }

    private void notifyThemeChanged() {
        Delegate delegate;
        if (this.applyingTheme || (delegate = this.delegate) == null) {
            return;
        }
        delegate.onThemeChanged();
    }

    public ArrayList<TLRPC.Reaction> getPickedEmoji() {
        ArrayList<TLRPC.Reaction> arrayList = new ArrayList<>();
        ArrayList<String> arrayList2 = this.picked;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            String str = arrayList2.get(i);
            i++;
            String str2 = str;
            if (str2.startsWith("c:")) {
                try {
                    TLRPC.TL_reactionCustomEmoji tL_reactionCustomEmoji = new TLRPC.TL_reactionCustomEmoji();
                    tL_reactionCustomEmoji.document_id = Long.parseLong(str2.substring(2));
                    arrayList.add(tL_reactionCustomEmoji);
                } catch (NumberFormatException unused) {
                }
            } else {
                TLRPC.TL_reactionEmoji tL_reactionEmoji = new TLRPC.TL_reactionEmoji();
                String str3 = this.emojiTextOf.get(str2);
                if (str3 != null) {
                    str2 = str3;
                }
                tL_reactionEmoji.emoticon = str2;
                arrayList.add(tL_reactionEmoji);
            }
        }
        return arrayList;
    }

    public TL_stars.TL_starGiftUnique getThemeGift() {
        int i;
        Pattern pattern = this.pattern;
        if (pattern.type != 2 || (i = pattern.giftIndex) < 0 || i >= this.gifts.size()) {
            return null;
        }
        return this.gifts.get(this.pattern.giftIndex);
    }

    public int getThemeBackdropIndex() {
        Scene scene = this.scene;
        if (scene == null || scene.type != 0) {
            return -1;
        }
        return scene.index;
    }

    public boolean isDefaultBackdrop(int i) {
        return i == DEFAULT_COLOR;
    }

    public void applyThemeEmojiBackdrop(boolean z, int i, List<TLRPC.Reaction> list) {
        int iIndexOfId = z ? Backdrops.indexOfId(i) : -1;
        if (iIndexOfId < 0) {
            iIndexOfId = DEFAULT_COLOR;
        }
        if (list == null || list.isEmpty()) {
            applyThemeColor(iIndexOfId);
            return;
        }
        this.applyingTheme = true;
        this.lastColorIndex = iIndexOfId;
        Scene scene = this.scene;
        if (scene == null || scene.type != 0 || scene.index != iIndexOfId) {
            setSceneFromCard(colorScene(iIndexOfId));
        }
        this.selTarget = 0.0f;
        this.picked.clear();
        for (TLRPC.Reaction reaction : list) {
            if (this.picked.size() >= 6) {
                break;
            }
            if (reaction instanceof TLRPC.TL_reactionCustomEmoji) {
                long j = ((TLRPC.TL_reactionCustomEmoji) reaction).document_id;
                String str = "c:" + j;
                if (!this.emojiCache.containsKey(str)) {
                    AnimatedEmojiDrawable animatedEmojiDrawableMake = AnimatedEmojiDrawable.make(this.currentAccount, 2, j);
                    animatedEmojiDrawableMake.addView(this);
                    this.emojiCache.put(str, animatedEmojiDrawableMake);
                }
                if (!this.picked.contains(str)) {
                    this.picked.add(str);
                }
            } else if (reaction instanceof TLRPC.TL_reactionEmoji) {
                TLRPC.TL_reactionEmoji tL_reactionEmoji = (TLRPC.TL_reactionEmoji) reaction;
                if (!TextUtils.isEmpty(tL_reactionEmoji.emoticon)) {
                    String str2 = tL_reactionEmoji.emoticon;
                    String strNormKey = normKey(str2);
                    this.emojiTextOf.put(strNormKey, str2);
                    if (!this.picked.contains(strNormKey)) {
                        this.picked.add(strNormKey);
                    }
                }
            }
        }
        applyEmojiPattern();
        this.applyingTheme = false;
    }

    public void replacePalette(List<TLRPC.TL_shareThemeBackdropOption> list) {
        Scene scene = this.scene;
        String strBackdropName = (scene == null || scene.type != 0) ? null : backdropName(scene.index);
        String strBackdropName2 = backdropName(this.lastColorIndex);
        if (Backdrops.apply(list)) {
            this.lastColorIndex = backdropIndex(strBackdropName2);
            if (strBackdropName != null) {
                Scene scene2 = this.oldScene;
                if (scene2 != null) {
                    releaseScene(scene2);
                    this.oldScene = null;
                    this.wave = 1.0f;
                }
                Scene sceneColorScene = colorScene(backdropIndex(strBackdropName));
                this.scene = sceneColorScene;
                Delegate delegate = this.delegate;
                if (delegate != null) {
                    delegate.onSceneLight(sceneColorScene.light);
                }
            }
            invalidate();
        }
    }

    private static String backdropName(int i) {
        if (i < 0) {
            return null;
        }
        String[] strArr = Backdrops.NAMES;
        if (i < strArr.length) {
            return strArr[i];
        }
        return null;
    }

    private static int backdropIndex(String str) {
        if (str != null) {
            int i = 0;
            while (true) {
                String[] strArr = Backdrops.NAMES;
                if (i >= strArr.length) {
                    break;
                }
                if (str.equals(strArr[i])) {
                    return i;
                }
                i++;
            }
        }
        return DEFAULT_COLOR;
    }

    public void applyThemeDefault() {
        applyThemeColor(DEFAULT_COLOR);
    }

    private void applyThemeColor(int i) {
        this.applyingTheme = true;
        boolean z = this.pattern.type != 0;
        this.picked.clear();
        this.selTarget = 0.0f;
        this.lastColorIndex = i;
        Scene scene = this.scene;
        if (scene == null || scene.type != 0 || scene.index != i) {
            setSceneFromCard(colorScene(i));
        }
        if (z) {
            setPattern(new Pattern());
        }
        Runnable runnable = this.onPicksChanged;
        if (runnable != null) {
            runnable.run();
        }
        this.applyingTheme = false;
    }

    public void applyThemeGift(TL_stars.TL_starGiftUnique tL_starGiftUnique) {
        int i = 0;
        while (true) {
            if (i >= this.gifts.size()) {
                i = -1;
                break;
            } else if (this.gifts.get(i).id == tL_starGiftUnique.id) {
                break;
            } else {
                i++;
            }
        }
        if (i < 0) {
            this.gifts.add(0, tL_starGiftUnique);
            i = 0;
        }
        Pattern pattern = this.pattern;
        if (pattern.type == 2 && pattern.giftIndex == i) {
            return;
        }
        this.applyingTheme = true;
        this.picked.clear();
        Runnable runnable = this.onPicksChanged;
        if (runnable != null) {
            runnable.run();
        }
        this.selGift = i;
        this.selA = this.instantTheme ? 1.0f : 0.0f;
        this.selTarget = 1.0f;
        pickGift(i, cardCenterX(), cardTop() + (cardH() / 2.0f));
        this.applyingTheme = false;
    }

    private Drawable emojiDrawable(String str) {
        Drawable emojiDrawable = this.emojiCache.get(str);
        if (emojiDrawable == null) {
            emojiDrawable = Emoji.getEmojiDrawable(str);
            if (emojiDrawable == null) {
                emojiDrawable = Emoji.getEmojiDrawable(str.replace("️", _UrlKt.FRAGMENT_ENCODE_SET));
            }
            if (emojiDrawable != null) {
                this.emojiCache.put(str, emojiDrawable);
            }
        }
        return emojiDrawable;
    }

    private void setPattern(Pattern pattern) {
        if (this.instantTheme) {
            Pattern pattern2 = this.oldPattern;
            if (pattern2 != null && pattern2 != this.pattern) {
                releasePattern(pattern2);
            }
            Pattern pattern3 = this.pattern;
            if (pattern3 != pattern) {
                releasePattern(pattern3);
            }
            this.oldPattern = null;
            this.pattern = pattern;
            if (pattern.type == 2) {
                ensureSymbolBitmap(pattern);
                if (pattern.symbolBitmap == null) {
                    pattern.fallback = this.lastSymbol;
                }
            }
            this.patternStart = AnimationUtils.currentAnimationTimeMillis() - NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS;
            invalidate();
            return;
        }
        pattern.waveSwap = this.wave < 1.0f && this.oldScene != null;
        if (pattern.type == 2) {
            ensureSymbolBitmap(pattern);
            if (pattern.symbolBitmap == null) {
                pattern.fallback = this.lastSymbol;
            }
        }
        Pattern pattern4 = this.oldPattern;
        if (pattern4 != null && pattern4 != this.pattern) {
            releasePattern(pattern4);
        }
        this.oldPattern = this.pattern;
        this.pattern = pattern;
        this.patternStart = AnimationUtils.currentAnimationTimeMillis();
        invalidate();
    }

    private void releasePattern(Pattern pattern) {
        if (pattern == null) {
            return;
        }
        AnimatedEmojiDrawable animatedEmojiDrawable = pattern.symbol;
        if (animatedEmojiDrawable != null) {
            animatedEmojiDrawable.removeView(this);
        }
        AnimatedEmojiDrawable animatedEmojiDrawable2 = pattern.model;
        if (animatedEmojiDrawable2 != null && !this.giftThumbs.containsValue(animatedEmojiDrawable2)) {
            pattern.model.removeView(this);
        }
        pattern.released = true;
        QrGiftSymbol.Loader loader = pattern.giftLoader;
        if (loader != null) {
            loader.cancel();
            pattern.giftLoader = null;
        }
    }

    private void ensureAtlases(final Pattern pattern) {
        TLRPC.Document document;
        if (pattern == null || pattern.released || pattern.type != 2 || pattern.giftLoader != null || (document = pattern.symbolDoc) == null) {
            return;
        }
        pattern.giftLoader = new QrGiftSymbol.Loader(this.currentAccount, document, pattern.giftParent, AndroidUtilities.dp(48.0f), new Utilities.Callback() { // from class: org.telegram.ui.QrShare.QrShareView$$ExternalSyntheticLambda7
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$ensureAtlases$6(pattern, (Bitmap) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$ensureAtlases$6(Pattern pattern, Bitmap bitmap) {
        if (!pattern.released && pattern.symbolBitmap == null) {
            onSymbolReady(pattern, bitmap);
        }
    }

    private void onSymbolReady(Pattern pattern, Bitmap bitmap) {
        pattern.symbolBitmap = bitmap;
        prewarmSymbolPasses(pattern, bitmap);
        pattern.readyAt = AnimationUtils.currentAnimationTimeMillis();
        this.lastSymbol = bitmap;
        invalidate();
    }

    private void ensureSymbolBitmap(Pattern pattern) {
        ImageReceiver imageReceiver;
        if (pattern == null || pattern.symbolBitmap != null || pattern.symbol == null) {
            return;
        }
        QrGiftSymbol.Loader loader = pattern.giftLoader;
        if ((loader == null || loader.isDone()) && (imageReceiver = pattern.symbol.getImageReceiver()) != null && imageReceiver.hasImageLoaded() && imageReceiver.hasNotThumb()) {
            int iDp = AndroidUtilities.dp(48.0f);
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iDp, iDp, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            pattern.symbol.setBounds(0, 0, iDp, iDp);
            pattern.symbol.setColorFilter(null);
            pattern.symbol.setAlpha(255);
            imageReceiver.setCurrentAlpha(1.0f);
            pattern.symbol.draw(canvas);
            onSymbolReady(pattern, bitmapCreateBitmap);
        }
    }

    private static double lin(double d) {
        return d <= 0.04045d ? d / 12.92d : Math.pow((d + 0.055d) / 1.055d, 2.4d);
    }

    private static double gam(double d) {
        return d <= 0.0031308d ? d * 12.92d : (Math.pow(d, 0.4166666666666667d) * 1.055d) - 0.055d;
    }

    private static void toOkLab(int i, double[] dArr) {
        double dLin = lin(((double) Color.red(i)) / 255.0d);
        double dLin2 = lin(((double) Color.green(i)) / 255.0d);
        double dLin3 = lin(((double) Color.blue(i)) / 255.0d);
        double dCbrt = Math.cbrt((0.4122214708d * dLin) + (0.5363325363d * dLin2) + (0.0514459929d * dLin3));
        double dCbrt2 = Math.cbrt((0.2119034982d * dLin) + (0.6806995451d * dLin2) + (0.1073969566d * dLin3));
        double dCbrt3 = Math.cbrt((dLin * 0.0883024619d) + (dLin2 * 0.2817188376d) + (dLin3 * 0.6299787005d));
        dArr[0] = ((0.2104542553d * dCbrt) + (0.793617785d * dCbrt2)) - (0.0040720468d * dCbrt3);
        dArr[1] = ((1.9779984951d * dCbrt) - (2.428592205d * dCbrt2)) + (0.4505937099d * dCbrt3);
        dArr[2] = ((dCbrt * 0.0259040371d) + (dCbrt2 * 0.7827717662d)) - (dCbrt3 * 0.808675766d);
    }

    private static void okLabToLinear(double d, double d2, double d3, double[] dArr) {
        double d4 = (0.3963377774d * d2) + d + (0.2158037573d * d3);
        double d5 = (d - (0.1055613458d * d2)) - (0.0638541728d * d3);
        double d6 = (d - (d2 * 0.0894841775d)) - (d3 * 1.291485548d);
        double d7 = d4 * d4 * d4;
        double d8 = d5 * d5 * d5;
        double d9 = d6 * d6 * d6;
        dArr[0] = ((4.0767416621d * d7) - (3.3077115913d * d8)) + (0.2309699292d * d9);
        dArr[1] = (((-1.2684380046d) * d7) + (2.6097574011d * d8)) - (0.3413193965d * d9);
        dArr[2] = ((d7 * (-0.0041960863d)) - (d8 * 0.7034186147d)) + (d9 * 1.707614701d);
    }

    private static boolean inGamut(double[] dArr) {
        double d = dArr[0];
        if (d >= -1.0E-4d && d <= 1.0001d) {
            double d2 = dArr[1];
            if (d2 >= -1.0E-4d && d2 <= 1.0001d) {
                double d3 = dArr[2];
                if (d3 >= -1.0E-4d && d3 <= 1.0001d) {
                    return true;
                }
            }
        }
        return false;
    }

    private static double fitChroma(double d, double d2, double d3, double[] dArr) {
        double dCos = Math.cos(d3);
        double dSin = Math.sin(d3);
        okLabToLinear(d, d2 * dCos, d2 * dSin, dArr);
        if (inGamut(dArr)) {
            return d2;
        }
        double d4 = 0.0d;
        double d5 = d2;
        for (int i = 0; i < 14; i++) {
            double d6 = (d4 + d5) / 2.0d;
            okLabToLinear(d, d6 * dCos, d6 * dSin, dArr);
            if (inGamut(dArr)) {
                d4 = d6;
            } else {
                d5 = d6;
            }
        }
        okLabToLinear(d, d4 * dCos, d4 * dSin, dArr);
        return d4;
    }

    private static double contrastLinear(double[] dArr) {
        return 1.05d / ((((clamp01(dArr[0]) * 0.2126d) + (clamp01(dArr[1]) * 0.7152d)) + (clamp01(dArr[2]) * 0.0722d)) + 0.05d);
    }

    public static int contrastMatchedQr(int i, int i2) {
        return contrastMatchedQr(i, i2, true);
    }

    public static int contrastMatchedQr(int i, int i2, boolean z) {
        double d;
        double dAtan2;
        double dMin;
        double[] dArr = new double[3];
        double[] dArr2 = new double[3];
        double[] dArr3 = new double[3];
        toOkLab(i2, dArr);
        toOkLab(i, dArr2);
        double d2 = dArr[0];
        double d3 = d2 < 0.45d ? d2 - 0.03d : 2.0d;
        double dHypot = Math.hypot(dArr[1], dArr[2]);
        if (dHypot < 0.03d) {
            double d4 = (dArr2[1] * 0.4d) + (dArr[1] * 0.6d);
            double d5 = (dArr2[2] * 0.4d) + (dArr[2] * 0.6d);
            dAtan2 = Math.atan2(d5, d4);
            d = 2.0d;
            dMin = Math.min(0.012d, Math.hypot(d4, d5));
        } else {
            d = 2.0d;
            dAtan2 = Math.atan2(dArr[2], dArr[1]);
            dMin = Math.min((dHypot * 1.25d) + 0.02d, 0.2d);
        }
        double d6 = 0.9d;
        double d7 = 0.2d;
        int i3 = 0;
        while (i3 < 12) {
            double d8 = (d7 + d6) / d;
            double d9 = dAtan2;
            double d10 = dMin;
            fitChroma(d8, d10, d9, dArr3);
            if (contrastLinear(dArr3) > 4.4d) {
                d7 = d8;
            } else {
                d6 = d8;
            }
            i3++;
            dMin = d10;
            dAtan2 = d9;
        }
        double d11 = dAtan2;
        double d12 = dMin;
        double dMax = (d7 + d6) / d;
        if (z && dMax > d3) {
            dMax = Math.max(0.05d, d3);
        }
        fitChroma(dMax, d12, d11, dArr3);
        return Color.rgb((int) Math.round(clamp01(gam(clamp01(dArr3[0]))) * 255.0d), (int) Math.round(clamp01(gam(clamp01(dArr3[1]))) * 255.0d), (int) Math.round(clamp01(gam(clamp01(dArr3[2]))) * 255.0d));
    }

    private void giftColors(int i, int[] iArr) {
        iArr[0] = -7829368;
        iArr[1] = -11184811;
        iArr[2] = -13421773;
        ArrayList<TL_stars.StarGiftAttribute> arrayList = this.gifts.get(i).attributes;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            TL_stars.StarGiftAttribute starGiftAttribute = arrayList.get(i2);
            i2++;
            TL_stars.StarGiftAttribute starGiftAttribute2 = starGiftAttribute;
            if (starGiftAttribute2 instanceof TL_stars.starGiftAttributeBackdrop) {
                TL_stars.starGiftAttributeBackdrop stargiftattributebackdrop = (TL_stars.starGiftAttributeBackdrop) starGiftAttribute2;
                iArr[0] = stargiftattributebackdrop.center_color | (-16777216);
                iArr[1] = stargiftattributebackdrop.edge_color | (-16777216);
                iArr[2] = stargiftattributebackdrop.pattern_color | (-16777216);
            }
        }
    }

    public void setGiftsOwner(long j) {
        if (this.giftsOwner == j) {
            return;
        }
        this.giftsOwner = j;
        StarsController.GiftsList giftsList = this.giftsList;
        if (giftsList != null) {
            giftsList.cancel();
        }
        StarsController.GiftsList giftsList2 = new StarsController.GiftsList(this.currentAccount, j, false);
        this.giftsList = giftsList2;
        giftsList2.setFilters(776);
        loadGifts();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$7(int i, int i2, Object[] objArr) {
        if (objArr.length <= 1 || objArr[1] != this.giftsList) {
            return;
        }
        loadGifts();
    }

    public long getThemeGiftSavedId() {
        TL_stars.TL_starGiftUnique themeGift = getThemeGift();
        Long l = themeGift != null ? this.giftSavedIds.get(Long.valueOf(themeGift.id)) : null;
        if (l != null) {
            return l.longValue();
        }
        return 0L;
    }

    private AnimatedEmojiDrawable giftThumb(long j, TLRPC.Document document) {
        AnimatedEmojiDrawable animatedEmojiDrawable = this.giftThumbs.get(Long.valueOf(j));
        if (animatedEmojiDrawable != null) {
            return animatedEmojiDrawable;
        }
        AnimatedEmojiDrawable animatedEmojiDrawableMake = AnimatedEmojiDrawable.make(this.currentAccount, 24, document);
        animatedEmojiDrawableMake.addView(this);
        this.giftThumbs.put(Long.valueOf(j), animatedEmojiDrawableMake);
        return animatedEmojiDrawableMake;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void prewarmGiftDrawables() {
        TLRPC.Document document;
        for (int i = 0; i < Math.min(this.gifts.size(), 9); i++) {
            TL_stars.TL_starGiftUnique tL_starGiftUnique = this.gifts.get(i);
            ArrayList<TL_stars.StarGiftAttribute> arrayList = tL_starGiftUnique.attributes;
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                TL_stars.StarGiftAttribute starGiftAttribute = arrayList.get(i2);
                i2++;
                TL_stars.StarGiftAttribute starGiftAttribute2 = starGiftAttribute;
                if ((starGiftAttribute2 instanceof TL_stars.starGiftAttributeModel) && (document = ((TL_stars.starGiftAttributeModel) starGiftAttribute2).document) != null) {
                    giftThumb(tL_starGiftUnique.id, document);
                }
            }
            tilePattern(tL_starGiftUnique);
        }
    }

    private void loadGifts() {
        int i;
        StarsController.GiftsList giftsList = this.giftsList;
        if (giftsList == null) {
            return;
        }
        Pattern pattern = this.pattern;
        long j = (pattern.type != 2 || (i = pattern.giftIndex) < 0 || i >= this.gifts.size()) ? 0L : this.gifts.get(this.pattern.giftIndex).id;
        TL_stars.TL_starGiftUnique tL_starGiftUnique = j != 0 ? this.gifts.get(this.pattern.giftIndex) : null;
        this.gifts.clear();
        this.giftSavedIds.clear();
        ArrayList<TL_stars.SavedStarGift> arrayList = giftsList.gifts;
        int size = arrayList.size();
        int i2 = 0;
        int i3 = 0;
        while (i3 < size) {
            TL_stars.SavedStarGift savedStarGift = arrayList.get(i3);
            i3++;
            TL_stars.SavedStarGift savedStarGift2 = savedStarGift;
            TL_stars.StarGift starGift = savedStarGift2.gift;
            if ((starGift instanceof TL_stars.TL_starGiftUnique) && !savedStarGift2.refunded && !((TL_stars.TL_starGiftUnique) starGift).burned) {
                this.gifts.add((TL_stars.TL_starGiftUnique) starGift);
                this.giftSavedIds.put(Long.valueOf(savedStarGift2.gift.id), Long.valueOf(savedStarGift2.saved_id));
            }
        }
        if (tL_starGiftUnique != null) {
            int i4 = 0;
            while (true) {
                if (i4 >= this.gifts.size()) {
                    i4 = -1;
                    break;
                } else if (this.gifts.get(i4).id == j) {
                    break;
                } else {
                    i4++;
                }
            }
            if (i4 < 0) {
                this.gifts.add(0, tL_starGiftUnique);
            } else {
                i2 = i4;
            }
            this.pattern.giftIndex = i2;
            this.selGift = i2;
        }
        boolean z = giftsList.endReached;
        this.giftsEndReached = z;
        if (!z && !giftsList.loading) {
            giftsList.load();
        }
        if (!this.gifts.isEmpty() && !this.giftsPrewarmed) {
            this.giftsPrewarmed = true;
            removeCallbacks(this.prewarmGiftsRunnable);
            postDelayed(this.prewarmGiftsRunnable, 900L);
        }
        invalidate();
    }

    private void rebuildCodes() {
        QrCodeLayer.Code code;
        String str = this.baseLink;
        if (str.equals(cachedFeeFor) && (code = cachedFee) != null) {
            this.feeCode = code;
            return;
        }
        QrCodeLayer.Code codeBuild = QrCodeLayer.build(str, AndroidUtilities.dp(240.0f));
        this.feeCode = codeBuild;
        cachedFee = codeBuild;
        cachedFeeFor = str;
    }

    private float cardCenterX() {
        return getWidth() / 2.0f;
    }

    private void setSceneFromCard(Scene scene) {
        setScene(scene, cardCenterX(), cardTop() + (cardH() / 2.0f));
        if (this.instantTheme) {
            return;
        }
        this.qrBounceFrom = bounce(this.qrBounceStart, 0.03f, 0.005f);
        this.qrBounceStart = AnimationUtils.currentAnimationTimeMillis();
    }

    private void setScene(Scene scene, float f, float f2) {
        Scene scene2;
        if (scene != null) {
            this.rimLightColor = rimLightFor(scene.edge);
        }
        if (this.instantTheme) {
            Scene scene3 = this.oldScene;
            if (scene3 != null) {
                releaseScene(scene3);
                this.oldScene = null;
            }
            this.scene = scene;
            this.wave = 1.0f;
            invalidate();
            return;
        }
        if (this.wave < 1.0f && (scene2 = this.oldScene) != null) {
            releaseScene(scene2);
        }
        this.oldScene = this.scene;
        this.scene = scene;
        this.wave = 0.0f;
        this.waveStart = System.currentTimeMillis();
        this.waveX = f;
        this.waveY = f2;
        this.waveId++;
        haptic();
        invalidate();
    }

    private static float bounce(long j, float f, float f2) {
        if (j == 0) {
            return 1.0f;
        }
        float fCurrentAnimationTimeMillis = (AnimationUtils.currentAnimationTimeMillis() - j) / 320.0f;
        if (fCurrentAnimationTimeMillis <= 0.0f || fCurrentAnimationTimeMillis >= 1.0f) {
            return 1.0f;
        }
        if (fCurrentAnimationTimeMillis < 0.25f) {
            return (f * ((float) Math.sin((((double) fCurrentAnimationTimeMillis) * 1.5707963267948966d) / 0.25d))) + 1.0f;
        }
        if (fCurrentAnimationTimeMillis < 0.6f) {
            float f3 = (fCurrentAnimationTimeMillis - 0.25f) / 0.35f;
            return AndroidUtilities.lerp(f + 1.0f, 1.0f - f2, f3 * f3 * (3.0f - (f3 * 2.0f)));
        }
        float f4 = (fCurrentAnimationTimeMillis - 0.6f) / 0.4f;
        return AndroidUtilities.lerp(1.0f - f2, 1.0f, f4 * f4 * (3.0f - (f4 * 2.0f)));
    }

    public boolean feeMenuOpen() {
        return this.menuTarget > 0.5f || this.menu > 0.5f;
    }

    public void closeFeeMenu() {
        this.menuTarget = 0.0f;
        invalidate();
    }

    private void chipAction() {
        if (this.chipShown) {
            if (!this.free) {
                makeFree();
                return;
            }
            this.menuTimerOn = this.timerOn;
            this.menuTarget = 1.0f;
            hideToast(true);
            haptic();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: openLayer, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public void lambda$onTap$15(int i) {
        if (this.themeEditable) {
            if (i == 2 && !UserConfig.getInstance(this.currentAccount).isPremium()) {
                lambda$showToast$9(0, LocaleController.getString(C2807R.string.QrPremiumGiftsToast), LocaleController.getString(C2807R.string.QrPremiumSubscribe));
                haptic();
                return;
            }
            if (i == 2 && (this.tab != i || this.sheet < 0.5f)) {
                this.giftOpenAt = AnimationUtils.currentAnimationTimeMillis();
            }
            this.tab = i;
            this.tabX = i;
            this.sheetScroll = 0.0f;
            this.scroller.forceFinished(true);
            if (this.sheet > 0.5f) {
                this.cascadeAt = AnimationUtils.currentAnimationTimeMillis();
            }
            if (this.sheetTarget < 0.5f) {
                this.revealOpenAt = AnimationUtils.currentAnimationTimeMillis();
            }
            this.sheetTarget = 1.0f;
            hideToast(true);
            if (this.tab == 2) {
                loadGifts();
            }
            haptic();
        }
    }

    private void makeFree() {
        this.free = true;
        this.shatterAt = 0L;
        this.timerOn = true;
        startTimerWait();
        startSweep(1.0f);
        this.sweepDone = false;
        this.chipBurstPending = true;
        this.chipBounceStart = AnimationUtils.currentAnimationTimeMillis();
        this.fillEndsAt = System.currentTimeMillis() + 340;
        this.freeLink = null;
        this.freeCode = null;
        this.lastChip = null;
        updateChipText(false);
        showToast(C2807R.drawable.msg_recent, expiryText());
        haptic();
        Delegate delegate = this.delegate;
        if (delegate != null) {
            delegate.onFeeMode(1);
        }
    }

    private void startSweep(float f) {
        this.sweepFrom = this.chipSweep;
        this.sweepTo = f;
        this.sweepStart = System.currentTimeMillis();
    }

    private void swapCode(final QrCodeLayer.Code code) {
        if (this.qr.inIntro()) {
            this.qr.replaceSilently(code);
            invalidate();
        } else {
            postDelayed(new Runnable() { // from class: org.telegram.ui.QrShare.QrShareView$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$swapCode$8(code);
                }
            }, 40L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$swapCode$8(QrCodeLayer.Code code) {
        if (this.qr.inIntro()) {
            this.qr.replaceSilently(code);
            invalidate();
        } else {
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.qrBounceFrom = bounce(this.qrBounceStart, 0.03f, 0.005f);
            this.qrBounceStart = jCurrentAnimationTimeMillis;
            this.qr.swapTo(code);
        }
    }

    private void restoreFee(String str) {
        if (this.free) {
            this.restoreFreeW = AndroidUtilities.dp(8.0f) + AndroidUtilities.dp(12.0f) + AndroidUtilities.dp(2.0f) + this.chipText.getCurrentWidth() + AndroidUtilities.dp(11.0f);
            this.free = false;
            this.timerWaiting = false;
            this.shatterPending = this.chipSweep * this.burnFrac > 0.001f;
            this.shatterAt = AnimationUtils.currentAnimationTimeMillis();
            startSweep(0.0f);
            QrCodeLayer.Code code = this.feeCode;
            if (code != null) {
                swapCode(code);
            }
            updateChipText(true);
            if (str != null) {
                showToast(0, str);
            }
            haptic();
            this.freeLink = null;
            this.freeCode = null;
            Delegate delegate = this.delegate;
            if (delegate != null) {
                delegate.onFeeMode(0);
            }
        }
    }

    private void resetCode() {
        if (this.timerOn) {
            startTimerWait();
        }
        this.lastChipSec = -1;
        Delegate delegate = this.delegate;
        if (delegate != null) {
            delegate.onResetCode();
        }
        updateChipText(true);
        if (this.timerOn) {
            showToast(C2807R.drawable.msg_recent, expiryText());
        } else {
            showToast(C2807R.drawable.msg_retry, LocaleController.getString(C2807R.string.QrNoPaidToastNewCode));
        }
        haptic();
    }

    private void toggleTimer() {
        boolean z = this.timerOn;
        this.timerOn = !z;
        if (!z) {
            startTimerWait();
        } else {
            this.timerWaiting = false;
        }
        this.lastChipSec = -1;
        updateChipText(true);
        showToast(C2807R.drawable.msg_recent, this.timerOn ? expiryText() : LocaleController.getString(C2807R.string.QrNoPaidToastNoTimeLimit));
        Delegate delegate = this.delegate;
        if (delegate != null) {
            delegate.onFeeMode(this.timerOn ? 1 : 2);
        }
    }

    public void setFeeStars(long j) {
        this.chipShown = j > 0;
        String strSubstring = _UrlKt.FRAGMENT_ENCODE_SET;
        String string = j > 0 ? LocaleController.formatString(C2807R.string.QrNoPaidRemoveStarsFee, LocaleController.formatNumber(j, ',')) : _UrlKt.FRAGMENT_ENCODE_SET;
        int iIndexOf = string.indexOf(9733);
        if (iIndexOf >= 0) {
            strSubstring = string.substring(0, iIndexOf);
        }
        this.feeA = strSubstring;
        if (iIndexOf >= 0) {
            string = string.substring(iIndexOf + 1);
        }
        this.feeB = string;
        if (!this.chipShown && this.free) {
            restoreFee(null);
        }
        invalidate();
    }

    public void restoreFreeMode(boolean z) {
        this.free = true;
        this.timerOn = z;
        if (z) {
            startTimerWait();
        }
        this.chipSweep = 1.0f;
        this.sweepTo = 1.0f;
        this.sweepFrom = 1.0f;
        this.sweepDone = true;
        this.burnFrac = 1.0f;
        this.lastChip = null;
        this.lastChipSec = -1;
        updateChipText(false);
        invalidate();
    }

    public void cancelFree(String str) {
        if (this.free) {
            restoreFee(str != null ? LocaleController.getString(C2807R.string.ErrorOccurred) : null);
        } else if (str != null) {
            showError(str);
        }
    }

    public void showError(String str) {
        showToast(C2807R.drawable.msg_warning, LocaleController.getString(C2807R.string.ErrorOccurred));
    }

    private String expiryText() {
        String string = LocaleController.getString(C2807R.string.QrNoPaidToastExpires);
        if (!string.equals(this.expiryText)) {
            this.expiryText = string;
            Matcher matcher = java.util.regex.Pattern.compile("\\d+").matcher(string);
            if (matcher.find()) {
                this.expA = string.substring(0, matcher.start());
                this.expB = matcher.group();
                this.expC = string.substring(matcher.end());
            } else {
                this.expA = string;
                this.expC = _UrlKt.FRAGMENT_ENCODE_SET;
                this.expB = _UrlKt.FRAGMENT_ENCODE_SET;
            }
        }
        return this.expiryText;
    }

    private boolean isExpiry(String str) {
        return str != null && str.equals(this.expiryText);
    }

    private float toastTextWidth(String str) {
        int iIndexOf = str.indexOf(10);
        if (iIndexOf >= 0) {
            return Math.max(this.text.measureText(str, 0, iIndexOf), this.text.measureText(str, iIndexOf + 1, str.length()));
        }
        if (!isExpiry(str)) {
            return this.text.measureText(str);
        }
        this.toastMedium.setTextSize(this.text.getTextSize());
        return this.text.measureText(this.expA) + this.toastMedium.measureText(this.expB) + this.text.measureText(this.expC);
    }

    private void drawToastText(Canvas canvas, String str, float f, float f2) {
        int iIndexOf = str.indexOf(10);
        if (iIndexOf >= 0) {
            canvas.drawText(str, 0, iIndexOf, f, f2 - AndroidUtilities.dp(9.0f), (Paint) this.text);
            canvas.drawText(str, iIndexOf + 1, str.length(), f, f2 + AndroidUtilities.dp(9.0f), (Paint) this.text);
        } else {
            if (!isExpiry(str)) {
                canvas.drawText(str, f, f2, this.text);
                return;
            }
            this.toastMedium.setTextSize(this.text.getTextSize());
            this.toastMedium.setColor(this.text.getColor());
            canvas.drawText(this.expA, f, f2, this.text);
            float fMeasureText = this.text.measureText(this.expA) + f;
            canvas.drawText(this.expB, fMeasureText, f2, this.toastMedium);
            canvas.drawText(this.expC, fMeasureText + this.toastMedium.measureText(this.expB), f2, this.text);
        }
    }

    private void showToast(int i, String str) {
        lambda$showToast$9(i, str, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: showToast, reason: merged with bridge method [inline-methods] */
    public void lambda$showToast$9(final int i, final String str, final String str2) {
        long jCurrentTimeMillis = this.toastDelayUntil - System.currentTimeMillis();
        if (jCurrentTimeMillis > 0) {
            postDelayed(new Runnable() { // from class: org.telegram.ui.QrShare.QrShareView$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$showToast$9(i, str, str2);
                }
            }, jCurrentTimeMillis);
            return;
        }
        this.toastIcon = i;
        this.toastText = str;
        this.toastAction = str2;
        this.toastUntil = System.currentTimeMillis() + ((long) (str2 != null ? 4000 : 2800));
        invalidate();
    }

    private void updateChipText(boolean z) {
        String str;
        if (this.free) {
            if (!this.timerOn) {
                str = LocaleController.getString(C2807R.string.QrNoPaidFree) + " · " + LocaleController.getString(C2807R.string.QrNoPaidNoTimeLimit);
                this.lastChipSec = -1;
            } else {
                int iCeil = (int) Math.ceil(timerLeft(System.currentTimeMillis()) / 1000.0d);
                if (iCeil == this.lastChipSec && this.lastChip != null) {
                    return;
                }
                this.lastChipSec = iCeil;
                str = LocaleController.getString(C2807R.string.QrNoPaidFree) + " · " + LocaleController.formatString(C2807R.string.QrNoPaidExpiresIn, String.format(Locale.US, "%d:%02d", Integer.valueOf(iCeil / 60), Integer.valueOf(iCeil % 60)));
            }
            if (str.equals(this.lastChip)) {
                return;
            }
            this.lastChip = str;
            this.chipText.setText(str, z);
        }
    }

    private void haptic() {
        try {
            performHapticFeedback(3, 2);
        } catch (Exception unused) {
        }
    }

    private float cardW() {
        return getWidth() * 0.745f;
    }

    private float cardH() {
        return cardW() * AndroidUtilities.lerp(1.07f, 1.0f, this.tempK);
    }

    public void setTemporaryLink(boolean z) {
        if (this.tempLink == z) {
            return;
        }
        this.tempLink = z;
        if (!this.drawnOnce) {
            float f = z ? 1.0f : 0.0f;
            this.tempTarget = f;
            this.tempK = f;
        }
        invalidate();
    }

    public void setLinkExpires(long j) {
        long j2 = this.linkExpires;
        if (j2 == j) {
            return;
        }
        if (j2 != 0 && j != 0) {
            haptic();
        }
        this.linkExpires = j;
        this.lastTempChipSec = -1L;
        invalidate();
    }

    private float revealItemScale(float f, float f2) {
        float fClamp01 = 1.0f - Utilities.clamp01(((f * 420.0f) - (Math.max(0.0f, Math.min(10.0f, f2)) * 12.0f)) / 300.0f);
        return ((1.0f - ((fClamp01 * fClamp01) * fClamp01)) * 0.18f) + 0.82f;
    }

    public float revealTime() {
        if (this.sheetTarget < 0.5f) {
            return 1.0f;
        }
        return Utilities.clamp01((AnimationUtils.currentAnimationTimeMillis() - this.revealOpenAt) / 420.0f);
    }

    private void updatePaid() {
        float fLerp = this.chipShown ? 1.0f : 0.0f;
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        float f = this.paidTarget;
        if (f < 0.0f) {
            this.paidTarget = fLerp;
            this.paidK = fLerp;
            return;
        }
        if (fLerp != f) {
            this.paidTarget = fLerp;
            this.paidFrom = this.paidK;
            this.paidKAt = jCurrentAnimationTimeMillis;
        }
        if (this.paidK != fLerp) {
            float fClamp01 = Utilities.clamp01((jCurrentAnimationTimeMillis - this.paidKAt) / 320.0f);
            float fPow = fClamp01 < 0.5f ? 4.0f * fClamp01 * fClamp01 * fClamp01 : 1.0f - (((float) Math.pow(((-2.0f) * fClamp01) + 2.0f, 3.0d)) / 2.0f);
            if (fClamp01 < 1.0f) {
                fLerp = AndroidUtilities.lerp(this.paidFrom, fLerp, fPow);
            }
            this.paidK = fLerp;
            invalidate();
        }
    }

    private void updateTempLink() {
        float fLerp = this.tempLink ? 1.0f : 0.0f;
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        float f = this.tempTarget;
        if (fLerp != f) {
            if (fLerp == 1.0f && f == 0.0f && this.tempK <= 0.001f) {
                this.nameBurst = true;
                this.nbLayout = null;
            } else if (fLerp == 0.0f && this.tempK >= 0.999f) {
                this.nameBurst = false;
            }
            this.tempTarget = fLerp;
            this.tempFrom = this.tempK;
            this.tempKAt = jCurrentAnimationTimeMillis;
        }
        if (this.tempK != fLerp) {
            float fClamp01 = Utilities.clamp01((jCurrentAnimationTimeMillis - this.tempKAt) / 300.0f);
            float fPow = fClamp01 < 0.5f ? 4.0f * fClamp01 * fClamp01 * fClamp01 : 1.0f - (((float) Math.pow(((-2.0f) * fClamp01) + 2.0f, 3.0d)) / 2.0f);
            if (fClamp01 < 1.0f) {
                fLerp = AndroidUtilities.lerp(this.tempFrom, fLerp, fPow);
            }
            this.tempK = fLerp;
            if (fLerp <= 0.0f) {
                this.nameBurst = false;
            }
            invalidate();
        }
    }

    private void drawTempChip(Canvas canvas, int i, float f) {
        String string;
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = this.linkExpires;
        long jMax = j > 0 ? Math.max(0L, (j - (jCurrentTimeMillis / 1000)) - 1) : -1L;
        if (jMax != this.lastTempChipSec) {
            this.lastTempChipSec = jMax;
            if (jMax >= 0) {
                string = LocaleController.formatString(C2807R.string.QrNoPaidExpiresIn, String.format(Locale.US, "%d:%02d", Long.valueOf(jMax / 60), Long.valueOf(jMax % 60)));
            } else {
                string = LocaleController.getString(C2807R.string.QrCreatingLink);
            }
            this.tempChipText = string;
        }
        String str = this.tempChipText;
        this.chipPaint.setTextSize(AndroidUtilities.dp(11.0f));
        float fDp = AndroidUtilities.dp(11.0f) + this.chipPaint.measureText(str) + AndroidUtilities.dp(11.0f);
        float fDp2 = AndroidUtilities.dp(22.0f);
        float fChipCY = chipCY();
        float f2 = i;
        float f3 = fDp2 / 2.0f;
        this.rect.set((f2 - fDp) / 2.0f, fChipCY - f3, (f2 + fDp) / 2.0f, fChipCY + f3);
        Scene scene = this.scene;
        boolean z = scene != null && scene.light;
        this.glassButton = true;
        this.glassSmall = true;
        drawGlass(canvas, this.rect, f3, z, f);
        this.glassButton = false;
        this.glassSmall = false;
        this.chipPaint.setColor(Theme_multAlpha(z ? -436207616 : -218103809, f));
        canvas.drawText(str, this.rect.left + AndroidUtilities.dp(11.0f), fChipCY + AndroidUtilities.dp(4.0f), this.chipPaint);
        if (this.linkExpires > 0) {
            postInvalidateDelayed(1005 - (jCurrentTimeMillis % 1000));
        }
    }

    private float sheetH() {
        float fMax = Math.max(AndroidUtilities.dp(160.0f), sheetBottom() - (((((this.insetTop + AndroidUtilities.dp(51.0f)) + cardH()) + AndroidUtilities.dp(24.0f)) + AndroidUtilities.dp(11.0f)) + AndroidUtilities.dp(13.0f)));
        if (this.tab == 2 && this.giftsEndReached && this.gifts.size() <= 3) {
            fMax = Math.min(fMax, this.gifts.isEmpty() ? AndroidUtilities.dp(286.0f) : (((getWidth() - (AndroidUtilities.dp(10.0f) * 2)) - AndroidUtilities.dp(8.0f)) / 3.0f) + AndroidUtilities.dp(8.0f));
        }
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        float f = this.sheetHCur;
        if (f < 0.0f || this.sheet < 0.01f) {
            this.sheetHCur = fMax;
        } else if (f != fMax) {
            long jMin = Math.min(64L, Math.max(0L, jCurrentAnimationTimeMillis - this.sheetHAt));
            float f2 = this.sheetHCur;
            float fExp = f2 + ((fMax - f2) * (1.0f - ((float) Math.exp((-jMin) / 140.0f))));
            this.sheetHCur = fExp;
            if (Math.abs(fMax - fExp) < 0.5f) {
                this.sheetHCur = fMax;
            } else {
                invalidate();
            }
        }
        this.sheetHAt = jCurrentAnimationTimeMillis;
        return this.sheetHCur;
    }

    private boolean giftsEmpty() {
        return this.giftsEndReached && this.gifts.isEmpty();
    }

    private int giftCount() {
        return this.gifts.size();
    }

    private int giftCols() {
        int iGiftCount = giftCount();
        if (!this.giftsEndReached || iGiftCount <= 0 || iGiftCount >= 3) {
            return 3;
        }
        return iGiftCount;
    }

    private float cardTop() {
        float height = (((getHeight() * 0.468f) - (cardH() / 2.0f)) - AndroidUtilities.dp(15.0f)) + (AndroidUtilities.dp(16.0f) * (1.0f - Math.max(this.paidK, this.tempK)));
        return AndroidUtilities.lerp(height, Math.max(this.insetTop + AndroidUtilities.dp(51.0f), Math.min(height, (((sheetBottom() - sheetH()) - AndroidUtilities.dp(13.0f)) - (AndroidUtilities.dp(35.0f) * Math.max(this.paidK, this.tempK))) - cardH())), this.sheet);
    }

    private float chipCY() {
        return cardTop() + cardH() + AndroidUtilities.dp(24.0f);
    }

    private float barCY() {
        return (getHeight() - this.insetBottom) - AndroidUtilities.dp(40.0f);
    }

    private void ensureLogoOptimal() {
        if (this.logoOptimal != null || this.logo.getIntrinsicWidth() <= 0) {
            return;
        }
        RLottieNative rLottieNative = null;
        try {
            RLottieNative rLottieNativeCreateFromRawJson = RLottieNative.createFromRawJson(AndroidUtilities.readRes(C2807R.raw.plane_logo_plain));
            if (rLottieNativeCreateFromRawJson == null) {
                if (rLottieNativeCreateFromRawJson != null) {
                    rLottieNativeCreateFromRawJson.recycle();
                }
            } else {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(this.logo.getIntrinsicWidth(), this.logo.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
                rLottieNativeCreateFromRawJson.getFrame(Math.min(33, rLottieNativeCreateFromRawJson.getFrameCount() - 1), bitmapCreateBitmap, true);
                this.logoOptimal = bitmapCreateBitmap;
                rLottieNativeCreateFromRawJson.recycle();
            }
        } catch (Throwable th) {
            try {
                FileLog.m1040e(th);
            } finally {
                if (0 != 0) {
                    rLottieNative.recycle();
                }
            }
        }
    }

    public Bitmap renderShareImage() {
        int width = getWidth();
        int height = getHeight();
        if (width > 0 && height > 0) {
            float f = this.sheet;
            this.sheet = 0.0f;
            int iMin = Math.min(height, (int) (width * 1.92f));
            int iMax = (int) Math.max(0.0f, Math.min(height - iMin, (cardTop() + (cardH() / 2.0f)) - (iMin / 2.0f)));
            try {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, iMin, Bitmap.Config.ARGB_8888);
                ensureLogoOptimal();
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                canvas.translate(0.0f, -iMax);
                drawBackground(canvas, width, height, System.currentTimeMillis());
                this.sharing = true;
                drawCard(canvas, width);
                this.sharing = false;
                canvas.setBitmap(null);
                this.sheet = f;
                return bitmapCreateBitmap;
            } catch (OutOfMemoryError unused) {
                this.sheet = f;
            }
        }
        return null;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        this.drawnOnce = true;
        updateTempLink();
        updatePaid();
        this.immediateFrame = !this.openDone && this.openFrames == 0 && !this.sharing && this.immediateOnOpen;
        onDrawInner(canvas);
        this.immediateFrame = false;
        if (this.openDone) {
            return;
        }
        this.openFrames++;
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0162  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void onDrawInner(Canvas canvas) {
        Canvas canvas2;
        float f;
        float fSin;
        boolean z;
        long jCurrentTimeMillis = System.currentTimeMillis();
        int width = getWidth();
        int height = getHeight();
        step(jCurrentTimeMillis);
        stepTilt();
        float f2 = this.glintGate;
        Pattern pattern = this.pattern;
        this.glintGate = approach(f2, (pattern == null || pattern.type == 0) ? 0.0f : 1.0f, 0.12f);
        boolean z2 = QrRender.hasEffects() && canvas.isHardwareAccelerated();
        if (blurAllowed() && blurNow() && canvas.isHardwareAccelerated()) {
            if (this.bgNode == null) {
                this.bgNode = QrRender.createNode("qrBg");
                Object objCreateNode = QrRender.createNode("qrBlur");
                this.blurNode = objCreateNode;
                QrRender.setBlur(objCreateNode, AndroidUtilities.dpf2(17.6f) / 9.0f, Shader.TileMode.CLAMP);
            }
            drawBackground(QrRender.beginRecording(this.bgNode, width, height), width, height, jCurrentTimeMillis);
            QrRender.endRecording(this.bgNode);
            if (this.blurBuiltVersion != 1) {
                this.blurBuiltVersion = 1;
                QrRender.setBlur(this.blurNode, Math.max(0.5f, AndroidUtilities.dpf2(RimTune.f1215v[2]) / 9.0f), Shader.TileMode.CLAMP);
            }
            Canvas canvasBeginRecording = QrRender.beginRecording(this.blurNode, (width + 8) / 9, (height + 8) / 9);
            canvasBeginRecording.scale(0.11111111f, 0.11111111f);
            QrRender.draw(canvasBeginRecording, this.bgNode);
            QrRender.endRecording(this.blurNode);
            QrRender.draw(canvas, this.bgNode);
            canvas2 = canvas;
        } else {
            canvas2 = canvas;
            drawBackground(canvas2, width, height, jCurrentTimeMillis);
        }
        drawCard(canvas2, width);
        this.uiK = elem(0);
        drawTopBar(canvas2, z2);
        drawBottomBar(canvas2, z2);
        if (this.menu > 0.001f) {
            drawMenu(canvas2, z2);
        } else {
            float fChipWobble = chipWobble();
            float fBounce = bounce(this.chipBounceStart, 0.06f, 0.02f) * elemScale(elem(0));
            if (this.shatterAt <= 0 || this.free) {
                f = fBounce;
            } else {
                f = fBounce;
                float fCurrentAnimationTimeMillis = (AnimationUtils.currentAnimationTimeMillis() - this.shatterAt) / 180.0f;
                if (fCurrentAnimationTimeMillis < 1.0f) {
                    fSin = f * ((((float) Math.sin(((double) fCurrentAnimationTimeMillis) * 3.141592653589793d)) * 0.04f) + 1.0f);
                    invalidate();
                }
                z = fChipWobble == 0.0f || fSin != 1.0f;
                if (z) {
                    canvas2.save();
                    canvas2.scale(((0.5f * fChipWobble) + 1.0f) * fSin, (1.0f - fChipWobble) * fSin, this.chipRect.centerX(), this.chipRect.centerY());
                }
                drawChip(canvas2, width, jCurrentTimeMillis);
                if (z) {
                    canvas2.restore();
                }
            }
            fSin = f;
            if (fChipWobble == 0.0f) {
                if (z) {
                }
                drawChip(canvas2, width, jCurrentTimeMillis);
                if (z) {
                }
            }
        }
        drawSheet(canvas2, z2, width, height);
        drawToast(canvas2, z2, width, height, jCurrentTimeMillis);
        updateEmojiPanel();
        invalidate();
    }

    private void step(long j) {
        Delegate delegate;
        float fMin = this.lastStep == 0 ? 1.0f : Math.min(3.0f, (j - r0) / 16.667f);
        this.lastStep = j;
        this.frameK = fMin;
        float f = this.wave;
        if (f < 1.0f) {
            float fMin2 = Math.min(1.0f, (j - this.waveStart) / 600.0f);
            this.wave = fMin2;
            if (f < 0.3f && fMin2 >= 0.3f && (delegate = this.delegate) != null) {
                delegate.onSceneLight(this.scene.light);
            }
            if (this.wave >= 1.0f) {
                releaseScene(this.oldScene);
                this.oldScene = null;
            }
        }
        stepSheet();
        this.selA = approach(this.selA, this.selTarget, 0.25f);
        stepSwatchSelection();
        stepMenu();
        this.tabX = approach(this.tabX, this.tab, 0.25f);
        boolean z = this.toastText != null && j < this.toastUntil;
        this.toast = approach(this.toast, z ? 1.0f : 0.0f, z ? 0.2f : this.menuTarget > 0.5f ? 0.4f : 0.16f);
        float fLerp = AndroidUtilities.lerp(this.sweepFrom, this.sweepTo, 1.0f - ((float) Math.pow(1.0f - Math.min(1.0f, (j - this.sweepStart) / (this.sweepTo > this.sweepFrom ? 340L : 380L)), 3.0d)));
        this.chipSweep = fLerp;
        boolean z2 = this.free;
        if (z2 && fLerp >= 0.999f) {
            this.sweepDone = true;
        }
        if (z2) {
            this.burnFrac = this.timerOn ? Utilities.clamp01(timerLeft(j) / 60000.0f) : 1.0f;
            if (this.timerOn && !this.timerWaiting && j >= this.freeUntil) {
                restoreFee(LocaleController.getString(C2807R.string.QrNoPaidToastExpired));
            }
        }
        updateChipText(true);
    }

    private float approach(float f, float f2, float f3) {
        float fPow = f + ((f2 - f) * (1.0f - ((float) Math.pow(1.0f - f3, this.frameK))));
        return Math.abs(f2 - fPow) < 0.002f ? f2 : fPow;
    }

    private void drawBackground(Canvas canvas, int i, int i2, long j) {
        boolean z = (this.wave >= 1.0f || this.oldScene == null || this.scene == null) ? false : true;
        drawBackdrop(canvas, i, i2, z);
        drawPattern(canvas, i, i2);
        if (z && this.backdropRingOn) {
            drawBackdropBitmap(canvas, this.backdropRing);
        }
    }

    private float revealCorner() {
        if (this.revealCorner < 0.0f && isAttachedToWindow()) {
            this.revealCorner = QrRender.screenCornerRadius(this);
        }
        return this.revealCorner;
    }

    private void drawBackdrop(Canvas canvas, int i, int i2, boolean z) {
        if (this.scene == null || i <= 0 || i2 <= 0) {
            canvas.drawColor(-16777216);
            return;
        }
        float fMax = Math.max(i, i2) / 160.0f;
        float f = i;
        int iCeil = ((int) Math.ceil(f / fMax)) + 1;
        float f2 = i2;
        int iCeil2 = ((int) Math.ceil(f2 / fMax)) + 1;
        Bitmap bitmap = this.backdrop;
        if (bitmap == null || bitmap.getWidth() != iCeil || this.backdrop.getHeight() != iCeil2) {
            Bitmap.Config config = Bitmap.Config.ARGB_8888;
            this.backdrop = Bitmap.createBitmap(iCeil, iCeil2, config);
            this.backdropRing = Bitmap.createBitmap(iCeil, iCeil2, config);
            Bitmap bitmap2 = this.backdrop;
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            BitmapShader bitmapShader = new BitmapShader(bitmap2, tileMode, tileMode);
            this.backdropShader = bitmapShader;
            this.backdropRoundPaint.setShader(bitmapShader);
            this.backdropValid = false;
        }
        this.backdropCell = fMax;
        putBackdropScene(0, z ? this.oldScene : this.scene, i, i2);
        this.backdropRingOn = false;
        if (z) {
            putBackdropScene(1, this.scene, i, i2);
            putBackdropWave(i, i2);
        }
        int i3 = z ? 2 : 1;
        if (!this.backdropValid || i3 != this.backdropCount || !Arrays.equals(this.bdGeom, this.bdGeomDrawn) || !Arrays.equals(this.bdColors, this.bdColorsDrawn) || (z && !Arrays.equals(this.bdWave, this.bdWaveDrawn))) {
            Utilities.generateQrBackdrop(this.backdrop, this.backdropRingOn ? this.backdropRing : null, fMax, i3, this.bdGeom, this.bdColors, this.bdWave);
            float[] fArr = this.bdGeom;
            System.arraycopy(fArr, 0, this.bdGeomDrawn, 0, fArr.length);
            int[] iArr = this.bdColors;
            System.arraycopy(iArr, 0, this.bdColorsDrawn, 0, iArr.length);
            float[] fArr2 = this.bdWave;
            System.arraycopy(fArr2, 0, this.bdWaveDrawn, 0, fArr2.length);
            this.backdropCount = i3;
            this.backdropValid = true;
        }
        if (this.reveal < 1.0f && revealCorner() > 0.0f) {
            this.backdropMatrix.setScale(fMax, fMax);
            float f3 = (-fMax) / 2.0f;
            this.backdropMatrix.postTranslate(f3, f3);
            this.backdropShader.setLocalMatrix(this.backdropMatrix);
            float f4 = this.revealCorner;
            canvas.drawRoundRect(0.0f, 0.0f, f, f2, f4, f4, this.backdropRoundPaint);
            return;
        }
        drawBackdropBitmap(canvas, this.backdrop);
    }

    private void drawBackdropBitmap(Canvas canvas, Bitmap bitmap) {
        float f = this.backdropCell;
        float f2 = (-f) / 2.0f;
        this.backdropDst.set(f2, f2, (bitmap.getWidth() - 0.5f) * f, (bitmap.getHeight() - 0.5f) * f);
        canvas.drawBitmap(bitmap, (Rect) null, this.backdropDst, this.backdropPaint);
    }

    private void putBackdropScene(int i, Scene scene, int i2, int i3) {
        int i4 = i * 7;
        if (scene.type == 0 && scene.index == TUNED_COLOR) {
            float[] fArr = this.bdGeom;
            fArr[i4] = 0.0f;
            fArr[i4 + 1] = 0.0f;
            fArr[i4 + 2] = 0.0f;
            float f = SIN18;
            fArr[i4 + 3] = f;
            float f2 = COS18;
            fArr[i4 + 4] = f2;
            fArr[i4 + 5] = 1.0f / ((i2 * f) + (i3 * f2));
            fArr[i4 + 6] = 0.5f;
        } else {
            float[] fArr2 = this.bdGeom;
            fArr2[i4] = 1.0f;
            fArr2[i4 + 1] = i2 / 2.0f;
            fArr2[i4 + 2] = cardTop() + (cardH() / 2.0f);
            float[] fArr3 = this.bdGeom;
            fArr3[i4 + 3] = 0.0f;
            fArr3[i4 + 4] = 0.0f;
            fArr3[i4 + 5] = 1.0f / (((float) Math.hypot(i2, i3)) * 0.62f);
            this.bdGeom[i4 + 6] = 0.55f;
        }
        int[] iArr = this.bdColors;
        int i5 = i * 3;
        iArr[i5] = scene.center;
        iArr[i5 + 1] = scene.mid;
        iArr[i5 + 2] = scene.edge;
    }

    private void putBackdropWave(int i, int i2) {
        float fWaveEase = waveEase(this.wave);
        float f = this.waveX;
        double dMax = Math.max(f, i - f);
        float f2 = this.waveY;
        float fHypot = (((float) Math.hypot(dMax, Math.max(f2, i2 - f2))) + AndroidUtilities.dp(60.0f)) * fWaveEase;
        float[] fArr = this.bdWave;
        fArr[0] = this.waveX;
        fArr[1] = this.waveY;
        fArr[2] = fHypot;
        boolean z = fHypot > ((float) AndroidUtilities.dp(4.0f));
        this.backdropRingOn = z;
        if (z) {
            float fLerp = AndroidUtilities.lerp(AndroidUtilities.dp(90.0f), AndroidUtilities.dp(56.0f), fWaveEase);
            float fClamp01 = Utilities.clamp01((1.0f - this.wave) * 1.6f) * 0.38f;
            float fMax = Math.max(0.0f, fHypot - fLerp) / fHypot;
            float fDp = AndroidUtilities.dp(8.0f) + fHypot;
            float[] fArr2 = this.bdWave;
            fArr2[3] = fMax * fHypot;
            fArr2[4] = AndroidUtilities.lerp(fMax, 1.0f, 0.45f) * fHypot;
            this.bdWave[5] = AndroidUtilities.lerp(fMax, 1.0f, 0.82f) * fHypot;
            float[] fArr3 = this.bdWave;
            fArr3[6] = fHypot - (0.004f * fDp);
            fArr3[7] = fHypot + AndroidUtilities.dp(3.0f);
            float[] fArr4 = this.bdWave;
            fArr4[8] = fDp;
            fArr4[9] = 0.0f;
            fArr4[10] = 0.2f * fClamp01;
            fArr4[11] = 0.6f * fClamp01;
            fArr4[12] = fClamp01;
            fArr4[13] = fClamp01 * 0.4f;
            fArr4[14] = 0.0f;
            this.bdColors[6] = QrCodeLayer.mixOklab(this.scene.center, -1, 0.55f);
        }
    }

    private int blendLab(int i, int i2, float f) {
        ColorUtils.colorToLAB(i, this.lab1);
        ColorUtils.colorToLAB(i2, this.lab2);
        ColorUtils.blendLAB(this.lab1, this.lab2, f, this.labOut);
        double[] dArr = this.labOut;
        return ColorUtils.LABToColor(dArr[0], dArr[1], dArr[2]);
    }

    private static float waveEase(float f) {
        return 1.0f - ((float) Math.pow(1.0f - f, 2.4000000953674316d));
    }

    private static int Theme_multAlpha(int i, float f) {
        return ColorUtils.setAlphaComponent(i, (int) (Color.alpha(i) * Utilities.clamp01(f)));
    }

    public static int insetTop(View view) {
        return Math.max(0, AndroidUtilities.statusBarHeight - layoutTopInWindow(view));
    }

    public static int insetBottom(View view) {
        return Math.max(0, AndroidUtilities.navigationBarHeight - (view.getRootView().getHeight() - (layoutTopInWindow(view) + view.getHeight())));
    }

    private static int layoutTopInWindow(View view) {
        int scrollY = 0;
        while (true) {
            int top = scrollY + view.getTop();
            if (!(view.getParent() instanceof View)) {
                return top;
            }
            view = (View) view.getParent();
            scrollY = top - view.getScrollY();
        }
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.insetTop = Math.max(insetTop(this), (AndroidUtilities.dp(9.0f) + AndroidUtilities.dp(20.0f)) - (ActionBar.getCurrentActionBarHeight() / 2));
        this.insetBottom = Math.max(insetBottom(this), AndroidUtilities.dp(22.0f) - AndroidUtilities.dp(20.0f));
        if (Build.VERSION.SDK_INT < 29 || !z) {
            return;
        }
        int i5 = i3 - i;
        int iCardTop = (int) (cardTop() + (cardH() / 2.0f));
        int iDp = AndroidUtilities.dp(100.0f);
        int iDp2 = AndroidUtilities.dp(24.0f);
        this.exclusion.clear();
        int i6 = iCardTop - iDp;
        int i7 = iCardTop + iDp;
        this.exclusion.add(new Rect(0, i6, iDp2, i7));
        this.exclusion.add(new Rect(i5 - iDp2, i6, i5, i7));
        setSystemGestureExclusionRects(this.exclusion);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        prewarmBgLight(i, i2);
        super.onSizeChanged(i, i2, i3, i4);
    }

    private static float valueNoise(float f) {
        int iFloor = (int) Math.floor(f);
        float f2 = f - iFloor;
        float f3 = f2 * f2 * (3.0f - (f2 * 2.0f));
        float fFract = fract(Math.sin(((double) iFloor) * 127.1d) * 43758.5453d);
        return fFract + ((fract(Math.sin(((double) (iFloor + 1)) * 127.1d) * 43758.5453d) - fFract) * f3);
    }

    private void prewarmSymbolPasses(Pattern pattern, Bitmap bitmap) {
        if (bitmap == null) {
            return;
        }
        if (RimTune.f1215v[35] > 0.5f) {
            ensureEdge(bitmap);
        }
        litTint(pattern);
    }

    private void prewarmBgLight(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            return;
        }
        float fDp = AndroidUtilities.dp(12.0f);
        int iCeil = ((int) Math.ceil(i / fDp)) + 1;
        int iCeil2 = ((int) Math.ceil(i2 / fDp)) + 1;
        Bitmap bitmap = this.bgLight;
        if (bitmap != null && bitmap.getWidth() == iCeil && this.bgLight.getHeight() == iCeil2) {
            return;
        }
        this.bgLight = Bitmap.createBitmap(iCeil, iCeil2, Bitmap.Config.ARGB_8888);
        this.bgLightPx = new int[iCeil * iCeil2];
    }

    private void drawBackgroundLight(Canvas canvas, int i, int i2) {
        int i3;
        float fExp;
        int i4 = i;
        int i5 = i2;
        float[] fArr = RimTune.f1215v;
        float f = fArr[46] / 100.0f;
        float f2 = 0.0f;
        if (f <= 0.0f || i4 <= 0 || i5 <= 0) {
            return;
        }
        float fDp = AndroidUtilities.dp(12.0f);
        float f3 = i4;
        int iCeil = ((int) Math.ceil(f3 / fDp)) + 1;
        float f4 = i5;
        int iCeil2 = ((int) Math.ceil(f4 / fDp)) + 1;
        Bitmap bitmap = this.bgLight;
        if (bitmap == null || bitmap.getWidth() != iCeil || this.bgLight.getHeight() != iCeil2) {
            this.bgLight = Bitmap.createBitmap(iCeil, iCeil2, Bitmap.Config.ARGB_8888);
            this.bgLightPx = new int[iCeil * iCeil2];
        }
        float f5 = 1.0f;
        float fMax = Math.max(1.0f, fArr[45]);
        float f6 = fArr[47] / 100.0f;
        float f7 = f * 0.0275f;
        float fDp2 = AndroidUtilities.dp(130.0f);
        float f8 = this.fieldT * 0.12f;
        int i6 = 0;
        boolean z = false;
        while (i6 < iCeil2) {
            float f9 = f2;
            int i7 = 0;
            while (i7 < iCeil) {
                float f10 = i7 * fDp;
                float f11 = i6 * fDp;
                int i8 = i6;
                float f12 = fDp2;
                float f13 = f5;
                shine(f10, f11, i4, i5, 0.0f);
                float f14 = this.shineD / fMax;
                if (f14 >= 3.5f || f14 <= -3.5f) {
                    i3 = iCeil;
                    fExp = f9;
                } else {
                    float f15 = (-0.5f) * f14 * f14;
                    i3 = iCeil;
                    fExp = this.shineDEnv * ((float) Math.exp(f15));
                    if (f6 > f9) {
                        float f16 = (((f10 - (f3 / 2.0f)) * (-this.sweepDY)) + ((f11 - (f4 / 2.0f)) * this.sweepDX)) / f12;
                        fExp *= (((((valueNoise(f16 + f8) * 0.65f) + (valueNoise(((f16 * 2.3f) - (1.7f * f8)) + 11.3f) * 0.35f)) * 2.0f) - f13) * f6) + f13;
                    }
                }
                int iMax = Math.max(0, Math.min(255, Math.round(255.0f * f7 * fExp)));
                if (iMax > 0) {
                    z = true;
                }
                this.bgLightPx[(i8 * i3) + i7] = (iMax << 24) | 16777215;
                i7++;
                i5 = i2;
                iCeil = i3;
                fDp2 = f12;
                f5 = f13;
                i6 = i8;
                i4 = i;
            }
            i6++;
            i5 = i2;
            f2 = f9;
            f5 = f5;
            i4 = i;
        }
        int i9 = iCeil;
        if (z) {
            this.bgLight.setPixels(this.bgLightPx, 0, i9, 0, 0, i9, iCeil2);
            float f17 = (-fDp) / 2.0f;
            float f18 = fDp / 2.0f;
            this.bgLightDst.set(f17, f17, (i9 * fDp) - f18, (iCeil2 * fDp) - f18);
            canvas.drawBitmap(this.bgLight, (Rect) null, this.bgLightDst, this.bgLightPaint);
        }
    }

    private boolean place(float f, float f2, float f3, int i, int i2, int i3, int i4, int i5, float f4) {
        return placeInner(f, f2, f3, i, i2, i3, i4, i5, f4);
    }

    /* JADX WARN: Removed duplicated region for block: B:72:0x020f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0210  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean placeInner(float f, float f2, float f3, int i, int i2, int i3, int i4, int i5, float f4) {
        float f5;
        float f6;
        boolean z;
        float f7;
        float f8;
        float f9;
        float f10;
        float fMax;
        float fExp;
        float f11;
        float fSmooth;
        float fDp = AndroidUtilities.dp(90.0f);
        float f12 = 1.3f * fDp;
        float f13 = -f12;
        if (f < f13) {
            return false;
        }
        float f14 = i;
        if (f > f14 + f12 || f2 < f13) {
            return false;
        }
        float f15 = i2;
        if (f2 > f12 + f15) {
            return false;
        }
        long jNodeKey = nodeKey(i3, i4, i5);
        int iFind = this.nodes.find(jNodeKey);
        if (this.wave >= 1.0f || this.oldScene == null || (iFind >= 0 && this.nodes.hit[iFind] == this.waveId)) {
            f5 = 1.0f;
            f6 = 0.0f;
            z = false;
        } else {
            float f16 = this.waveX;
            double dMax = Math.max(f16, f14 - f16);
            float f17 = this.waveY;
            z = false;
            f5 = 1.0f;
            f6 = 0.0f;
            float fHypot = ((float) Math.hypot(dMax, Math.max(f17, f15 - f17))) + AndroidUtilities.dp(60.0f);
            float f18 = f - this.waveX;
            float f19 = f2 - this.waveY;
            float fSqrt = (float) Math.sqrt((f18 * f18) + (f19 * f19));
            if (fSqrt <= fHypot * waveEase(this.wave)) {
                if (iFind < 0) {
                    iFind = this.nodes.obtain(jNodeKey);
                }
                if (iFind >= 0) {
                    NodeSprings nodeSprings = this.nodes;
                    nodeSprings.hit[iFind] = this.waveId;
                    float f20 = 1.0f / f4;
                    float f21 = fSqrt > 1.0f ? f18 / fSqrt : 0.0f;
                    float f22 = fSqrt > 1.0f ? f19 / fSqrt : -1.0f;
                    float[] fArr = nodeSprings.vx;
                    fArr[iFind] = fArr[iFind] + (AndroidUtilities.dp(360.0f) * f21 * f20);
                    float[] fArr2 = this.nodes.vy;
                    fArr2[iFind] = fArr2[iFind] + (f22 * AndroidUtilities.dp(360.0f) * f20);
                    NodeSprings nodeSprings2 = this.nodes;
                    float[] fArr3 = nodeSprings2.vr;
                    fArr3[iFind] = fArr3[iFind] + ((f21 >= 0.0f ? 1.0f : -1.0f) * 180.0f * f20);
                    float[] fArr4 = nodeSprings2.vs;
                    fArr4[iFind] = fArr4[iFind] + 1.8f;
                }
            }
        }
        if (iFind >= 0) {
            NodeSprings nodeSprings3 = this.nodes;
            f7 = f + nodeSprings3.f1208x[iFind];
            f8 = f2 + nodeSprings3.f1209y[iFind];
            this.slotRot = nodeSprings3.f1206r[iFind];
            this.slotPulse = nodeSprings3.f1207s[iFind];
        } else {
            float f23 = f6;
            this.slotRot = f23;
            this.slotPulse = f23;
            f7 = f;
            f8 = f2;
        }
        float f24 = f14 / 2.0f;
        float fCardTop = cardTop() + (cardH() / 2.0f);
        float f25 = f7 - f24;
        float f26 = f8 - fCardTop;
        if (f25 > 0.5f) {
            f9 = f5;
            f10 = 2.0f;
            fMax = Math.max(0.0f, f25 / Math.max(f9, f14 - f24));
        } else {
            f9 = f5;
            f10 = 2.0f;
            fMax = 0.0f;
            if (f25 < -0.5f) {
                fMax = Math.max(0.0f, (-f25) / Math.max(f9, f24));
            }
        }
        if (f26 > 0.5f) {
            fMax = Math.max(fMax, f26 / Math.max(f9, f15 - fCardTop));
        } else if (f26 < -0.5f) {
            fMax = Math.max(fMax, (-f26) / Math.max(f9, fCardTop));
        }
        float fMin = Math.min(f9, fMax);
        float fSmooth2 = f9 - (smooth(0.55f, f9, fMin) * 0.22f);
        float fSmooth3 = f9 - (smooth(0.8f, f9, fMin) * 0.2f);
        if (f7 >= fDp || f7 > f14 - f7) {
            if (f14 - f7 < fDp) {
                fExp = (float) Math.exp((r8 / fDp) - 1.0f);
                f7 = f14 - (fDp * fExp);
            } else {
                fExp = 1.0f;
            }
        } else {
            fExp = (float) Math.exp((f7 / fDp) - f9);
            f7 = fDp * fExp;
        }
        if (f8 < fDp && f8 <= f15 - f8) {
            float fExp2 = (float) Math.exp((f8 / fDp) - 1.0f);
            f11 = fDp * fExp2;
            fExp = Math.min(fExp, fExp2);
        } else {
            if (f15 - f8 < fDp) {
                float fExp3 = (float) Math.exp((r11 / fDp) - 1.0f);
                f11 = f15 - (fDp * fExp3);
                fExp = Math.min(fExp, fExp3);
            }
            fSmooth = fSmooth3 * smooth(0.08f, 0.25f, fExp);
            this.slotAlpha = fSmooth;
            if (fSmooth > 0.004f) {
                return z;
            }
            if (f3 * fSmooth2 < AndroidUtilities.dp(10.0f)) {
                fSmooth2 = AndroidUtilities.dp(10.0f) / Math.max(1.0f, f3);
            }
            float fMax2 = fExp * fSmooth2;
            if (i3 != 1) {
                fMax2 = Math.max(fMax2, Math.min(f3, AndroidUtilities.dp(9.0f)) / Math.max(1.0f, f3));
            }
            this.slotScaleK = fMax2;
            float f27 = (f3 * fMax2) / f10;
            float fClamp01 = Utilities.clamp01(Math.min(Math.min(f7 - f27, (f14 - f7) - f27), Math.min(f8 - f27, (f15 - f8) - f27)) / AndroidUtilities.dp(12.0f));
            float f28 = this.slotAlpha * fClamp01 * fClamp01 * (3.0f - (fClamp01 * f10));
            this.slotAlpha = f28;
            if (f28 <= 0.004f) {
                return z;
            }
            this.slotX = f7;
            this.slotY = f8;
            this.slotLight = shine(f7, f8, i, i2);
            this.slotCore = this.shineCore;
            this.slotD = this.shineD;
            this.slotDEnv = this.shineDEnv;
            return true;
        }
        f8 = f11;
        fSmooth = fSmooth3 * smooth(0.08f, 0.25f, fExp);
        this.slotAlpha = fSmooth;
        if (fSmooth > 0.004f) {
        }
    }

    public static final class NodeSprings {

        /* JADX INFO: renamed from: n */
        int f1205n;
        final long[] keys = new long[4096];
        final boolean[] used = new boolean[4096];

        /* JADX INFO: renamed from: x */
        final float[] f1208x = new float[4096];

        /* JADX INFO: renamed from: y */
        final float[] f1209y = new float[4096];
        final float[] vx = new float[4096];
        final float[] vy = new float[4096];

        /* JADX INFO: renamed from: r */
        final float[] f1206r = new float[4096];
        final float[] vr = new float[4096];

        /* JADX INFO: renamed from: s */
        final float[] f1207s = new float[4096];
        final float[] vs = new float[4096];
        final int[] hit = new int[4096];
        final int[] list = new int[4096];

        private static long mix(long j) {
            long j2 = (j ^ (j >>> 33)) * (-49064778989728563L);
            return j2 ^ (j2 >>> 33);
        }

        public int find(long j) {
            if (this.f1205n == 0) {
                return -1;
            }
            for (int iMix = (int) (mix(j) & 4095); this.used[iMix]; iMix = (iMix + 1) & 4095) {
                if (this.keys[iMix] == j) {
                    return iMix;
                }
            }
            return -1;
        }

        public int obtain(long j) {
            if (this.f1205n >= 3072) {
                return -1;
            }
            int iMix = (int) (mix(j) & 4095);
            while (true) {
                boolean[] zArr = this.used;
                if (!zArr[iMix]) {
                    zArr[iMix] = true;
                    this.keys[iMix] = j;
                    this.hit[iMix] = -1;
                    float[] fArr = this.f1208x;
                    float[] fArr2 = this.f1209y;
                    float[] fArr3 = this.vx;
                    float[] fArr4 = this.vy;
                    float[] fArr5 = this.f1206r;
                    float[] fArr6 = this.vr;
                    float[] fArr7 = this.f1207s;
                    this.vs[iMix] = 0.0f;
                    fArr7[iMix] = 0.0f;
                    fArr6[iMix] = 0.0f;
                    fArr5[iMix] = 0.0f;
                    fArr4[iMix] = 0.0f;
                    fArr3[iMix] = 0.0f;
                    fArr2[iMix] = 0.0f;
                    fArr[iMix] = 0.0f;
                    int[] iArr = this.list;
                    int i = this.f1205n;
                    this.f1205n = i + 1;
                    iArr[i] = iMix;
                    return iMix;
                }
                if (this.keys[iMix] == j) {
                    return iMix;
                }
                iMix = (iMix + 1) & 4095;
            }
        }

        public boolean step(float f) {
            float fSqrt = ((float) Math.sqrt(220.0d)) * 1.24f;
            boolean z = false;
            for (int i = 0; i < this.f1205n; i++) {
                int i2 = this.list[i];
                float[] fArr = this.f1208x;
                float f2 = fArr[i2];
                if (f2 != 0.0f || this.f1209y[i2] != 0.0f || this.vx[i2] != 0.0f || this.vy[i2] != 0.0f || this.f1206r[i2] != 0.0f || this.vr[i2] != 0.0f || this.f1207s[i2] != 0.0f || this.vs[i2] != 0.0f) {
                    float[] fArr2 = this.vx;
                    float f3 = fArr2[i2];
                    float f4 = f3 + (((f2 * (-220.0f)) - (fSqrt * f3)) * f);
                    fArr2[i2] = f4;
                    fArr[i2] = fArr[i2] + (f4 * f);
                    float[] fArr3 = this.vy;
                    float f5 = fArr3[i2];
                    float[] fArr4 = this.f1209y;
                    float f6 = f5 + (((fArr4[i2] * (-220.0f)) - (fSqrt * f5)) * f);
                    fArr3[i2] = f6;
                    fArr4[i2] = fArr4[i2] + (f6 * f);
                    float[] fArr5 = this.vr;
                    float f7 = fArr5[i2];
                    float[] fArr6 = this.f1206r;
                    float f8 = f7 + (((fArr6[i2] * (-220.0f)) - (fSqrt * f7)) * f);
                    fArr5[i2] = f8;
                    fArr6[i2] = fArr6[i2] + (f8 * f);
                    float[] fArr7 = this.vs;
                    float f9 = fArr7[i2];
                    float[] fArr8 = this.f1207s;
                    float f10 = f9 + (((fArr8[i2] * (-220.0f)) - (fSqrt * f9)) * f);
                    fArr7[i2] = f10;
                    fArr8[i2] = fArr8[i2] + (f10 * f);
                    if (Math.abs(fArr[i2]) + Math.abs(this.f1209y[i2]) + Math.abs(this.vx[i2]) + Math.abs(this.vy[i2]) >= 0.05f || Math.abs(this.f1206r[i2]) + Math.abs(this.vr[i2]) >= 0.02f || Math.abs(this.f1207s[i2]) + Math.abs(this.vs[i2]) >= 5.0E-4f) {
                        z = true;
                    } else {
                        float[] fArr9 = this.f1208x;
                        float[] fArr10 = this.f1209y;
                        float[] fArr11 = this.vx;
                        float[] fArr12 = this.vy;
                        float[] fArr13 = this.f1206r;
                        float[] fArr14 = this.vr;
                        float[] fArr15 = this.f1207s;
                        this.vs[i2] = 0.0f;
                        fArr15[i2] = 0.0f;
                        fArr14[i2] = 0.0f;
                        fArr13[i2] = 0.0f;
                        fArr12[i2] = 0.0f;
                        fArr11[i2] = 0.0f;
                        fArr10[i2] = 0.0f;
                        fArr9[i2] = 0.0f;
                    }
                }
            }
            return z;
        }

        public void clear() {
            for (int i = 0; i < this.f1205n; i++) {
                this.used[this.list[i]] = false;
            }
            this.f1205n = 0;
        }
    }

    private void stepMotion(long j) {
        float f = this.fieldT;
        if (this.lastFieldT >= 0.0f) {
            float f2 = this.idleDt;
            if (f2 > 0.0f) {
                float f3 = this.motionT - (f2 / 2.0f);
                double dSin = DRIFT_ANGLE + (((float) Math.sin(0.025f * f3)) * 1.2f) + (((float) Math.sin((f3 * 0.016f) + 1.0f)) * 0.6f);
                this.wanderX += ((float) Math.cos(dSin)) * 6.2f * AndroidUtilities.dp(1.0f) * f2;
                this.wanderY += ((float) Math.sin(dSin)) * 6.2f * AndroidUtilities.dp(1.0f) * f2;
            }
        }
        float f4 = this.lastFieldT;
        float fMin = f4 >= 0.0f ? Math.min(0.033f, Math.max(0.0f, f - f4)) : 0.0f;
        this.shineK = 1.0f - ((float) Math.exp((-fMin) / 0.09f));
        this.lastFieldT = f;
        if (fMin > 0.0f && this.nodes.f1205n > 0) {
            float f5 = fMin / 2.0f;
            boolean zStep = false;
            for (int i = 0; i < 2; i++) {
                zStep |= this.nodes.step(f5);
            }
            if (!zStep && (this.wave >= 1.0f || this.oldScene == null)) {
                this.nodes.clear();
            }
        }
        if (this.gliding) {
            float f6 = (j - this.glideStart) / 1000.0f;
            float fExp = (1.0f - ((float) Math.exp((-f6) / 0.35f))) * 0.35f;
            this.panX = this.glideFromX + (this.glideVX * fExp);
            this.panY = this.glideFromY + (this.glideVY * fExp);
            if (f6 > 2.8f) {
                this.gliding = false;
            }
        }
        if (this.springing) {
            float f7 = (j - this.springStart) / 1000.0f;
            float fExp2 = (float) (Math.exp((-f7) / 0.22f) * Math.cos((((double) f7) * 6.283185307179586d) / 0.8500000238418579d));
            this.stretchX = this.springX * fExp2;
            this.stretchY = this.springY * fExp2;
            if (f7 > 1.6f) {
                this.springing = false;
                this.stretchY = 0.0f;
                this.stretchX = 0.0f;
            }
        }
    }

    private float rubber(float f, float f2) {
        return 0.32f * f2 * ((float) Math.tanh((f / Math.max(1.0f, f2)) * 2.5f));
    }

    /* JADX WARN: Removed duplicated region for block: B:72:0x01c5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void drawPattern(Canvas canvas, int i, int i2) {
        float f;
        boolean z;
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        float f2 = (jCurrentAnimationTimeMillis - this.clockStart) / 1000.0f;
        this.fieldT = f2;
        float f3 = this.lastWallT;
        float fMax = f3 < 0.0f ? 0.0f : Math.max(0.0f, Math.min(0.05f, f2 - f3));
        float f4 = this.fieldT;
        this.lastWallT = f4;
        boolean z2 = this.panning || this.gliding || this.springing;
        if (z2) {
            this.idleResumeAt = 0.25f + f4;
        }
        float f5 = (z2 || f4 < this.idleResumeAt) ? 0.0f : 1.0f;
        float f6 = this.idleK;
        float f7 = f5 < f6 ? 0.07f : 0.45f;
        if (fMax > 0.0f) {
            this.idleK = f6 + ((f5 - f6) * (1.0f - ((float) Math.exp((-fMax) / f7))));
        }
        float f8 = fMax * this.idleK;
        this.idleDt = f8;
        this.motionT = this.motionT + f8;
        double radians = (float) Math.toRadians((r7 * (-0.763f)) % 360.0f);
        this.fieldCos = (float) Math.cos(radians);
        this.fieldSin = (float) Math.sin(radians);
        stepMotion(jCurrentAnimationTimeMillis);
        float f9 = RimTune.f1215v[27] / 100.0f;
        while (true) {
            f = this.fieldT;
            float f10 = this.lightSweepStart;
            float f11 = this.sweepPeriod;
            float f12 = 1.5f;
            if (f < f10 + f11) {
                break;
            }
            this.lightSweepStart = f10 + f11;
            float[] fArr = RimTune.f1215v;
            float f13 = fArr[25] + 0.2f;
            float f14 = fArr[26];
            if (!emojiOnlyShine()) {
                f12 = 1.0f;
            }
            this.sweepPeriod = Math.max(f13, (f14 * f12) + (this.random.nextFloat() * 0.8f * f9));
            double radians2 = Math.toRadians(fArr[24] + ((this.random.nextFloat() - 0.5f) * 12.0f * f9));
            this.sweepDX = (float) Math.cos(radians2);
            this.sweepDY = (float) Math.sin(radians2);
        }
        if (!this.firstSweepSet) {
            this.firstSweepSet = true;
            this.lightSweepStart = (RimTune.f1215v[51] / 1000.0f) + f + 1.5f;
            this.sweepPeriod = 1000.0f;
        }
        float f15 = this.lightSweepStart;
        float[] fArr2 = RimTune.f1215v;
        float f16 = fArr2[25];
        if (f >= f15 + f16 && this.sweepPeriod > 999.0f) {
            this.sweepPeriod = fArr2[26];
        }
        float f17 = (f - f15) / f16;
        this.shining = this.reveal >= 1.0f && f17 >= 0.0f && f17 < 1.0f;
        this.shineW = AndroidUtilities.dpf2(fArr2[23]);
        if (this.shining) {
            float fCos = 0.5f - (((float) Math.cos(((double) f17) * 3.141592653589793d)) * 0.5f);
            float fAbs = (((Math.abs(this.sweepDX) * i) + (Math.abs(this.sweepDY) * i2)) / 2.0f) + (this.shineW * 3.0f);
            this.shineC = AndroidUtilities.lerp(-fAbs, fAbs, fCos);
            this.shineEnv = 1.0f;
        }
        stepTiltShine(i, i2);
        if (this.shining && this.pattern.type != 0) {
            drawBackgroundLight(canvas, i, i2);
        }
        float f18 = (jCurrentAnimationTimeMillis - this.patternStart) / 1000.0f;
        Pattern pattern = this.oldPattern;
        if (pattern == null) {
            z = false;
        } else {
            if (f18 < (this.pattern.waveSwap ? 0.6f : 0.3f) + 0.135f + 0.315f) {
                z = true;
            }
        }
        if (!z && pattern != null) {
            releasePattern(pattern);
            this.oldPattern = null;
        }
        if (z) {
            Pattern pattern2 = this.oldPattern;
            if (pattern2.type == 1) {
                Pattern pattern3 = this.pattern;
                if (pattern3.type == 1) {
                    drawEmojiSwap(canvas, i, i2, pattern2, pattern3, f18);
                    return;
                }
            }
        }
        if (!z || !this.pattern.waveSwap) {
            if (z) {
                drawField(canvas, i, i2, this.oldPattern, true, this.pattern.type == 0, f18);
                f18 = f18;
            }
            drawField(canvas, i, i2, this.pattern, false, !z || this.oldPattern.type == 0, z ? f18 : 100.0f);
            return;
        }
        if (this.wave >= 1.0f || this.oldScene == null) {
            releasePattern(this.oldPattern);
            this.oldPattern = null;
            drawField(canvas, i, i2, this.pattern, false, true, 100.0f);
            return;
        }
        float f19 = this.waveX;
        double dMax = Math.max(f19, i - f19);
        float f20 = this.waveY;
        float fHypot = (((float) Math.hypot(dMax, Math.max(f20, i2 - f20))) + AndroidUtilities.dp(60.0f)) * waveEase(this.wave);
        this.wavePath.rewind();
        this.wavePath.addCircle(this.waveX, this.waveY, fHypot, Path.Direction.CW);
        canvas.save();
        QrRender.clipOut(canvas, this.wavePath);
        drawField(canvas, i, i2, this.oldPattern, true, this.pattern.type == 0, -1.0f);
        canvas.restore();
        canvas.save();
        canvas.clipPath(this.wavePath);
        drawField(canvas, i, i2, this.pattern, false, this.oldPattern.type == 0, 100.0f);
        canvas.restore();
    }

    private Bitmap inked(Pattern pattern, Bitmap bitmap, boolean z) {
        if (z) {
            Bitmap bitmap2 = pattern.inkFallback;
            if (bitmap2 == null || pattern.inkFallbackFor != bitmap || pattern.inkFallbackColor != pattern.ink) {
                pattern.inkFallback = inkCopy(bitmap, pattern.ink, bitmap2);
                pattern.inkFallbackFor = bitmap;
                pattern.inkFallbackColor = pattern.ink;
            }
            return pattern.inkFallback;
        }
        Bitmap bitmap3 = pattern.inkBitmap;
        if (bitmap3 == null || pattern.inkBitmapFor != bitmap || pattern.inkBitmapColor != pattern.ink) {
            pattern.inkBitmap = inkCopy(bitmap, pattern.ink, bitmap3);
            pattern.inkBitmapFor = bitmap;
            pattern.inkBitmapColor = pattern.ink;
        }
        return pattern.inkBitmap;
    }

    private static Bitmap inkCopy(Bitmap bitmap, int i, Bitmap bitmap2) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int i2 = width * height;
        int[] iArr = new int[i2];
        bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
        int i3 = 16777215 & i;
        int i4 = i >>> 24;
        for (int i5 = 0; i5 < i2; i5++) {
            iArr[i5] = ((((iArr[i5] >>> 24) * i4) / 255) << 24) | i3;
        }
        if (bitmap2 == null || !bitmap2.isMutable() || bitmap2.getWidth() != width || bitmap2.getHeight() != height) {
            bitmap2 = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        }
        Bitmap bitmap3 = bitmap2;
        bitmap3.setPixels(iArr, 0, width, 0, 0, width, height);
        bitmap3.setHasMipMap(bitmap.hasMipMap());
        return bitmap3;
    }

    private boolean ensureEdge(Bitmap bitmap) {
        float[] fArr = RimTune.f1215v;
        float f = fArr[36];
        float f2 = fArr[38];
        float f3 = fArr[24];
        if (this.edgeBitmap != null && this.edgeFor == bitmap && f == this.edgeW && f2 == this.edgeOff && f3 == this.edgeAng) {
            return true;
        }
        if (bitmap == null || bitmap.isRecycled()) {
            return false;
        }
        this.edgeFor = bitmap;
        this.edgeW = f;
        this.edgeOff = f2;
        this.edgeAng = f3;
        Bitmap bitmap2 = this.edgeBitmap;
        if (bitmap2 == null || bitmap2.getWidth() != bitmap.getWidth() || this.edgeBitmap.getHeight() != bitmap.getHeight()) {
            this.edgeBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        }
        this.edgeBitmap.eraseColor(0);
        Canvas canvas = new Canvas(this.edgeBitmap);
        double radians = Math.toRadians(f3);
        float f4 = (float) (-Math.cos(radians));
        float f5 = (float) (-Math.sin(radians));
        float fDpf2 = AndroidUtilities.dpf2(f);
        float fDpf22 = AndroidUtilities.dpf2(f2);
        float f6 = f4 * fDpf22;
        float f7 = fDpf22 * f5;
        canvas.drawBitmap(bitmap, f6, f7, (Paint) null);
        canvas.drawBitmap(bitmap, f6 - (f4 * fDpf2), f7 - (f5 * fDpf2), this.edgeOutPaint);
        return true;
    }

    private void ensureTile(int i) {
        if (this.tileFor != i || this.tileX == null) {
            this.tileFor = i;
            Random random = new Random((((long) i) * 7919) + 20973);
            float fDp = AndroidUtilities.dp(300.0f);
            int iRound = Math.round(33.46154f);
            this.tileX = new float[iRound];
            this.tileY = new float[iRound];
            this.tileH5 = new float[iRound];
            int i2 = 0;
            this.tileN = 0;
            int i3 = 0;
            while (i3 < iRound) {
                float fNextFloat = random.nextFloat();
                float f = 21.0f;
                float f2 = 1.1f;
                float f3 = 0.75f;
                float f4 = 0.55f;
                float f5 = 2.0f;
                float f6 = 1.25f;
                float f7 = 7.0f;
                float fDp2 = ((((AndroidUtilities.dp(21.0f) * 1.1f) * (((fNextFloat * 0.75f) * fNextFloat) + 0.55f)) / 2.0f) * 1.25f) + AndroidUtilities.dp(7.0f);
                int i4 = i3 + 12;
                float f8 = -3.4028235E38f;
                float f9 = 0.0f;
                float f10 = 0.0f;
                while (i2 < i4) {
                    float fNextFloat2 = random.nextFloat() * fDp;
                    float fNextFloat3 = random.nextFloat() * fDp;
                    float f11 = f;
                    float f12 = f3;
                    float fMin = Float.MAX_VALUE;
                    float f13 = f2;
                    int i5 = 0;
                    while (i5 < this.tileN) {
                        float fAbs = Math.abs(fNextFloat2 - this.tileX[i5]);
                        float f14 = f5;
                        float fAbs2 = Math.abs(fNextFloat3 - this.tileY[i5]);
                        float f15 = fDp / f14;
                        if (fAbs > f15) {
                            fAbs = fDp - fAbs;
                        }
                        if (fAbs2 > f15) {
                            fAbs2 = fDp - fAbs2;
                        }
                        float f16 = f4;
                        float f17 = this.tileH5[i5];
                        float f18 = f6;
                        float f19 = f7;
                        float f20 = fDp;
                        Random random2 = random;
                        fMin = Math.min(fMin, ((((float) Math.hypot(fAbs, fAbs2)) - fDp2) - (((((AndroidUtilities.dp(f11) * f13) * (((f17 * f12) * f17) + f16)) / f14) * f18) + AndroidUtilities.dp(f19))) - ((fNextFloat <= 0.7f || f17 <= 0.7f) ? 0.0f : AndroidUtilities.dp(10.0f)));
                        i5++;
                        random = random2;
                        f5 = f14;
                        f4 = f16;
                        f6 = f18;
                        f7 = f19;
                        fDp = f20;
                    }
                    float f21 = fDp;
                    float f22 = f5;
                    float f23 = f4;
                    float f24 = f6;
                    float f25 = f7;
                    Random random3 = random;
                    if (fMin > f8) {
                        f8 = fMin;
                        f9 = fNextFloat2;
                        f10 = fNextFloat3;
                    }
                    i2++;
                    random = random3;
                    f2 = f13;
                    f = f11;
                    f3 = f12;
                    f5 = f22;
                    f4 = f23;
                    f6 = f24;
                    f7 = f25;
                    fDp = f21;
                }
                float f26 = fDp;
                Random random4 = random;
                if (this.tileN > 0 && f8 < AndroidUtilities.dp(3.5f)) {
                    return;
                }
                float[] fArr = this.tileX;
                int i6 = this.tileN;
                fArr[i6] = f9;
                this.tileY[i6] = f10;
                this.tileH5[i6] = fNextFloat;
                this.tileN = i6 + 1;
                i3++;
                random = random4;
                fDp = f26;
                i2 = 0;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0090  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void collectSymbolNodes(int i, float f, float f2, int i2, int i3, float f3, float f4, float f5) {
        int i4;
        int i5 = 0;
        this.symN = 0;
        ensureTile(i);
        float fDp = AndroidUtilities.dp(300.0f);
        float f6 = -f3;
        int iFloor = ((int) Math.floor((f6 - f2) / fDp)) - 1;
        float f7 = i3 + f3;
        int iCeil = (int) Math.ceil((f7 - f2) / fDp);
        int iFloor2 = ((int) Math.floor((f6 - f) / fDp)) - 1;
        float f8 = i2 + f3;
        int iCeil2 = (int) Math.ceil((f8 - f) / fDp);
        while (iFloor <= iCeil) {
            int i6 = iFloor2;
            while (i6 <= iCeil2) {
                int i7 = i5;
                while (i7 < this.tileN && this.symN < 1024) {
                    float f9 = (i6 * fDp) + this.tileX[i7];
                    float f10 = (iFloor * fDp) + this.tileY[i7];
                    float f11 = f9 + f;
                    float f12 = f10 + f2;
                    if (f11 < f6 - AndroidUtilities.dp(20.0f) || f11 > AndroidUtilities.dp(20.0f) + f8 || f12 < f6 - AndroidUtilities.dp(20.0f) || f12 > AndroidUtilities.dp(20.0f) + f7) {
                        i4 = iCeil2;
                    } else {
                        float f13 = this.tileH5[i7];
                        if (!nearSticker(f9, f10, ((((AndroidUtilities.dp(21.0f) * 1.1f) * (((0.75f * f13) * f13) + 0.55f)) / 2.0f) * 1.25f) + AndroidUtilities.dp(7.0f))) {
                            int[] iArr = this.symR;
                            int i8 = this.symN;
                            i4 = iCeil2;
                            iArr[i8] = (iFloor * 4096) + i7;
                            this.symC[i8] = i6;
                            this.symBX[i8] = f9;
                            this.symBY[i8] = f10;
                            this.symFitA[i8] = 1.0f;
                            this.symH5[i8] = f13;
                            this.symN = i8 + 1;
                        }
                    }
                    i7++;
                    iCeil2 = i4;
                }
                i6++;
                iCeil2 = iCeil2;
                i5 = 0;
            }
            iFloor++;
            i5 = 0;
        }
    }

    private PorterDuffColorFilter metalTint(Pattern pattern) {
        float[] fArr = RimTune.f1215v;
        int i = ((int) (fArr[30] * 10.0f)) ^ (pattern.shineColor * 31);
        if (this.metalTintF == null || this.metalTintKey != i) {
            this.metalTintKey = i;
            this.metalTintF = new PorterDuffColorFilter(ColorUtils.blendARGB(pattern.shineColor, -1, fArr[30] / 100.0f), PorterDuff.Mode.SRC_IN);
        }
        return this.metalTintF;
    }

    private PorterDuffColorFilter litTint(Pattern pattern) {
        float[] fArr = RimTune.f1215v;
        int i = ((int) (fArr[14] * 10.0f)) ^ pattern.shineColor;
        if (pattern.litTint == null || pattern.litTintFor != i) {
            pattern.litTintFor = i;
            pattern.litTint = new PorterDuffColorFilter(ColorUtils.blendARGB(pattern.shineColor, -1, fArr[14] / 100.0f), PorterDuff.Mode.SRC_IN);
        }
        return pattern.litTint;
    }

    private float pushOffset(float f) {
        if (this.shining && this.slotDEnv > 0.001f) {
            float f2 = this.slotD;
            float[] fArr = RimTune.f1215v;
            float fMax = f2 / Math.max(0.3f, fArr[50]);
            if (fMax <= 4.0f && fMax >= -4.0f) {
                return f * Math.min(AndroidUtilities.dpf2(fArr[42]), (AndroidUtilities.dp(3.5f) / 2.0f) / 0.607f) * fMax * ((float) Math.exp((-0.5f) * fMax * fMax)) * this.slotDEnv;
            }
        }
        return 0.0f;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00be  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void pushSmooth(int i, int i2, float f, float f2) {
        long j = (((long) i2) & 4294967295L) ^ (((long) i) << 32);
        int i3 = ((int) (((-7046029254386353131L) * j) >>> 53)) & 2047;
        int i4 = 0;
        while (i4 < 2048 && this.psUsed[i3] && this.psKey[i3] != j) {
            i4++;
            i3 = (i3 + 1) & 2047;
        }
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        boolean[] zArr = this.psUsed;
        if (zArr[i3] && this.psKey[i3] == j) {
            if (jCurrentAnimationTimeMillis - this.psT[i3] <= 1000) {
                float fExp = 1.0f - ((float) Math.exp((-Math.min(64.0f, jCurrentAnimationTimeMillis - r5)) / Math.max(10.0f, (((Math.abs(f) > Math.abs(this.psO2[i3]) || f2 > this.psL2[i3]) ? RimTune.f1215v[48] : RimTune.f1215v[49]) / 3.4f) / 2.0f)));
                float[] fArr = this.psO1;
                float f3 = fArr[i3];
                float f4 = f3 + ((f - f3) * fExp);
                fArr[i3] = f4;
                float[] fArr2 = this.psO2;
                float f5 = fArr2[i3];
                fArr2[i3] = f5 + ((f4 - f5) * fExp);
                float[] fArr3 = this.psL1;
                float f6 = fArr3[i3];
                float f7 = f6 + ((f2 - f6) * fExp);
                fArr3[i3] = f7;
                float[] fArr4 = this.psL2;
                float f8 = fArr4[i3];
                fArr4[i3] = f8 + ((f7 - f8) * fExp);
            }
        } else {
            zArr[i3] = true;
            this.psKey[i3] = j;
            float[] fArr5 = this.psO1;
            this.psO2[i3] = f;
            fArr5[i3] = f;
            float[] fArr6 = this.psL1;
            this.psL2[i3] = f2;
            fArr6[i3] = f2;
        }
        this.psT[i3] = jCurrentAnimationTimeMillis;
        this.psOut = this.psO2[i3];
        this.psLight = this.psL2[i3];
    }

    private boolean emojiOnlyShine() {
        Pattern pattern = this.pattern;
        return pattern != null && pattern.type == 1;
    }

    private float shine(float f, float f2, int i, int i2) {
        return shine(f, f2, i, i2, 0.0f);
    }

    private float shine(float f, float f2, int i, int i2, float f3) {
        float fCos;
        float f4;
        float f5;
        float f6;
        int i3;
        float fExp;
        if (!this.shining) {
            return 0.0f;
        }
        float f7 = i;
        float f8 = f - (f7 / 2.0f);
        float f9 = this.sweepDX;
        float f10 = i2;
        float f11 = f2 - (f10 / 2.0f);
        float f12 = (f8 * f9) + (this.sweepDY * f11);
        float fMax = Math.max(1.0f, ((Math.abs(f9) * f7) + (Math.abs(this.sweepDY) * f10)) / 2.0f);
        float[] fArr = RimTune.f1215v;
        float f13 = fArr[19] / 100.0f;
        if (f13 > 0.0f) {
            float f14 = this.sweepDY;
            float fMax2 = ((f8 * (-f14)) + (f11 * this.sweepDX)) / Math.max(1.0f, ((Math.abs(f14) * f7) + (Math.abs(this.sweepDX) * f10)) / 2.0f);
            f12 -= ((f13 * f7) * fMax2) * fMax2;
        }
        float fAsin = (f12 - this.shineC) / this.shineW;
        float f15 = fArr[20] / 100.0f;
        if (f15 > 0.0f) {
            fAsin += (((((float) Math.asin(Math.max(-1.0f, Math.min(1.0f, f12 / fMax)))) - Math.max(-2.1991148f, Math.min(2.1991148f, (this.shineC / fMax) * 1.5707964f))) / ((this.shineW / fMax) * 1.5707964f)) - fAsin) * f15;
            fCos = 1.0f - (((f15 * fArr[31]) / 100.0f) * (1.0f - ((float) Math.cos(Math.max(-1.5707964f, Math.min(1.5707964f, r4))))));
        } else {
            fCos = 1.0f;
        }
        this.shineD = fAsin;
        this.shineDEnv = this.shineEnv * fCos;
        float f16 = fArr[34] / 100.0f;
        int i4 = (fAsin > 4.0f ? 1 : (fAsin == 4.0f ? 0 : -1));
        if ((i4 > 0 || fAsin < -4.0f) && f16 <= 0.0f) {
            this.shineCore = 0.0f;
            return 0.0f;
        }
        float f17 = fArr[32];
        float f18 = fAsin / fArr[29];
        float f19 = fCos * (emojiOnlyShine() ? 0.7f : 1.0f);
        if (f18 > 4.0f || f18 < -4.0f) {
            f4 = 0.0f;
            f5 = f19;
            f6 = 4.0f;
            i3 = i4;
            fExp = 0.0f;
        } else {
            f4 = 0.0f;
            f5 = f19;
            f6 = 4.0f;
            i3 = i4;
            fExp = this.shineEnv * f19 * ((float) Math.exp(Math.pow(Math.abs(f18), f17) * (-0.5d)));
        }
        this.shineCore = fExp;
        float fExp2 = (fArr[28] / 100.0f) * ((i3 > 0 || fAsin < -4.0f) ? f4 : (float) Math.exp(Math.pow(Math.abs(fAsin), f17) * (-0.5d)));
        if (f16 > f4) {
            float f20 = fAsin - fArr[33];
            if (f20 < f6 && f20 > -4.0f) {
                fExp2 += f16 * ((float) Math.exp(Math.pow(Math.abs(f20), f17) * (-0.5d)));
            }
        }
        return this.shineEnv * f5 * fExp2;
    }

    private float waveArrival(float f, float f2, int i, int i2) {
        float f3 = this.waveX;
        double dMax = Math.max(f3, i - f3);
        float f4 = this.waveY;
        return (((1.0f - ((float) Math.pow(1.0f - Utilities.clamp01(((float) Math.hypot(f - this.waveX, f2 - this.waveY)) / (((float) Math.hypot(dMax, Math.max(f4, i2 - f4))) + AndroidUtilities.dp(60.0f))), 0.4166666567325592d))) * 600.0f) / 1000.0f) - 0.03f;
    }

    private float appearDelay(double d) {
        float f = this.appearSalt;
        double dSin = Math.sin(((d + (((double) f) * 17.31d)) * 12.9898d) + (((double) f) * 78.233d)) * 43758.5453d;
        return ((float) (dSin - Math.floor(dSin))) * 300.0f;
    }

    private static float slotScale(float f, boolean z, boolean z2) {
        if (z) {
            if (f <= 0.0f) {
                return 1.0f;
            }
            return Math.max(0.0f, 1.0f - (f / 0.18f));
        }
        if (!z2) {
            f -= 0.135f;
        }
        if (f <= 0.0f) {
            return 0.0f;
        }
        if (f >= 0.315f) {
            return 1.0f;
        }
        return backOut(f / 0.315f);
    }

    private static float fract(double d) {
        return (float) (d - Math.floor(d));
    }

    private void orbit(double d, float f, float f2) {
        float fDp = AndroidUtilities.dp(1.0f) * (f + ((f2 - f) * fract(31.7d * d)));
        double dFract = (((((fract(43.3d * d) < 0.5f ? -1.0d : 1.0d) * 2.0d) * 3.141592653589793d) * ((double) this.motionT)) / ((double) ((fract(37.1d * d) * 11.0f) + 9.0f))) + (d * 6.283d);
        this.orbitX = ((float) Math.cos(dFract)) * fDp;
        this.orbitY = fDp * ((float) Math.sin(dFract));
    }

    private static int wrapIdx(int i, int i2) {
        return ((i % i2) + i2) % i2;
    }

    private void drawEmoji(Canvas canvas, Pattern pattern, int i, float f, float f2, float f3, float f4, float f5) {
        Drawable drawable = pattern.emoji[i];
        if (drawable == null || f4 <= 0.01f) {
            return;
        }
        boolean z = drawable instanceof AnimatedEmojiDrawable;
        Bitmap bitmapEmojiFrame = z ? emojiFrame((AnimatedEmojiDrawable) drawable) : null;
        boolean z2 = false;
        if (!z ? !(drawable instanceof Emoji.EmojiDrawable) || ((Emoji.EmojiDrawable) drawable).isLoaded() : bitmapEmojiFrame != null) {
            z2 = true;
        }
        float fPopIn = popIn(pattern.emojiShownAt, i, z2, f5);
        if (fPopIn <= 0.0f) {
            return;
        }
        float fBackOut = f4 * (fPopIn < 1.0f ? backOut(fPopIn) : 1.0f) * this.slotScaleK * (this.slotPulse + 1.0f) * ((((float) Math.sin((this.motionT * 1.3f) + f3)) * 0.03f) + 1.0f);
        int iRound = Math.round(f / 2.0f);
        if (bitmapEmojiFrame != null) {
            float f6 = iRound * fBackOut;
            canvas.save();
            canvas.translate(this.slotX, this.slotY);
            canvas.rotate(f2 + this.slotRot);
            float f7 = -f6;
            this.emojiDst.set(f7, f7, f6, f6);
            if (QrEmojiPanel.isTextColor(drawable)) {
                this.emojiTextPaint.setAlpha((int) (this.slotAlpha * 255.0f));
                canvas.drawBitmap(bitmapEmojiFrame, (Rect) null, this.emojiDst, this.emojiTextPaint);
            } else {
                this.emojiPaint.setAlpha((int) (this.slotAlpha * 255.0f));
                canvas.drawBitmap(bitmapEmojiFrame, (Rect) null, this.emojiDst, this.emojiPaint);
            }
            canvas.restore();
            return;
        }
        canvas.save();
        canvas.translate(this.slotX, this.slotY);
        canvas.rotate(f2 + this.slotRot);
        canvas.scale(fBackOut, fBackOut);
        int i2 = -iRound;
        drawable.setBounds(i2, i2, iRound, iRound);
        drawable.setAlpha((int) (this.slotAlpha * 255.0f));
        if (QrEmojiPanel.isTextColor(drawable)) {
            QrEmojiPanel.drawEmoji(canvas, drawable);
        } else {
            drawable.draw(canvas);
        }
        drawable.setAlpha(255);
        canvas.restore();
    }

    private float popIn(long[] jArr, int i, boolean z, float f) {
        if (this.sharing) {
            return 1.0f;
        }
        if (jArr == null || i >= jArr.length) {
            return 0.0f;
        }
        if (jArr[i] == 1) {
            return z ? 1.0f : 0.0f;
        }
        if (!this.openDone) {
            if (!this.immediateFrame || !z) {
                return 0.0f;
            }
            jArr[i] = 1;
            return 1.0f;
        }
        if (!z) {
            return 0.0f;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jArr[i] == 0) {
            jArr[i] = jElapsedRealtime;
        }
        return Utilities.clamp01(((jElapsedRealtime - jArr[i]) - appearDelay(f)) / 380.0f);
    }

    private Bitmap emojiFrame(AnimatedEmojiDrawable animatedEmojiDrawable) {
        Bitmap bitmap;
        ImageReceiver imageReceiver = animatedEmojiDrawable.getImageReceiver();
        if (imageReceiver == null) {
            return null;
        }
        RLottieDrawable lottieAnimation = imageReceiver.getLottieAnimation();
        if (lottieAnimation != null) {
            if (!this.sharing) {
                lottieAnimation.updateCurrentFrame(0L, false);
            }
            if (lottieAnimation.hasBitmap()) {
                return lottieAnimation.getAnimatedBitmap();
            }
            return null;
        }
        AnimatedFileDrawable animation = imageReceiver.getAnimation();
        if (animation != null) {
            if (!this.sharing) {
                animation.updateCurrentFrame(System.currentTimeMillis(), false);
            }
            if (animation.hasBitmap()) {
                return animation.getAnimatedBitmap();
            }
            return null;
        }
        if (!imageReceiver.hasImageLoaded() || !imageReceiver.hasNotThumb() || (bitmap = imageReceiver.getBitmap()) == null || bitmap.isRecycled()) {
            return null;
        }
        return bitmap;
    }

    private boolean nearSticker(float f, float f2, float f3) {
        float fDp = AndroidUtilities.dp(170.0f);
        float fDp2 = AndroidUtilities.dp(150.0f);
        int iRound = Math.round(f2 / fDp2);
        for (int i = iRound - 1; i <= iRound + 1; i++) {
            float f4 = (i & 1) == 0 ? 0.0f : fDp / 2.0f;
            int iRound2 = Math.round((f - f4) / fDp);
            for (int i2 = iRound2 - 1; i2 <= iRound2 + 1; i2++) {
                double dLatticeHash = latticeHash(i, i2);
                float fFract = (i2 * fDp) + f4 + ((fract(3.7d * dLatticeHash) - 0.5f) * AndroidUtilities.dp(76.0f));
                float fFract2 = (i * fDp2) + ((fract(5.3d * dLatticeHash) - 0.5f) * AndroidUtilities.dp(64.0f));
                float fDp3 = AndroidUtilities.dp(62.0f) + (AndroidUtilities.dp(32.0f) * fract(11.9d * dLatticeHash));
                float fDp4 = f3 < 0.0f ? fDp3 * 0.66f : (fDp3 * 0.35f) + f3 + (AndroidUtilities.dp(1.0f) * ((fract(dLatticeHash * 31.7d) * 7.0f) + 5.0f)) + AndroidUtilities.dp(3.5f);
                float f5 = fFract - f;
                float f6 = fFract2 - f2;
                if ((f5 * f5) + (f6 * f6) < fDp4 * fDp4) {
                    return true;
                }
            }
        }
        return false;
    }

    private void drawEmojiField(Canvas canvas, int i, int i2, Pattern pattern, Pattern pattern2, float f, boolean z, boolean z2) {
        ensureAtlases(pattern);
        ensureAtlases(pattern2);
        drawEmojiFieldInner(canvas, i, i2, pattern, pattern2, f, z, z2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v5, types: [boolean] */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v8 */
    /* JADX WARN: Type inference failed for: r22v0 */
    /* JADX WARN: Type inference failed for: r22v1 */
    /* JADX WARN: Type inference failed for: r22v4 */
    /* JADX WARN: Type inference failed for: r25v5 */
    /* JADX WARN: Type inference failed for: r25v6 */
    /* JADX WARN: Type inference failed for: r25v8 */
    /* JADX WARN: Type inference failed for: r26v1 */
    /* JADX WARN: Type inference failed for: r26v2 */
    private void drawEmojiFieldInner(Canvas canvas, int i, int i2, Pattern pattern, Pattern pattern2, float f, boolean z, boolean z2) {
        float f2;
        int i3;
        float f3;
        ?? r12;
        int i4;
        int i5;
        QrShareView qrShareView = this;
        Pattern pattern3 = pattern2;
        float fDp = AndroidUtilities.dp(86.0f);
        float fDp2 = AndroidUtilities.dp(70.0f);
        float fDp3 = AndroidUtilities.dp(90.0f) * 1.3f;
        float f4 = qrShareView.wanderX + qrShareView.panX;
        float f5 = qrShareView.wanderY + qrShareView.panY;
        float f6 = -fDp3;
        int i6 = 1;
        int iFloor = ((int) Math.floor((f6 - f5) / fDp2)) - 1;
        int i7 = i2;
        int iCeil = ((int) Math.ceil(((i7 + fDp3) - f5) / fDp2)) + 1;
        qrShareView.placeMin = AndroidUtilities.dp(24.0f) * 0.76f;
        int i8 = iFloor;
        while (i8 <= iCeil) {
            int i9 = i8 & 1;
            float f7 = i9 == 0 ? 0.0f : fDp / 2.0f;
            int iFloor2 = ((int) Math.floor(((f6 - f4) - f7) / fDp)) - i6;
            ?? r22 = i6;
            int i10 = iCeil;
            int iCeil2 = ((int) Math.ceil((((i + fDp3) - f4) - f7) / fDp)) + 1;
            while (iFloor2 <= iCeil2) {
                float f8 = fDp3;
                double dLatticeHash = latticeHash(i8, iFloor2);
                if (fract(53.1d * dLatticeHash) < 0.2f) {
                    f2 = f6;
                    i5 = iFloor2;
                    i4 = i8;
                    f3 = fDp;
                    r12 = r22;
                    i3 = iCeil2;
                } else {
                    qrShareView.orbit(dLatticeHash, 3.0f, 10.0f);
                    float f9 = (float) (2.0d * dLatticeHash * 3.141592653589793d);
                    float f10 = (iFloor2 * fDp) + f7 + f4 + qrShareView.orbitX;
                    f2 = f6;
                    float fSin = (i8 * fDp2) + f5 + qrShareView.orbitY + (((float) Math.sin((qrShareView.motionT * 0.45f) + f9)) * AndroidUtilities.dp(3.0f));
                    ?? r25 = i9 == 0 ? r22 : 0;
                    float f11 = (float) dLatticeHash;
                    float fDp4 = AndroidUtilities.dp(38.0f) * (r25 != 0 ? 1.3f : 0.9f) * ((0.16f * f11) + 0.92f);
                    float fMax = (Math.max(0.0f, (fDp4 / AndroidUtilities.dp(24.0f)) - 1.0f) * 0.8f) + 1.0f;
                    int i11 = iFloor2;
                    ?? r26 = r22;
                    i3 = iCeil2;
                    f3 = fDp;
                    r12 = r26 == true ? 1 : 0;
                    boolean zPlace = place(f10, fSin, fDp4, i, i7, 0, i8, i11, fMax);
                    i4 = i8;
                    i5 = i11;
                    if (zPlace) {
                        float f12 = r25 != 0 ? fDp4 * 0.9f : fDp4;
                        float fSin2 = ((f11 - 0.5f) * 26.0f) + (((float) Math.sin((this.motionT * 0.3f) + f9)) * 4.0f);
                        float fFract = fract(59.3d * dLatticeHash) * 0.3f;
                        int i12 = (i5 - ((i4 - i9) / 2)) - i4;
                        int iWrapIdx = wrapIdx(i12, pattern3.emoji.length);
                        float fFract2 = fract(dLatticeHash * 71.9d);
                        if (pattern == null) {
                            drawEmoji(canvas, pattern3, iWrapIdx, f12, fSin2, f9 * 2.0f, slotScale(f - fFract, z, z2), fFract2);
                        } else {
                            Pattern pattern4 = pattern3;
                            int iWrapIdx2 = wrapIdx(i12, pattern.emoji.length);
                            if (pattern.emoji[iWrapIdx2] == pattern4.emoji[iWrapIdx]) {
                                drawEmoji(canvas, pattern4, iWrapIdx, f12, fSin2, f9 * 2.0f, 1.0f, fFract2);
                            } else {
                                float f13 = f9 * 2.0f;
                                float f14 = f - fFract;
                                drawEmoji(canvas, pattern, iWrapIdx2, f12, fSin2, f13, slotScale(f14, r12, false), fFract2);
                                drawEmoji(canvas, pattern2, iWrapIdx, f12, fSin2, f13, slotScale(f14, false, false), fFract2);
                            }
                        }
                    }
                }
                iFloor2 = i5 + 1;
                qrShareView = this;
                i7 = i2;
                pattern3 = pattern2;
                i8 = i4;
                iCeil2 = i3;
                fDp3 = f8;
                f6 = f2;
                r22 = r12;
                fDp = f3;
            }
            i8++;
            qrShareView = this;
            i7 = i2;
            pattern3 = pattern2;
            i6 = r22 == true ? 1 : 0;
            iCeil = i10;
            fDp3 = fDp3;
            fDp = fDp;
        }
    }

    private void drawEmojiSwap(Canvas canvas, int i, int i2, Pattern pattern, Pattern pattern2, float f) {
        drawEmojiField(canvas, i, i2, pattern, pattern2, f, false, false);
    }

    private void drawField(Canvas canvas, int i, int i2, Pattern pattern, boolean z, boolean z2, float f) {
        drawFieldInner(canvas, i, i2, pattern, z, z2, f);
    }

    /* JADX WARN: Removed duplicated region for block: B:140:0x0596  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x029e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void drawFieldInner(Canvas canvas, int i, int i2, Pattern pattern, boolean z, boolean z2, float f) {
        int i3;
        float f2;
        float f3;
        float f4;
        float fClamp01;
        long j;
        float f5;
        Bitmap bitmap;
        Bitmap bitmap2;
        boolean z3;
        float f6;
        int i4;
        QrShareView qrShareView = this;
        if (pattern == null || (i3 = pattern.type) == 0) {
            return;
        }
        float f7 = qrShareView.fieldT;
        if (i3 == 1) {
            qrShareView.drawEmojiField(canvas, i, i2, null, pattern, f, z, z2);
            return;
        }
        int i5 = i;
        float f8 = qrShareView.panX + qrShareView.wanderX;
        float f9 = qrShareView.panY + qrShareView.wanderY;
        float fDp = AndroidUtilities.dp(90.0f) * 1.3f;
        float fDp2 = AndroidUtilities.dp(170.0f);
        float fDp3 = AndroidUtilities.dp(150.0f);
        qrShareView.spN = 0;
        float f10 = -(AndroidUtilities.dp(60.0f) + fDp);
        boolean z4 = true;
        int iFloor = ((int) Math.floor((f10 - f9) / fDp3)) - 1;
        int iCeil = ((int) Math.ceil(((i2 + r8) - f9) / fDp3)) + 1;
        while (true) {
            f2 = f7;
            f3 = 0.5f;
            if (iFloor > iCeil || qrShareView.spN >= 96) {
                break;
            }
            float f11 = (iFloor & 1) == 0 ? 0.0f : fDp2 / 2.0f;
            int i6 = iFloor;
            int iFloor2 = ((int) Math.floor(((f10 - f8) - f11) / fDp2)) - 1;
            int iCeil2 = ((int) Math.ceil((((i5 + r8) - f8) - f11) / fDp2)) + 1;
            while (true) {
                if (iFloor2 > iCeil2) {
                    i4 = iCeil;
                    break;
                }
                i4 = iCeil;
                if (qrShareView.spN >= 96) {
                    break;
                }
                int i7 = i6;
                float f12 = f9;
                double dLatticeHash = latticeHash(i7, iFloor2);
                qrShareView.orbit(dLatticeHash, 5.0f, 12.0f);
                qrShareView.spX[qrShareView.spN] = (iFloor2 * fDp2) + f11 + f8 + qrShareView.orbitX + ((fract(3.7d * dLatticeHash) - 0.5f) * AndroidUtilities.dp(76.0f));
                qrShareView.spY[qrShareView.spN] = (i7 * fDp3) + f12 + qrShareView.orbitY + ((fract(5.3d * dLatticeHash) - 0.5f) * AndroidUtilities.dp(64.0f));
                qrShareView.spSide[qrShareView.spN] = AndroidUtilities.dp(62.0f) + (AndroidUtilities.dp(32.0f) * fract(11.9d * dLatticeHash));
                qrShareView.spAng[qrShareView.spN] = (fract(17.3d * dLatticeHash) - 0.5f) * 22.0f;
                float[] fArr = qrShareView.spH;
                int i8 = qrShareView.spN;
                fArr[i8] = (float) dLatticeHash;
                qrShareView.spKey[i8] = (((long) i7) << 32) ^ (((long) iFloor2) & 4294967295L);
                qrShareView.spN = i8 + 1;
                iFloor2++;
                f9 = f12;
                iCeil = i4;
                i6 = i7;
            }
            iFloor = i6 + 1;
            i5 = i;
            f7 = f2;
            f9 = f9;
            iCeil = i4;
        }
        float f13 = f9;
        qrShareView.ensureAtlases(pattern);
        qrShareView.ensureSymbolBitmap(pattern);
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        Bitmap bitmap3 = pattern.symbolBitmap;
        Bitmap bitmap4 = bitmap3 != null ? bitmap3 : pattern.fallback;
        float fClamp012 = (bitmap3 == null || pattern.fallback == null) ? 1.0f : Utilities.clamp01((jCurrentAnimationTimeMillis - pattern.readyAt) / 150.0f);
        if (bitmap4 != null) {
            float fDp4 = AndroidUtilities.dp(44.0f);
            float fDp5 = AndroidUtilities.dp(38.0f);
            qrShareView.placeMin = AndroidUtilities.dp(17.0f) * 0.76f;
            float width = bitmap4.getWidth() / 2.0f;
            float f14 = 2.0f;
            float f15 = 1.0f;
            qrShareView.collectSymbolNodes(pattern.symbolSeed, f8, f13, i, i2, fDp, fDp4, fDp5);
            int i9 = 0;
            while (i9 < qrShareView.symN) {
                int i10 = qrShareView.symR[i9];
                int i11 = qrShareView.symC[i9];
                double dLatticeHash2 = latticeHash(i10, i11);
                float f16 = qrShareView.symBX[i9];
                float f17 = qrShareView.symBY[i9];
                float f18 = qrShareView.symFitA[i9];
                float f19 = qrShareView.symH5[i9];
                int i12 = i9;
                qrShareView.orbit(dLatticeHash2, f14, 7.0f);
                float f20 = qrShareView.orbitX + f16 + f8;
                float f21 = f17 + f13 + qrShareView.orbitY;
                float fFract = fract(7.31d * dLatticeHash2);
                float fDp6 = AndroidUtilities.dp(21.0f) * 1.1f * ((0.75f * f19 * f19) + 0.55f) * f18;
                float f22 = f14;
                if (qrShareView.place(f20, f21, fDp6, i, i2, 1, i10, i11, (Math.max(0.0f, (fDp6 / AndroidUtilities.dp(15.0f)) - f15) * 0.8f) + f15)) {
                    float fSlotScale = slotScale(f - ((pattern.waveSwap || (z && qrShareView.pattern.waveSwap)) ? qrShareView.waveArrival(qrShareView.slotX, qrShareView.slotY, i, i2) : fract(dLatticeHash2 * 53.1d) * 0.3f), z, z2);
                    if (fSlotScale <= 0.01f) {
                        z3 = z4;
                        f6 = width;
                    } else {
                        qrShareView.pushSmooth(i10, i11, qrShareView.pushOffset(f15), qrShareView.slotLight);
                        float f23 = qrShareView.psOut;
                        float f24 = qrShareView.psLight;
                        if (Math.abs(f23) > 0.05f || f24 > 0.002f) {
                            qrShareView.invalidate();
                        }
                        float f25 = qrShareView.slotX + (qrShareView.sweepDX * f23);
                        float f26 = qrShareView.slotY + (qrShareView.sweepDY * f23);
                        float f27 = qrShareView.slotLight;
                        float fFract2 = fract(61.37d * dLatticeHash2) * 100.0f;
                        float[] fArr2 = RimTune.f1215v;
                        float f28 = fFract2 < fArr2[17] ? fArr2[18] / 100.0f : 1.0f;
                        float fPow = (float) Math.pow((Math.sin(((double) (f2 * ((0.55f * fFract) + 0.35f))) + (dLatticeHash2 * 6.283d)) * 0.5d) + 0.5d, 2.0d);
                        float width2 = (((((qrShareView.slotScaleK * fSlotScale) * (qrShareView.slotPulse + 1.0f)) * (((0.06f * f27) + 1.0f) + (0.1f * fPow))) * (((fArr2[43] / 100.0f) * f24) + 1.0f)) * fDp6) / bitmap4.getWidth();
                        float f29 = fArr2[44] * f24;
                        canvas.save();
                        canvas.translate(f25, f26);
                        canvas.rotate(((fFract - 0.5f) * 70.0f) + qrShareView.slotRot + f29);
                        canvas.scale(width2, width2);
                        int i13 = (int) (qrShareView.slotAlpha * 255.0f * ((fPow * 0.15f) + 0.85f) * f28);
                        if (fClamp012 < 1.0f) {
                            pattern.tintPaint.setAlpha((int) (i13 * (1.0f - fClamp012)));
                            z3 = z4;
                            f6 = width;
                            float f30 = -f6;
                            canvas.drawBitmap(qrShareView.inked(pattern, pattern.fallback, z3), f30, f30, pattern.tintPaint);
                        } else {
                            z3 = z4;
                            f6 = width;
                        }
                        pattern.tintPaint.setAlpha((int) (i13 * fClamp012));
                        float f31 = -f6;
                        canvas.drawBitmap(qrShareView.inked(pattern, bitmap4, false), f31, f31, pattern.tintPaint);
                        if (f27 > 0.01f) {
                            ColorFilter colorFilter = pattern.glowPaint.getColorFilter();
                            pattern.glowPaint.setColorFilter(qrShareView.litTint(pattern));
                            pattern.glowPaint.setAlpha((int) (Math.min(1.0f, (fArr2[13] * f27) / 100.0f) * 255.0f * qrShareView.slotAlpha * fClamp012));
                            canvas.drawBitmap(bitmap4, f31, f31, pattern.glowPaint);
                            pattern.glowPaint.setColorFilter(colorFilter);
                            if (fArr2[35] > 0.5f && qrShareView.ensureEdge(bitmap4)) {
                                qrShareView.metalPaint.setColorFilter(qrShareView.metalTint(pattern));
                                qrShareView.metalPaint.setAlpha((int) (Math.min(255.0f, ((f27 * 255.0f) * fArr2[37]) / 100.0f) * qrShareView.slotAlpha * fClamp012));
                                canvas.drawBitmap(qrShareView.edgeBitmap, f31, f31, qrShareView.metalPaint);
                            }
                            float f32 = (qrShareView.slotCore * fArr2[22]) / 100.0f;
                            if (f32 > 0.01f) {
                                qrShareView.metalPaint.setColorFilter(qrShareView.metalTint(pattern));
                                qrShareView.metalPaint.setAlpha((int) (Math.min(1.0f, f32) * 255.0f * qrShareView.slotAlpha * fClamp012));
                                canvas.drawBitmap(bitmap4, f31, f31, qrShareView.metalPaint);
                            }
                        }
                        canvas.restore();
                    }
                }
                i9 = i12 + 1;
                z4 = z3;
                width = f6;
                f14 = f22;
                f15 = 1.0f;
            }
            f4 = f14;
        } else {
            f4 = 2.0f;
        }
        AnimatedEmojiDrawable animatedEmojiDrawable = pattern.model;
        Bitmap bitmapEmojiFrame = animatedEmojiDrawable != null ? qrShareView.emojiFrame(animatedEmojiDrawable) : null;
        Bitmap bitmap5 = (bitmapEmojiFrame == null || bitmapEmojiFrame.isRecycled()) ? null : bitmapEmojiFrame;
        Bitmap bitmap6 = pattern.modelOutline;
        if (bitmap5 == null && bitmap6 == null) {
            return;
        }
        if (pattern.modelReadyAt == 0 && qrShareView.immediateFrame) {
            pattern.modelReadyAt = 1L;
        }
        if (pattern.modelReadyAt == 0 && qrShareView.openDone) {
            pattern.modelReadyAt = SystemClock.elapsedRealtime();
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        Bitmap bitmap7 = bitmap6;
        if (bitmap5 != null && pattern.modelFrameAt == 0) {
            pattern.modelFrameAt = (bitmap7 == null || pattern.modelReadyAt == 0) ? 1L : jElapsedRealtime;
        }
        if (bitmap5 == null) {
            fClamp01 = 0.0f;
        } else {
            fClamp01 = pattern.modelFrameAt == 1 ? 1.0f : Utilities.clamp01((jElapsedRealtime - r1) / 150.0f);
        }
        if (fClamp01 > 0.0f && fClamp01 < 1.0f) {
            qrShareView.invalidate();
        }
        if (qrShareView.sharing) {
            j = LongCompanionObject.MAX_VALUE;
        } else {
            long j2 = pattern.modelReadyAt;
            j = j2 == 0 ? -1L : jElapsedRealtime - j2;
        }
        qrShareView.placeMin = AndroidUtilities.dp(41.0f);
        int i14 = 0;
        while (i14 < qrShareView.spN) {
            float f33 = qrShareView.spSide[i14];
            Bitmap bitmap8 = bitmap5;
            float fSin = qrShareView.spY[i14] + (((float) Math.sin(((double) (qrShareView.motionT * 0.35f)) + (((double) (qrShareView.spH[i14] * f4)) * 3.141592653589793d))) * AndroidUtilities.dp(3.0f));
            float f34 = qrShareView.spX[i14];
            long j3 = qrShareView.spKey[i14];
            long j4 = j;
            int i15 = i14;
            qrShareView = this;
            if (qrShareView.place(f34, fSin, f33, i, i2, 2, (int) (j3 >> 32), (int) j3, (Math.max(0.0f, (f33 / AndroidUtilities.dp(40.0f)) - 1.0f) * 0.8f) + 1.0f)) {
                float fSlotScale2 = slotScale(f - ((pattern.waveSwap || (z && qrShareView.pattern.waveSwap)) ? qrShareView.waveArrival(qrShareView.slotX, qrShareView.slotY, i, i2) : fract(((double) qrShareView.spH[i15]) * 53.1d) * 0.3f), z, z2);
                if (fSlotScale2 <= 0.01f) {
                    bitmap = bitmap7;
                    bitmap2 = bitmap8;
                    f5 = f3;
                } else {
                    float fClamp013 = Utilities.clamp01((j4 - qrShareView.appearDelay(qrShareView.spH[i15])) / 380.0f);
                    if (fClamp013 <= 0.0f) {
                        bitmap = bitmap7;
                        bitmap2 = bitmap8;
                        f5 = f3;
                    } else {
                        float fBackOut = (f33 / f4) * fSlotScale2 * (fClamp013 < 1.0f ? backOut(fClamp013) : 1.0f) * qrShareView.slotScaleK * (qrShareView.slotPulse + 1.0f) * ((((float) Math.sin((qrShareView.motionT * 1.3f) + (qrShareView.spH[i15] * 12.6f))) * 0.03f) + 1.0f);
                        f5 = f3;
                        float fPushOffset = qrShareView.pushOffset(f5);
                        canvas.save();
                        canvas.translate(qrShareView.slotX + (qrShareView.sweepDX * fPushOffset), qrShareView.slotY + (qrShareView.sweepDY * fPushOffset));
                        canvas.rotate(qrShareView.spAng[i15] + qrShareView.slotRot);
                        float f35 = -fBackOut;
                        qrShareView.modelDst.set(f35, f35, fBackOut, fBackOut);
                        if (bitmap7 == null || fClamp01 >= 1.0f) {
                            bitmap = bitmap7;
                        } else {
                            qrShareView.modelOutlinePaint.setAlpha((int) (qrShareView.slotAlpha * 38.25f * (1.0f - fClamp01)));
                            bitmap = bitmap7;
                            canvas.drawBitmap(bitmap, (Rect) null, qrShareView.modelDst, qrShareView.modelOutlinePaint);
                        }
                        if (bitmap8 != null) {
                            qrShareView.modelPaint.setAlpha((int) (qrShareView.slotAlpha * 255.0f * fClamp01));
                            bitmap2 = bitmap8;
                            canvas.drawBitmap(bitmap2, (Rect) null, qrShareView.modelDst, qrShareView.modelPaint);
                        } else {
                            bitmap2 = bitmap8;
                        }
                        canvas.restore();
                    }
                }
            }
            i14 = i15 + 1;
            f3 = f5;
            bitmap7 = bitmap;
            j = j4;
            bitmap5 = bitmap2;
        }
    }

    private int qrColor() {
        Scene scene = this.scene;
        if (scene == null) {
            return -16777216;
        }
        if (this.wave < 1.0f && this.oldScene != null) {
            float fCardTop = cardTop() + (cardH() / 2.0f);
            float fClamp01 = Utilities.clamp01(((((((float) Math.hypot(Math.max(this.waveX, getWidth() - this.waveX), Math.max(this.waveY, getHeight() - this.waveY))) + AndroidUtilities.dp(60.0f)) * waveEase(this.wave)) - ((float) Math.hypot((getWidth() / 2.0f) - this.waveX, fCardTop - this.waveY))) + AndroidUtilities.dp(80.0f)) / AndroidUtilities.dp(160.0f));
            return blendLab(this.oldScene.qr, this.scene.qr, fClamp01 * fClamp01 * (3.0f - (fClamp01 * 2.0f)));
        }
        return scene.qr;
    }

    private float elem(int i) {
        if (this.reveal < 1.0f) {
            return Utilities.clamp01(this.revealX);
        }
        return 1.0f;
    }

    private float elemScale(float f) {
        if (this.reveal >= 1.0f) {
            return 1.0f;
        }
        return AndroidUtilities.lerp(this.revealOpening ? 0.85f : 0.92f, 1.0f, f);
    }

    public void setRevealOpening(boolean z) {
        this.revealOpening = z;
    }

    public void setRevealStatic() {
        setReveal(1.0f);
        this.openDone = false;
    }

    public void setReveal(float f) {
        float f2;
        float fExp;
        this.reveal = f;
        if (this.revealOpening) {
            double d = ((double) f) * 0.86d;
            double dSqrt = Math.sqrt(0.18999999999999995d) * 10.134169850289656d;
            if (f >= 1.0f) {
                fExp = 1.0f;
            } else {
                double d2 = dSqrt * d;
                fExp = (float) (1.0d - (Math.exp((-9.120752865260691d) * d) * (Math.cos(d2) + ((0.9d / Math.sqrt(0.18999999999999995d)) * Math.sin(d2)))));
            }
            float fClamp01 = Utilities.clamp01((f - 0.85f) / 0.15f);
            f2 = fExp + ((1.0f - fExp) * fClamp01 * fClamp01 * (3.0f - (fClamp01 * 2.0f)));
        } else {
            float f3 = 1.0f - f;
            f2 = 1.0f - (f3 * f3);
        }
        this.revealX = f2;
        boolean z = f < 1.0f;
        if (!z) {
            this.openDone = true;
        }
        setTranslationY(z ? Math.round(AndroidUtilities.dp(64.0f) * (1.0f - f2)) : 0.0f);
        setAlpha(z ? Utilities.clamp01(f2 / 0.35f) : 1.0f);
        if (getParent() instanceof View) {
            ((View) getParent()).setBackgroundColor(z ? Theme_multAlpha(TLObject.FLAG_30, f2) : 0);
        }
        float fClamp012 = -1.0f;
        if (!z) {
            this.revealCorner = -1.0f;
        }
        QrCodeLayer qrCodeLayer = this.qr;
        if (z && this.revealOpening) {
            fClamp012 = Utilities.clamp01(f2);
        }
        qrCodeLayer.setBuildOverride(fClamp012);
        int i = z ? 2 : 0;
        if (getLayerType() != i) {
            setLayerType(i, null);
        }
        invalidate();
    }

    private void drawCard(Canvas canvas, int i) {
        float fLerp;
        canvas.save();
        if (this.reveal >= 1.0f) {
            fLerp = 1.0f;
        } else {
            fLerp = AndroidUtilities.lerp(this.revealOpening ? 0.9f : 0.92f, 1.0f, this.revealX);
        }
        float fClamp01 = 1.0f - (this.qrBounceStart == 0 ? 1.0f : Utilities.clamp01((AnimationUtils.currentAnimationTimeMillis() - this.qrBounceStart) / 320.0f));
        float fBounce = fLerp * (bounce(this.qrBounceStart, 0.03f, 0.005f) + ((this.qrBounceFrom - 1.0f) * fClamp01 * fClamp01));
        if (this.cardPulseStart != 0) {
            float fCurrentAnimationTimeMillis = (AnimationUtils.currentAnimationTimeMillis() - this.cardPulseStart) / 360.0f;
            if (fCurrentAnimationTimeMillis >= 1.0f) {
                this.cardPulseStart = 0L;
            } else if (fCurrentAnimationTimeMillis > 0.0f) {
                fBounce *= 1.0f - ((((float) Math.sin(((double) fCurrentAnimationTimeMillis) * 3.141592653589793d)) * 0.03f) * (1.0f - (fCurrentAnimationTimeMillis * 0.3f)));
            }
        }
        canvas.scale(fBounce, fBounce, i / 2.0f, cardTop() + (cardH() / 2.0f));
        drawCardInner(canvas, i);
        canvas.restore();
    }

    private static synchronized byte[] cardShadowMask() {
        if (shadowMask != null) {
            return shadowMask;
        }
        float fDp = AndroidUtilities.dp(30.0f) / 4.0f;
        int iCeil = (int) Math.ceil(3.0f * r0);
        int iCeil2 = ((int) Math.ceil(fDp)) + iCeil + 1;
        int i = (iCeil2 * 2) + 2;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i, Bitmap.Config.ARGB_8888);
        Paint paint = new Paint(1);
        paint.setMaskFilter(new BlurMaskFilter(Math.max(0.1f, ((((AndroidUtilities.dp(24.0f) * 0.57735f) + 0.5f) / 4.0f) - 0.5f) / 0.57735f), BlurMaskFilter.Blur.NORMAL));
        float f = iCeil;
        float f2 = i - iCeil;
        new Canvas(bitmapCreateBitmap).drawRoundRect(f, f, f2, f2, fDp, fDp, paint);
        Bitmap bitmapExtractAlpha = bitmapCreateBitmap.extractAlpha();
        bitmapCreateBitmap.recycle();
        int rowBytes = bitmapExtractAlpha.getRowBytes();
        byte[] bArr = new byte[rowBytes * i];
        byte[] bArr2 = new byte[i * i];
        bitmapExtractAlpha.copyPixelsToBuffer(ByteBuffer.wrap(bArr));
        bitmapExtractAlpha.recycle();
        for (int i2 = 0; i2 < i; i2++) {
            System.arraycopy(bArr, i2 * rowBytes, bArr2, i2 * i, i);
        }
        shadowN = i;
        shadowE = iCeil;
        shadowK = iCeil2;
        shadowMask = bArr2;
        return bArr2;
    }

    private static void colorCardShadow(int[] iArr, byte[] bArr, int i) {
        int i2 = 16777215 & i;
        int i3 = i >>> 24;
        for (int i4 = 0; i4 < iArr.length; i4++) {
            iArr[i4] = ((((bArr[i4] & 255) * i3) / 255) << 24) | i2;
        }
    }

    private void prepareCardShadow() {
        if (this.cardShadow != null || this.cardShadowQueued) {
            return;
        }
        this.cardShadowQueued = true;
        final int iCardShadowColorFor = cardShadowColorFor(qrColor());
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.QrShare.QrShareView$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$prepareCardShadow$11(iCardShadowColorFor);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareCardShadow$11(final int i) {
        byte[] bArrCardShadowMask = cardShadowMask();
        int i2 = shadowN;
        final Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i2, i2, Bitmap.Config.ARGB_8888);
        final int[] iArr = new int[i2 * i2];
        colorCardShadow(iArr, bArrCardShadowMask, i);
        bitmapCreateBitmap.setPixels(iArr, 0, i2, 0, 0, i2, i2);
        bitmapCreateBitmap.prepareToDraw();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.QrShare.QrShareView$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$prepareCardShadow$10(bitmapCreateBitmap, iArr, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareCardShadow$10(Bitmap bitmap, int[] iArr, int i) {
        this.cardShadowQueued = false;
        if (this.cardShadow == null) {
            this.cardShadow = bitmap;
            this.cardShadowPx = iArr;
            this.cardShadowColor = i;
        }
    }

    private static int cardShadowColorFor(int i) {
        return ColorUtils.setAlphaComponent(ColorUtils.blendARGB(i, -16777216, 0.4f), 16);
    }

    private void drawCardShadow(Canvas canvas, RectF rectF, int i) {
        Bitmap bitmap = this.cardShadow;
        if (bitmap == null) {
            prepareCardShadow();
            return;
        }
        byte[] bArr = shadowMask;
        int i2 = shadowN;
        if (i != this.cardShadowColor) {
            this.cardShadowColor = i;
            colorCardShadow(this.cardShadowPx, bArr, i);
            bitmap.setPixels(this.cardShadowPx, 0, i2, 0, 0, i2, i2);
        }
        float f = shadowE * 4.0f;
        float f2 = shadowK * 4.0f;
        float fDp = AndroidUtilities.dp(4.0f);
        int[] iArr = this.shadowSx;
        iArr[0] = 0;
        int i3 = shadowK;
        iArr[1] = i3;
        iArr[2] = i2 - i3;
        iArr[3] = i2;
        float[] fArr = this.shadowDx;
        float f3 = rectF.left - f;
        fArr[0] = f3;
        fArr[1] = f3 + f2;
        float f4 = rectF.right + f;
        fArr[3] = f4;
        fArr[2] = f4 - f2;
        float[] fArr2 = this.shadowDy;
        float f5 = (rectF.top - f) + fDp;
        fArr2[0] = f5;
        fArr2[1] = f5 + f2;
        float f6 = rectF.bottom + f + fDp;
        fArr2[3] = f6;
        fArr2[2] = f6 - f2;
        for (int i4 = 0; i4 < 3; i4++) {
            int i5 = 0;
            while (i5 < 3) {
                Rect rect = this.shadowSrc;
                int[] iArr2 = this.shadowSx;
                int i6 = i5 + 1;
                int i7 = i4 + 1;
                rect.set(iArr2[i5], iArr2[i4], iArr2[i6], iArr2[i7]);
                RectF rectF2 = this.shadowDst;
                float[] fArr3 = this.shadowDx;
                float f7 = fArr3[i5];
                float[] fArr4 = this.shadowDy;
                rectF2.set(f7, fArr4[i4], fArr3[i6], fArr4[i7]);
                canvas.drawBitmap(bitmap, this.shadowSrc, this.shadowDst, this.cardShadowPaint);
                i5 = i6;
            }
        }
    }

    private void drawCardInner(Canvas canvas, int i) {
        float f;
        float fPow;
        float f2;
        Canvas canvas2 = canvas;
        float fCardW = cardW();
        float fCardH = cardH();
        float f3 = (i - fCardW) / 2.0f;
        float fCardTop = cardTop();
        float f4 = f3 + fCardW;
        float f5 = fCardH + fCardTop;
        this.rect.set(f3, fCardTop, f4, f5);
        this.cardPaint.setColor(-1);
        drawCardShadow(canvas2, this.rect, cardShadowColorFor(qrColor()));
        canvas2.drawRoundRect(this.rect, AndroidUtilities.dp(30.0f), AndroidUtilities.dp(30.0f), this.cardPaint);
        this.qr.setCardBounds(f3, fCardTop, f4, f5);
        int iQrColor = qrColor();
        float f6 = 0.7f * fCardW;
        float f7 = (fCardW - f6) / 2.0f;
        float f8 = f3 + f7;
        float fLerp = fCardTop + AndroidUtilities.lerp(0.12f * fCardW, f7, this.tempK);
        this.qr.setColor(iQrColor);
        this.qr.draw(canvas2, f8, fLerp, f6);
        float fLogoSize = this.qr.logoSize(f6) / 2.0f;
        float f9 = f6 / 2.0f;
        float f10 = f8 + f9;
        float f11 = f9 + fLerp;
        this.qr.buildProgress();
        float fElemScale = elemScale(1.0f);
        canvas2.save();
        canvas2.scale(fElemScale, fElemScale, f10, f11);
        this.fill.setColor(iQrColor);
        canvas2.drawCircle(f10, f11, fLogoSize, this.fill);
        long jBuildElapsedMs = this.qr.buildElapsedMs();
        float fClamp01 = (this.sharing || jBuildElapsedMs == LongCompanionObject.MAX_VALUE) ? 1.0f : jBuildElapsedMs < 0 ? 0.0f : Utilities.clamp01(jBuildElapsedMs / 500.0f);
        if (fClamp01 >= 1.0f) {
            f = 2.0f;
            fPow = 1.0f;
        } else {
            f = 2.0f;
            fPow = (1.0f - ((float) Math.pow(1.0f - fClamp01, 3.0d))) + (((float) Math.sin(((double) fClamp01) * 3.141592653589793d)) * 0.015f * fClamp01);
        }
        if (fPow > 0.004f) {
            canvas2.save();
            this.logoClip.rewind();
            f2 = 0.004f;
            this.logoClip.addCircle(f10, f11, fLogoSize, Path.Direction.CW);
            canvas2.clipPath(this.logoClip);
            float fMin = (1.0f - Math.min(1.0f, fPow)) * fLogoSize * 0.55f;
            float f12 = (fPow * 0.5f) + 0.5f;
            canvas2.translate(-fMin, fMin);
            canvas2.scale(f12, f12, f10, f11);
            if (this.sharing && this.logoOptimal != null) {
                this.rect3.set(f10 - fLogoSize, f11 - fLogoSize, f10 + fLogoSize, f11 + fLogoSize);
                canvas2.drawBitmap(this.logoOptimal, (Rect) null, this.rect3, this.logoOptimalPaint);
            } else {
                this.logo.setAlpha((int) (Utilities.clamp01(fClamp01 * f) * 255.0f));
                this.logo.setBounds((int) (f10 - fLogoSize), (int) (f11 - fLogoSize), (int) (f10 + fLogoSize), (int) (f11 + fLogoSize));
                this.logo.draw(canvas2);
                this.logo.setAlpha(255);
            }
            canvas2.restore();
        } else {
            f2 = 0.004f;
        }
        canvas2.restore();
        StaticLayout staticLayoutNameLayout = nameLayout((int) fCardW);
        if (staticLayoutNameLayout != null) {
            this.nameTextPaint.setColor(iQrColor);
            this.nameAt.setColorFilter(tint(iQrColor));
            float fDescent = (this.nameTextPaint.descent() - this.nameTextPaint.ascent()) * staticLayoutNameLayout.getLineCount();
            float f13 = fLerp + f6;
            boolean z = this.nameBurst && !this.sharing;
            float f14 = this.tempK;
            float f15 = z ? f14 < 0.999f ? 1.0f : 0.0f : 1.0f - f14;
            float width = f3 + ((fCardW - staticLayoutNameLayout.getWidth()) / f);
            float fDp = (f13 + (((f5 - f13) - fDescent) / f)) - AndroidUtilities.dp(4.0f);
            if (z && this.nbLayout != staticLayoutNameLayout) {
                sampleNameInk(staticLayoutNameLayout);
            }
            if (f15 > f2) {
                canvas2.save();
                canvas2.translate(width, fDp);
                float fElemScale2 = elemScale(f15);
                canvas2.scale(fElemScale2, fElemScale2, staticLayoutNameLayout.getWidth() / f, fDescent / f);
                if (z) {
                    canvas2.saveLayer(-AndroidUtilities.dp(8.0f), -AndroidUtilities.dp(4.0f), staticLayoutNameLayout.getWidth() + AndroidUtilities.dp(8.0f), staticLayoutNameLayout.getHeight() + AndroidUtilities.dp(4.0f), null);
                    staticLayoutNameLayout.draw(canvas2);
                    float f16 = this.tempK * 1.12f;
                    float f17 = this.nbInkL;
                    float f18 = this.nbInkW;
                    float f19 = (((f16 - 0.18f) * f18) / 0.82f) + f17;
                    this.shaderMatrix.setScale(Math.max(1.0f, (f17 + ((f18 * f16) / 0.82f)) - f19), 1.0f);
                    this.shaderMatrix.postTranslate(f19, 0.0f);
                    this.nbWipe.setLocalMatrix(this.shaderMatrix);
                    canvas2.drawRect(-AndroidUtilities.dp(8.0f), -AndroidUtilities.dp(4.0f), staticLayoutNameLayout.getWidth() + AndroidUtilities.dp(8.0f), staticLayoutNameLayout.getHeight() + AndroidUtilities.dp(4.0f), this.nbWipePaint);
                    canvas.restore();
                    canvas2 = canvas;
                } else {
                    if (f15 < 1.0f) {
                        canvas2 = canvas;
                        canvas2.saveLayerAlpha(0.0f, -AndroidUtilities.dp(4.0f), staticLayoutNameLayout.getWidth(), fDescent + AndroidUtilities.dp(4.0f), (int) (f15 * 255.0f));
                    } else {
                        canvas2 = canvas;
                    }
                    staticLayoutNameLayout.draw(canvas2);
                    if (f15 < 1.0f) {
                        canvas2.restore();
                    }
                }
                canvas2.restore();
            }
            if (z) {
                emitNameBurst(width, fDp);
            }
        }
        if (this.sharing || this.nbN <= 0) {
            return;
        }
        drawNameBurst(canvas2, iQrColor);
    }

    private void sampleNameInk(StaticLayout staticLayout) {
        this.nbLayout = staticLayout;
        boolean z = false;
        this.nbCells = 0;
        int iMax = Math.max(1, staticLayout.getWidth());
        int iMax2 = Math.max(1, staticLayout.getHeight());
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iMax, iMax2, Bitmap.Config.ALPHA_8);
        staticLayout.draw(new Canvas(bitmapCreateBitmap));
        int[] iArr = new int[iMax];
        int iMax3 = Math.max(2, AndroidUtilities.dp(2.0f));
        int i = iMax3 / 2;
        int i2 = 0;
        int i3 = 0;
        int i4 = iMax;
        int i5 = i;
        while (i5 < iMax2) {
            boolean z2 = z;
            bitmapCreateBitmap.getPixels(iArr, 0, iMax, 0, i5, iMax, 1);
            int i6 = i3;
            for (int i7 = i; i7 < iMax; i7 += iMax3) {
                if ((iArr[i7] >>> 24) >= 96) {
                    i2++;
                    if (i7 < i4) {
                        i4 = i7;
                    }
                    if (i7 > i6) {
                        i6 = i7;
                    }
                }
            }
            i5 += iMax3;
            i3 = i6;
            z = z2;
        }
        boolean z3 = z;
        if (i2 == 0) {
            bitmapCreateBitmap.recycle();
            this.nbInkL = 0.0f;
            this.nbInkW = iMax;
            return;
        }
        this.nbInkL = i4;
        this.nbInkW = Math.max(1, i3 - i4);
        float fMin = Math.min(1.0f, Math.max(80, Math.min(200, (int) (r4 / AndroidUtilities.dpf2(1.3f)))) / i2);
        for (int i8 = i; i8 < iMax2; i8 += iMax3) {
            bitmapCreateBitmap.getPixels(iArr, 0, iMax, 0, i8, iMax, 1);
            for (int i9 = i; i9 < iMax && this.nbCells < 240; i9 += iMax3) {
                if ((iArr[i9] >>> 24) >= 96 && this.random.nextFloat() <= fMin) {
                    int i10 = this.nbCells;
                    this.nbCells = i10 + 1;
                    float f = i9;
                    this.nbcx[i10] = f;
                    this.nbcy[i10] = i8;
                    this.nbthr[i10] = (((f - this.nbInkL) * 0.82f) / this.nbInkW) + (this.random.nextFloat() * 0.18f);
                    this.nbOut[i10] = z3;
                }
            }
        }
        bitmapCreateBitmap.recycle();
    }

    private void emitNameBurst(float f, float f2) {
        int i;
        float fDpf2;
        float fNextFloat;
        float f3;
        float f4 = this.tempK * 1.12f;
        for (int i2 = 0; i2 < this.nbCells; i2++) {
            boolean z = this.nbthr[i2] < f4;
            if (z && !this.nbOut[i2] && this.tempTarget == 1.0f && (i = this.nbN) < 240) {
                this.nbN = i + 1;
                boolean z2 = this.random.nextFloat() < 0.12f;
                float[] fArr = this.nbx;
                float[] fArr2 = this.nbsx;
                float fNextFloat2 = this.nbcx[i2] + f + ((this.random.nextFloat() - 0.5f) * AndroidUtilities.dp(2.0f));
                fArr2[i] = fNextFloat2;
                fArr[i] = fNextFloat2;
                float[] fArr3 = this.nby;
                float[] fArr4 = this.nbsy;
                float fNextFloat3 = this.nbcy[i2] + f2 + ((this.random.nextFloat() - 0.5f) * AndroidUtilities.dp(2.0f));
                fArr4[i] = fNextFloat3;
                fArr3[i] = fNextFloat3;
                this.nbvx[i] = AndroidUtilities.dp(6.0f) + ((this.random.nextFloat() - 0.5f) * AndroidUtilities.dp(36.0f));
                this.nbvy[i] = -(AndroidUtilities.dp(18.0f) + (this.random.nextFloat() * AndroidUtilities.dp(36.0f)));
                this.nbay[i] = -(AndroidUtilities.dp(60.0f) + (this.random.nextFloat() * AndroidUtilities.dp(70.0f)));
                float[] fArr5 = this.nbsize;
                if (z2) {
                    fDpf2 = AndroidUtilities.dpf2(1.6f);
                    fNextFloat = this.random.nextFloat();
                    f3 = 0.8f;
                } else {
                    fDpf2 = AndroidUtilities.dpf2(1.2f);
                    fNextFloat = this.random.nextFloat();
                    f3 = 1.3f;
                }
                fArr5[i] = fDpf2 + (fNextFloat * AndroidUtilities.dpf2(f3));
                this.nblife[i] = (this.random.nextFloat() * 0.4f) + 0.6f;
                this.nbage[i] = 0.0f;
                this.nbwf[i] = (this.random.nextFloat() * 3.0f) + 4.0f;
                this.nbwp[i] = this.random.nextFloat() * 6.2832f;
                this.nbspark[i] = z2;
            }
            this.nbOut[i2] = z;
        }
    }

    private void drawNameBurst(Canvas canvas, int i) {
        int i2;
        float f;
        float f2 = this.frameK * 0.016667f;
        int i3 = this.nbN - 1;
        while (i3 >= 0) {
            float[] fArr = this.nbage;
            float f3 = fArr[i3] + f2;
            fArr[i3] = f3;
            float[] fArr2 = this.nblife;
            if (f3 >= fArr2[i3]) {
                int i4 = this.nbN - 1;
                this.nbN = i4;
                float[] fArr3 = this.nbx;
                fArr3[i3] = fArr3[i4];
                float[] fArr4 = this.nby;
                fArr4[i3] = fArr4[i4];
                float[] fArr5 = this.nbvx;
                fArr5[i3] = fArr5[i4];
                float[] fArr6 = this.nbvy;
                fArr6[i3] = fArr6[i4];
                float[] fArr7 = this.nbay;
                fArr7[i3] = fArr7[i4];
                float[] fArr8 = this.nbsx;
                fArr8[i3] = fArr8[i4];
                float[] fArr9 = this.nbsy;
                fArr9[i3] = fArr9[i4];
                float[] fArr10 = this.nbsize;
                fArr10[i3] = fArr10[i4];
                fArr2[i3] = fArr2[i4];
                fArr[i3] = fArr[i4];
                float[] fArr11 = this.nbwf;
                fArr11[i3] = fArr11[i4];
                float[] fArr12 = this.nbwp;
                fArr12[i3] = fArr12[i4];
                boolean[] zArr = this.nbspark;
                zArr[i3] = zArr[i4];
                i2 = i3;
                f = f2;
            } else {
                float[] fArr13 = this.nbvy;
                fArr13[i3] = fArr13[i3] + (this.nbay[i3] * f2);
                float[] fArr14 = this.nbvx;
                fArr14[i3] = fArr14[i3] * (1.0f - (1.6f * f2));
                fArr13[i3] = fArr13[i3] * (1.0f - (0.8f * f2));
                float[] fArr15 = this.nbx;
                fArr15[i3] = fArr15[i3] + (fArr14[i3] * f2);
                float[] fArr16 = this.nby;
                float f4 = fArr16[i3] + (fArr13[i3] * f2);
                fArr16[i3] = f4;
                float f5 = fArr15[i3] - this.nbsx[i3];
                float f6 = f4 - this.nbsy[i3];
                float fSqrt = (float) Math.sqrt((f5 * f5) + (f6 * f6));
                float f7 = this.nbage[i3] / this.nblife[i3];
                float fPow = (f7 < 0.08f ? f7 / 0.08f : (float) Math.pow(1.0f - ((f7 - 0.08f) / 0.92f), 0.550000011920929d)) * ((float) Math.exp((-fSqrt) / AndroidUtilities.dp(90.0f)));
                float fMin = (this.nbsize[i3] / 2.0f) * (1.0f - (Math.min(1.0f, fSqrt / AndroidUtilities.dp(90.0f)) * 0.4f));
                float fHypot = (float) Math.hypot(this.nbvx[i3], this.nbvy[i3]);
                float f8 = this.nbx[i3];
                float f9 = this.nby[i3];
                if (fHypot > 1.0f) {
                    float fDp = AndroidUtilities.dp(3.0f) * ((float) Math.sin((this.nbage[i3] * this.nbwf[i3]) + this.nbwp[i3]));
                    f8 += ((-this.nbvy[i3]) / fHypot) * fDp;
                    f9 += (this.nbvx[i3] / fHypot) * fDp;
                }
                RectF rectF = this.rect;
                float fMax = Math.max(rectF.left - f8, Math.max(0.0f, f8 - rectF.right));
                RectF rectF2 = this.rect;
                float fMin2 = Math.min(1.0f, Math.max(fMax, Math.max(rectF2.top - f9, Math.max(0.0f, f9 - rectF2.bottom))) / AndroidUtilities.dp(36.0f));
                this.fill.setColor(fMin2 > 0.0f ? QrCodeLayer.mixOklab(i, -1, fMin2) : i);
                this.fill.setAlpha((int) (255.0f * fPow));
                float fMin3 = Math.min(1.8f, (fHypot / AndroidUtilities.dp(220.0f)) + 1.0f);
                canvas.save();
                i2 = i3;
                f = f2;
                canvas.rotate((float) Math.toDegrees(Math.atan2(this.nbvy[i3], this.nbvx[i3])), f8, f9);
                float f10 = fMin3 * fMin;
                this.sparkOval.set(f8 - f10, f9 - fMin, f10 + f8, f9 + fMin);
                canvas.drawOval(this.sparkOval, this.fill);
                canvas.restore();
                if (this.nbspark[i2]) {
                    this.fill.setAlpha((int) (fPow * 36.0f));
                    canvas.drawCircle(f8, f9, fMin * 2.2f, this.fill);
                }
            }
            i3 = i2 - 1;
            f2 = f;
        }
        if (this.nbN > 0) {
            invalidate();
        }
    }

    private StaticLayout nameLayout(int i) {
        int i2;
        StaticLayout staticLayout = this.nameLayout;
        if (staticLayout != null && this.nameLayoutWidth == i) {
            return staticLayout;
        }
        this.nameLayoutWidth = i;
        String str = this.caption;
        if (str == null) {
            str = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        String upperCase = str.toUpperCase();
        this.nameTextPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_CONDENSED_BOLD));
        int iDp = i - (AndroidUtilities.dp(20.0f) * 2);
        this.nameLayout = null;
        for (int i3 = 0; i3 <= 2; i3++) {
            if (i3 == 0) {
                this.nameAt = m1090d(C2807R.drawable.qr_at_large);
                this.nameTextPaint.setTextSize(AndroidUtilities.dp(30.0f));
            } else if (i3 == 1) {
                this.nameAt = m1090d(C2807R.drawable.qr_at_medium);
                this.nameTextPaint.setTextSize(AndroidUtilities.dp(25.0f));
            } else {
                this.nameAt = m1090d(C2807R.drawable.qr_at_small);
                this.nameTextPaint.setTextSize(AndroidUtilities.dp(19.0f));
            }
            Drawable drawable = this.nameAt;
            drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), this.nameAt.getIntrinsicHeight());
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.captionIsUsername ? " " + upperCase : upperCase);
            if (this.captionIsUsername) {
                spannableStringBuilder.setSpan(new SettingsSearchCell.VerticalImageSpan(this.nameAt), 0, 1, 33);
            }
            float fWidth = this.captionIsUsername ? this.nameAt.getBounds().width() : 0;
            float fMeasureText = this.nameTextPaint.measureText(spannableStringBuilder, this.captionIsUsername ? 1 : 0, spannableStringBuilder.length()) + fWidth;
            if (i3 > 1 || fMeasureText <= iDp) {
                int i4 = fMeasureText > ((float) iDp) ? 2 : 1;
                int iDp2 = i4 > 1 ? (((int) (fMeasureText + fWidth)) / 2) + AndroidUtilities.dp(2.0f) : iDp;
                if (iDp2 > iDp) {
                    iDp2 = (((int) (fMeasureText + fWidth)) / 3) + AndroidUtilities.dp(4.0f);
                    i2 = 3;
                } else {
                    i2 = i4;
                }
                int i5 = iDp2;
                this.nameLayout = StaticLayoutEx.createStaticLayout(spannableStringBuilder, this.nameTextPaint, i5, Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, false, null, Math.min(AndroidUtilities.dp(10.0f) + i5, i), i2);
                return this.nameLayout;
            }
        }
        return this.nameLayout;
    }

    private void drawChip(Canvas canvas, int i, long j) {
        float f = this.tempK;
        float f2 = this.paidK;
        float f3 = f * (1.0f - f2);
        if (f2 > 0.001f) {
            boolean z = f2 < 0.999f;
            if (z) {
                canvas.save();
                float f4 = this.paidK;
                canvas.scale(f4, f4, i / 2.0f, chipCY());
            }
            drawFeeChip(canvas, i, j);
            if (z) {
                canvas.restore();
            }
        } else {
            this.chipRect.setEmpty();
        }
        if (f3 > 0.001f) {
            drawTempChip(canvas, i, f3);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void drawFeeChip(Canvas canvas, int i, long j) {
        float fDp;
        QrShareView qrShareView;
        boolean z;
        float f;
        Canvas canvas2;
        float f2;
        float f3;
        float f4;
        float f5;
        boolean z2;
        float f6;
        float f7;
        Canvas canvas3;
        RectF rectF;
        float f8;
        float fDpf2;
        float fNextFloat;
        float fDpf22;
        float fChipCY = chipCY();
        this.chipPaint.setTextSize(AndroidUtilities.dp(11.0f));
        float f9 = 1.0f;
        float fDp2 = AndroidUtilities.dp(11.0f) + this.chipPaint.measureText(this.feeA) + AndroidUtilities.dp(12.0f) + AndroidUtilities.dp(1.0f) + this.chipPaint.measureText(this.feeB) + AndroidUtilities.dp(11.0f);
        if (!this.free) {
            fDp = this.restoreFreeW;
            if (fDp <= 0.0f || this.chipSweep <= 0.001f) {
                fDp = AndroidUtilities.dp(8.0f) + AndroidUtilities.dp(12.0f) + AndroidUtilities.dp(2.0f) + this.chipText.getCurrentWidth() + AndroidUtilities.dp(11.0f);
            }
        }
        boolean z3 = this.free;
        if (!z3 && this.chipSweep <= 0.001f) {
            this.restoreFreeW = 0.0f;
        }
        float fMax = this.chipSweep;
        if (z3) {
            fMax = Math.max(fMax, this.sweepDone ? 1.0f : 0.0f);
        }
        float fLerp = AndroidUtilities.lerp(fDp2, fDp, fMax);
        float fDp3 = AndroidUtilities.dp(22.0f);
        float f10 = (i - fLerp) / 2.0f;
        float f11 = fDp3 / 2.0f;
        this.rect.set(f10, fChipCY - f11, fLerp + f10, fChipCY + f11);
        this.chipRect.set(this.rect);
        Scene scene = this.scene;
        boolean z4 = scene != null && scene.light;
        if (this.chipSkipGlass) {
            qrShareView = this;
            z = z4;
            f = f11;
            canvas2 = canvas;
        } else {
            this.glassButton = true;
            this.glassSmall = true;
            drawGlass(canvas, this.rect, f11, z4, 1.0f);
            qrShareView = this;
            canvas2 = canvas;
            f = f11;
            z = z4;
            qrShareView.glassButton = false;
            qrShareView.glassSmall = false;
        }
        qrShareView.drawRipple(canvas2, 9, qrShareView.rect, z);
        RectF rectF2 = qrShareView.chipFillRect;
        rectF2.set(qrShareView.rect);
        float fMin = Math.min(0.0f, AndroidUtilities.dpf2(RimTune.f1214g[1][8]));
        rectF2.inset(fMin, fMin);
        float f12 = f - fMin;
        boolean z5 = qrShareView.shatterAt > 0 && !qrShareView.free;
        if (qrShareView.shatterPending) {
            qrShareView.shatterPending = false;
            RectF rectF3 = qrShareView.shatterRect;
            float f13 = rectF2.left;
            f2 = 0.001f;
            f3 = 22.0f;
            f4 = 2.0f;
            rectF3.set(f13, rectF2.top, f13 + (rectF2.width() * qrShareView.chipSweep * qrShareView.burnFrac), rectF2.bottom);
            qrShareView.shatterBurst(qrShareView.shatterRect, qrShareView.rect);
        } else {
            f2 = 0.001f;
            f3 = 22.0f;
            f4 = 2.0f;
        }
        float f14 = z5 ? 0.0f : qrShareView.chipSweep * qrShareView.burnFrac;
        float fWidth = rectF2.left + (rectF2.width() * f14);
        float fClamp01 = z5 ? Utilities.clamp01((AnimationUtils.currentAnimationTimeMillis() - qrShareView.shatterAt) / 80.0f) : 1.0f;
        if (!z5 || fClamp01 >= 1.0f) {
            f5 = 0.0f;
        } else {
            float fClamp012 = 1.0f - Utilities.clamp01((AnimationUtils.currentAnimationTimeMillis() - qrShareView.shatterAt) / 60.0f);
            canvas2.save();
            qrShareView.path.rewind();
            f5 = 0.0f;
            qrShareView.path.addRoundRect(rectF2, f12, f12, Path.Direction.CW);
            canvas2.clipPath(qrShareView.path);
            canvas2.clipRect(qrShareView.shatterRect);
            if (fClamp012 > 0.0f) {
                qrShareView.fill.setColor(-134217729);
                qrShareView.fill.setAlpha((int) (fClamp012 * 247.0f));
                canvas2.drawRect(qrShareView.shatterRect, qrShareView.fill);
            }
            qrShareView.drawFreeContent(canvas2, qrShareView.rect, Theme_multAlpha(qrShareView.scene != null ? qrShareView.qrColor() : -16777216, 1.0f - fClamp01));
            canvas2.restore();
            qrShareView.invalidate();
        }
        boolean z6 = qrShareView.free;
        boolean z7 = z6 && qrShareView.sweepDone && qrShareView.timerOn && f14 < 0.999f;
        qrShareView.buildChipEdge(fWidth, qrShareView.rect, rectF2, z6 && !qrShareView.sweepDone);
        if (f14 > f2) {
            canvas2.save();
            qrShareView.path.rewind();
            qrShareView.path.addRoundRect(rectF2, f12, f12, Path.Direction.CW);
            canvas2.clipPath(qrShareView.path);
            canvas2.clipPath(qrShareView.chipEdgePath);
            qrShareView.fill.setColor(-134217729);
            if (z7) {
                qrShareView.buildTornPath(rectF2, fWidth);
                canvas2.drawPath(qrShareView.tornPath, qrShareView.fill);
                z2 = z;
                rectF = rectF2;
            } else {
                z2 = z;
                rectF = rectF2;
                canvas2.drawRect(rectF2.left, rectF2.top, qrShareView.chipEdgeAmp + fWidth, rectF2.bottom, qrShareView.fill);
            }
            if (z7 || (qrShareView.free && !qrShareView.sweepDone)) {
                qrShareView.chipSheenM.setScale(AndroidUtilities.dp(23.0f), 1.0f);
                f8 = f5;
                qrShareView.chipSheenM.postTranslate(fWidth - AndroidUtilities.dp(f3), f8);
                qrShareView.chipSheen.setLocalMatrix(qrShareView.chipSheenM);
                qrShareView.fill.setShader(qrShareView.chipSheen);
                canvas.drawRect(fWidth - AndroidUtilities.dp(f3), rectF.top, fWidth + AndroidUtilities.dp(1.0f), rectF.bottom, qrShareView.fill);
                qrShareView.fill.setShader(null);
            } else {
                f8 = f5;
            }
            canvas.restore();
            float f15 = qrShareView.frameK * 0.016667f;
            float fCurrentTimeMillis = z7 ? 1.2f : ((qrShareView.fillEndsAt + 250) - System.currentTimeMillis()) / 1000.0f;
            qrShareView.burnEdgeX = fWidth;
            if (z7) {
                int i2 = 0;
                for (int iFloor = (int) Math.floor((110.0f * f15) + qrShareView.random.nextFloat()); i2 < iFloor; iFloor = iFloor) {
                    float fNextFloat2 = qrShareView.rect.top + (qrShareView.random.nextFloat() * fDp3);
                    chipEmitBurn(qrShareView.tornOffset(fNextFloat2, fWidth, rectF.top) + fWidth + (qrShareView.random.nextFloat() * AndroidUtilities.dp(3.0f)), fNextFloat2, AndroidUtilities.dp(10.0f) + (qrShareView.random.nextFloat() * AndroidUtilities.dp(20.0f)), -(AndroidUtilities.dp(4.0f) + (qrShareView.random.nextFloat() * AndroidUtilities.dp(10.0f))), 0.0f, AndroidUtilities.dpf2(0.8f) + (qrShareView.random.nextFloat() * AndroidUtilities.dpf2(0.7f)), (qrShareView.random.nextFloat() * 0.25f) + 0.25f, (qrShareView.random.nextFloat() * 0.1f) + 0.9f, false, false);
                    i2++;
                    f9 = f9;
                    qrShareView = this;
                    rectF = rectF;
                    f = f;
                    fDp3 = fDp3;
                }
                QrShareView qrShareView2 = qrShareView;
                f6 = f;
                f7 = f9;
                float f16 = fDp3;
                canvas3 = canvas;
                RectF rectF4 = rectF;
                int i3 = 0;
                for (int iFloor2 = (int) Math.floor((f15 * 70.0f) + qrShareView2.random.nextFloat()); i3 < iFloor2; iFloor2 = iFloor2) {
                    boolean z8 = qrShareView2.random.nextFloat() < 0.12f;
                    float fNextFloat3 = qrShareView2.rect.top + (qrShareView2.random.nextFloat() * f16);
                    float fDp4 = qrShareView2.tornOffset(fNextFloat3, fWidth, rectF4.top) + fWidth + AndroidUtilities.dp(f4) + (qrShareView2.random.nextFloat() * AndroidUtilities.dp(10.0f));
                    float fDp5 = AndroidUtilities.dp(40.0f) + (qrShareView2.random.nextFloat() * AndroidUtilities.dp(70.0f));
                    float f17 = -(AndroidUtilities.dp(10.0f) + (qrShareView2.random.nextFloat() * AndroidUtilities.dp(30.0f)));
                    float f18 = -(AndroidUtilities.dp(26.0f) + (qrShareView2.random.nextFloat() * AndroidUtilities.dp(34.0f)));
                    if (z8) {
                        fDpf2 = AndroidUtilities.dpf2(1.4f);
                        fNextFloat = qrShareView2.random.nextFloat();
                        fDpf22 = AndroidUtilities.dpf2(0.8f);
                    } else {
                        fDpf2 = AndroidUtilities.dpf2(0.9f);
                        fNextFloat = qrShareView2.random.nextFloat();
                        fDpf22 = AndroidUtilities.dpf2(1.1f);
                    }
                    qrShareView2.chipEmitBurn(fDp4, fNextFloat3, fDp5, f17, f18, fDpf2 + (fNextFloat * fDpf22), (qrShareView2.random.nextFloat() * 0.7f) + 0.6f, 1.0f, z8, true);
                    i3++;
                }
                qrShareView = qrShareView2;
            } else {
                f6 = f;
                f7 = 1.0f;
                canvas3 = canvas;
                if (qrShareView.free && !qrShareView.sweepDone) {
                    f8 = 260.0f;
                }
                int iFloor3 = (int) Math.floor((f8 * f15) + qrShareView.random.nextFloat());
                for (int i4 = 0; i4 < iFloor3; i4++) {
                    qrShareView.chipEmit(fWidth, qrShareView.rect.top + (qrShareView.random.nextFloat() * fDp3), fCurrentTimeMillis);
                }
            }
        } else {
            z2 = z;
            f6 = f;
            f7 = 1.0f;
            canvas3 = canvas2;
        }
        int i5 = z2 ? -436207616 : -218103809;
        int iQrColor = qrShareView.scene != null ? qrShareView.qrColor() : -16777216;
        canvas3.save();
        qrShareView.path.rewind();
        qrShareView.path.addRoundRect(qrShareView.rect, f6, f6, Path.Direction.CW);
        canvas3.clipPath(qrShareView.path);
        if (f14 > f2) {
            QrRender.clipOut(canvas3, z7 ? qrShareView.tornPath : qrShareView.chipEdgePath);
        }
        if (qrShareView.free && qrShareView.sweepDone) {
            qrShareView.drawFreeContent(canvas3, qrShareView.rect, i5);
        } else {
            RectF rectF5 = qrShareView.rect;
            if (!z5) {
                fClamp01 = f7 - Utilities.clamp01(qrShareView.chipSweep * 1.25f);
            }
            qrShareView.drawFeeContent(canvas3, rectF5, Theme_multAlpha(i5, fClamp01));
        }
        canvas3.restore();
        if (f14 > f2) {
            canvas3.save();
            canvas3.clipPath(z7 ? qrShareView.tornPath : qrShareView.chipEdgePath);
            qrShareView.drawFreeContent(canvas3, qrShareView.rect, iQrColor);
            canvas3.restore();
        }
        if (qrShareView.chipBurstPending) {
            qrShareView.chipBurstPending = false;
            for (int i6 = 0; i6 < 24; i6++) {
                qrShareView.chipEmit(qrShareView.rect.left + (qrShareView.random.nextFloat() * qrShareView.rect.width() * 0.4f), qrShareView.rect.top + (qrShareView.random.nextFloat() * qrShareView.rect.height()), 0.5f);
            }
        }
        drawSparks(canvas);
    }

    private void buildChipEdge(float f, RectF rectF, RectF rectF2, boolean z) {
        float[] fArr;
        float fElapsedRealtime = (SystemClock.elapsedRealtime() % 100000) / 1000.0f;
        this.chipEdgeAmp = AndroidUtilities.dpf2(z ? 5.0f : 2.2f) * Utilities.clamp01((f - rectF2.left) / AndroidUtilities.dp(6.0f)) * Utilities.clamp01((rectF2.right - f) / AndroidUtilities.dp(6.0f));
        float fDp = rectF.top - AndroidUtilities.dp(4.0f);
        float fDp2 = rectF.bottom + AndroidUtilities.dp(4.0f);
        float f2 = fDp2 - fDp;
        for (int i = 0; i < 7; i++) {
            float f3 = i;
            this.chipEdgeX[i] = (((float) ((Math.sin((5.1f * fElapsedRealtime) + (1.7f * f3)) * 0.6000000238418579d) + (Math.sin((8.3f * fElapsedRealtime) + (f3 * 2.9f)) * 0.4000000059604645d))) * this.chipEdgeAmp) + f;
        }
        Path path = this.chipEdgePath;
        path.rewind();
        path.moveTo(rectF.left - AndroidUtilities.dp(8.0f), fDp);
        path.lineTo(this.chipEdgeX[0], fDp);
        int i2 = 1;
        while (true) {
            fArr = this.chipEdgeX;
            if (i2 >= 7) {
                break;
            }
            int i3 = i2 - 1;
            float f4 = ((i3 * f2) / 6.0f) + fDp;
            float f5 = fArr[i3];
            path.quadTo(f5, f4, (fArr[i2] + f5) / 2.0f, ((((i2 * f2) / 6.0f) + fDp) + f4) / 2.0f);
            i2++;
        }
        path.lineTo(fArr[6], fDp2);
        path.lineTo(rectF.left - AndroidUtilities.dp(8.0f), fDp2);
        path.close();
        if (this.chipEdgeAmp > 0.01f) {
            invalidate();
        }
    }

    private void buildTornPath(RectF rectF, float f) {
        this.tornPath.rewind();
        float fDp = rectF.top - AndroidUtilities.dp(2.0f);
        float fDp2 = rectF.bottom + AndroidUtilities.dp(2.0f);
        float fDpf2 = AndroidUtilities.dpf2(0.75f);
        this.tornPath.moveTo(rectF.left - AndroidUtilities.dp(4.0f), fDp);
        while (true) {
            float fMin = Math.min(fDp, fDp2);
            this.tornPath.lineTo(tornOffset(fMin, f, rectF.top) + f, fMin);
            if (fMin >= fDp2) {
                this.tornPath.lineTo(rectF.left - AndroidUtilities.dp(4.0f), fDp2);
                this.tornPath.close();
                return;
            }
            fDp += fDpf2;
        }
    }

    private float tornOffset(float f, float f2, float f3) {
        float fDpf2 = (f - f3) / AndroidUtilities.dpf2(1.7f);
        float fDpf22 = f2 / AndroidUtilities.dpf2(3.2f);
        return (((valueNoise(fDpf2, fDpf22, 17) * 0.68f) + (valueNoise(fDpf2 * 2.6f, fDpf22 * 1.7f, 91) * 0.32f)) - 0.5f) * AndroidUtilities.dpf2(3.6f);
    }

    private static float valueNoise(float f, float f2, int i) {
        int iFloor = (int) Math.floor(f);
        int iFloor2 = (int) Math.floor(f2);
        float f3 = f - iFloor;
        float f4 = f2 - iFloor2;
        float f5 = f3 * f3 * (3.0f - (f3 * 2.0f));
        float f6 = f4 * f4 * (3.0f - (f4 * 2.0f));
        float fHash01 = hash01(iFloor, iFloor2, i);
        int i2 = iFloor + 1;
        float fHash012 = hash01(i2, iFloor2, i);
        int i3 = iFloor2 + 1;
        float fHash013 = hash01(iFloor, i3, i);
        float f7 = fHash01 + ((fHash012 - fHash01) * f5);
        return f7 + (((fHash013 + ((hash01(i2, i3, i) - fHash013) * f5)) - f7) * f6);
    }

    private void drawFeeContent(Canvas canvas, RectF rectF, int i) {
        float fCenterY = rectF.centerY();
        float fDp = AndroidUtilities.dp(12.0f);
        float fDp2 = rectF.left + AndroidUtilities.dp(11.0f);
        this.chipPaint.setColor(i);
        canvas.drawText(this.feeA, fDp2, AndroidUtilities.dp(4.0f) + fCenterY, this.chipPaint);
        float fMeasureText = fDp2 + this.chipPaint.measureText(this.feeA);
        drawStar(canvas, fMeasureText, fCenterY, fDp, i, false);
        this.chipPaint.setColor(i);
        canvas.drawText(this.feeB, fMeasureText + fDp + AndroidUtilities.dp(1.0f), fCenterY + AndroidUtilities.dp(4.0f), this.chipPaint);
    }

    private void drawFreeContent(Canvas canvas, RectF rectF, int i) {
        float fCenterY = rectF.centerY();
        float fDp = AndroidUtilities.dp(12.0f);
        float fDp2 = AndroidUtilities.dp(2.0f) + fDp + this.chipText.getCurrentWidth();
        float fDp3 = rectF.left + AndroidUtilities.dp(8.0f);
        drawStar(canvas, fDp3, fCenterY, fDp, i, true);
        this.chipText.setTextColor(i);
        this.chipText.setBounds((int) (fDp3 + fDp + AndroidUtilities.dp(2.0f)), (int) (fCenterY - AndroidUtilities.dp(8.0f)), (int) (fDp3 + fDp2 + AndroidUtilities.dp(40.0f)), (int) (fCenterY + AndroidUtilities.dp(8.0f)));
        this.chipText.draw(canvas);
    }

    private void drawStar(Canvas canvas, float f, float f2, float f3, int i, boolean z) {
        this.icStar.setColorFilter(tint(i));
        this.icStar.setAlpha(255);
        float f4 = f3 / 2.0f;
        float f5 = f2 - f4;
        float f6 = f + f3;
        float f7 = f2 + f4;
        this.icStar.setBounds((int) f, (int) f5, (int) f6, (int) f7);
        if (!z) {
            this.icStar.draw(canvas);
            return;
        }
        float f8 = f3 * 0.095f;
        float f9 = (0.28f * f3) + f;
        float f10 = f2 - (0.21f * f3);
        float f11 = (0.74f * f3) + f;
        float f12 = f2 + (0.25f * f3);
        this.rect2.set(f - AndroidUtilities.dp(2.0f), f5 - AndroidUtilities.dp(2.0f), f6 + AndroidUtilities.dp(2.0f), f7 + AndroidUtilities.dp(2.0f));
        canvas.saveLayer(this.rect2, null);
        this.icStar.draw(canvas);
        this.cutPaint.setStrokeWidth((0.065f * f3 * 2.0f) + f8);
        canvas.drawLine(f9, f10, f11, f12, this.cutPaint);
        canvas.restore();
        this.stroke.setColor(i);
        this.stroke.setStrokeWidth(f8);
        this.stroke.setStrokeCap(Paint.Cap.ROUND);
        canvas.drawLine(f9, f10, f11, f12, this.stroke);
        this.stroke.setStrokeCap(Paint.Cap.BUTT);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0198  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0209  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x02c6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void drawSparks(Canvas canvas) {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        double d;
        float fPow;
        float f6;
        byte b2;
        int i;
        float f7 = this.frameK * 0.016667f;
        float fDp = this.chipRect.top - AndroidUtilities.dp(40.0f);
        float fDp2 = this.chipRect.top - AndroidUtilities.dp(48.0f);
        int i2 = 1;
        int i3 = this.cpN - 1;
        while (i3 >= 0) {
            float[] fArr = this.cpage;
            float f8 = fArr[i3] + f7;
            fArr[i3] = f8;
            float[] fArr2 = this.cplife;
            if (f8 >= fArr2[i3]) {
                int i4 = this.cpN - i2;
                this.cpN = i4;
                float[] fArr3 = this.cpx;
                fArr3[i3] = fArr3[i4];
                float[] fArr4 = this.cpy;
                fArr4[i3] = fArr4[i4];
                float[] fArr5 = this.cpvx;
                fArr5[i3] = fArr5[i4];
                float[] fArr6 = this.cpvy;
                fArr6[i3] = fArr6[i4];
                fArr2[i3] = fArr2[i4];
                fArr[i3] = fArr[i4];
                float[] fArr7 = this.cpsize;
                fArr7[i3] = fArr7[i4];
                float[] fArr8 = this.cprot;
                fArr8[i3] = fArr8[i4];
                float[] fArr9 = this.cpvr;
                fArr9[i3] = fArr9[i4];
                byte[] bArr = this.cpkind;
                bArr[i3] = bArr[i4];
                boolean[] zArr = this.cpburn;
                zArr[i3] = zArr[i4];
                float[] fArr10 = this.cpsx;
                fArr10[i3] = fArr10[i4];
                float[] fArr11 = this.cpsy;
                fArr11[i3] = fArr11[i4];
                float[] fArr12 = this.cpay;
                fArr12[i3] = fArr12[i4];
                float[] fArr13 = this.cpwf;
                fArr13[i3] = fArr13[i4];
                float[] fArr14 = this.cpwp;
                fArr14[i3] = fArr14[i4];
                i = i2;
            } else {
                if (this.cpkind[i3] >= 3) {
                    float[] fArr15 = this.cpvx;
                    float f9 = 1.0f - (2.4f * f7);
                    fArr15[i3] = fArr15[i3] * f9;
                    float[] fArr16 = this.cpvy;
                    float f10 = fArr16[i3] * f9;
                    fArr16[i3] = f10;
                    if (fArr[i3] > 0.12f) {
                        fArr16[i3] = f10 + (AndroidUtilities.dp(120.0f) * f7);
                    }
                    if (this.cpy[i3] < this.chipRect.top - AndroidUtilities.dp(70.0f)) {
                        float[] fArr17 = this.cpvy;
                        fArr17[i3] = fArr17[i3] * 0.85f;
                    }
                } else {
                    boolean z = this.cpburn[i3];
                    float[] fArr18 = this.cpvy;
                    if (z) {
                        fArr18[i3] = fArr18[i3] + (this.cpay[i3] * f7);
                        float[] fArr19 = this.cpvx;
                        fArr19[i3] = fArr19[i3] * (1.0f - (1.6f * f7));
                        float f11 = fArr18[i3] * (1.0f - (0.8f * f7));
                        fArr18[i3] = f11;
                        if (this.cpy[i3] < fDp2) {
                            f3 = 3.0f;
                            f = 70.0f;
                            f2 = 0.12f;
                            fArr18[i3] = f11 * ((float) Math.pow(0.8999999761581421d, this.frameK));
                        }
                    } else {
                        f = 70.0f;
                        f2 = 0.12f;
                        f3 = 3.0f;
                        fArr18[i3] = fArr18[i3] - (AndroidUtilities.dp(20.0f) * f7);
                        float[] fArr20 = this.cpvx;
                        float f12 = 1.0f - (f7 * 3.0f);
                        fArr20[i3] = fArr20[i3] * f12;
                        float[] fArr21 = this.cpvy;
                        float f13 = fArr21[i3] * f12;
                        fArr21[i3] = f13;
                        if (this.cpy[i3] < fDp) {
                            fArr21[i3] = f13 * 0.85f;
                        }
                    }
                    float[] fArr22 = this.cpx;
                    fArr22[i3] = fArr22[i3] + (this.cpvx[i3] * f7);
                    float[] fArr23 = this.cpy;
                    fArr23[i3] = fArr23[i3] + (this.cpvy[i3] * f7);
                    f4 = this.cpage[i3] / this.cplife[i3];
                    if (f4 >= f2) {
                        f5 = f4;
                        fPow = f4 / f2;
                    } else {
                        double d2 = 1.0f - ((f4 - f2) / 0.88f);
                        if (this.cpburn[i3]) {
                            f5 = f4;
                            d = 0.550000011920929d;
                        } else {
                            f5 = f4;
                            d = 0.699999988079071d;
                        }
                        fPow = (float) Math.pow(d2, d);
                    }
                    f6 = this.cpy[i3];
                    if (f6 < fDp) {
                        fPow *= Math.max(0.0f, 1.0f - ((fDp - f6) / AndroidUtilities.dp(24.0f)));
                    }
                    float f14 = (this.cpsize[i3] * (1.0f - (0.5f * f5))) / 2.0f;
                    float f15 = f3;
                    this.fill.setColor(-1);
                    this.fill.setAlpha((int) (fPow * 255.0f));
                    b2 = this.cpkind[i3];
                    if (b2 < 3) {
                        float fMin = Math.min(2.0f, (((float) Math.hypot(this.cpvx[i3], this.cpvy[i3])) / AndroidUtilities.dp(200.0f)) + 1.0f);
                        float f16 = (this.cpsize[i3] * (1.0f - (f5 * 0.4f))) / 2.0f;
                        if (this.cpy[i3] < this.chipRect.top - AndroidUtilities.dp(f)) {
                            fPow *= Math.max(0.0f, 1.0f - (((this.chipRect.top - AndroidUtilities.dp(f)) - this.cpy[i3]) / AndroidUtilities.dp(16.0f)));
                        }
                        this.fill.setAlpha((int) (fPow * 255.0f));
                        canvas.save();
                        canvas.rotate((float) Math.toDegrees(Math.atan2(this.cpvy[i3], this.cpvx[i3])), this.cpx[i3], this.cpy[i3]);
                        RectF rectF = this.sparkOval;
                        float f17 = this.cpx[i3];
                        float f18 = fMin * f16;
                        float f19 = this.cpy[i3];
                        rectF.set(f17 - f18, f19 - f16, f17 + f18, f19 + f16);
                        canvas.drawOval(this.sparkOval, this.fill);
                        canvas.restore();
                        if (this.cpkind[i3] == 4) {
                            this.fill.setAlpha((int) (fPow * 36.0f));
                            canvas.drawCircle(this.cpx[i3], this.cpy[i3], f16 * 2.2f, this.fill);
                        }
                    } else {
                        boolean z2 = this.cpburn[i3];
                        float[] fArr24 = this.cpx;
                        if (z2) {
                            float f20 = fArr24[i3] - this.cpsx[i3];
                            float f21 = this.cpy[i3] - this.cpsy[i3];
                            float fSqrt = (float) Math.sqrt((f20 * f20) + (f21 * f21));
                            float f22 = this.cpage[i3] / this.cplife[i3];
                            float fPow2 = (f22 < 0.08f ? f22 / 0.08f : (float) Math.pow(1.0f - ((f22 - 0.08f) / 0.92f), 0.550000011920929d)) * this.cprot[i3] * ((float) Math.exp((-fSqrt) / AndroidUtilities.dp(44.0f)));
                            float f23 = this.cpy[i3];
                            if (f23 < fDp2) {
                                fPow2 *= Math.max(0.0f, 1.0f - ((fDp2 - f23) / AndroidUtilities.dp(16.0f)));
                            }
                            float fMin2 = (this.cpsize[i3] / 2.0f) * (1.0f - (Math.min(1.0f, fSqrt / AndroidUtilities.dp(f)) * 0.4f));
                            float fHypot = (float) Math.hypot(this.cpvx[i3], this.cpvy[i3]);
                            float f24 = this.cpx[i3];
                            float f25 = this.cpy[i3];
                            if (this.cpwf[i3] > 0.0f && fHypot > 1.0f) {
                                float fDp3 = AndroidUtilities.dp(f15) * ((float) Math.sin((this.cpage[i3] * this.cpwf[i3]) + this.cpwp[i3]));
                                f24 += ((-this.cpvy[i3]) / fHypot) * fDp3;
                                f25 += (this.cpvx[i3] / fHypot) * fDp3;
                            }
                            this.fill.setAlpha((int) (fPow2 * 255.0f));
                            float fMin3 = Math.min(1.8f, (fHypot / AndroidUtilities.dp(220.0f)) + 1.0f);
                            canvas.save();
                            canvas.rotate((float) Math.toDegrees(Math.atan2(this.cpvy[i3], this.cpvx[i3])), f24, f25);
                            float f26 = fMin3 * fMin2;
                            this.sparkOval.set(f24 - f26, f25 - fMin2, f26 + f24, f25 + fMin2);
                            canvas.drawOval(this.sparkOval, this.fill);
                            canvas.restore();
                            i = 1;
                            if (this.cpkind[i3] == 1) {
                                this.fill.setAlpha((int) (fPow2 * 36.0f));
                                canvas.drawCircle(f24, f25, fMin2 * 2.2f, this.fill);
                            }
                        } else {
                            i = 1;
                            canvas.drawCircle(fArr24[i3], this.cpy[i3], b2 == 1 ? 2.0f * f14 : f14, this.fill);
                            if (this.cpkind[i3] == 1) {
                                this.fill.setAlpha((int) (fPow * 36.0f));
                                canvas.drawCircle(this.cpx[i3], this.cpy[i3], f14 * 4.4f, this.fill);
                            }
                        }
                    }
                    i = 1;
                }
                f = 70.0f;
                f2 = 0.12f;
                f3 = 3.0f;
                float[] fArr222 = this.cpx;
                fArr222[i3] = fArr222[i3] + (this.cpvx[i3] * f7);
                float[] fArr232 = this.cpy;
                fArr232[i3] = fArr232[i3] + (this.cpvy[i3] * f7);
                f4 = this.cpage[i3] / this.cplife[i3];
                if (f4 >= f2) {
                }
                f6 = this.cpy[i3];
                if (f6 < fDp) {
                }
                float f142 = (this.cpsize[i3] * (1.0f - (0.5f * f5))) / 2.0f;
                float f152 = f3;
                this.fill.setColor(-1);
                this.fill.setAlpha((int) (fPow * 255.0f));
                b2 = this.cpkind[i3];
                if (b2 < 3) {
                }
                i = 1;
            }
            i3--;
            i2 = i;
        }
    }

    private void drawGlassPath(Canvas canvas, Path path, RectF rectF, boolean z, float f) {
        if (f <= 0.0f) {
            return;
        }
        canvas.save();
        canvas.clipPath(path);
        if (QrRender.hasEffects() && hasBlur(canvas)) {
            if (f < 1.0f) {
                canvas.saveLayerAlpha(rectF, (int) (255.0f * f));
            }
            drawBlurNode(canvas, this.blurNode);
            if (f < 1.0f) {
                canvas.restore();
            }
        } else if (blurPending(canvas)) {
            this.backdropPaint.setAlpha((int) (Utilities.clamp01(f) * 255.0f));
            drawBlurStandIn(canvas);
            this.backdropPaint.setAlpha(255);
        } else {
            drawFrost(canvas, rectF, f);
        }
        this.fill.setColor(z ? 301989888 : 352321535);
        this.fill.setAlpha((int) (Color.alpha(r0.getColor()) * f));
        canvas.drawRect(rectF, this.fill);
        QrGlass.drawSheen(canvas, rectF, z, f);
        canvas.restore();
        drawDarkOut(canvas, path, rectF, 0.0f, f);
    }

    private void drawGlass(Canvas canvas, RectF rectF, float f, boolean z, float f2) {
        RectF rectF2;
        float f3;
        if (f2 <= 0.0f) {
            return;
        }
        if (this.glassSheet) {
            float fMin = Math.min(0.0f, AndroidUtilities.dpf2(RimTune.f1214g[2][8]));
            this.glassBody.set(rectF);
            this.glassBody.inset(fMin, fMin);
            f3 = f - fMin;
            rectF2 = this.glassBody;
        } else {
            rectF2 = rectF;
            f3 = f;
        }
        boolean z2 = !hasBlur(canvas) && blurPending(canvas);
        if (z2) {
            drawBlurStandIn(canvas, rectF2, f3, f2);
        }
        this.path.rewind();
        this.path.addRoundRect(rectF2, f3, f3, Path.Direction.CW);
        canvas.save();
        canvas.clipPath(this.path);
        if (!z2) {
            if (QrRender.hasEffects() && hasBlur(canvas)) {
                if (f2 < 1.0f) {
                    canvas.saveLayerAlpha(rectF2, (int) (255.0f * f2));
                }
                if (this.liftThis && this.sheetLift > 0.004f) {
                    canvas.save();
                    canvas.scale(8.0f, 8.0f);
                    QrRender.draw(canvas, liftedBlur());
                    canvas.restore();
                } else {
                    drawBlurNode(canvas, this.blurNode);
                }
                if (f2 < 1.0f) {
                    canvas.restore();
                }
            } else {
                drawFrost(canvas, rectF2, f2);
            }
        }
        Paint paint = this.fill;
        int iArgb = this.glassFill;
        if (iArgb == 0) {
            if (z) {
                iArgb = 301989888;
            } else {
                float[] fArr = RimTune.f1215v;
                iArgb = argb((fArr[3] + (this.liftThis ? fArr[9] * this.sheetLift : 0.0f)) / 100.0f, 16777215);
            }
        }
        paint.setColor(iArgb);
        this.fill.setAlpha((int) (Color.alpha(r1.getColor()) * f2));
        canvas.drawRect(rectF2, this.fill);
        QrGlass.drawSheen(canvas, rectF2, z, f2);
        boolean z3 = this.liftThis;
        if ((((z3 || this.glassSheet) ? 0.0f : (RimTune.f1215v[21] / 100.0f) * this.glintGate) > 0.0f || RimTune.f1215v[39] > 0.0f) && this.shining && !z3 && !this.glassSheet && ExteraConfig.getGlassOutlineStyle() == GlassOutlineStyle.GLARE) {
            int width = getWidth();
            int height = getHeight();
            float fShine = shine(rectF2.left, rectF2.centerY(), width, height);
            float fShine2 = shine(rectF2.centerX(), rectF2.centerY(), width, height);
            float fShine3 = shine(rectF2.right, rectF2.centerY(), width, height);
            if (fShine + fShine2 + fShine3 > 0.01f) {
                float f4 = ((RimTune.f1215v[39] * 1.25f) / 100.0f) * this.glintGate * 0.1f;
                drawGlint(canvas, rectF2, fShine * f4 * f2, fShine2 * f4 * f2, f4 * fShine3 * f2);
            }
        }
        canvas.restore();
        drawDarkOut(canvas, null, rectF, f, f2);
    }

    private void drawGlint(Canvas canvas, RectF rectF, float f, float f2, float f3) {
        float fCenterX = rectF.centerX();
        drawRamp(canvas, rectF.left, fCenterX, rectF, f, f2);
        drawRamp(canvas, fCenterX, rectF.right, rectF, f2, f3);
    }

    private void drawRamp(Canvas canvas, float f, float f2, RectF rectF, float f3, float f4) {
        float fMin = Math.min(f3, f4);
        float fMax = Math.max(f3, f4);
        if (fMin > 0.002f) {
            this.glintPaint.setShader(null);
            this.glintPaint.setColor(argb(fMin, 16777215));
            canvas.drawRect(f, rectF.top, f2, rectF.bottom, this.glintPaint);
        }
        float f5 = fMax - fMin;
        if (f5 > 0.002f) {
            LinearGradient linearGradient = f4 >= f3 ? this.glintRampUp : this.glintRampDown;
            this.glintM.setScale(f2 - f, 1.0f);
            this.glintM.postTranslate(f, 0.0f);
            linearGradient.setLocalMatrix(this.glintM);
            this.glintPaint.setShader(linearGradient);
            this.glintPaint.setColor(-1);
            this.glintPaint.setAlpha((int) (f5 * 255.0f));
            canvas.drawRect(f, rectF.top, f2, rectF.bottom, this.glintPaint);
            this.glintPaint.setShader(null);
        }
    }

    private void cascadeBegin(int i, float f, float f2, float f3, float f4, float f5, boolean z) {
        this.cascadeOvershoot = z;
        this.cascadeMaskN = 0;
        int iMax = (int) Math.max(0.0d, Math.floor(((f3 + this.sheetScroll) - f2) / f));
        this.cascadeFirstRow = iMax;
        int iMax2 = (int) Math.max(iMax, Math.floor(((f4 + this.sheetScroll) - f2) / f));
        this.cascadeLastRow = iMax2;
        int i2 = (iMax2 - this.cascadeFirstRow) + 1;
        boolean z2 = this.sheetTarget < 0.5f;
        this.cascadeClosing = z2;
        if (z2) {
            this.cascadeT = AnimationUtils.currentAnimationTimeMillis() - this.closeAt;
            this.cascadeRowStagger = Math.min(25.0f, 60.0f / Math.max(1, r6));
            this.cascadeMin = 0.6f;
            this.cascadeDy = AndroidUtilities.dp(4.0f);
        } else {
            float fCurrentAnimationTimeMillis = !this.cascadeFired ? 0.0f : AnimationUtils.currentAnimationTimeMillis() - this.cascadeAt;
            this.cascadeT = fCurrentAnimationTimeMillis;
            if (fCurrentAnimationTimeMillis > 470.0f) {
                this.cascadeT = -1.0f;
                return;
            } else {
                this.cascadeRowStagger = Math.min(45.0f, (250.0f - (i * 4.0f)) / Math.max(1, i2));
                this.cascadeMin = f5;
                this.cascadeDy = AndroidUtilities.dp(7.0f);
            }
        }
        invalidate();
    }

    private float cascadeE(int i, int i2) {
        float fEaseOutBack;
        this.cascadeScale = 1.0f;
        if (this.cascadeT < 0.0f) {
            return 1.0f;
        }
        if (this.cascadeClosing) {
            float fClamp01 = Utilities.clamp01((this.cascadeT - ((Math.max(0, i - this.cascadeFirstRow) * this.cascadeRowStagger) + (i2 * 3.0f))) / 90.0f);
            this.cascadeScale = AndroidUtilities.lerp(1.0f, this.cascadeMin, fClamp01 * fClamp01);
            if (fClamp01 < 0.7f) {
                return 1.0f;
            }
            return 1.0f - ((fClamp01 - 0.7f) / 0.3f);
        }
        float fClamp012 = Utilities.clamp01((this.cascadeT - ((Math.max(0, this.cascadeLastRow - i) * this.cascadeRowStagger) + (i2 * 4.0f))) / 220.0f);
        float f = this.cascadeMin;
        if (this.cascadeOvershoot) {
            fEaseOutBack = easeOutBack(fClamp012, 1.2f);
        } else {
            float f2 = 1.0f - fClamp012;
            fEaseOutBack = 1.0f - ((f2 * f2) * f2);
        }
        this.cascadeScale = AndroidUtilities.lerp(f, 1.0f, fEaseOutBack);
        float fClamp013 = 1.0f - Utilities.clamp01(fClamp012 / 0.35f);
        return 1.0f - (fClamp013 * fClamp013);
    }

    private void cascadeMask(float f, float f2, float f3, float f4, float f5) {
        int i = this.cascadeMaskN;
        if (i >= 64) {
            return;
        }
        this.cascadeMaskN = i + 1;
        int i2 = i * 5;
        float[] fArr = this.cascadeRects;
        fArr[i2] = f;
        fArr[i2 + 1] = f2;
        fArr[i2 + 2] = f3;
        fArr[i2 + 3] = f4;
        fArr[i2 + 4] = f5;
    }

    private void cascadeApply(Canvas canvas) {
        for (int i = 0; i < this.cascadeMaskN; i++) {
            int i2 = i * 5;
            this.cascadePaint.setAlpha((int) (this.cascadeRects[i2 + 4] * 255.0f));
            float[] fArr = this.cascadeRects;
            canvas.drawRect(fArr[i2], fArr[i2 + 1], fArr[i2 + 2], fArr[i2 + 3], this.cascadePaint);
        }
        this.cascadeMaskN = 0;
    }

    public float sheetProgress() {
        return Utilities.clamp01(this.sheet);
    }

    public boolean sheetOpening() {
        return this.sheetTarget > 0.5f;
    }

    public float cascadeProgress() {
        if (this.sheetTarget < 0.5f) {
            return (-Utilities.clamp01((AnimationUtils.currentAnimationTimeMillis() - this.closeAt) / 150.0f)) - 1.0E-4f;
        }
        if (this.cascadeFired) {
            return Utilities.clamp01((AnimationUtils.currentAnimationTimeMillis() - this.cascadeAt) / 470.0f);
        }
        return 0.0f;
    }

    private Object liftedBlur() {
        if (this.liftNode == null) {
            this.liftNode = QrRender.createNode("qrSheetLift");
        }
        float fRound = Math.round(this.sheetLift * 50.0f) / 50.0f;
        Scene scene = this.scene;
        int i = scene != null ? scene.center : 0;
        if (fRound != this.liftBuiltK || this.liftBuiltVersion != 1 || this.liftBuiltScene != i) {
            this.liftBuiltK = fRound;
            this.liftBuiltVersion = 1;
            this.liftBuiltScene = i;
            setLiftEffect(this.liftNode, fRound);
        }
        Canvas canvasBeginRecording = QrRender.beginRecording(this.liftNode, (getWidth() + 7) / 8, (getHeight() + 7) / 8);
        canvasBeginRecording.scale(0.125f, 0.125f);
        QrRender.draw(canvasBeginRecording, this.bgNode);
        QrRender.endRecording(this.liftNode);
        return this.liftNode;
    }

    public int islandFlatColor() {
        if (this.islandFlatVersion != 1) {
            this.islandFlat.clear();
            this.islandFlatVersion = 1;
        }
        Scene scene = this.scene;
        int i = scene != null ? scene.center : 0;
        int iIndexOfKey = this.islandFlat.indexOfKey(i);
        if (iIndexOfKey >= 0) {
            return this.islandFlat.valueAt(iIndexOfKey);
        }
        int iComputeIslandFlat = computeIslandFlat(this.scene);
        this.islandFlat.put(i, iComputeIslandFlat);
        return iComputeIslandFlat;
    }

    public void prewarmIslandColors() {
        if (this.islandFlatVersion != 1) {
            this.islandFlat.clear();
            this.islandFlatVersion = 1;
        }
        for (int i = 0; i < Backdrops.CENTER.length; i++) {
            Scene scene = new Scene();
            int i2 = Backdrops.CENTER[i] | (-16777216);
            scene.center = i2;
            scene.edge = (-16777216) | Backdrops.EDGE[i];
            scene.shade = shadeFor(i2);
            if (this.islandFlat.indexOfKey(scene.center) < 0) {
                this.islandFlat.put(scene.center, computeIslandFlat(scene));
            }
        }
    }

    private int computeIslandFlat(Scene scene) {
        int iBlendARGB = scene != null ? ColorUtils.blendARGB(scene.center, scene.edge, 0.5f) : -16777216;
        double dCalculateLuminance = scene != null ? ColorUtils.calculateLuminance(scene.center) : 0.3d;
        float[] fArr = RimTune.f1215v;
        float fMax = (fArr[10] / 100.0f) * ((float) Math.max(0.0d, Math.min(1.0d, (0.85d - dCalculateLuminance) / 0.45d)));
        float f = (fArr[11] / 100.0f) + 1.0f;
        float f2 = ((0.5f - (f * 0.5f)) + fMax) * 255.0f;
        return ColorUtils.compositeColors(scene != null ? scene.shade : TLObject.FLAG_30, ColorUtils.compositeColors(argb((fArr[3] + fArr[9]) / 100.0f, 16777215), Color.rgb(Math.max(0, Math.min(255, Math.round((Color.red(iBlendARGB) * f) + f2))), Math.max(0, Math.min(255, Math.round((Color.green(iBlendARGB) * f) + f2))), Math.max(0, Math.min(255, Math.round((f * Color.blue(iBlendARGB)) + f2))))));
    }

    private void setLiftEffect(Object obj, float f) {
        Scene scene = this.scene;
        double dCalculateLuminance = scene != null ? ColorUtils.calculateLuminance(scene.center) : 0.3d;
        float[] fArr = RimTune.f1215v;
        float fMax = (fArr[10] / 100.0f) * f * ((float) Math.max(0.0d, Math.min(1.0d, (0.85d - dCalculateLuminance) / 0.45d)));
        float f2 = ((fArr[11] / 100.0f) * f) + 1.0f;
        float f3 = ((0.5f - (f2 * 0.5f)) + fMax) * 255.0f;
        QrRender.setBlurAndColorMatrix(obj, Math.max(0.5f, AndroidUtilities.dpf2(AndroidUtilities.lerp(fArr[2], fArr[12], f)) / 8.0f), new float[]{f2, 0.0f, 0.0f, 0.0f, f3, 0.0f, f2, 0.0f, 0.0f, f3, 0.0f, 0.0f, f2, 0.0f, f3, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f});
    }

    private void ensureRims() {
        if (this.rimBuiltVersion == 1) {
            return;
        }
        this.rimBuiltVersion = 1;
        for (int i = 0; i < 4; i++) {
            float[] fArr = RimTune.f1214g[i];
            int[] iArr = new int[73];
            float[] fArr2 = new float[73];
            for (int i2 = 0; i2 < 73; i2++) {
                double radians = Math.toRadians(i2 * 5);
                float fPow = (float) Math.pow(Math.abs(Math.cos(radians)), fArr[6]);
                float f = (((float) Math.sin(radians)) < 0.0f ? fArr[11] : fArr[12]) / 100.0f;
                iArr[i2] = argb(Math.min(1.0f, f + (((fArr[5] / 100.0f) - f) * fPow)), 0);
                fArr2[i2] = i2 / 72.0f;
            }
            this.rimOuterSweeps[i] = new SweepGradient(0.0f, 0.0f, iArr, fArr2);
        }
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        prepareCardShadow();
        prewarmIslandColors();
        NotificationCenter.getInstance(this.currentAccount).addObserver(this.giftsObserver, NotificationCenter.starUserGiftsLoaded);
        loadGifts();
        SensorManager sensorManager = (SensorManager) getContext().getSystemService("sensor");
        this.sensors = sensorManager;
        Sensor defaultSensor = sensorManager != null ? sensorManager.getDefaultSensor(9) : null;
        if (defaultSensor != null) {
            this.sensors.registerListener(this.gravityListener, defaultSensor, 1);
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this.giftsObserver, NotificationCenter.starUserGiftsLoaded);
        removeCallbacks(this.prewarmGiftsRunnable);
        SensorManager sensorManager = this.sensors;
        if (sensorManager != null) {
            sensorManager.unregisterListener(this.gravityListener);
        }
        this.haveG = false;
        this.pressedRipple = -1;
        Arrays.fill(this.releaseT, 0L);
    }

    private void stepTiltShine(int i, int i2) {
        long jNanoTime = System.nanoTime();
        float fMin = this.tsLastNs == 0 ? 0.016f : Math.min(0.1f, (jNanoTime - r2) / 1.0E9f);
        this.tsLastNs = jNanoTime;
        float[] fArr = RimTune.f1215v;
        if (fArr[15] < 0.5f || this.reveal < 1.0f) {
            this.tsEnv = 0.0f;
            return;
        }
        float fMax = 30.0f / Math.max(1.0f, fArr[16]);
        float fMax2 = Math.max(-1.0f, Math.min(1.0f, this.rawTiltX * fMax));
        float fMax3 = Math.max(-1.0f, Math.min(1.0f, this.rawTiltY * fMax));
        if (!this.tsHave) {
            this.tsLastX = fMax2;
            this.tsLastY = fMax3;
            this.tsHave = true;
        }
        float fHypot = ((float) Math.hypot(fMax2 - this.tsLastX, fMax3 - this.tsLastY)) / fMin;
        this.tsLastX = fMax2;
        this.tsLastY = fMax3;
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        if (fHypot > 0.15f) {
            this.tsMovedAt = jCurrentAnimationTimeMillis;
        }
        boolean z = jCurrentAnimationTimeMillis - this.tsMovedAt < 1500;
        float fAbs = ((fMax2 * (-this.sweepDX)) + (fMax3 * (-this.sweepDY))) * ((((Math.abs(this.sweepDX) * i) + (Math.abs(this.sweepDY) * i2)) / 2.0f) + this.shineW);
        if (this.tsEnv <= 0.001f) {
            this.tsC = fAbs;
        }
        float f = this.tsC;
        this.tsC = f + ((fAbs - f) * (1.0f - ((float) Math.exp((-fMin) / 0.1f))));
        float f2 = this.tsEnv;
        float fMin2 = z ? Math.min(1.0f, f2 + (fMin / 0.2f)) : Math.max(0.0f, f2 - (fMin / 0.6f));
        this.tsEnv = fMin2;
        if (fMin2 > 0.001f) {
            float f3 = fMin2 * fMin2 * (3.0f - (fMin2 * 2.0f));
            if (this.shining) {
                this.shineC = AndroidUtilities.lerp(this.shineC, this.tsC, f3);
                this.shineEnv = AndroidUtilities.lerp(this.shineEnv, 1.0f, f3);
            } else {
                this.shineC = this.tsC;
                this.shineEnv = f3;
            }
            this.shining = true;
            if (this.tsEnv >= 0.999f) {
                this.lightSweepStart = this.fieldT;
            }
        }
    }

    private void stepTilt() {
        float fMax;
        float fMax2;
        long jNanoTime = System.nanoTime();
        float fMin = this.lastTiltNs == 0 ? 0.016f : Math.min(0.1f, (jNanoTime - r2) / 1.0E9f);
        this.lastTiltNs = jNanoTime;
        if (this.haveG) {
            float fExp = 1.0f - ((float) Math.exp((-fMin) / 4.0f));
            float f = this.bx;
            float f2 = this.gx;
            float f3 = f + ((f2 - f) * fExp);
            this.bx = f3;
            float f4 = this.by;
            this.by = f4 + ((this.gy - f4) * fExp);
            float f5 = this.bz;
            this.bz = f5 + ((this.gz - f5) * fExp);
            fMax = Math.max(-1.0f, Math.min(1.0f, (-(f2 - f3)) / 4.9f));
            fMax2 = Math.max(-1.0f, Math.min(1.0f, (this.gy - this.by) / 4.9f));
        } else {
            fMax = 0.0f;
            fMax2 = 0.0f;
        }
        float fExp2 = 1.0f - ((float) Math.exp((-fMin) / 0.08f));
        float f6 = this.rawTiltX;
        this.rawTiltX = f6 + ((fMax - f6) * fExp2);
        float f7 = this.rawTiltY;
        this.rawTiltY = f7 + ((fMax2 - f7) * fExp2);
        float[] fArr = RimTune.f1215v;
        float f8 = fArr[0];
        this.tiltX = Math.round(r5 / r3) * (f8 > 0.0f ? 0.5f / f8 : 1.0f);
        float fRound = Math.round(this.rawTiltY * 40.0f) / 40.0f;
        this.tiltY = fRound;
        RimPainter.tiltRot = this.tiltX * fArr[0];
        RimPainter.tiltBal = (fRound * fArr[1]) / 100.0f;
    }

    private void drawDarkOut(Canvas canvas, Path path, RectF rectF, float f, float f2) {
        int i;
        int i2;
        RectF rectF2;
        float[] fArr;
        float fShine;
        RectF rectF3;
        float f3;
        float f4;
        int i3;
        int i4;
        Path path2 = path;
        float fMax = f;
        if (QrGlassUiHelper.drawOutline(canvas, path, rectF, f, f2)) {
            return;
        }
        if (path2 == null && QrGlass.drawRim(canvas, rectF, fMax, rimGroup(), f2)) {
            return;
        }
        ensureRims();
        int iRimGroup = rimGroup();
        float[] fArr2 = RimTune.f1214g[iRimGroup];
        float f5 = this.tiltX;
        float[] fArr3 = RimTune.f1215v;
        float f6 = f5 * fArr3[0];
        float f7 = (this.tiltY * fArr3[1]) / 100.0f;
        float fDpf2 = AndroidUtilities.dpf2(fArr2[8]);
        if (fDpf2 != 0.0f) {
            i = 0;
            this.rect3.set(rectF);
            this.rect3.inset(fDpf2, fDpf2);
            if (path2 != null) {
                i2 = 1;
                this.rimTmpM.setScale(this.rect3.width() / Math.max(1.0f, rectF.width()), this.rect3.height() / Math.max(1.0f, rectF.height()), rectF.centerX(), rectF.centerY());
                path2.transform(this.rimTmpM, this.rimGrown);
                path2 = this.rimGrown;
            } else {
                i2 = 1;
            }
            rectF2 = this.rect3;
            fMax = Math.max(0.0f, fMax - fDpf2);
        } else {
            i = 0;
            i2 = 1;
            rectF2 = rectF;
        }
        this.glassMatrix.setRotate(f6);
        this.glassMatrix.postScale(rectF2.width() / Math.max(1.0f, rectF2.height()), 1.0f);
        this.glassMatrix.postTranslate(rectF2.centerX(), rectF2.centerY());
        float fDpf22 = AndroidUtilities.dpf2(fArr2[4]);
        if (fDpf22 > 0.05f) {
            SweepGradient sweepGradient = this.rimOuterSweeps[iRimGroup];
            sweepGradient.setLocalMatrix(this.glassMatrix);
            this.stroke.setShader(sweepGradient);
            this.stroke.setColor(-1);
            this.stroke.setAlpha((int) (f2 * 255.0f));
            if (path2 == null) {
                this.stroke.setStrokeWidth(fDpf22);
                this.rect2.set(rectF2);
                float f8 = (-fDpf22) / 2.0f;
                this.rect2.inset(f8, f8);
                float f9 = (fDpf22 / 2.0f) + fMax;
                canvas.drawRoundRect(this.rect2, f9, f9, this.stroke);
            } else {
                canvas.save();
                QrRender.clipOut(canvas, path2);
                this.stroke.setStrokeWidth(fDpf22 * 2.0f);
                canvas.drawPath(path2, this.stroke);
                canvas.restore();
            }
            this.stroke.setShader(null);
            this.stroke.setAlpha(255);
        }
        double radians = Math.toRadians(f6);
        float f10 = (float) (-Math.sin(radians));
        float fCos = (float) Math.cos(radians);
        float fDpf23 = AndroidUtilities.dpf2(fArr2[i]);
        float fDpf24 = AndroidUtilities.dpf2(fArr2[2]);
        float f11 = this.glassSheet ? 0.0f : ((fArr3[21] * 1.25f) / 100.0f) * this.glintGate;
        if (f11 <= 0.0f || !this.shining) {
            fArr = fArr2;
            fShine = 0.0f;
        } else {
            fArr = fArr2;
            fShine = shine(rectF2.centerX(), rectF2.top, getWidth(), getHeight());
        }
        float fShine2 = (f11 <= 0.0f || !this.shining) ? 0.0f : shine(rectF2.centerX(), rectF2.bottom, getWidth(), getHeight());
        float fMin = Math.min(1.0f, (fArr[i2] / 100.0f) * (f7 + 1.0f) * ((fShine * f11) + 1.0f));
        float fMin2 = Math.min(1.0f, (fArr[3] / 100.0f) * (1.0f - f7) * ((f11 * fShine2) + 1.0f));
        boolean zHasNodes = QrRender.hasNodes();
        int i5 = i;
        while (i5 < 2) {
            float f12 = i5 == 0 ? fDpf23 : -fDpf24;
            float f13 = i5 == 0 ? fMin : fMin2;
            if (f13 <= 0.004f || Math.abs(f12) < 0.1f) {
                rectF3 = rectF2;
                f3 = fMax;
                f4 = fMin;
                i3 = i;
                i4 = i2;
            } else {
                canvas.save();
                if (path2 == null) {
                    f4 = fMin;
                    float fMin3 = Math.min(fMax, Math.min(rectF2.width(), rectF2.height()) / 2.0f);
                    this.crescentA.rewind();
                    Path path3 = this.crescentA;
                    f3 = fMax;
                    Path.Direction direction = Path.Direction.CW;
                    path3.addRoundRect(rectF2, fMin3, fMin3, direction);
                    this.rect4.set(rectF2);
                    rectF3 = rectF2;
                    this.rect4.offset(f10 * f12, f12 * fCos);
                    this.crescentB.rewind();
                    this.crescentB.addRoundRect(this.rect4, fMin3, fMin3, direction);
                } else {
                    rectF3 = rectF2;
                    f3 = fMax;
                    f4 = fMin;
                    this.crescentA.set(path2);
                    this.crescentB.set(path2);
                    this.crescentB.offset(f10 * f12, f12 * fCos);
                }
                QrRender.clipOut(canvas, this.crescentB);
                Path path4 = this.crescentA;
                Paint paint = this.fill;
                if (!zHasNodes) {
                    paint.setColor(rimWhite(iRimGroup));
                    this.fill.setAlpha((int) (f13 * 255.0f * f2));
                    i4 = i2;
                } else {
                    paint.setColor(gray(f13));
                    this.fill.setAlpha((int) (f2 * 255.0f));
                    i4 = i2;
                    QrRender.setBlendMode(this.fill, i4);
                }
                canvas.drawPath(path4, this.fill);
                if (zHasNodes) {
                    i3 = i;
                    QrRender.setBlendMode(this.fill, i3);
                } else {
                    i3 = i;
                }
                canvas.restore();
            }
            i5++;
            i = i3;
            i2 = i4;
            fMax = f3;
            rectF2 = rectF3;
            fMin = f4;
        }
    }

    private static int gray(float f) {
        int iRound = Math.round(Math.max(0.0f, Math.min(1.0f, f)) * 255.0f);
        return iRound | (iRound << 16) | (-16777216) | (iRound << 8);
    }

    private int rimWhite(int i) {
        float f = RimTune.f1214g[i][10];
        int i2 = this.rimLightColor;
        return Color.rgb(Math.max(0, Math.min(255, Math.round(((Color.red(i2) - 255) * f) + 255.0f))), Math.max(0, Math.min(255, Math.round(((Color.green(i2) - 255) * f) + 255.0f))), Math.max(0, Math.min(255, Math.round(((Color.blue(i2) - 255) * f) + 255.0f))));
    }

    public static int rimLightFor(int i) {
        double[] dArr = new double[3];
        double[] dArr2 = new double[3];
        toOkLab(i, dArr);
        double dHypot = Math.hypot(dArr[1], dArr[2]);
        if (dHypot < 0.03d) {
            return -1;
        }
        fitChroma(0.96d, Math.min(0.06d, dHypot * 0.7d), Math.atan2(dArr[2], dArr[1]), dArr2);
        return Color.rgb((int) Math.round(clamp01(gam(clamp01(dArr2[0]))) * 255.0d), (int) Math.round(clamp01(gam(clamp01(dArr2[1]))) * 255.0d), (int) Math.round(clamp01(gam(clamp01(dArr2[2]))) * 255.0d));
    }

    private int rimGroup() {
        if (this.glassSmall) {
            return 1;
        }
        return this.glassSheet ? 2 : 0;
    }

    private static int argb(float f, int i) {
        return (((int) (Math.max(0.0f, Math.min(1.0f, f)) * 255.0f)) << 24) | (i & 16777215);
    }

    private PorterDuffColorFilter tint(int i) {
        PorterDuffColorFilter porterDuffColorFilter = this.tints.get(i);
        if (porterDuffColorFilter != null) {
            return porterDuffColorFilter;
        }
        if (this.tints.size() > 96) {
            this.tints.clear();
        }
        PorterDuffColorFilter porterDuffColorFilter2 = new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN);
        this.tints.put(i, porterDuffColorFilter2);
        return porterDuffColorFilter2;
    }

    private int glassIconColor() {
        Scene scene = this.scene;
        return (scene == null || !scene.light) ? -1 : -15065823;
    }

    private void icon(Canvas canvas, Drawable drawable, float f, float f2, float f3, int i, float f4) {
        drawable.setColorFilter(tint(i));
        drawable.setAlpha((int) (f4 * 255.0f));
        float f5 = f3 / 2.0f;
        drawable.setBounds((int) (f - f5), (int) (f2 - f5), (int) (f + f5), (int) (f2 + f5));
        drawable.draw(canvas);
    }

    public void getScanRect(RectF rectF) {
        rectF.set(this.scanRect);
    }

    public void getCloseRect(RectF rectF) {
        rectF.set(this.closeRect);
    }

    public void setScanHidden(boolean z) {
        if (this.scanHidden != z) {
            this.scanHidden = z;
            invalidate();
        }
    }

    private void drawTopBar(Canvas canvas, boolean z) {
        float currentActionBarHeight = this.insetTop + (ActionBar.getCurrentActionBarHeight() / 2.0f);
        this.closeRect.set(AndroidUtilities.dp(29.0f) - AndroidUtilities.dp(20.0f), currentActionBarHeight - AndroidUtilities.dp(20.0f), AndroidUtilities.dp(29.0f) + AndroidUtilities.dp(20.0f), AndroidUtilities.dp(20.0f) + currentActionBarHeight);
        float fElemScale = elemScale(this.uiK);
        canvas.save();
        canvas.scale(fElemScale, fElemScale, this.closeRect.centerX(), this.closeRect.centerY());
        this.glassButton = true;
        RectF rectF = this.closeRect;
        float fDp = AndroidUtilities.dp(20.0f);
        Scene scene = this.scene;
        drawGlass(canvas, rectF, fDp, scene != null && scene.light, 1.0f);
        this.glassButton = false;
        RectF rectF2 = this.closeRect;
        Scene scene2 = this.scene;
        drawRipple(canvas, 3, rectF2, scene2 != null && scene2.light);
        this.icClose.setColor(glassIconColor());
        canvas.save();
        canvas.translate(this.closeRect.centerX() - (this.icClose.getIntrinsicWidth() / 2.0f), currentActionBarHeight - (this.icClose.getIntrinsicHeight() / 2.0f));
        this.icClose.draw(canvas);
        canvas.restore();
        canvas.restore();
        if (this.scanHidden) {
            return;
        }
        Scene scene3 = this.scene;
        boolean z2 = scene3 != null && scene3.light;
        this.scanText.setTextSize(AndroidUtilities.dp(14.0f));
        this.scanRect.set((getWidth() - AndroidUtilities.dp(9.0f)) - ((((AndroidUtilities.dp(12.0f) + AndroidUtilities.dp(20.0f)) + AndroidUtilities.dp(6.0f)) + this.scanText.measureText(this.scanLabel)) + AndroidUtilities.dp(14.0f)), currentActionBarHeight - AndroidUtilities.dp(20.0f), getWidth() - AndroidUtilities.dp(9.0f), AndroidUtilities.dp(20.0f) + currentActionBarHeight);
        canvas.save();
        canvas.scale(fElemScale, fElemScale, this.scanRect.centerX(), this.scanRect.centerY());
        this.glassButton = true;
        drawGlass(canvas, this.scanRect, AndroidUtilities.dp(20.0f), z2, 1.0f);
        this.glassButton = false;
        drawRipple(canvas, 5, this.scanRect, z2);
        icon(canvas, this.icScan, this.scanRect.left + AndroidUtilities.dp(12.0f) + AndroidUtilities.dp(10.0f), currentActionBarHeight, AndroidUtilities.dp(20.0f), glassIconColor(), 1.0f);
        this.scanText.setColor(glassIconColor());
        Paint.FontMetrics fontMetrics = this.scanText.getFontMetrics();
        canvas.drawText(this.scanLabel, this.scanRect.left + AndroidUtilities.dp(12.0f) + AndroidUtilities.dp(20.0f) + AndroidUtilities.dp(6.0f), currentActionBarHeight - ((fontMetrics.ascent + fontMetrics.descent) / 2.0f), this.scanText);
        canvas.restore();
    }

    private void drawBottomBar(Canvas canvas, boolean z) {
        float f;
        boolean z2;
        boolean z3;
        QrShareView qrShareView = this;
        Canvas canvas2 = canvas;
        float fClamp01 = 1.0f - Utilities.clamp01(qrShareView.sheet * 2.2f);
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        boolean z4 = qrShareView.menuTarget > 0.5f;
        if (z4 != qrShareView.barHidden) {
            qrShareView.barHidden = z4;
            qrShareView.barFrom = qrShareView.barK;
            qrShareView.barAt = jCurrentAnimationTimeMillis;
        }
        float fClamp012 = Utilities.clamp01((jCurrentAnimationTimeMillis - qrShareView.barAt) / 220.0f);
        float f2 = qrShareView.barFrom;
        qrShareView.barK = z4 ? AndroidUtilities.lerp(f2, 0.0f, fClamp012 * fClamp012) : AndroidUtilities.lerp(f2, 1.0f, Math.min(1.0f, easeOutBack(fClamp012, 0.6f)));
        if (fClamp012 < 1.0f) {
            qrShareView.invalidate();
        }
        float fClamp013 = Utilities.clamp01(Utilities.clamp01(qrShareView.barK) * 2.0f);
        float fLerp = AndroidUtilities.lerp(0.6f, 1.0f, qrShareView.barK);
        boolean z5 = z4 || (qrShareView.free && qrShareView.timerOn);
        if (z5 != qrShareView.shareHidden) {
            qrShareView.shareHidden = z5;
            qrShareView.shareFrom = qrShareView.shareK;
            qrShareView.shareAt = jCurrentAnimationTimeMillis;
        }
        float fClamp014 = Utilities.clamp01((jCurrentAnimationTimeMillis - qrShareView.shareAt) / 220.0f);
        float f3 = qrShareView.shareFrom;
        qrShareView.shareK = z5 ? AndroidUtilities.lerp(f3, 0.0f, fClamp014 * fClamp014) : AndroidUtilities.lerp(f3, 1.0f, Math.min(1.0f, easeOutBack(fClamp014, 0.6f)));
        if (fClamp014 < 1.0f) {
            qrShareView.invalidate();
        }
        float fLerp2 = AndroidUtilities.lerp(0.6f, 1.0f, qrShareView.shareK);
        float fMin = Math.min(fClamp01, Utilities.clamp01(Utilities.clamp01(qrShareView.shareK) * 2.0f));
        boolean z6 = qrShareView.sheet <= 0.001f;
        if (fMin > 0.0f || fClamp01 > 0.0f || z6) {
            float fBarCY = qrShareView.barCY();
            int width = qrShareView.getWidth();
            Scene scene = qrShareView.scene;
            if (scene == null || !scene.light) {
                f = fLerp2;
                z2 = false;
            } else {
                f = fLerp2;
                z2 = true;
            }
            float fDp = AndroidUtilities.dp(20.0f);
            float f4 = fBarCY - fDp;
            float f5 = fDp + fBarCY;
            qrShareView.shareRect.set(AndroidUtilities.dp(42.0f) - r8, f4, AndroidUtilities.dp(42.0f) + r8, f5);
            qrShareView.saveRect.set((width - AndroidUtilities.dp(42.0f)) - r8, f4, (width - AndroidUtilities.dp(42.0f)) + r8, f5);
            float f6 = width / 2.0f;
            qrShareView.tabsRect.set(f6 - AndroidUtilities.dp(72.0f), fBarCY - AndroidUtilities.dp(20.0f), f6 + AndroidUtilities.dp(72.0f), AndroidUtilities.dp(20.0f) + fBarCY);
            float fLerp3 = AndroidUtilities.lerp(0.6f, 1.0f, fClamp01) * qrShareView.elemScale(qrShareView.uiK);
            if (fMin > 0.0f) {
                canvas2.save();
                float f7 = fLerp3 * f;
                canvas2.scale(f7, f7, qrShareView.shareRect.centerX(), fBarCY);
                qrShareView.glassButton = true;
                qrShareView.drawGlass(canvas2, qrShareView.shareRect, AndroidUtilities.dp(20.0f), z2, fMin);
                z3 = z2;
                qrShareView.glassButton = false;
                qrShareView.drawRipple(canvas2, 4, qrShareView.shareRect, z3);
                qrShareView.icon(canvas2, qrShareView.icShare, qrShareView.shareRect.centerX(), fBarCY, AndroidUtilities.dp(22.0f), qrShareView.glassIconColor(), fMin);
                canvas2.restore();
                canvas2.save();
                float f8 = fLerp3 * fLerp;
                canvas2.scale(f8, f8, qrShareView.saveRect.centerX(), fBarCY);
                qrShareView.glassButton = true;
                qrShareView.drawGlass(canvas2, qrShareView.saveRect, AndroidUtilities.dp(20.0f), z3, fMin);
                qrShareView.glassButton = false;
                qrShareView.drawRipple(canvas2, 11, qrShareView.saveRect, z3);
                qrShareView.icon(canvas2, qrShareView.icDownload, qrShareView.saveRect.centerX(), fBarCY, AndroidUtilities.dp(24.0f), qrShareView.glassIconColor(), fMin);
                fBarCY = fBarCY;
                canvas2.restore();
            } else {
                z3 = z2;
            }
            if (z6 && fClamp013 > 0.0f && qrShareView.themeEditable) {
                float fElemScale = qrShareView.elemScale(qrShareView.uiK) * fLerp;
                canvas2.save();
                canvas2.scale(fElemScale, fElemScale, qrShareView.tabsRect.centerX(), qrShareView.tabsRect.centerY());
                qrShareView.glassButton = true;
                boolean z7 = z3;
                float f9 = fClamp013;
                qrShareView.drawGlass(canvas2, qrShareView.tabsRect, AndroidUtilities.dp(20.0f), z7, f9);
                qrShareView.glassButton = false;
                float fWidth = qrShareView.tabsRect.width() / 3.0f;
                canvas2.save();
                qrShareView.path.rewind();
                qrShareView.path.addRoundRect(qrShareView.tabsRect, AndroidUtilities.dp(20.0f), AndroidUtilities.dp(20.0f), Path.Direction.CW);
                canvas2.clipPath(qrShareView.path);
                int i = 0;
                while (i < 3) {
                    RectF rectF = qrShareView.rect3;
                    RectF rectF2 = qrShareView.tabsRect;
                    float f10 = rectF2.left;
                    int i2 = i + 1;
                    rectF.set((i * fWidth) + f10, rectF2.top, f10 + (i2 * fWidth), rectF2.bottom);
                    qrShareView.drawRipple(canvas2, i + 6, qrShareView.rect3, z7);
                    i = i2;
                }
                canvas2.restore();
                Drawable[] drawableArr = qrShareView.tabIcons;
                int i3 = 0;
                while (i3 < 3) {
                    float f11 = f9;
                    float f12 = fBarCY;
                    qrShareView.icon(canvas2, drawableArr[i3], qrShareView.tabsRect.left + ((i3 + 0.5f) * fWidth), f12, AndroidUtilities.dp(i3 == 1 ? 24.5f : 22.0f), qrShareView.glassIconColor(), f11);
                    f9 = f11;
                    i3++;
                    qrShareView = this;
                    canvas2 = canvas;
                    fBarCY = f12;
                }
                canvas.restore();
            }
        }
    }

    private void stepSheet() {
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        if (!this.scroller.isFinished() && this.scroller.computeScrollOffset()) {
            this.sheetScroll = Math.max(0.0f, Math.min(maxScroll(), this.scroller.getCurrY()));
        }
        float f = this.sheetTarget;
        if (f != this.lastSheetTarget) {
            if (f < 0.5f) {
                this.closeAt = jCurrentAnimationTimeMillis;
            } else if (this.sheet < 0.35f) {
                this.cascadeFired = false;
            }
            if (f > 0.5f) {
                this.revealOpenAt = jCurrentAnimationTimeMillis;
            }
            this.lastSheetTarget = f;
            this.sheetAnimFrom = this.sheet;
            this.sheetAnimStart = jCurrentAnimationTimeMillis;
        }
        float f2 = (jCurrentAnimationTimeMillis - this.sheetAnimStart) / 1000.0f;
        if (f > 0.5f) {
            float fLerp = AndroidUtilities.lerp(this.sheetAnimFrom, 1.0f, SHEET_EASE.getInterpolation(Utilities.clamp01(f2 / 0.42f)));
            this.sheet = fLerp;
            this.contentA = Utilities.clamp01(Utilities.clamp01(fLerp) / 0.8f);
            return;
        }
        this.contentA = Math.min(this.contentA, (float) Math.pow(1.0f - Utilities.clamp01(f2 / 0.17f), 1.7000000476837158d));
        this.sheet = AndroidUtilities.lerp(this.sheetAnimFrom, 0.0f, SHEET_EASE.getInterpolation(Utilities.clamp01(f2 / 0.36f)));
    }

    private float gridPad() {
        return AndroidUtilities.dp(4.0f);
    }

    private float sheetBottom() {
        return (getHeight() - this.insetBottom) - AndroidUtilities.dp(10.0f);
    }

    /* JADX WARN: Removed duplicated region for block: B:165:0x04c2  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0515  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0524  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x052b  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0563  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x056e  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0579  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x057e  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x0581 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void drawSheet(Canvas canvas, boolean z, int i, int i2) {
        float f;
        float f2;
        float f3;
        float f4;
        QrShareView qrShareView;
        Canvas canvas2;
        float f5;
        float f6;
        int i3;
        float f7;
        QrShareView qrShareView2;
        float f8;
        float fRevealItemScale;
        float fDp;
        Pattern pattern;
        float f9;
        Canvas canvas3;
        boolean z2;
        float f10;
        float fLerp;
        float f11;
        float f12;
        float f13;
        QrShareView qrShareView3;
        int i4;
        boolean z3;
        float f14 = this.sheet;
        if (f14 <= 0.001f) {
            return;
        }
        float fClamp01 = Utilities.clamp01(f14);
        float fSheetH = sheetH();
        float fSheetBottom = sheetBottom();
        float f15 = fSheetBottom - fSheetH;
        this.sheetRect.set(AndroidUtilities.dp(10.0f), f15, i - AndroidUtilities.dp(10.0f), fSheetBottom);
        Scene scene = this.scene;
        boolean z4 = scene != null && scene.light;
        float fBarCY = barCY();
        float fDp2 = AndroidUtilities.dp(10.0f) - AndroidUtilities.dp(3.0f);
        float f16 = i;
        float f17 = f16 / 2.0f;
        float f18 = 10.0f;
        this.islandRect.set(Math.max(fDp2, AndroidUtilities.lerp(f17 - AndroidUtilities.dp(72.0f), this.sheetRect.left, f14)), AndroidUtilities.lerp(fBarCY - AndroidUtilities.dp(20.0f), f15, f14), Math.min(f16 - fDp2, AndroidUtilities.lerp(f17 + AndroidUtilities.dp(72.0f), this.sheetRect.right, f14)), AndroidUtilities.lerp(AndroidUtilities.dp(20.0f) + fBarCY, fSheetBottom, fClamp01));
        float fMin = Math.min(this.islandRect.height() / 2.0f, AndroidUtilities.lerp(AndroidUtilities.dp(20.0f), AndroidUtilities.dp(28.17f), fClamp01));
        float f19 = 0.5f;
        this.glassSheet = fClamp01 > 0.5f;
        if (fClamp01 >= 0.35f && !this.cascadeFired && this.sheetTarget > 0.5f) {
            this.cascadeFired = true;
            this.cascadeAt = AnimationUtils.currentAnimationTimeMillis();
        }
        if (fClamp01 < 0.05f) {
            this.cascadeFired = false;
        }
        this.sheetLift = fClamp01;
        this.liftThis = true;
        Canvas canvas4 = canvas;
        drawGlass(canvas4, this.islandRect, fMin, z4 && fClamp01 < 0.5f, 1.0f);
        float f20 = fMin;
        this.liftThis = false;
        this.glassSheet = false;
        Scene scene2 = this.scene;
        this.fill.setColor(scene2 != null ? scene2.shade : TLObject.FLAG_30);
        this.fill.setAlpha((int) (Color.alpha(r3) * fClamp01));
        if (fClamp01 > 0.5f) {
            float fMin2 = Math.min(0.0f, AndroidUtilities.dpf2(RimTune.f1214g[2][8]));
            this.rect2.set(this.islandRect);
            this.rect2.inset(fMin2, fMin2);
            float f21 = f20 - fMin2;
            canvas4.drawRoundRect(this.rect2, f21, f21, this.fill);
        } else {
            canvas4.drawRoundRect(this.islandRect, f20, f20, this.fill);
        }
        float f22 = 1.0f;
        float fClamp012 = 1.0f - Utilities.clamp01(fClamp01 / 0.35f);
        if (fClamp012 > 0.0f) {
            canvas4.save();
            this.path.rewind();
            this.path.addRoundRect(this.islandRect, f20, f20, Path.Direction.CW);
            canvas4.clipPath(this.path);
            float fDp3 = AndroidUtilities.dp(144.0f) / 3.0f;
            int i5 = 0;
            while (i5 < 3) {
                float f23 = f19;
                float f24 = f22;
                icon(canvas4, this.tabIcons[i5], (f17 - AndroidUtilities.dp(72.0f)) + ((i5 + f19) * fDp3), AndroidUtilities.lerp(fBarCY, fBarCY - AndroidUtilities.dp(10.0f), fClamp01), AndroidUtilities.dp(i5 == 1 ? 24.5f : 22.0f) * ((0.15f * fClamp01 * (i5 == this.tab ? 1 : 0)) + f24), glassIconColor(), fClamp012);
                i5++;
                canvas4 = canvas;
                f20 = f20;
                f16 = f16;
                f19 = f23;
                f22 = f24;
            }
            f = f19;
            f2 = f22;
            f3 = f20;
            f4 = f16;
            qrShareView = this;
            canvas.restore();
        } else {
            f = 0.5f;
            f2 = 1.0f;
            f3 = f20;
            f4 = f16;
            qrShareView = this;
        }
        float f25 = qrShareView.contentA;
        if (f25 <= 0.004f) {
            return;
        }
        boolean z5 = f25 < 0.999f;
        if (z5) {
            RectF rectF = qrShareView.sheetRect;
            f5 = fSheetBottom;
            canvas.saveLayerAlpha(rectF.left, f15, rectF.right, f5, (int) (f25 * 255.0f));
            canvas2 = canvas;
            f6 = f15;
        } else {
            canvas2 = canvas;
            f5 = fSheetBottom;
            f6 = f15;
        }
        canvas2.save();
        qrShareView.path.rewind();
        qrShareView.path.addRoundRect(qrShareView.islandRect, f3, f3, Path.Direction.CW);
        canvas2.clipPath(qrShareView.path);
        boolean z6 = qrShareView.tab != 1;
        if (z6) {
            canvas2.saveLayer(qrShareView.islandRect, null);
        }
        canvas2.save();
        float f26 = 0.0f;
        canvas2.translate(0.0f, (f2 - qrShareView.contentA) * AndroidUtilities.dp(14.0f));
        canvas2.translate(0.0f, -qrShareView.sheetScroll);
        float fGridPad = f6 + qrShareView.gridPad();
        int i6 = qrShareView.tab;
        if (i6 == 0) {
            float fWidth = (qrShareView.sheetRect.width() - AndroidUtilities.dp(8.0f)) / 6.0f;
            float fMin3 = Math.min(fWidth - AndroidUtilities.dp(10.0f), AndroidUtilities.dp(44.0f));
            boolean z7 = qrShareView.sheetTarget > f;
            float fRevealTime = z7 ? qrShareView.revealTime() : f2;
            float f27 = 0.8f;
            if (z7) {
                float f28 = f2 - fRevealTime;
                f10 = f2;
                fLerp = AndroidUtilities.lerp(0.8f, f10, f2 - ((f28 * f28) * f28));
            } else {
                f10 = f2;
                fLerp = AndroidUtilities.lerp(0.96f, f10, qrShareView.contentA);
            }
            if (z7 && fRevealTime < f10) {
                qrShareView.invalidate();
            }
            canvas2.save();
            float fCenterX = qrShareView.sheetRect.centerX();
            float f29 = qrShareView.sheetScroll;
            canvas2.scale(fLerp, fLerp, fCenterX, z7 ? f5 + f29 : ((f5 - f6) / 2.0f) + f29 + f6);
            int i7 = 0;
            while (i7 < Backdrops.CENTER.length) {
                int iSlotIndex = slotIndex(i7);
                float fDp4 = qrShareView.sheetRect.left + AndroidUtilities.dp(4.0f) + (((i7 % 6) + f) * fWidth);
                float f30 = (((i7 / 6) + f) * fWidth) + fGridPad;
                float f31 = qrShareView.sheetScroll;
                float f32 = f27;
                if (f30 - f31 > i2 + fWidth || f30 - f31 < f6 - fWidth) {
                    f11 = f26;
                    f12 = f18;
                    f13 = f32;
                } else {
                    float f33 = ((f30 - f31) - f6) / fWidth;
                    float f34 = f18;
                    float fMax = Math.max(f26, Math.min(f34, f33));
                    float fClamp013 = Utilities.clamp01(z7 ? ((420.0f * fRevealTime) - (fMax * 12.0f)) / 300.0f : (qrShareView.contentA - (fMax * 0.02f)) / f32);
                    float f35 = z7 ? 0.82f : 0.85f;
                    float f36 = 1.0f - fClamp013;
                    float fSwatchScale = qrShareView.swatchScale(i7) * (f35 + ((1.0f - f35) * (1.0f - ((f36 * f36) * f36))));
                    if (fSwatchScale != 1.0f) {
                        canvas2.save();
                        canvas2.scale(fSwatchScale, fSwatchScale, fDp4, f30);
                    }
                    float f37 = fMin3 / 2.0f;
                    int iDeepCenter = deepCenter(iSlotIndex);
                    f12 = f34;
                    int iDeepEdge = deepEdge(iSlotIndex);
                    f11 = f26;
                    Scene scene3 = qrShareView.scene;
                    if (scene3 != null && scene3.type == 0 && scene3.index == iSlotIndex) {
                        qrShareView3 = qrShareView;
                        i4 = iDeepCenter;
                        z3 = true;
                    } else {
                        qrShareView3 = qrShareView;
                        i4 = iDeepCenter;
                        z3 = false;
                    }
                    f13 = f32;
                    qrShareView3.drawSphere(canvas2, i7, fDp4, f30, f37, i4, iDeepEdge, z3);
                    qrShareView = qrShareView3;
                    if (fSwatchScale != 1.0f) {
                        canvas2.restore();
                        qrShareView.invalidate();
                    }
                }
                i7++;
                f27 = f13;
                f18 = f12;
                f26 = f11;
            }
            canvas2.restore();
        } else {
            float f38 = 0.0f;
            boolean z8 = true;
            if (i6 != 1) {
                boolean z9 = qrShareView.sheetTarget > f;
                float fRevealTime2 = z9 ? qrShareView.revealTime() : 1.0f;
                boolean z10 = z9 && fRevealTime2 < 1.0f;
                if (z10) {
                    float f39 = 1.0f - fRevealTime2;
                    float fLerp2 = AndroidUtilities.lerp(0.75f, 1.0f, 1.0f - ((f39 * f39) * f39));
                    canvas2.save();
                    canvas2.scale(fLerp2, fLerp2, qrShareView.sheetRect.centerX(), qrShareView.sheetScroll + f5);
                    qrShareView.invalidate();
                }
                if (qrShareView.giftsEmpty()) {
                    qrShareView.drawGiftsEmpty(canvas2, f6, fClamp01);
                } else if (qrShareView.gifts.isEmpty()) {
                    qrShareView.text.setColor(-1275068417);
                    qrShareView.text.setTextSize(AndroidUtilities.dp(14.0f));
                    String string = LocaleController.getString(!qrShareView.giftsEndReached ? C2807R.string.QrLoadingGifts : qrShareView.giftsOwner < 0 ? C2807R.string.QrChatNoCollectibles : C2807R.string.QrNoCollectibles);
                    canvas2.drawText(string, (f4 - qrShareView.text.measureText(string)) / 2.0f, AndroidUtilities.dp(40.0f) + fGridPad, qrShareView.text);
                }
                int iGiftCols = qrShareView.giftCols();
                int iGiftCount = qrShareView.giftCount();
                float fWidth2 = (qrShareView.sheetRect.width() - AndroidUtilities.dp(8.0f)) / 3.0f;
                float fWidth3 = (qrShareView.sheetRect.width() - AndroidUtilities.dp(8.0f)) / iGiftCols;
                float f40 = fGridPad + 0.0f;
                Canvas canvas5 = canvas;
                float f41 = f5;
                float f42 = f6;
                float f43 = fRevealTime2;
                QrShareView qrShareView4 = this;
                qrShareView4.cascadeBegin(iGiftCols, fWidth2, f40, f42, f41, 0.7f, false);
                if (z9) {
                    qrShareView4.cascadeT = -1.0f;
                }
                int i8 = 0;
                while (i8 < iGiftCount) {
                    int i9 = i8 % iGiftCols;
                    float fDp5 = qrShareView4.sheetRect.left + AndroidUtilities.dp(4.0f) + (i9 * fWidth3);
                    int i10 = i8 / iGiftCols;
                    float f44 = f40 + (i10 * fWidth2);
                    float f45 = qrShareView4.sheetScroll;
                    if (f44 - f45 <= f41) {
                        float f46 = f44 + fWidth2;
                        if (f46 - f45 < f42) {
                            i3 = i8;
                            f7 = f43;
                            qrShareView2 = qrShareView4;
                        } else {
                            float fCascadeE = qrShareView4.cascadeE(i10, i9);
                            boolean z11 = (fCascadeE < 1.0f || qrShareView4.cascadeScale != 1.0f) ? z8 : false;
                            if (z11) {
                                canvas5.save();
                                canvas5.translate(f38, qrShareView4.cascadeDy * Utilities.clamp01((1.0f - qrShareView4.cascadeScale) / (1.0f - qrShareView4.cascadeMin)));
                                float f47 = qrShareView4.cascadeScale;
                                canvas5.scale(f47, f47, fDp5 + (fWidth3 / 2.0f), (fWidth2 / 2.0f) + f44);
                                if (fCascadeE < 1.0f) {
                                    float f48 = fDp5 + fWidth3;
                                    fDp5 = fDp5;
                                    f8 = f44;
                                    qrShareView4.cascadeMask(fDp5, f8, f48, f46, fCascadeE);
                                    fRevealItemScale = z10 ? qrShareView4.revealItemScale(f43, ((f8 - qrShareView4.sheetScroll) - f42) / fWidth2) : 1.0f;
                                    if (fRevealItemScale != 1.0f) {
                                        canvas5.save();
                                        canvas5.scale(fRevealItemScale, fRevealItemScale, (fWidth3 / 2.0f) + fDp5, (fWidth2 / 2.0f) + f8);
                                    }
                                    TL_stars.TL_starGiftUnique tL_starGiftUnique = qrShareView4.gifts.get(i8);
                                    float fDp6 = AndroidUtilities.dp(4.0f) + fDp5;
                                    float fDp7 = f8 + AndroidUtilities.dp(4.0f);
                                    fDp = fWidth3 - AndroidUtilities.dp(8.0f);
                                    float fDp8 = fWidth2 - AndroidUtilities.dp(8.0f);
                                    pattern = qrShareView4.pattern;
                                    f7 = f43;
                                    if (pattern.type == 2 && pattern.giftIndex == i8) {
                                        i3 = i8;
                                        f9 = fDp;
                                        canvas3 = canvas5;
                                        z2 = true;
                                    } else {
                                        i3 = i8;
                                        f9 = fDp;
                                        canvas3 = canvas5;
                                        z2 = false;
                                    }
                                    drawGiftCell(canvas3, i3, tL_starGiftUnique, fDp6, fDp7, f9, fDp8, z2);
                                    qrShareView2 = this;
                                    if (fRevealItemScale != 1.0f) {
                                        canvas.restore();
                                    }
                                    if (!z11) {
                                        canvas.restore();
                                    }
                                } else {
                                    fDp5 = fDp5;
                                    f8 = f44;
                                    if (z10) {
                                    }
                                    if (fRevealItemScale != 1.0f) {
                                    }
                                    TL_stars.TL_starGiftUnique tL_starGiftUnique2 = qrShareView4.gifts.get(i8);
                                    float fDp62 = AndroidUtilities.dp(4.0f) + fDp5;
                                    float fDp72 = f8 + AndroidUtilities.dp(4.0f);
                                    fDp = fWidth3 - AndroidUtilities.dp(8.0f);
                                    float fDp82 = fWidth2 - AndroidUtilities.dp(8.0f);
                                    pattern = qrShareView4.pattern;
                                    f7 = f43;
                                    if (pattern.type == 2) {
                                        i3 = i8;
                                        f9 = fDp;
                                        canvas3 = canvas5;
                                        z2 = false;
                                        drawGiftCell(canvas3, i3, tL_starGiftUnique2, fDp62, fDp72, f9, fDp82, z2);
                                        qrShareView2 = this;
                                        if (fRevealItemScale != 1.0f) {
                                        }
                                        if (!z11) {
                                        }
                                    }
                                }
                            } else {
                                f8 = f44;
                                if (z10) {
                                }
                                if (fRevealItemScale != 1.0f) {
                                }
                                TL_stars.TL_starGiftUnique tL_starGiftUnique22 = qrShareView4.gifts.get(i8);
                                float fDp622 = AndroidUtilities.dp(4.0f) + fDp5;
                                float fDp722 = f8 + AndroidUtilities.dp(4.0f);
                                fDp = fWidth3 - AndroidUtilities.dp(8.0f);
                                float fDp822 = fWidth2 - AndroidUtilities.dp(8.0f);
                                pattern = qrShareView4.pattern;
                                f7 = f43;
                                if (pattern.type == 2) {
                                }
                            }
                        }
                    }
                    QrShareView qrShareView5 = qrShareView2;
                    i8 = i3 + 1;
                    qrShareView4 = qrShareView5;
                    canvas5 = canvas;
                    f43 = f7;
                    z8 = true;
                    f38 = 0.0f;
                }
                qrShareView = qrShareView4;
                cascadeApply(canvas);
                if (z10) {
                    canvas.restore();
                }
            }
        }
        canvas.restore();
        if (z6) {
            float fDp9 = AndroidUtilities.dp(12.0f);
            qrShareView.fadeMatrix.setScale(1.0f, fDp9);
            qrShareView.fadeMatrix.postTranslate(0.0f, qrShareView.islandRect.top);
            qrShareView.fadeTop.setLocalMatrix(qrShareView.fadeMatrix);
            RectF rectF2 = qrShareView.islandRect;
            float f49 = rectF2.left;
            float f50 = rectF2.top;
            canvas.drawRect(f49, f50, rectF2.right, f50 + fDp9, qrShareView.fadePaint);
            qrShareView.fadeMatrix.setScale(1.0f, -fDp9);
            qrShareView.fadeMatrix.postTranslate(0.0f, qrShareView.islandRect.bottom);
            qrShareView.fadeTop.setLocalMatrix(qrShareView.fadeMatrix);
            RectF rectF3 = qrShareView.islandRect;
            float f51 = rectF3.left;
            float f52 = rectF3.bottom;
            canvas.drawRect(f51, f52 - fDp9, rectF3.right, f52, qrShareView.fadePaint);
            canvas.restore();
        }
        canvas.restore();
        if (z5) {
            canvas.restore();
        }
    }

    public float panelFinalTop() {
        return (sheetBottom() - sheetH()) + AndroidUtilities.dp(8.0f);
    }

    public float panelFinalBottom() {
        return sheetBottom();
    }

    public float panelFinalLeft() {
        return AndroidUtilities.dp(10.0f);
    }

    public float panelFinalRight() {
        return getWidth() - AndroidUtilities.dp(10.0f);
    }

    private void updateEmojiPanel() {
        if (this.delegate == null) {
            return;
        }
        boolean z = false;
        boolean z2 = this.sheet > 0.01f && this.contentA > 0.004f && this.tab == 1;
        this.stripH = 0.0f;
        float fSheetBottom = (sheetBottom() - sheetH()) + AndroidUtilities.dp(8.0f) + ((1.0f - this.contentA) * AndroidUtilities.dp(14.0f));
        float f = this.contentA;
        boolean z3 = z2 && !this.islandRect.equals(this.panelShape);
        Scene scene = this.scene;
        int i = scene != null ? scene.center : 0;
        if (z2 && i != this.panelScene) {
            z = true;
        }
        if (z2 == this.panelVisible && !z3 && !z) {
            if (!z2) {
                return;
            }
            if (Math.abs(fSheetBottom - this.panelTop) <= 0.5f && Math.abs(f - this.panelAlpha) <= 0.01f) {
                return;
            }
        }
        this.panelScene = i;
        this.panelShape.set(this.islandRect);
        this.panelVisible = z2;
        this.panelTop = fSheetBottom;
        this.panelAlpha = f;
        this.delegate.onEmojiPanel(z2, fSheetBottom, f);
        Delegate delegate = this.delegate;
        float fDp = AndroidUtilities.dp(10.0f);
        float width = getWidth() - AndroidUtilities.dp(10.0f);
        float fSheetBottom2 = sheetBottom();
        RectF rectF = this.islandRect;
        delegate.onEmojiPanelBounds(fDp, width, fSheetBottom2, rectF.left, rectF.top, rectF.right, rectF.bottom, Math.min(rectF.height() / 2.0f, AndroidUtilities.lerp(AndroidUtilities.dp(20.0f), AndroidUtilities.dp(28.17f), Utilities.clamp01(this.sheet))));
    }

    public static final class TilePattern {
        Bitmap batchBitmap;
        int batchColor;
        Paint batchPaint;

        /* JADX INFO: renamed from: d */
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable f1210d;
        long docId;

        private TilePattern() {
        }
    }

    private void drawTilePattern(Canvas canvas, TL_stars.TL_starGiftUnique tL_starGiftUnique, RectF rectF, int i) {
        TilePattern tilePattern = tilePattern(tL_starGiftUnique);
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = tilePattern.f1210d;
        if (swapAnimatedEmojiDrawable == null || swapAnimatedEmojiDrawable.getDrawable() == null) {
            return;
        }
        drawTilePattern(canvas, tilePattern, rectF, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private TilePattern tilePattern(TL_stars.TL_starGiftUnique tL_starGiftUnique) {
        TilePattern tilePattern = this.giftPatterns.get(Long.valueOf(tL_starGiftUnique.id));
        if (tilePattern == null) {
            TLRPC.Document document = null;
            tilePattern = new TilePattern();
            ArrayList<TL_stars.StarGiftAttribute> arrayList = tL_starGiftUnique.attributes;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                TL_stars.StarGiftAttribute starGiftAttribute = arrayList.get(i);
                i++;
                TL_stars.StarGiftAttribute starGiftAttribute2 = starGiftAttribute;
                if (starGiftAttribute2 instanceof TL_stars.starGiftAttributePattern) {
                    document = ((TL_stars.starGiftAttributePattern) starGiftAttribute2).document;
                }
            }
            if (document != null) {
                AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(this, AndroidUtilities.dp(28.0f));
                tilePattern.f1210d = swapAnimatedEmojiDrawable;
                swapAnimatedEmojiDrawable.set(document, false);
                tilePattern.f1210d.attach();
                tilePattern.docId = document.id;
            }
            this.giftPatterns.put(Long.valueOf(tL_starGiftUnique.id), tilePattern);
        }
        return tilePattern;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x008d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void drawTilePattern(Canvas canvas, TilePattern tilePattern, RectF rectF, int i) {
        canvas.save();
        canvas.translate(rectF.centerX(), rectF.centerY());
        if (BatchParticlesDrawHelper.isAvailable() && tilePattern.f1210d.isStable() && (tilePattern.f1210d.getDrawable() instanceof AnimatedEmojiDrawable)) {
            AnimatedEmojiDrawable animatedEmojiDrawable = (AnimatedEmojiDrawable) tilePattern.f1210d.getDrawable();
            ImageReceiver imageReceiver = animatedEmojiDrawable.getImageReceiver();
            Bitmap bitmap = (imageReceiver == null || animatedEmojiDrawable.getDocumentId() != tilePattern.docId) ? null : imageReceiver.getBitmap();
            if (bitmap != null) {
                if (tilePattern.batchBitmap != bitmap || tilePattern.batchPaint == null) {
                    tilePattern.batchBitmap = bitmap;
                    tilePattern.batchPaint = BatchParticlesDrawHelper.createBatchParticlesPaint(bitmap);
                } else {
                    if (tilePattern.batchColor != i) {
                    }
                    StarGiftPatterns.drawPatternBatch(canvas, 2, tilePattern.batchPaint, bitmap, rectF.width(), rectF.height(), 1.0f, 1.0f);
                }
                tilePattern.batchColor = i;
                tilePattern.batchPaint.setColorFilter(QrRender.hasNodes() ? QrRender.srcIn(i) : new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN));
                StarGiftPatterns.drawPatternBatch(canvas, 2, tilePattern.batchPaint, bitmap, rectF.width(), rectF.height(), 1.0f, 1.0f);
            }
        } else {
            tilePattern.f1210d.setColor(Integer.valueOf(i));
            StarGiftPatterns.drawPattern(canvas, 2, tilePattern.f1210d, rectF.width(), rectF.height(), 1.0f, 1.0f);
        }
        canvas.restore();
    }

    private float giftRing(int i) {
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        int i2 = this.selGift;
        if (i == i2 && this.selTarget > 0.5f) {
            float fClamp01 = 1.0f - Utilities.clamp01((jCurrentAnimationTimeMillis - this.releaseAt) / 260.0f);
            return 1.0f - ((fClamp01 * fClamp01) * fClamp01);
        }
        if (i != this.prevSelGift && (i != i2 || this.selTarget >= 0.5f)) {
            return 0.0f;
        }
        float fClamp012 = Utilities.clamp01((jCurrentAnimationTimeMillis - this.deselectAt) / 180.0f);
        return 1.0f - (fClamp012 * fClamp012);
    }

    private float swatchScale(int i) {
        if (i != this.pressSwatch) {
            return 1.0f;
        }
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        if (this.swatchUpAt < this.swatchDownAt) {
            float fClamp01 = 1.0f - Utilities.clamp01((jCurrentAnimationTimeMillis - r6) / 110.0f);
            return 1.0f - ((1.0f - (fClamp01 * fClamp01)) * 0.08f);
        }
        double dSpringStep = springStep((jCurrentAnimationTimeMillis - r4) / 1000.0f, 0.6d, 0.28d);
        if (jCurrentAnimationTimeMillis - this.swatchUpAt > 900) {
            this.pressSwatch = -1;
            return 1.0f;
        }
        float f = this.swatchUpFrom;
        return f + ((1.0f - f) * ((float) dSpringStep));
    }

    private void releaseSwatch() {
        int i = this.pressSwatch;
        if (i < 0 || this.swatchUpAt >= this.swatchDownAt) {
            return;
        }
        this.swatchUpFrom = swatchScale(i);
        this.swatchUpAt = AnimationUtils.currentAnimationTimeMillis();
        invalidate();
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private float giftTileScale(int i) {
        float fSpringStep;
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        int i2 = this.pressGift;
        if (i == i2) {
            if (this.releaseAt < this.pressDownAt) {
                float fClamp01 = 1.0f - Utilities.clamp01((jCurrentAnimationTimeMillis - r7) / 120.0f);
                fSpringStep = fClamp01 * fClamp01;
            } else {
                if (i != i2) {
                    return 1.0f;
                }
                fSpringStep = (float) springStep((jCurrentAnimationTimeMillis - this.releaseAt) / 1000.0f, 0.6d, 0.3d);
            }
        }
        return 1.0f - ((1.0f - fSpringStep) * 0.06f);
    }

    private float giftModelScale(int i) {
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        int i2 = this.selGift;
        if (i == i2 && this.selTarget > 0.5f) {
            return 1.0f - (((float) springStep((jCurrentAnimationTimeMillis - this.releaseAt) / 1000.0f, 0.6d, 0.3d)) * 0.14f);
        }
        if (i != this.prevSelGift && (i != i2 || this.selTarget >= 0.5f)) {
            return 1.0f;
        }
        float fClamp01 = Utilities.clamp01((jCurrentAnimationTimeMillis - this.deselectAt) / 180.0f);
        return (0.14f * fClamp01 * fClamp01 * (3.0f - (fClamp01 * 2.0f))) + 0.86f;
    }

    private boolean canBuyGifts() {
        return this.giftsOwner > 0;
    }

    private TLRPC.Document emptyDogDocument() {
        ArrayList<TLRPC.Document> arrayList;
        TLRPC.Document document = this.dogDoc;
        if (document != null) {
            return document;
        }
        if (this.dogInput == null) {
            TLRPC.TL_inputStickerSetShortName tL_inputStickerSetShortName = new TLRPC.TL_inputStickerSetShortName();
            this.dogInput = tL_inputStickerSetShortName;
            tL_inputStickerSetShortName.short_name = "Redo_edc21keMa";
        }
        if (this.dogSetRequested) {
            return null;
        }
        this.dogSetRequested = true;
        TLRPC.TL_messages_stickerSet stickerSet = MediaDataController.getInstance(this.currentAccount).getStickerSet(this.dogInput, null, false, new Utilities.Callback() { // from class: org.telegram.ui.QrShare.QrShareView$$ExternalSyntheticLambda9
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$emptyDogDocument$12((TLRPC.TL_messages_stickerSet) obj);
            }
        });
        if (stickerSet != null && (arrayList = stickerSet.documents) != null && !arrayList.isEmpty()) {
            this.dogDoc = stickerSet.documents.get(0);
        }
        return this.dogDoc;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$emptyDogDocument$12(TLRPC.TL_messages_stickerSet tL_messages_stickerSet) {
        ArrayList<TLRPC.Document> arrayList;
        if (tL_messages_stickerSet != null && (arrayList = tL_messages_stickerSet.documents) != null && !arrayList.isEmpty()) {
            this.dogDoc = tL_messages_stickerSet.documents.get(0);
        }
        invalidate();
    }

    private void drawGiftsEmpty(Canvas canvas, float f, float f2) {
        float f3;
        float f4;
        float f5;
        float f6;
        float fCenterX = this.sheetRect.centerX();
        float fDp = AndroidUtilities.dp(99.0f);
        this.emptyTitle.setTypeface(AndroidUtilities.bold());
        this.emptyTitle.setTextSize(AndroidUtilities.dp(16.0f));
        Paint.FontMetrics fontMetrics = this.emptyTitle.getFontMetrics();
        ensureEmptySub((int) (this.sheetRect.width() - AndroidUtilities.dp(32.0f)));
        float fDp2 = (f + ((AndroidUtilities.dp(300.0f) - (((((AndroidUtilities.dp(22.0f) + fDp) + (fontMetrics.descent - fontMetrics.ascent)) + AndroidUtilities.dp(7.0f)) + this.emptySubLayout.getHeight()) + (canBuyGifts() ? AndroidUtilities.dp(20.0f) + AndroidUtilities.dp(36.0f) : 0))) / 2.0f)) - AndroidUtilities.dp(8.0f);
        TLRPC.Document documentEmptyDogDocument = emptyDogDocument();
        if (documentEmptyDogDocument != null) {
            AnimatedEmojiDrawable animatedEmojiDrawable = this.emptyDog;
            if (animatedEmojiDrawable != null) {
                f3 = 7.0f;
                f4 = 2.0f;
                if (this.emptyDogDocId != documentEmptyDogDocument.id) {
                }
            } else {
                f3 = 7.0f;
                f4 = 2.0f;
            }
            if (animatedEmojiDrawable != null) {
                animatedEmojiDrawable.removeView(this);
            }
            AnimatedEmojiDrawable animatedEmojiDrawableMake = AnimatedEmojiDrawable.make(this.currentAccount, 14, documentEmptyDogDocument);
            this.emptyDog = animatedEmojiDrawableMake;
            animatedEmojiDrawableMake.addView(this);
            this.emptyDogDocId = documentEmptyDogDocument.id;
            this.dogFadeStart = 0L;
        } else {
            f3 = 7.0f;
            f4 = 2.0f;
        }
        AnimatedEmojiDrawable animatedEmojiDrawable2 = this.emptyDog;
        ImageReceiver imageReceiver = animatedEmojiDrawable2 != null ? animatedEmojiDrawable2.getImageReceiver() : null;
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        if (imageReceiver == null || !imageReceiver.hasBitmapImage()) {
            f5 = 20.0f;
        } else {
            f5 = 20.0f;
            if (this.dogFadeStart == 0) {
                this.dogFadeStart = jCurrentAnimationTimeMillis;
            }
        }
        float fMin = this.dogFadeStart == 0 ? 0.0f : Math.min(1.0f, (jCurrentAnimationTimeMillis - r9) / 250.0f);
        float f7 = fMin * fMin * (3.0f - (fMin * f4));
        float fClamp01 = this.sheetTarget > 0.5f ? Utilities.clamp01(revealTime() / 0.7f) : 1.0f;
        float f8 = 1.0f - fClamp01;
        float f9 = 1.0f - ((f8 * f8) * f8);
        float fLerp = AndroidUtilities.lerp(0.95f, 1.0f, f9);
        if (fClamp01 < 1.0f) {
            invalidate();
        }
        canvas.save();
        canvas.translate(0.0f, (1.0f - f9) * AndroidUtilities.dp(6.0f));
        float f10 = fDp / f4;
        canvas.scale(fLerp, fLerp, fCenterX, (fDp2 - AndroidUtilities.dp(f4)) + f10);
        RLottieDrawable rLottieDrawable = this.emptyLottie;
        if (f7 < 1.0f) {
            if (rLottieDrawable == null) {
                int i = (int) fDp;
                RLottieDrawable rLottieDrawable2 = new RLottieDrawable(C2807R.raw.qr_resistance_dog, i, i, true, null);
                this.emptyLottie = rLottieDrawable2;
                rLottieDrawable2.setAutoRepeat(1);
                this.emptyLottie.setAllowDecodeSingleFrame(true);
                this.emptyLottie.setMasterParent(this);
                this.emptyLottie.setCallback(this);
                this.emptyLottie.start();
            }
            if (this.emptyLottie.hasBitmap()) {
                f6 = f5;
                this.emptyLottie.setBounds((int) (fCenterX - f10), (int) (fDp2 - AndroidUtilities.dp(f4)), (int) (fCenterX + f10), (int) ((fDp2 - AndroidUtilities.dp(f4)) + fDp));
                this.emptyLottie.setAlpha((int) (f2 * 255.0f * (1.0f - f7)));
                this.emptyLottie.draw(canvas);
            } else {
                f6 = f5;
            }
            invalidate();
        } else {
            f6 = f5;
            if (rLottieDrawable != null) {
                rLottieDrawable.recycle(false);
                this.emptyLottie = null;
            }
        }
        AnimatedEmojiDrawable animatedEmojiDrawable3 = this.emptyDog;
        if (animatedEmojiDrawable3 != null && f7 > 0.0f) {
            animatedEmojiDrawable3.setBounds((int) (fCenterX - f10), (int) (fDp2 - AndroidUtilities.dp(f4)), (int) (f10 + fCenterX), (int) ((fDp2 - AndroidUtilities.dp(f4)) + fDp));
            this.emptyDog.setAlpha((int) (f2 * 255.0f * f7));
            this.emptyDog.draw(canvas);
        }
        canvas.restore();
        this.emptyTitle.setColor(-1);
        this.emptyTitle.setAlpha((int) (f2 * 255.0f));
        Paint.FontMetrics fontMetrics2 = this.emptyTitle.getFontMetrics();
        float fDp3 = ((fDp2 + fDp) + AndroidUtilities.dp(18.0f)) - fontMetrics2.ascent;
        String str = this.emptyTitleText;
        canvas.drawText(str, fCenterX - (this.emptyTitle.measureText(str) / f4), fDp3, this.emptyTitle);
        this.emptySub.setColor(-1);
        this.emptySub.setAlpha((int) (191.0f * f2));
        float fDp4 = fDp3 + fontMetrics2.descent + AndroidUtilities.dp(f3);
        canvas.save();
        canvas.translate(fCenterX - (this.emptySubLayout.getWidth() / f4), fDp4);
        this.emptySubLayout.draw(canvas);
        canvas.restore();
        if (canBuyGifts()) {
            drawBuyButton(canvas, fCenterX, fDp4 + this.emptySubLayout.getHeight() + AndroidUtilities.dp(f6), f2);
        } else {
            this.buyRect.setEmpty();
        }
    }

    private void ensureEmptySub(int i) {
        boolean zCanBuyGifts = canBuyGifts();
        boolean z = !zCanBuyGifts;
        if (this.emptySubLayout != null && this.emptySubW == i && this.emptySubChat == z) {
            return;
        }
        this.emptySubW = i;
        this.emptySubChat = z;
        this.emptySub.setTextSize(AndroidUtilities.dp(14.0f));
        Paint.FontMetrics fontMetrics = this.emptySub.getFontMetrics();
        this.emptySubLayout = new StaticLayout(LocaleController.getString(!zCanBuyGifts ? C2807R.string.QrChatNoCollectibles : C2807R.string.QrNoGiftsInfo), this.emptySub, i, Layout.Alignment.ALIGN_CENTER, 1.0f, AndroidUtilities.dp(18.5f) - (fontMetrics.descent - fontMetrics.ascent), false);
    }

    private void drawBuyButton(Canvas canvas, float f, float f2, float f3) {
        this.buyText.setTypeface(AndroidUtilities.bold());
        this.buyText.setTextSize(AndroidUtilities.dp(14.0f));
        float fMeasureText = this.buyText.measureText(this.buyLabel) + (AndroidUtilities.dp(19.0f) * 2);
        float fDp = AndroidUtilities.dp(36.0f);
        float f4 = fMeasureText / 2.0f;
        this.buyRect.set(f - f4, f2, f4 + f, f2 + fDp);
        RectF rectF = this.buyRect;
        int iSaveLayer = canvas.saveLayer(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f, null);
        this.fill.setColor(-1);
        int i = (int) (f3 * 255.0f);
        this.fill.setAlpha(i);
        float f5 = fDp / 2.0f;
        canvas.drawRoundRect(this.buyRect, f5, f5, this.fill);
        drawRipple(canvas, 10, this.buyRect, true);
        this.buyKnock.setTypeface(AndroidUtilities.bold());
        this.buyKnock.setTextSize(AndroidUtilities.dp(14.0f));
        Paint.FontMetrics fontMetrics = this.buyKnock.getFontMetrics();
        String str = this.buyLabel;
        canvas.drawText(str, f - (this.buyKnock.measureText(str) / 2.0f), this.buyRect.centerY() - ((fontMetrics.ascent + fontMetrics.descent) / 2.0f), this.buyKnock);
        canvas.restoreToCount(iSaveLayer);
        if (this.buyDarken == null) {
            TextPaint textPaint = new TextPaint(1);
            this.buyDarken = textPaint;
            textPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.MULTIPLY));
        }
        this.buyDarken.setTypeface(AndroidUtilities.bold());
        this.buyDarken.setTextSize(AndroidUtilities.dp(14.0f));
        Scene scene = this.scene;
        this.buyDarken.setColor(oklchRelight(scene != null ? ColorUtils.blendARGB(scene.center, scene.edge, 0.5f) : -8355712, 0.9f, 1.4f, 0.1f));
        this.buyDarken.setAlpha(i);
        String str2 = this.buyLabel;
        canvas.drawText(str2, f - (this.buyDarken.measureText(str2) / 2.0f), this.buyRect.centerY() - ((fontMetrics.ascent + fontMetrics.descent) / 2.0f), this.buyDarken);
    }

    private void drawGiftCell(Canvas canvas, int i, TL_stars.TL_starGiftUnique tL_starGiftUnique, float f, float f2, float f3, float f4, boolean z) {
        float fGiftTileScale = giftTileScale(i);
        if (fGiftTileScale != 1.0f) {
            canvas.save();
            canvas.scale(fGiftTileScale, fGiftTileScale, (f3 / 2.0f) + f, (f4 / 2.0f) + f2);
        }
        drawGiftCellInner(canvas, i, tL_starGiftUnique, f, f2, f3, f4);
        if (fGiftTileScale != 1.0f) {
            canvas.restore();
        }
    }

    private void drawGiftCellInner(Canvas canvas, int i, TL_stars.TL_starGiftUnique tL_starGiftUnique, float f, float f2, float f3, float f4) {
        giftColors(i, this.giftCol);
        int[] iArr = this.giftCol;
        int i2 = iArr[0];
        int i3 = iArr[1];
        ArrayList<TL_stars.StarGiftAttribute> arrayList = tL_starGiftUnique.attributes;
        int size = arrayList.size();
        int i4 = 0;
        TLRPC.Document document = null;
        while (i4 < size) {
            TL_stars.StarGiftAttribute starGiftAttribute = arrayList.get(i4);
            i4++;
            TL_stars.StarGiftAttribute starGiftAttribute2 = starGiftAttribute;
            if (starGiftAttribute2 instanceof TL_stars.starGiftAttributeModel) {
                document = ((TL_stars.starGiftAttributeModel) starGiftAttribute2).document;
            }
        }
        this.rect.set(f, f2, f + f3, f2 + f4);
        this.fill.setColor(-1);
        RadialGradient radialGradient = this.tileShaders.get(tL_starGiftUnique.id);
        if (radialGradient == null) {
            radialGradient = new RadialGradient(0.0f, 0.0f, 1.0f, new int[]{i2, i3}, (float[]) null, Shader.TileMode.CLAMP);
            this.tileShaders.put(tL_starGiftUnique.id, radialGradient);
        }
        float f5 = f4 * 0.7f;
        this.tileM.setScale(Math.max(1.0f, f3 / f4) * f5, f5);
        this.tileM.postTranslate(this.rect.centerX(), this.rect.centerY());
        radialGradient.setLocalMatrix(this.tileM);
        this.fill.setShader(radialGradient);
        RectF rectF = this.rect;
        float f6 = this.TILE_R;
        canvas.drawRoundRect(rectF, f6, f6, this.fill);
        this.fill.setShader(null);
        canvas.save();
        this.path.rewind();
        Path path = this.path;
        RectF rectF2 = this.rect;
        float f7 = this.TILE_R;
        path.addRoundRect(rectF2, f7, f7, Path.Direction.CW);
        canvas.clipPath(this.path);
        drawTilePattern(canvas, tL_starGiftUnique, this.rect, this.giftCol[2] | (-16777216));
        canvas.restore();
        this.fill.setColor(318767103);
        RectF rectF3 = this.rect;
        float f8 = this.TILE_R;
        canvas.drawRoundRect(rectF3, f8, f8, this.fill);
        this.stroke.setColor(1308622847);
        this.stroke.setStrokeWidth(Math.max(1.0f, AndroidUtilities.dpf2(0.4f)));
        this.rect2.set(this.rect);
        this.rect2.inset(0.5f, 0.5f);
        RectF rectF4 = this.rect2;
        float f9 = this.TILE_R;
        canvas.drawRoundRect(rectF4, f9 - 0.5f, f9 - 0.5f, this.stroke);
        float fGiftRing = giftRing(i);
        if (fGiftRing > 0.002f) {
            boolean z = i == this.selGift && this.selTarget > 0.5f;
            float fLerp = AndroidUtilities.lerp(AndroidUtilities.dpf2(1.0f), AndroidUtilities.dp(4.0f), fGiftRing);
            float fDp = AndroidUtilities.dp(2.0f) * fGiftRing;
            float fMin = Math.min(1.0f, (z ? 4.0f : 3.0f) * fGiftRing);
            this.rect2.set(this.rect);
            this.rect2.inset(fLerp, fLerp);
            this.stroke.setColor(-1);
            this.stroke.setAlpha((int) (fMin * 255.0f * (i == this.selGift ? (fGiftRing * 0.3f) + 0.7f : 1.0f)));
            this.stroke.setStrokeWidth(fDp);
            canvas.drawRoundRect(this.rect2, Math.max(0.0f, this.TILE_R - fLerp), Math.max(0.0f, this.TILE_R - fLerp), this.stroke);
        }
        if (document != null) {
            AnimatedEmojiDrawable animatedEmojiDrawableGiftThumb = giftThumb(tL_starGiftUnique.id, document);
            float fGiftModelScale = ((0.82f * f4) * giftModelScale(i)) / 2.0f;
            animatedEmojiDrawableGiftThumb.setBounds((int) (this.rect.centerX() - fGiftModelScale), (int) (this.rect.centerY() - fGiftModelScale), (int) (this.rect.centerX() + fGiftModelScale), (int) (this.rect.centerY() + fGiftModelScale));
            animatedEmojiDrawableGiftThumb.setAlpha(255);
            animatedEmojiDrawableGiftThumb.setColorFilter(null);
            animatedEmojiDrawableGiftThumb.draw(canvas);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:43:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void drawSphere(Canvas canvas, int i, float f, float f2, float f3, int i2, int i3, boolean z) {
        float f4;
        float f5;
        int length;
        int[] iArr;
        LinearGradient[] linearGradientArr;
        LinearGradient linearGradient;
        if (i == this.swSel) {
            f5 = this.swSelA;
        } else {
            if (i != this.swPrev) {
                f4 = 0.0f;
                this.fill.setColor(-1);
                length = this.swatchShaders.length;
                iArr = Backdrops.CENTER;
                if (length != iArr.length) {
                    this.swatchShaders = new LinearGradient[iArr.length];
                    this.swatchFor = new int[iArr.length];
                }
                linearGradientArr = this.swatchShaders;
                linearGradient = linearGradientArr[i];
                if (linearGradient != null || this.swatchFor[i] != (i2 * 31) + i3) {
                    LinearGradient linearGradient2 = new LinearGradient(0.0f, 0.0f, 1.0f, 1.0f, i2, i3, Shader.TileMode.CLAMP);
                    linearGradientArr[i] = linearGradient2;
                    this.swatchFor[i] = (i2 * 31) + i3;
                    linearGradient = linearGradient2;
                }
                float f6 = f3 * 2.0f;
                this.glassMatrix.setScale(f6, f6);
                float f7 = f - f3;
                float f8 = f2 - f3;
                this.glassMatrix.postTranslate(f7, f8);
                linearGradient.setLocalMatrix(this.glassMatrix);
                this.fill.setShader(linearGradient);
                canvas.drawCircle(f, f2, f3, this.fill);
                this.fill.setShader(null);
                float fMax = Math.max(0.0f, -AndroidUtilities.dpf2(RimTune.f1214g[3][8])) + 1.0f;
                this.rect3.set(f7 + fMax, f8 + fMax, (f + f3) - fMax, (f2 + f3) - fMax);
                this.swatchRim.draw(canvas, this.rect3, f3 - fMax, 3, 1.0f);
                if (f4 <= 0.01f) {
                    boolean z2 = i == this.swSel;
                    float fDp = (f3 - AndroidUtilities.dp(4.0f)) - AndroidUtilities.dp(1.0f);
                    float fLerp = z2 ? fDp * AndroidUtilities.lerp(0.8f, 1.0f, f4) : AndroidUtilities.lerp(f3 - AndroidUtilities.dpf2(1.0f), fDp, f4);
                    float fDp2 = AndroidUtilities.dp(2.0f);
                    if (!z2) {
                        fDp2 *= f4;
                    }
                    float fMin = z2 ? f4 : Math.min(1.0f, 3.0f * f4);
                    if (ColorUtils.calculateLuminance(i2) > 0.62d) {
                        this.stroke.setColor(Theme_multAlpha(939524096, fMin));
                        Paint paint = this.stroke;
                        float fDpf2 = AndroidUtilities.dpf2(1.2f);
                        if (z2) {
                            f4 = 1.0f;
                        }
                        paint.setStrokeWidth((fDpf2 * f4) + fDp2);
                        canvas.drawCircle(f, f2, fLerp, this.stroke);
                    }
                    this.stroke.setColor(Theme_multAlpha(-1, fMin));
                    this.stroke.setStrokeWidth(fDp2);
                    canvas.drawCircle(f, f2, fLerp, this.stroke);
                    return;
                }
                return;
            }
            f5 = this.swPrevA;
        }
        f4 = f5;
        this.fill.setColor(-1);
        length = this.swatchShaders.length;
        iArr = Backdrops.CENTER;
        if (length != iArr.length) {
        }
        linearGradientArr = this.swatchShaders;
        linearGradient = linearGradientArr[i];
        if (linearGradient != null) {
            LinearGradient linearGradient22 = new LinearGradient(0.0f, 0.0f, 1.0f, 1.0f, i2, i3, Shader.TileMode.CLAMP);
            linearGradientArr[i] = linearGradient22;
            this.swatchFor[i] = (i2 * 31) + i3;
            linearGradient = linearGradient22;
        }
        float f62 = f3 * 2.0f;
        this.glassMatrix.setScale(f62, f62);
        float f72 = f - f3;
        float f82 = f2 - f3;
        this.glassMatrix.postTranslate(f72, f82);
        linearGradient.setLocalMatrix(this.glassMatrix);
        this.fill.setShader(linearGradient);
        canvas.drawCircle(f, f2, f3, this.fill);
        this.fill.setShader(null);
        float fMax2 = Math.max(0.0f, -AndroidUtilities.dpf2(RimTune.f1214g[3][8])) + 1.0f;
        this.rect3.set(f72 + fMax2, f82 + fMax2, (f + f3) - fMax2, (f2 + f3) - fMax2);
        this.swatchRim.draw(canvas, this.rect3, f3 - fMax2, 3, 1.0f);
        if (f4 <= 0.01f) {
        }
    }

    private void stepSwatchSelection() {
        int i;
        Scene scene = this.scene;
        if (scene == null || scene.type != 0) {
            i = -100;
        } else {
            i = 0;
            while (i < Backdrops.CENTER.length) {
                if (slotIndex(i) == this.scene.index) {
                    break;
                } else {
                    i++;
                }
            }
            i = -100;
        }
        int i2 = this.swSel;
        if (i != i2) {
            float f = i == this.swPrev ? this.swPrevA : 0.0f;
            this.swPrev = i2;
            this.swPrevA = this.swSelA;
            this.swSel = i;
            this.swSelA = f;
        }
        this.swSelA = approach(this.swSelA, 1.0f, 0.2f);
        this.swPrevA = approach(this.swPrevA, 0.0f, 0.2f);
    }

    private static double springStep(double d, double d2, double d3) {
        if (d <= 0.0d) {
            return 0.0d;
        }
        double d4 = 6.283185307179586d / d3;
        double d5 = 1.0d - (d2 * d2);
        double dSqrt = Math.sqrt(d5) * d4 * d;
        return 1.0d - (Math.exp(((-d2) * d4) * d) * (Math.cos(dSqrt) + ((d2 / Math.sqrt(d5)) * Math.sin(dSqrt))));
    }

    private void stepMenu() {
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        float f = this.menuTarget;
        if (f != this.lastMenuTarget) {
            this.lastMenuTarget = f;
            this.menuAnimFrom = Math.max(this.menuW, this.menuH);
            this.menuAnimStart = jCurrentAnimationTimeMillis;
        }
        float f2 = (jCurrentAnimationTimeMillis - this.menuAnimStart) / 1000.0f;
        if (this.menuTarget > 0.5f) {
            float f3 = this.menuAnimFrom;
            this.menuW = f2 > 0.7f ? 1.0f : ((1.0f - f3) * ((float) springStep(f2, 0.78d, 0.3d))) + f3;
            this.menuH = f2 <= 0.7f ? ((1.0f - f3) * ((float) springStep(((double) f2) - 0.02d, 0.8d, 0.34d))) + f3 : 1.0f;
        } else {
            float fClamp01 = Utilities.clamp01(f2 / 0.2f);
            float fClamp012 = Utilities.clamp01(f2 / 0.17f);
            float f4 = this.menuAnimFrom;
            this.menuW = (1.0f - ((fClamp012 * fClamp012) * (3.0f - (fClamp012 * 2.0f)))) * f4;
            this.menuH = f4 * (1.0f - ((fClamp01 * fClamp01) * (3.0f - (fClamp01 * 2.0f))));
        }
        float fMax = Math.max(0.004f, this.frameK * 0.016667f);
        float f5 = this.menuH;
        this.menuHVel = (f5 - this.lastMenuH) / fMax;
        this.lastMenuH = f5;
        float fMax2 = Math.max(0.0f, Math.max(this.menuW, f5));
        this.menu = fMax2;
        if (this.prevMenu > 0.001f && fMax2 <= 0.001f) {
            this.wobbleStart = jCurrentAnimationTimeMillis;
        }
        this.prevMenu = fMax2;
    }

    private float chipWobble() {
        if (this.wobbleStart == 0) {
            return 0.0f;
        }
        float fCurrentAnimationTimeMillis = (AnimationUtils.currentAnimationTimeMillis() - this.wobbleStart) / 1000.0f;
        if (fCurrentAnimationTimeMillis > 0.45f) {
            return 0.0f;
        }
        return ((float) Math.exp((-fCurrentAnimationTimeMillis) / 0.11f)) * 0.07f * ((float) Math.sin((((double) fCurrentAnimationTimeMillis) * 6.283185307179586d) / 0.17000000178813934d));
    }

    private void drawMenu(Canvas canvas, boolean z) {
        float f;
        float f2;
        float fSmooth;
        int i;
        int i2;
        if (this.menu <= 0.001f) {
            return;
        }
        float fDp = AndroidUtilities.dp(222.0f);
        float fDp2 = AndroidUtilities.dp(46.0f);
        float fDp3 = AndroidUtilities.dp(54.0f);
        AndroidUtilities.dp(8.0f);
        float f3 = this.timerOnly ? fDp2 + fDp2 : fDp2 + fDp3 + fDp2;
        float f4 = this.sheet;
        RectF rectF = this.chipRect;
        float fDp4 = f4 > 0.5f ? (rectF.bottom + AndroidUtilities.dp(6.0f)) - f3 : rectF.top - AndroidUtilities.dp(6.0f);
        float width = (getWidth() - fDp) / 2.0f;
        this.menuBounds.set(width, fDp4, fDp + width, f3 + fDp4);
        float f5 = this.menuW;
        float f6 = this.menuH;
        float fClamp01 = Utilities.clamp01(this.menu);
        this.morphRect.set(AndroidUtilities.lerp(this.chipRect.left, this.menuBounds.left, f5), AndroidUtilities.lerp(this.chipRect.top, this.menuBounds.top, f6), AndroidUtilities.lerp(this.chipRect.right, this.menuBounds.right, f5), AndroidUtilities.lerp(this.chipRect.bottom, this.menuBounds.bottom, f6));
        float fMin = Math.min(this.morphRect.height() / 2.0f, Math.min(this.morphRect.width() / 2.0f, AndroidUtilities.lerp(this.chipRect.height() / 2.0f, AndroidUtilities.dp(22.0f), Utilities.clamp01(f6))));
        float fMax = Math.max(-0.25f, Math.min(1.0f, this.menuHVel / 9.0f)) * AndroidUtilities.dp(5.0f);
        RectF rectF2 = this.morphRect;
        float f7 = rectF2.left;
        float f8 = rectF2.top;
        float f9 = rectF2.right;
        float f10 = rectF2.bottom;
        float fCenterX = rectF2.centerX();
        this.menuPath.rewind();
        float f11 = f7 + fMin;
        this.menuPath.moveTo(f11, f8);
        float f12 = f9 - fMin;
        this.menuPath.lineTo(f12, f8);
        float f13 = 1.0f;
        float f14 = f8 + fMin;
        this.menuPath.quadTo(f9, f8, f9, f14);
        float f15 = f10 - fMin;
        this.menuPath.lineTo(f9, f15);
        this.menuPath.quadTo(f9, f10, f12, f10);
        float f16 = f10 + fMax;
        this.menuPath.cubicTo(AndroidUtilities.lerp(f12, fCenterX, 0.55f), f16, AndroidUtilities.lerp(f11, fCenterX, 0.55f), f16, f11, f10);
        this.menuPath.quadTo(f7, f10, f7, f15);
        this.menuPath.lineTo(f7, f14);
        this.menuPath.quadTo(f7, f8, f11, f8);
        this.menuPath.close();
        this.rect.set(f7, f8, f9, f10 + Math.max(0.0f, fMax));
        Scene scene = this.scene;
        int i3 = 1;
        boolean z2 = scene != null && scene.light;
        Canvas canvas2 = canvas;
        drawGlassPath(canvas2, this.menuPath, this.rect, z2, 1.0f);
        boolean z3 = z2;
        canvas2.save();
        canvas2.clipPath(this.menuPath);
        float f17 = fClamp01 / 0.3f;
        float fClamp012 = 1.0f - Utilities.clamp01(f17);
        float f18 = 0.15f;
        if (fClamp012 > 0.004f) {
            canvas2.saveLayerAlpha(this.rect, (int) (fClamp012 * 255.0f));
            float fClamp013 = 1.0f - (Utilities.clamp01(f17) * 0.15f);
            canvas2.scale(fClamp013, fClamp013, this.chipRect.centerX(), this.chipRect.centerY());
            this.chipSkipGlass = true;
            drawChip(canvas2, getWidth(), System.currentTimeMillis());
            this.chipSkipGlass = false;
            canvas2.restore();
        }
        int i4 = z3 ? -15065823 : -1;
        int i5 = z3 ? -1726341855 : -1493172225;
        float fCenterX2 = this.morphRect.centerX() - this.menuBounds.centerX();
        float fRound = this.morphRect.top - this.menuBounds.top;
        if (Math.abs(this.menuHVel) < 0.6f) {
            fCenterX2 = Math.round(fCenterX2);
            fRound = Math.round(fRound);
        }
        canvas2.save();
        canvas2.translate(fCenterX2, fRound);
        this.text.setSubpixelText(true);
        this.text.setLinearText(false);
        String[] strArrMenuTitles = menuTitles(this.menuTimerOn);
        String[] strArrMenuSubtitles = menuSubtitles(this.menuTimerOn);
        int i6 = 0;
        while (i6 < 3) {
            if (i6 == i3 && this.timerOnly) {
                this.menuRows[i6].setEmpty();
                i = i6;
                f = fDp4;
            } else {
                float f19 = strArrMenuSubtitles[i6] != null ? fDp3 : fDp2;
                RectF rectF3 = this.menuRows[i6];
                RectF rectF4 = this.menuBounds;
                f = fDp4 + f19;
                rectF3.set(rectF4.left, fDp4, rectF4.right, f);
                if (this.menuTarget > 0.5f) {
                    fSmooth = smooth(f18, 0.6f, fClamp01);
                    f2 = f13;
                } else {
                    f2 = f13;
                    fSmooth = smooth(0.6f, f2, fClamp01);
                }
                if (fSmooth <= 0.004f) {
                    i = i6;
                    f13 = f2;
                } else {
                    drawRipple(canvas2, i6, this.menuRows[i6], z3);
                    canvas2.save();
                    float f20 = fDp4 + (f19 / 2.0f);
                    if (i6 == 2) {
                        i = i6;
                        i2 = i4;
                        f13 = 1.0f;
                        icon(canvas2, this.icPremiumMain, this.menuBounds.left + AndroidUtilities.dp(26.0f), f20, AndroidUtilities.dp(20.0f), i2, fSmooth);
                        canvas2 = canvas;
                    } else {
                        i = i6;
                        i2 = i4;
                        f13 = 1.0f;
                        if (i == 0) {
                            canvas2 = canvas;
                            icon(canvas2, this.icRetry, AndroidUtilities.dp(26.0f) + this.menuBounds.left, f20, AndroidUtilities.dp(20.0f), i2, fSmooth);
                        } else {
                            canvas2 = canvas;
                            drawBitmapIcon(canvas2, clockIcon(this.menuTimerOn), AndroidUtilities.dp(26.0f) + this.menuBounds.left, f20, i2, fSmooth);
                            i2 = i2;
                        }
                    }
                    this.text.setTextSize(AndroidUtilities.dp(15.0f));
                    this.text.setColor(i2);
                    this.text.setAlpha((int) (fSmooth * 255.0f));
                    canvas2.drawText(strArrMenuTitles[i], this.menuBounds.left + AndroidUtilities.dp(52.0f), strArrMenuSubtitles[i] != null ? f20 - AndroidUtilities.dp(2.0f) : AndroidUtilities.dp(5.0f) + f20, this.text);
                    if (strArrMenuSubtitles[i] != null) {
                        this.text.setTextSize(AndroidUtilities.dp(12.0f));
                        this.text.setColor(i5);
                        this.text.setAlpha((int) (Color.alpha(i5) * fSmooth));
                        canvas2.drawText(strArrMenuSubtitles[i], this.menuBounds.left + AndroidUtilities.dp(52.0f), f20 + AndroidUtilities.dp(14.0f), this.text);
                    }
                    canvas2.restore();
                    i6 = i + 1;
                    i4 = i2;
                    fDp4 = f;
                    i3 = 1;
                    f18 = 0.15f;
                }
            }
            i2 = i4;
            i6 = i + 1;
            i4 = i2;
            fDp4 = f;
            i3 = 1;
            f18 = 0.15f;
        }
        canvas2.restore();
        canvas2.restore();
    }

    private Bitmap clockIcon(boolean z) {
        Bitmap bitmap = z ? this.clockX : this.clockPlain;
        if (bitmap != null) {
            return bitmap;
        }
        int iRound = Math.round(AndroidUtilities.dp(22.4f));
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iRound, iRound, Bitmap.Config.ALPHA_8);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        float f = iRound / 24.0f;
        canvas.scale(f, f);
        Paint paint = new Paint(1);
        Paint.Style style = Paint.Style.STROKE;
        paint.setStyle(style);
        paint.setStrokeWidth(1.66f);
        Paint.Cap cap = Paint.Cap.ROUND;
        paint.setStrokeCap(cap);
        paint.setStrokeJoin(Paint.Join.ROUND);
        paint.setColor(-16777216);
        canvas.drawCircle(11.0f, 11.0f, 8.0f, paint);
        canvas.drawLine(11.0f, 11.0f, 11.0f, 6.6f, paint);
        canvas.drawLine(11.0f, 11.0f, 7.8f, 11.0f, paint);
        if (z) {
            Paint paint2 = new Paint(1);
            paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
            canvas.drawCircle(18.2f, 18.2f, 5.7f, paint2);
            Paint paint3 = new Paint(1);
            paint3.setColor(-16777216);
            canvas.drawCircle(18.2f, 18.2f, 4.4f, paint3);
            paint2.setStyle(style);
            paint2.setStrokeWidth(1.4f);
            paint2.setStrokeCap(cap);
            canvas.drawLine(16.6f, 16.6f, 19.8f, 19.8f, paint2);
            canvas.drawLine(19.8f, 16.6f, 16.6f, 19.8f, paint2);
            this.clockX = bitmapCreateBitmap;
            return bitmapCreateBitmap;
        }
        this.clockPlain = bitmapCreateBitmap;
        return bitmapCreateBitmap;
    }

    private void drawBitmapIcon(Canvas canvas, Bitmap bitmap, float f, float f2, int i, float f3) {
        this.iconPaint.setColor(i);
        this.iconPaint.setAlpha((int) (Color.alpha(i) * f3));
        canvas.drawBitmap(bitmap, f - (bitmap.getWidth() / 2.0f), f2 - (bitmap.getHeight() / 2.0f), this.iconPaint);
    }

    private void drawTimer(Canvas canvas, float f, float f2, int i, float f3, float f4) {
        float f5;
        float fDp = f2 - AndroidUtilities.dp(10.0f);
        this.timerPaint.setStyle(Paint.Style.STROKE);
        this.timerPaint.setStrokeCap(Paint.Cap.ROUND);
        this.timerPaint.setStrokeWidth(AndroidUtilities.dp(2.0f));
        this.timerPaint.setColor(i);
        this.timerPaint.setAlpha((int) (Color.alpha(i) * f3));
        float fDp2 = (f - AndroidUtilities.dp(10.0f)) + AndroidUtilities.dp(10.0f);
        float fDp3 = AndroidUtilities.dp(11.0f) + fDp;
        float fDp4 = AndroidUtilities.dp(7.25f);
        float f6 = 0.0f;
        float f7 = 1.0f;
        if (f4 >= 0.0f) {
            float fClamp01 = 1.0f - Utilities.clamp01(f4 / 0.42f);
            float f8 = 1.0f - ((fClamp01 * fClamp01) * fClamp01);
            if (f4 < 0.6f) {
                float f9 = 1.0f - (f4 / 0.6f);
                f5 = (1.0f - ((f9 * f9) * f9)) * 364.0f;
            } else {
                float fClamp012 = Utilities.clamp01((f4 - 0.6f) / 0.12f);
                f5 = 364.0f - (((4.0f * fClamp012) * fClamp012) * (3.0f - (fClamp012 * 2.0f)));
            }
            f7 = f8;
            f6 = f5;
        }
        float f10 = f7;
        float f11 = fDp3 - fDp4;
        this.timerArc.set(fDp2 - fDp4, f11, fDp2 + fDp4, fDp4 + fDp3);
        canvas.drawArc(this.timerArc, -82.0f, f10 * 344.0f, false, this.timerPaint);
        canvas.drawLine(fDp2, f11, fDp2, fDp + AndroidUtilities.dp(2.2f), this.timerPaint);
        double radians = Math.toRadians(f6 - 90.0f);
        canvas.drawLine(fDp2, fDp3, fDp2 + (((float) Math.cos(radians)) * AndroidUtilities.dpf2(3.8f)), fDp3 + (((float) Math.sin(radians)) * AndroidUtilities.dpf2(3.8f)), this.timerPaint);
        this.timerPaint.setStyle(Paint.Style.FILL);
        canvas.drawCircle(fDp2, fDp3, AndroidUtilities.dpf2(1.2f), this.timerPaint);
    }

    private void hideToast(boolean z) {
        if (this.shownToastText == null) {
            this.toastUntil = 0L;
            return;
        }
        this.toastUntil = 0L;
        if (this.toastShown) {
            this.toastShown = false;
            this.toastPhaseStart = AnimationUtils.currentAnimationTimeMillis();
        }
        this.toastFastHide = z;
        invalidate();
    }

    private RLottieDrawable toastStar() {
        if (this.toastStar == null) {
            RLottieDrawable rLottieDrawable = new RLottieDrawable(C2807R.raw.star_premium_2, AndroidUtilities.dp(27.0f), AndroidUtilities.dp(27.0f));
            this.toastStar = rLottieDrawable;
            rLottieDrawable.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
            this.toastStar.setAutoRepeat(0);
            this.toastStar.setMasterParent(this);
            this.toastStar.setAllowDecodeSingleFrame(true);
        }
        return this.toastStar;
    }

    private RLottieDrawable toastCheck() {
        if (this.toastCheck == null) {
            RLottieDrawable rLottieDrawable = new RLottieDrawable(C2807R.raw.contact_check, AndroidUtilities.dp(28.0f), AndroidUtilities.dp(28.0f));
            this.toastCheck = rLottieDrawable;
            rLottieDrawable.setColorFilter(new ColorMatrixColorFilter(new float[]{0.0f, 0.0f, 0.0f, 0.0f, 255.0f, 0.0f, 0.0f, 0.0f, 0.0f, 255.0f, 0.0f, 0.0f, 0.0f, 0.0f, 255.0f, 0.2126f, 0.7152f, 0.0722f, 1.0f, -255.0f}));
            this.toastCheck.setAutoRepeat(0);
            this.toastCheck.setMasterParent(this);
            this.toastCheck.setAllowDecodeSingleFrame(true);
        }
        return this.toastCheck;
    }

    private RLottieDrawable toastSave() {
        if (this.toastSave == null) {
            RLottieDrawable rLottieDrawable = new RLottieDrawable(C2807R.raw.ic_save_to_gallery, AndroidUtilities.dp(28.0f), AndroidUtilities.dp(28.0f));
            this.toastSave = rLottieDrawable;
            rLottieDrawable.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
            this.toastSave.setAutoRepeat(0);
            this.toastSave.setMasterParent(this);
            this.toastSave.setAllowDecodeSingleFrame(true);
        }
        return this.toastSave;
    }

    private boolean toastSavePlaying() {
        RLottieDrawable rLottieDrawable = this.toastSave;
        return rLottieDrawable != null && this.shownToastIcon == C2807R.drawable.msg_download && rLottieDrawable.getCurrentFrame() < this.toastSave.getFramesCount() - 1;
    }

    private boolean toastCheckPlaying() {
        RLottieDrawable rLottieDrawable = this.toastCheck;
        return rLottieDrawable != null && rLottieDrawable.getCurrentFrame() < this.toastCheck.getFramesCount() - 1;
    }

    private boolean checkToast() {
        String str;
        return (this.shownToastIcon != C2807R.drawable.msg_retry || (str = this.shownToastText) == null || isExpiry(str)) ? false : true;
    }

    private boolean toastStarPlaying() {
        RLottieDrawable rLottieDrawable = this.toastStar;
        return rLottieDrawable != null && rLottieDrawable.getCurrentFrame() < this.toastStar.getFramesCount() - 1;
    }

    private static float smooth(float f, float f2, float f3) {
        float fClamp01 = Utilities.clamp01((f3 - f) / (f2 - f));
        return fClamp01 * fClamp01 * (3.0f - (fClamp01 * 2.0f));
    }

    private void drawToast(Canvas canvas, boolean z, int i, int i2, long j) {
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        if (this.toastFreezeAt == 0 && this.toastShown && this.shownToastText != null && this.sheetTarget == 0.0f && this.sheet > 0.001f && !this.toastRect.isEmpty()) {
            this.toastFreezeAt = jCurrentAnimationTimeMillis;
            this.toastFrozenCy = this.toastRect.centerY();
            this.toastText = null;
            this.toastUntil = 0L;
        }
        if (this.toastFreezeAt != 0) {
            float f = (jCurrentAnimationTimeMillis - r6) / 140.0f;
            if (f >= 1.0f || this.shownToastText == null) {
                this.toastFreezeAt = 0L;
                this.toastShown = false;
                this.shownToastText = null;
                return;
            }
            invalidate();
            float f2 = i;
            canvas.saveLayerAlpha(0.0f, 0.0f, f2, i2, (int) ((1.0f - f) * 255.0f));
            float f3 = 1.0f - (f * 0.08f);
            canvas.scale(f3, f3, f2 / 2.0f, this.toastFrozenCy);
            this.toastFrozen = true;
            drawToastInner(canvas, z, i, i2, j);
            this.toastFrozen = false;
            canvas.restore();
            return;
        }
        drawToastInner(canvas, z, i, i2, j);
    }

    private void drawToastInner(Canvas canvas, boolean z, int i, int i2, long j) {
        float f;
        float f2;
        float fCloseCurve;
        float f3;
        float fDp;
        float f4;
        float fMin;
        float fLerp;
        float fBarCY;
        int iDp;
        Canvas canvas2;
        String str;
        boolean z2 = this.toastFrozen || (this.toastText != null && j < this.toastUntil);
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        if (!this.toastFrozen && z2 && this.toastShown && (str = this.shownToastText) != null && !str.equals(this.toastText)) {
            this.toastShown = false;
            this.toastPhaseStart = jCurrentAnimationTimeMillis;
        }
        if (z2 && !this.toastShown) {
            if (this.shownToastText == null || jCurrentAnimationTimeMillis - this.toastPhaseStart >= 360) {
                this.toastShown = true;
                this.toastPhaseStart = jCurrentAnimationTimeMillis;
                this.shownToastText = this.toastText;
                int i3 = this.toastIcon;
                this.shownToastIcon = i3;
                this.shownToastAction = this.toastAction;
                this.toastFastHide = false;
                this.toastOpenedAt = jCurrentAnimationTimeMillis;
                if (i3 == 0) {
                    RLottieDrawable rLottieDrawable = toastStar();
                    rLottieDrawable.setCurrentFrame(0, false);
                    rLottieDrawable.start();
                } else if (checkToast()) {
                    RLottieDrawable rLottieDrawable2 = toastCheck();
                    rLottieDrawable2.setCurrentFrame(0, false);
                    rLottieDrawable2.start();
                } else if (this.shownToastIcon == C2807R.drawable.msg_download) {
                    RLottieDrawable rLottieDrawable3 = toastSave();
                    rLottieDrawable3.setCurrentFrame(0, false);
                    rLottieDrawable3.start();
                }
            }
        } else if (!z2 && this.toastShown) {
            this.toastShown = false;
            this.toastPhaseStart = jCurrentAnimationTimeMillis;
        }
        String str2 = this.shownToastText;
        if (str2 == null) {
            return;
        }
        float f5 = (jCurrentAnimationTimeMillis - this.toastPhaseStart) / 1000.0f;
        if (this.toastShown) {
            boolean z3 = str2.indexOf(10) >= 0 || toastTextWidth(this.shownToastText) + ((float) AndroidUtilities.dp(66.0f)) >= ((float) (i - AndroidUtilities.dp(32.0f)));
            f = 32.0f;
            if (f5 >= 0.5f) {
                fCloseCurve = 1.0f;
                f2 = 0.14f;
            } else {
                f2 = 0.14f;
                fCloseCurve = (float) springStep(f5, z3 ? 0.75d : 0.6d, 0.42d);
            }
        } else {
            f = 32.0f;
            f2 = 0.14f;
            if (this.toastFastHide) {
                if (f5 >= 0.14f) {
                    this.shownToastText = null;
                    this.toastFastHide = false;
                    return;
                }
                fCloseCurve = -1.0f;
            } else {
                if (f5 >= 0.36f) {
                    this.shownToastText = null;
                    return;
                }
                fCloseCurve = 1.0f - closeCurve(f5 / 0.36f);
            }
        }
        if (this.toastShown || fCloseCurve > 0.0f) {
            invalidate();
        }
        boolean z4 = this.shownToastText.indexOf(10) >= 0;
        this.text.setTextSize(AndroidUtilities.dp(z4 ? 14.0f : 15.0f));
        float f6 = toastTextWidth(this.shownToastText);
        if (this.shownToastAction != null) {
            f3 = 14.0f;
            fDp = toastActionWidth() + AndroidUtilities.dp(16.0f);
        } else {
            f3 = 14.0f;
            fDp = 0.0f;
        }
        float fMin2 = Math.min(i - AndroidUtilities.dp(f), AndroidUtilities.dp(66.0f) + f6 + fDp);
        float fDp2 = AndroidUtilities.dp(z4 ? 56.0f : 44.0f);
        float fDp3 = (fMin2 - AndroidUtilities.dp(66.0f)) - fDp;
        this.toastTextSize = this.text.getTextSize() * ((f6 <= fDp3 || f6 <= 0.0f) ? 1.0f : Math.max(0.8f, fDp3 / f6));
        boolean z5 = fCloseCurve < 0.0f;
        float fClamp01 = z5 ? Utilities.clamp01(f5 / f2) : 0.0f;
        float fMax = Math.max(fCloseCurve, 0.0f);
        if (z5) {
            f4 = 0.8f;
            fMin = fDp2;
        } else {
            f4 = 0.8f;
            fMin = (Math.min(1.0f, fMax / 0.55f) + Math.max(0.0f, fMax - 1.0f)) * fDp2;
        }
        if (z5) {
            fLerp = AndroidUtilities.lerp(fMin2, fDp2, fClamp01 * fClamp01);
        } else {
            float f7 = fMin2 - fMin;
            if (fMax <= 1.0f) {
                fMax = smooth(0.15f, 1.0f, fMax);
            }
            fLerp = fMin + (f7 * fMax);
        }
        float f8 = fLerp;
        float f9 = z5 ? 1.0f - ((fClamp01 * fClamp01) * fClamp01) : 1.0f;
        if (fMin < 0.5f) {
            return;
        }
        float f10 = i / 2.0f;
        if (this.sheet > 0.001f) {
            fBarCY = sheetBottom() - (sheetH() * Utilities.clamp01(this.sheet));
            iDp = AndroidUtilities.dp(12.0f);
        } else {
            fBarCY = barCY() - AndroidUtilities.dp(20.0f);
            iDp = AndroidUtilities.dp(f3);
        }
        float f11 = this.toastFrozen ? this.toastFrozenCy : (fBarCY - iDp) - (fDp2 / 2.0f);
        float f12 = f8 / 2.0f;
        float f13 = fMin / 2.0f;
        this.toastRect.set(f10 - f12, f11 - f13, f10 + f12, f11 + f13);
        float fMin3 = Math.min(f13, AndroidUtilities.dp(24.0f));
        this.path.rewind();
        this.path.addRoundRect(this.toastRect, fMin3, fMin3, Path.Direction.CW);
        this.glassFill = 352321535;
        this.glassSheet = true;
        float f14 = fCloseCurve;
        float f15 = f11;
        drawGlass(canvas, this.toastRect, fMin3, false, f9);
        this.glassFill = 0;
        this.glassSheet = false;
        float fSmooth = z5 ? 1.0f : smooth(0.2f, 0.95f, f14);
        float fClamp012 = z5 ? 1.0f - Utilities.clamp01(f5 / 0.05f) : smooth(0.08f, 0.5f, f14);
        if (fClamp012 <= 0.004f) {
            return;
        }
        boolean z6 = this.toastShown;
        float f16 = z6 ? (jCurrentAnimationTimeMillis - this.toastOpenedAt) / 1000.0f : -1.0f;
        float fClamp013 = z6 ? Utilities.clamp01((f5 - 0.15f) / 0.23f) : 1.0f;
        float f17 = fClamp012 * fClamp013 * fClamp013 * (3.0f - (fClamp013 * 2.0f));
        if (this.toastShown && fClamp013 < 1.0f) {
            invalidate();
        }
        int i4 = this.shownToastIcon;
        boolean z7 = i4 == C2807R.drawable.msg_recent || (i4 == C2807R.drawable.msg_retry && isExpiry(this.shownToastText));
        float fMax2 = this.toastShown ? ((1.0f - fSmooth) * 0.35f) + 1.0f : Math.max(0.05f, Math.min(1.0f, f8 / fMin2));
        canvas.save();
        canvas.clipPath(this.path);
        canvas.scale(fMax2, fMax2, f10, f15);
        if (blurAllowed() && blurNow() && canvas.isHardwareAccelerated()) {
            if (this.toastContent == null) {
                this.toastContent = QrRender.createNode("toastContent");
            }
            boolean z8 = (this.shownToastIcon == 0 && toastStarPlaying()) || (checkToast() && toastCheckPlaying()) || toastSavePlaying();
            boolean z9 = (z7 && f16 >= 0.0f && f16 < f4) || z8;
            if (z8) {
                invalidate();
            }
            StringBuilder sb = new StringBuilder();
            sb.append(this.shownToastText);
            sb.append(this.shownToastIcon);
            int i5 = (int) fMin2;
            sb.append(i5);
            sb.append((int) this.toastTextSize);
            String string = sb.toString();
            if (!z9 && string.equals(this.recordedFor) && QrRender.hasDisplayList(this.toastContent)) {
                canvas2 = canvas;
            } else {
                this.recordedFor = string;
                canvas2 = canvas;
                drawToastContent(QrRender.beginRecording(this.toastContent, i5, (int) fDp2), 0.0f, fDp2 / 2.0f, z7, f16);
                QrRender.endRecording(this.toastContent);
            }
            float fDp4 = AndroidUtilities.dp(5.0f) * (1.0f - fSmooth);
            if (Math.abs(fDp4 - this.toastBlurR) > 0.25f) {
                this.toastBlurR = fDp4;
                Object obj = this.toastContent;
                if (fDp4 <= 0.3f) {
                    fDp4 = 0.0f;
                }
                QrRender.setBlur(obj, fDp4, Shader.TileMode.CLAMP);
            }
            QrRender.setAlpha(this.toastContent, fClamp012);
            float f18 = fDp2 / 2.0f;
            canvas2.translate(f10 - (fMin2 / 2.0f), f15 - f18);
            QrRender.draw(canvas2, this.toastContent);
            drawToastAction(canvas2, 0.0f, f18, fMin2, f17);
        } else {
            canvas.saveLayerAlpha(this.toastRect, (int) (fClamp012 * 255.0f));
            float f19 = f10 - (fMin2 / 2.0f);
            drawToastContent(canvas, f19, f15, z7, f16);
            canvas.restore();
            drawToastAction(canvas, f19, f15, fMin2, f17);
        }
        canvas.restore();
    }

    private void drawToastContent(Canvas canvas, float f, float f2, boolean z, float f3) {
        if (this.shownToastIcon == 0) {
            RLottieDrawable rLottieDrawable = toastStar();
            int iDp = AndroidUtilities.dp(27.0f);
            float f4 = iDp / 2.0f;
            int i = (int) (f2 - f4);
            rLottieDrawable.setBounds((int) ((AndroidUtilities.dp(26.0f) + f) - f4), i, ((int) ((AndroidUtilities.dp(26.0f) + f) - f4)) + iDp, iDp + i);
            rLottieDrawable.draw(canvas);
        } else if (z) {
            drawTimer(canvas, f + AndroidUtilities.dp(26.0f), f2, -1, 1.0f, f3);
        } else if (checkToast()) {
            RLottieDrawable rLottieDrawable2 = toastCheck();
            int iDp2 = AndroidUtilities.dp(28.0f);
            float f5 = iDp2 / 2.0f;
            int i2 = (int) (f2 - f5);
            rLottieDrawable2.setBounds((int) ((AndroidUtilities.dp(26.0f) + f) - f5), i2, ((int) ((AndroidUtilities.dp(26.0f) + f) - f5)) + iDp2, iDp2 + i2);
            rLottieDrawable2.draw(canvas);
        } else {
            int i3 = this.shownToastIcon;
            if (i3 == C2807R.drawable.msg_download) {
                RLottieDrawable rLottieDrawable3 = toastSave();
                int iDp3 = AndroidUtilities.dp(28.0f);
                float f6 = iDp3 / 2.0f;
                int i4 = (int) (f2 - f6);
                rLottieDrawable3.setBounds((int) ((AndroidUtilities.dp(26.0f) + f) - f6), i4, ((int) ((AndroidUtilities.dp(26.0f) + f) - f6)) + iDp3, iDp3 + i4);
                rLottieDrawable3.draw(canvas);
            } else {
                icon(canvas, i3 == C2807R.drawable.msg_retry ? this.icRetry : i3 == C2807R.drawable.msg_copy ? this.icCopy : this.icClock, AndroidUtilities.dp(26.0f) + f, f2, AndroidUtilities.dp(20.0f), -1, 1.0f);
            }
        }
        this.text.setColor(-1);
        TextPaint textPaint = this.text;
        float fDp = this.toastTextSize;
        if (fDp <= 0.0f) {
            fDp = AndroidUtilities.dp(15.0f);
        }
        textPaint.setTextSize(fDp);
        drawToastText(canvas, this.shownToastText, AndroidUtilities.dp(48.0f) + f, AndroidUtilities.dp(5.0f) + f2);
    }

    private void drawToastAction(Canvas canvas, float f, float f2, float f3, float f4) {
        if (this.shownToastAction == null || f4 <= 0.004f) {
            return;
        }
        this.toastMedium.setTextSize(AndroidUtilities.dp(15.0f));
        this.toastMedium.setColor(-1);
        this.toastMedium.setAlpha((int) (f4 * 255.0f));
        canvas.drawText(this.shownToastAction, ((f + f3) - AndroidUtilities.dp(16.0f)) - this.toastMedium.measureText(this.shownToastAction), f2 + AndroidUtilities.dp(5.0f), this.toastMedium);
        this.toastMedium.setAlpha(255);
    }

    private float toastActionWidth() {
        this.toastMedium.setTextSize(AndroidUtilities.dp(15.0f));
        return this.toastMedium.measureText(this.shownToastAction);
    }

    private boolean hitToastAction(float f, float f2) {
        if (this.shownToastAction == null || !this.toastShown || this.toastRect.isEmpty()) {
            return false;
        }
        this.toastActionRect.set((this.toastRect.right - toastActionWidth()) - AndroidUtilities.dp(28.0f), this.toastRect.top - AndroidUtilities.dp(6.0f), this.toastRect.right + AndroidUtilities.dp(6.0f), this.toastRect.bottom + AndroidUtilities.dp(6.0f));
        return this.toastActionRect.contains(f, f2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$13() {
        int iEmojiIndexAt;
        if (this.sheet < 0.5f || this.tab != 1 || this.dragging || (iEmojiIndexAt = emojiIndexAt(this.downX, this.downY)) < 0) {
            return;
        }
        ArrayList<String> arrayList = this.picked;
        String[] strArr = EMOJI_SETS;
        if (arrayList.contains(strArr[iEmojiIndexAt])) {
            this.longPressed = true;
            removeEmoji(strArr[iEmojiIndexAt]);
        }
    }

    private int emojiIndexAt(float f, float f2) {
        int iDp;
        float width = (getWidth() - AndroidUtilities.dp(28.0f)) / 6.0f;
        float fDp = (this.sheetScroll + f2) - (this.sheetRect.top + AndroidUtilities.dp(16.0f));
        if (fDp < 0.0f || f < AndroidUtilities.dp(14.0f) || f2 < this.sheetRect.top + AndroidUtilities.dp(8.0f) || (iDp = (((int) (fDp / width)) * 6) + ((int) ((f - AndroidUtilities.dp(14.0f)) / width))) < 0 || iDp >= EMOJI_SETS.length) {
            return -1;
        }
        return iDp;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        float f;
        VelocityTracker velocityTracker;
        RippleDrawable rippleDrawable;
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        if (motionEvent.getActionMasked() == 0) {
            this.toastActionDown = hitToastAction(x, y);
        }
        if (this.toastActionDown) {
            if (motionEvent.getActionMasked() == 1) {
                this.toastActionDown = false;
                if (hitToastAction(x, y)) {
                    this.toastUntil = 0L;
                    invalidate();
                    Delegate delegate = this.delegate;
                    if (delegate != null) {
                        delegate.onPremiumSubscribe();
                    }
                }
            } else if (motionEvent.getActionMasked() == 3) {
                this.toastActionDown = false;
            }
            return true;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            boolean zIsFinished = this.scroller.isFinished();
            this.caughtFling = !zIsFinished;
            if (!zIsFinished) {
                this.scroller.forceFinished(true);
                invalidate();
            }
            this.downX = x;
            this.downY = y;
            this.downScroll = this.sheetScroll;
            this.dragging = false;
            this.longPressed = false;
            VelocityTracker velocityTracker2 = this.scrollVelocity;
            if (velocityTracker2 == null) {
                this.scrollVelocity = VelocityTracker.obtain();
            } else {
                velocityTracker2.clear();
            }
            this.scrollVelocity.addMovement(motionEvent);
            this.panning = this.sheet < 0.5f && this.menu < 0.5f && isBackdropAt(x, y);
            if (this.sheet <= 0.5f || this.tab != 2) {
                z = true;
                f = 8.0f;
            } else {
                int iGiftCols = giftCols();
                float fDp = x - (this.sheetRect.left + AndroidUtilities.dp(4.0f));
                float fGridPad = ((this.sheetScroll + y) - (this.sheetRect.top + gridPad())) - 0.0f;
                z = true;
                f = 8.0f;
                int iWidth = (fDp < 0.0f || fGridPad < 0.0f || giftsEmpty()) ? -1 : (((int) (fGridPad / ((this.sheetRect.width() - AndroidUtilities.dp(8.0f)) / 3.0f))) * iGiftCols) + ((int) (fDp / ((this.sheetRect.width() - AndroidUtilities.dp(8.0f)) / iGiftCols)));
                if (iWidth >= 0 && iWidth < giftCount()) {
                    this.pressGift = iWidth;
                    this.pressDownAt = AnimationUtils.currentAnimationTimeMillis();
                }
            }
            if (this.sheet > 0.5f && this.tab == 0) {
                RectF rectF = this.sheetRect;
                if (y > rectF.top) {
                    float fDp2 = x - (rectF.left + AndroidUtilities.dp(4.0f));
                    float fGridPad2 = (this.sheetScroll + y) - (this.sheetRect.top + gridPad());
                    float fWidth = (this.sheetRect.width() - AndroidUtilities.dp(f)) / 6.0f;
                    int i = (fDp2 < 0.0f || fGridPad2 < 0.0f || fDp2 >= 6.0f * fWidth) ? -1 : (((int) (fGridPad2 / fWidth)) * 6) + ((int) (fDp2 / fWidth));
                    if (i >= 0 && i < Backdrops.CENTER.length) {
                        this.pressSwatch = i;
                        this.swatchDownAt = AnimationUtils.currentAnimationTimeMillis();
                        invalidate();
                    }
                }
            }
            this.panMoved = false;
            if (this.panning) {
                this.gliding = false;
                this.springing = false;
                this.panBaseX = this.panX;
                this.panBaseY = this.panY;
                this.stretchBaseX = this.stretchX;
                this.stretchBaseY = this.stretchY;
                VelocityTracker velocityTracker3 = this.velocity;
                if (velocityTracker3 == null) {
                    this.velocity = VelocityTracker.obtain();
                } else {
                    velocityTracker3.clear();
                }
                this.velocity.addMovement(motionEvent);
            }
            removeCallbacks(this.longPress);
            this.menuPressed = -1;
            if (this.menu > 0.5f) {
                for (int i2 = 0; i2 < 3; i2++) {
                    if (this.menuRows[i2].contains(x, y)) {
                        this.menuPressed = i2;
                    }
                }
            }
            pressRipple(x, y);
            return z;
        }
        if (actionMasked == 1) {
            removeCallbacks(this.longPress);
            this.menuPressed = -1;
            releaseRipple();
            releaseSwatch();
            if (this.panning) {
                this.panning = false;
                if (this.panMoved) {
                    this.velocity.addMovement(motionEvent);
                    this.velocity.computeCurrentVelocity(1000);
                    float xVelocity = this.velocity.getXVelocity();
                    float yVelocity = this.velocity.getYVelocity();
                    float fHypot = (float) Math.hypot(xVelocity, yVelocity);
                    float fDp3 = AndroidUtilities.dp(1.0f) * 2600.0f;
                    if (fHypot > fDp3) {
                        float f2 = fDp3 / fHypot;
                        xVelocity *= f2;
                        yVelocity *= f2;
                    }
                    this.glideFromX = this.panX;
                    this.glideFromY = this.panY;
                    this.glideVX = xVelocity;
                    this.glideVY = yVelocity;
                    this.glideStart = AnimationUtils.currentAnimationTimeMillis();
                    this.gliding = true;
                    releaseStretch();
                    return true;
                }
                releaseStretch();
            }
            if (this.dragging && (velocityTracker = this.scrollVelocity) != null) {
                velocityTracker.addMovement(motionEvent);
                this.scrollVelocity.computeCurrentVelocity(1000, this.vc.getScaledMaximumFlingVelocity());
                float yVelocity2 = this.scrollVelocity.getYVelocity();
                int iMaxScroll = (int) maxScroll();
                if (Math.abs(yVelocity2) > this.vc.getScaledMinimumFlingVelocity() && iMaxScroll > 0) {
                    this.scroller.fling(0, Math.round(this.sheetScroll), 0, Math.round(-yVelocity2), 0, 0, 0, iMaxScroll);
                    invalidate();
                }
            }
            if (!this.dragging && !this.caughtFling && Math.hypot(x - this.downX, y - this.downY) < AndroidUtilities.dp(10.0f)) {
                onTap(x, y);
            }
            return true;
        }
        if (actionMasked != 2) {
            if (actionMasked == 3) {
                removeCallbacks(this.longPress);
                this.menuPressed = -1;
                releaseRipple();
                releaseSwatch();
                if (this.panning) {
                    this.panning = false;
                    releaseStretch();
                }
                return true;
            }
            return super.onTouchEvent(motionEvent);
        }
        if (this.panning) {
            this.velocity.addMovement(motionEvent);
            float f3 = x - this.downX;
            float f4 = y - this.downY;
            if (!this.panMoved && Math.hypot(f3, f4) > AndroidUtilities.dp(8.0f)) {
                this.panMoved = true;
            }
            if (this.panMoved) {
                this.panX = this.panBaseX + f3;
                this.panY = this.panBaseY + f4;
                this.stretchX = this.stretchBaseX + rubber(f3, getWidth());
                this.stretchY = this.stretchBaseY + rubber(f4, getHeight());
            }
            return true;
        }
        int i3 = this.pressedRipple;
        if (i3 >= 0 && (rippleDrawable = this.ripples[i3]) != null) {
            rippleDrawable.setHotspot(x, y);
        }
        if (this.pressedRipple >= 0 && Math.hypot(x - this.downX, y - this.downY) > AndroidUtilities.dp(10.0f)) {
            releaseRipple();
        }
        if (Math.hypot(x - this.downX, y - this.downY) > AndroidUtilities.dp(10.0f)) {
            releaseSwatch();
        }
        VelocityTracker velocityTracker4 = this.scrollVelocity;
        if (velocityTracker4 != null) {
            velocityTracker4.addMovement(motionEvent);
        }
        if (!this.dragging && this.sheet > 0.5f) {
            float f5 = this.downY;
            if (f5 > this.sheetRect.top && Math.abs(y - f5) > this.vc.getScaledTouchSlop()) {
                this.dragging = true;
                removeCallbacks(this.longPress);
                this.downY = y;
                this.downScroll = this.sheetScroll;
            }
        }
        if (this.dragging) {
            this.sheetScroll = Math.max(0.0f, Math.min(maxScroll(), this.downScroll - (y - this.downY)));
        }
        return true;
    }

    private void releaseStretch() {
        float f = this.stretchX;
        if (f == 0.0f && this.stretchY == 0.0f) {
            return;
        }
        this.springX = f;
        this.springY = this.stretchY;
        this.springStart = AnimationUtils.currentAnimationTimeMillis();
        this.springing = true;
    }

    private boolean hit(RectF rectF, float f, float f2) {
        float fDp = AndroidUtilities.dp(8.0f);
        return !rectF.isEmpty() && f >= rectF.left - fDp && f <= rectF.right + fDp && f2 >= rectF.top - fDp && f2 <= rectF.bottom + fDp;
    }

    private boolean isBackdropAt(float f, float f2) {
        float fCardW = cardW();
        float width = (getWidth() - fCardW) / 2.0f;
        float fCardTop = cardTop();
        if (f <= width || f >= width + fCardW || f2 <= fCardTop || f2 >= fCardTop + cardH()) {
            return ((this.chipShown && hit(this.chipRect, f, f2)) || hit(this.closeRect, f, f2) || (!this.shareHidden && (hit(this.shareRect, f, f2) || hit(this.saveRect, f, f2))) || hit(this.scanRect, f, f2) || hit(this.tabsRect, f, f2)) ? false : true;
        }
        return false;
    }

    private float maxScroll() {
        float f;
        int iGiftCount;
        int iDp;
        int iDp2;
        float f2;
        float width = (getWidth() - (AndroidUtilities.dp(10.0f) * 2)) - AndroidUtilities.dp(8.0f);
        int i = this.tab;
        if (i == 0) {
            f = width / 6.0f;
            iGiftCount = (Backdrops.CENTER.length + 5) / 6;
            iDp = AndroidUtilities.dp(4.0f) - AndroidUtilities.dp(32.0f);
            iDp2 = AndroidUtilities.dp(4.0f);
        } else {
            if (i == 1) {
                f = width / 6.0f;
                f2 = 0.0f;
            } else if (giftsEmpty()) {
                f = 0.0f;
                f2 = 0.0f;
            } else {
                f = width / 3.0f;
                iGiftCount = ((giftCount() + giftCols()) - 1) / giftCols();
                iDp = AndroidUtilities.dp(4.0f) - AndroidUtilities.dp(32.0f);
                iDp2 = AndroidUtilities.dp(4.0f);
            }
            iGiftCount = 0;
            return Math.max(0.0f, (((iGiftCount * f) + f2) + AndroidUtilities.dp(32.0f)) - sheetH());
        }
        f2 = iDp + iDp2;
        return Math.max(0.0f, (((iGiftCount * f) + f2) + AndroidUtilities.dp(32.0f)) - sheetH());
    }

    private void onTap(float f, float f2) {
        Delegate delegate;
        Scene scene;
        int iGiftCols;
        if (!this.scanHidden && hit(this.scanRect, f, f2)) {
            if (this.sheet > 0.001f) {
                this.sheetTarget = 0.0f;
                invalidate();
                return;
            } else {
                Delegate delegate2 = this.delegate;
                if (delegate2 != null) {
                    delegate2.onScan();
                    return;
                }
                return;
            }
        }
        if (this.menu > 0.5f) {
            for (int i = 0; i < 3; i++) {
                if (this.menuRows[i].contains(f, f2)) {
                    this.menuTarget = 0.0f;
                    if (i == 0) {
                        resetCode();
                        return;
                    } else if (i == 1) {
                        toggleTimer();
                        return;
                    } else {
                        restoreFee(LocaleController.getString(C2807R.string.QrNoPaidToastFeeRestored));
                        return;
                    }
                }
            }
            this.menuTarget = 0.0f;
            if (this.tabsRect.contains(f, f2)) {
                RectF rectF = this.tabsRect;
                final int iMax = Math.max(0, Math.min(2, (int) ((f - rectF.left) / (rectF.width() / 3.0f))));
                haptic();
                postDelayed(new Runnable() { // from class: org.telegram.ui.QrShare.QrShareView$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onTap$14(iMax);
                    }
                }, 200L);
                return;
            }
            return;
        }
        if (hit(this.closeRect, f, f2)) {
            if (this.sheet > 0.5f) {
                this.sheetTarget = 0.0f;
                return;
            }
            Delegate delegate3 = this.delegate;
            if (delegate3 != null) {
                delegate3.onClose();
                return;
            }
            return;
        }
        if (this.chipShown && hit(this.chipRect, f, f2)) {
            chipAction();
            return;
        }
        if (this.sheet > 0.5f) {
            RectF rectF2 = this.sheetRect;
            if (f2 < rectF2.top || f2 > rectF2.bottom) {
                this.sheetTarget = 0.0f;
                return;
            }
            if (this.tab == 1) {
                for (int i2 = 0; i2 < this.picked.size(); i2++) {
                    if (this.stripRects[i2].contains(f, f2)) {
                        this.picked.remove(i2);
                        applyEmojiPattern();
                        haptic();
                        return;
                    }
                }
                return;
            }
            getWidth();
            float fGridPad = (this.sheetScroll + f2) - (this.sheetRect.top + gridPad());
            if (fGridPad < 0.0f) {
                return;
            }
            float fDp = f - (this.sheetRect.left + AndroidUtilities.dp(4.0f));
            float fWidth = this.sheetRect.width() - AndroidUtilities.dp(8.0f);
            if (fDp < 0.0f || fDp >= fWidth) {
                return;
            }
            int i3 = this.tab;
            if (i3 != 2) {
                if (i3 == 0) {
                    float f3 = fWidth / 6.0f;
                    int i4 = (((int) (fGridPad / f3)) * 6) + ((int) (fDp / f3));
                    if (i4 < 0 || i4 >= Backdrops.CENTER.length) {
                        return;
                    }
                    int iSlotIndex = slotIndex(i4);
                    int i5 = DEFAULT_COLOR;
                    if (iSlotIndex == i5 && (scene = this.scene) != null && scene.type == 0 && scene.index == i5 && this.pattern.type == 0) {
                        return;
                    }
                    int iSlotIndex2 = slotIndex(i4);
                    this.lastColorIndex = iSlotIndex2;
                    boolean z = this.pattern.type == 2;
                    if (z) {
                        this.deselectAt = AnimationUtils.currentAnimationTimeMillis();
                        this.prevSelGift = -1;
                        this.selTarget = 0.0f;
                    }
                    setSceneFromCard(colorScene(iSlotIndex2));
                    if (z) {
                        setPattern(emojiPatternOrNone());
                    }
                    notifyThemeChanged();
                    return;
                }
                return;
            }
            if (giftsEmpty()) {
                if (this.buyRect.contains(f, f2)) {
                    haptic();
                    Delegate delegate4 = this.delegate;
                    if (delegate4 != null) {
                        delegate4.onBuyGifts();
                        return;
                    }
                    return;
                }
                return;
            }
            float f4 = fWidth / 3.0f;
            float fGiftCols = fWidth / giftCols();
            if (fGridPad >= 0.0f && (iGiftCols = (((int) ((fGridPad - 0.0f) / f4)) * giftCols()) + ((int) (fDp / fGiftCols))) >= 0 && iGiftCols < giftCount()) {
                long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                this.releaseAt = jCurrentAnimationTimeMillis;
                Pattern pattern = this.pattern;
                if (pattern.type == 2 && pattern.giftIndex == iGiftCols) {
                    this.deselectAt = jCurrentAnimationTimeMillis;
                    this.prevSelGift = -1;
                    this.selTarget = 0.0f;
                    setSceneFromCard(colorScene(this.lastColorIndex));
                    setPattern(emojiPatternOrNone());
                    notifyThemeChanged();
                    return;
                }
                int i6 = this.selGift;
                if (i6 >= 0 && i6 != iGiftCols && this.selTarget > 0.5f) {
                    this.prevSelGift = i6;
                    this.deselectAt = jCurrentAnimationTimeMillis;
                }
                this.selGift = iGiftCols;
                this.selA = 0.0f;
                this.selTarget = 1.0f;
                pickGift(iGiftCols, cardCenterX(), cardTop() + (cardH() / 2.0f));
                notifyThemeChanged();
                return;
            }
            return;
        }
        if (this.themeEditable && hit(this.tabsRect, f, f2)) {
            RectF rectF3 = this.tabsRect;
            final int iMax2 = Math.max(0, Math.min(2, (int) ((f - rectF3.left) / (rectF3.width() / 3.0f))));
            if (this.menuTarget > 0.0f || this.menu > 0.05f) {
                this.menuTarget = 0.0f;
                haptic();
                postDelayed(new Runnable() { // from class: org.telegram.ui.QrShare.QrShareView$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onTap$15(iMax2);
                    }
                }, 200L);
                return;
            }
            lambda$onTap$15(iMax2);
            return;
        }
        if (!this.shareHidden && hit(this.shareRect, f, f2)) {
            Delegate delegate5 = this.delegate;
            if (delegate5 != null) {
                delegate5.onShare(getCurrentLink());
                return;
            }
            return;
        }
        if (this.shareHidden || !hit(this.saveRect, f, f2) || (delegate = this.delegate) == null) {
            return;
        }
        delegate.onSave();
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        RLottieDrawable rLottieDrawable;
        return (drawable instanceof RippleDrawable) || drawable == this.chipText || drawable == this.logo || ((rLottieDrawable = this.emptyLottie) != null && drawable == rLottieDrawable) || super.verifyDrawable(drawable);
    }

    private RippleDrawable ripple(int i) {
        RippleDrawable rippleDrawable = this.ripples[i];
        if (rippleDrawable != null) {
            return rippleDrawable;
        }
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-1);
        if (i == 3 || i == 4 || i == 11) {
            gradientDrawable.setShape(1);
        } else if (i >= 6 || i == 5) {
            gradientDrawable.setCornerRadius(AndroidUtilities.dp(20.0f));
        }
        RippleDrawable rippleDrawable2 = new RippleDrawable(this.rippleDark, null, gradientDrawable);
        rippleDrawable2.setCallback(this);
        rippleDrawable2.setState(ST_IDLE);
        this.ripples[i] = rippleDrawable2;
        return rippleDrawable2;
    }

    private void drawRipple(Canvas canvas, int i, RectF rectF, boolean z) {
        if (ownRipple(i)) {
            drawOwnRipple(canvas, i, rectF, z);
            return;
        }
        RippleDrawable rippleDrawable = this.ripples[i];
        if (rippleDrawable == null) {
            return;
        }
        boolean[] zArr = this.rippleLightSet;
        if (zArr[i] != z) {
            zArr[i] = z;
            rippleDrawable.setColor(z ? this.rippleLight : this.rippleDark);
        }
        rippleDrawable.setBounds((int) rectF.left, (int) rectF.top, (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
        this.rippleBounds[i].set(rippleDrawable.getBounds());
        float f = this.pressedRipple == i ? 1.0f : 0.0f;
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        long j = this.pressT[i];
        long jMin = j == 0 ? 16L : Math.min(48L, Math.max(0L, jCurrentAnimationTimeMillis - j));
        this.pressT[i] = jCurrentAnimationTimeMillis;
        float[] fArr = this.pressK;
        float f2 = fArr[i];
        fArr[i] = f2 + ((f - f2) * (1.0f - ((float) Math.exp((-jMin) / (f > f2 ? 90.0f : 180.0f)))));
        if (f == 0.0f) {
            float[] fArr2 = this.pressK;
            if (fArr2[i] < 0.004f) {
                fArr2[i] = 0.0f;
                this.pressT[i] = 0;
                boolean[] zArr2 = this.rippleHeld;
                if (zArr2[i]) {
                    zArr2[i] = false;
                    rippleDrawable.setState(ST_IDLE);
                    return;
                }
                return;
            }
        }
        if (Math.abs(f - this.pressK[i]) > 0.004f) {
            invalidate();
        }
        float f3 = this.pressK[i];
        canvas.saveLayerAlpha(rectF.left, rectF.top, rectF.right, rectF.bottom, (int) (f3 * f3 * (3.0f - (f3 * 2.0f)) * 255.0f));
        rippleDrawable.draw(canvas);
        canvas.restore();
    }

    private void drawOwnRipple(Canvas canvas, int i, RectF rectF, boolean z) {
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        boolean z2 = this.pressedRipple == i;
        if (z2 || this.releaseT[i] != 0) {
            float fRippleK = z2 ? rippleK(i, jCurrentAnimationTimeMillis) : this.releaseK[i] * ((float) Math.exp((-(jCurrentAnimationTimeMillis - this.releaseT[i])) / 180.0f));
            if (!z2 && fRippleK < 0.004f) {
                this.releaseT[i] = 0;
                return;
            }
            float f = fRippleK * fRippleK * (3.0f - (fRippleK * 2.0f));
            float fMin = Math.min(1.0f, (jCurrentAnimationTimeMillis - this.pressStart[i]) / 320.0f);
            float f2 = 1.0f - fMin;
            float f3 = 1.0f - ((f2 * f2) * f2);
            if (!z2 || fRippleK < 0.996f || fMin < 1.0f) {
                invalidate();
            }
            float fMax = Math.max(rectF.left, Math.min(rectF.right, this.hotX[i]));
            float fMax2 = Math.max(rectF.top, Math.min(rectF.bottom, this.hotY[i]));
            float fMax3 = (float) Math.max(Math.hypot(fMax - rectF.left, fMax2 - rectF.top), Math.max(Math.hypot(fMax - rectF.right, fMax2 - rectF.top), Math.max(Math.hypot(fMax - rectF.left, fMax2 - rectF.bottom), Math.hypot(fMax - rectF.right, fMax2 - rectF.bottom))));
            this.ownRipplePaint.setColor((((int) ((r9 >>> 24) * f)) << 24) | (16777215 & (z ? 335544320 : 738197503)));
            this.ownRipplePath.rewind();
            if (i == 3 || i == 4 || i == 11) {
                this.ownRipplePath.addOval(rectF, Path.Direction.CW);
            } else if (i >= 6 || i == 5) {
                float fMin2 = Math.min(AndroidUtilities.dp(20.0f), rectF.height() / 2.0f);
                this.ownRipplePath.addRoundRect(rectF, fMin2, fMin2, Path.Direction.CW);
            } else {
                this.ownRipplePath.addRect(rectF, Path.Direction.CW);
            }
            canvas.save();
            canvas.clipPath(this.ownRipplePath);
            canvas.drawCircle(fMax, fMax2, Math.max(AndroidUtilities.dp(6.0f), fMax3 * f3), this.ownRipplePaint);
            canvas.restore();
        }
    }

    private float rippleK(int i, long j) {
        return 1.0f - ((1.0f - this.startK[i]) * ((float) Math.exp((-(j - this.pressStart[i])) / 90.0f)));
    }

    private int rippleTarget(float f, float f2) {
        if (this.menu > 0.5f) {
            if (!this.scanHidden && hit(this.scanRect, f, f2)) {
                return 5;
            }
            for (int i = 0; i < 3; i++) {
                if (this.menuRows[i].contains(f, f2)) {
                    return i;
                }
            }
            return -1;
        }
        if (hit(this.closeRect, f, f2)) {
            return 3;
        }
        if (!this.scanHidden && hit(this.scanRect, f, f2)) {
            return 5;
        }
        if (this.chipShown && hit(this.chipRect, f, f2)) {
            return 9;
        }
        if (this.sheet < 0.5f) {
            if (!this.shareHidden && hit(this.shareRect, f, f2)) {
                return 4;
            }
            if (!this.shareHidden && hit(this.saveRect, f, f2)) {
                return 11;
            }
            if (this.themeEditable && hit(this.tabsRect, f, f2)) {
                RectF rectF = this.tabsRect;
                return Math.max(0, Math.min(2, (int) ((f - rectF.left) / (rectF.width() / 3.0f)))) + 6;
            }
        }
        return (this.sheet > 0.5f && this.tab == 2 && giftsEmpty() && hit(this.buyRect, f, f2)) ? 10 : -1;
    }

    private void pressRipple(float f, float f2) {
        releaseRipple();
        int iRippleTarget = rippleTarget(f, f2);
        if (iRippleTarget < 0) {
            return;
        }
        if (ownRipple(iRippleTarget)) {
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.startK[iRippleTarget] = this.releaseT[iRippleTarget] != 0 ? this.releaseK[iRippleTarget] * ((float) Math.exp((-(jCurrentAnimationTimeMillis - r5)) / 180.0f)) : 0.0f;
            this.releaseT[iRippleTarget] = 0;
            this.hotX[iRippleTarget] = f;
            this.hotY[iRippleTarget] = f2;
            this.pressStart[iRippleTarget] = jCurrentAnimationTimeMillis;
            this.pressedRipple = iRippleTarget;
            invalidate();
            return;
        }
        RippleDrawable rippleDrawableRipple = ripple(iRippleTarget);
        if (!this.rippleBounds[iRippleTarget].isEmpty()) {
            rippleDrawableRipple.setBounds(this.rippleBounds[iRippleTarget]);
        }
        rippleDrawableRipple.setHotspot(f, f2);
        if (this.rippleHeld[iRippleTarget]) {
            rippleDrawableRipple.setState(ST_IDLE);
        }
        rippleDrawableRipple.setState(ST_PRESSED);
        this.rippleHeld[iRippleTarget] = true;
        this.pressedRipple = iRippleTarget;
        invalidate();
    }

    private void releaseRipple() {
        int i = this.pressedRipple;
        if (i >= 0) {
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.releaseK[i] = rippleK(i, jCurrentAnimationTimeMillis);
            this.releaseT[i] = jCurrentAnimationTimeMillis;
            invalidate();
        }
        this.pressedRipple = -1;
    }

    public void release() {
        this.logo.recycle(false);
        Bitmap bitmap = this.logoOptimal;
        if (bitmap != null) {
            bitmap.recycle();
            this.logoOptimal = null;
        }
        RLottieDrawable rLottieDrawable = this.toastSave;
        if (rLottieDrawable != null) {
            rLottieDrawable.recycle(false);
            this.toastSave = null;
        }
        RLottieDrawable rLottieDrawable2 = this.emptyLottie;
        if (rLottieDrawable2 != null) {
            rLottieDrawable2.recycle(false);
            this.emptyLottie = null;
        }
        AnimatedEmojiDrawable animatedEmojiDrawable = this.emptyDog;
        if (animatedEmojiDrawable != null) {
            animatedEmojiDrawable.removeView(this);
            this.emptyDog = null;
            this.emptyDogDocId = 0L;
        }
        releasePattern(this.pattern);
        releasePattern(this.oldPattern);
        removeCallbacks(this.longPress);
        StarsController.GiftsList giftsList = this.giftsList;
        if (giftsList != null) {
            giftsList.cancel();
        }
        VelocityTracker velocityTracker = this.velocity;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.velocity = null;
        }
        VelocityTracker velocityTracker2 = this.scrollVelocity;
        if (velocityTracker2 != null) {
            velocityTracker2.recycle();
            this.scrollVelocity = null;
        }
        Iterator<AnimatedEmojiDrawable> it = this.giftThumbs.values().iterator();
        while (it.hasNext()) {
            it.next().removeView(this);
        }
        for (Drawable drawable : this.emojiCache.values()) {
            if (drawable instanceof AnimatedEmojiDrawable) {
                ((AnimatedEmojiDrawable) drawable).removeView(this);
            }
        }
        this.giftThumbs.clear();
        Iterator<TilePattern> it2 = this.giftPatterns.values().iterator();
        while (it2.hasNext()) {
            AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = it2.next().f1210d;
            if (swapAnimatedEmojiDrawable != null) {
                swapAnimatedEmojiDrawable.detach();
            }
        }
        this.giftPatterns.clear();
    }

    public boolean canConsumeBack() {
        return this.menu > 0.5f || this.sheet > 0.5f;
    }

    public boolean onBackPressed() {
        if (this.menu > 0.5f) {
            this.menuTarget = 0.0f;
            return true;
        }
        if (this.sheet <= 0.5f) {
            return false;
        }
        this.sheetTarget = 0.0f;
        return true;
    }
}
