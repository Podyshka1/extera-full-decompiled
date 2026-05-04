.class public Lorg/telegram/messenger/AndroidUtilities;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/AndroidUtilities$LinkSpec;,
        Lorg/telegram/messenger/AndroidUtilities$VcardData;,
        Lorg/telegram/messenger/AndroidUtilities$VcardItem;,
        Lorg/telegram/messenger/AndroidUtilities$IntColorCallback;,
        Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;
    }
.end annotation


# static fields
.field public static BAD_CHARS_MESSAGE_LONG_PATTERN:Ljava/util/regex/Pattern; = null

.field public static BAD_CHARS_MESSAGE_PATTERN:Ljava/util/regex/Pattern; = null

.field public static BAD_CHARS_PATTERN:Ljava/util/regex/Pattern; = null

.field public static final DARK_STATUS_BAR_OVERLAY:I = 0x33000000

.field public static final FLAG_TAG_ALL:I = 0xb

.field public static final FLAG_TAG_BOLD:I = 0x2

.field public static final FLAG_TAG_BR:I = 0x1

.field public static final FLAG_TAG_COLOR:I = 0x4

.field public static final FLAG_TAG_URL:I = 0x8

.field public static final LIGHT_STATUS_BAR_OVERLAY:I = 0xf000000

.field public static LONG_BAD_CHARS_PATTERN:Ljava/util/regex/Pattern; = null

.field public static REMOVE_MULTIPLE_DIACRITICS:Ljava/util/regex/Pattern; = null

.field public static REMOVE_RTL:Ljava/util/regex/Pattern; = null

.field public static final REPLACING_TAG_TYPE_BOLD:I = 0x1

.field public static final REPLACING_TAG_TYPE_LINK:I = 0x0

.field public static final REPLACING_TAG_TYPE_LINKBOLD:I = 0x2

.field public static final REPLACING_TAG_TYPE_LINK_NBSP:I = 0x3

.field public static final REPLACING_TAG_TYPE_UNDERLINE:I = 0x4

.field public static final STICKERS_PLACEHOLDER_PACK_NAME:Ljava/lang/String; = "tg_placeholders_android"

.field public static final STICKERS_PLACEHOLDER_PACK_NAME_2:Ljava/lang/String; = "tg_superplaceholders_android_2"

.field public static final TYPEFACE_COURIER_NEW_BOLD:Ljava/lang/String; = "fonts/courier_new_bold.ttf"

.field public static final TYPEFACE_MERRIWEATHER_BOLD:Ljava/lang/String; = "fonts/mw_bold.ttf"

.field public static final TYPEFACE_NUNITO_EXTRABOLD:Ljava/lang/String; = "fonts/nunito_extrabold.ttf"

.field public static final TYPEFACE_ROBOTO_CONDENSED_BOLD:Ljava/lang/String; = "fonts/rcondensedbold.ttf"

.field public static final TYPEFACE_ROBOTO_EXTRA_BOLD:Ljava/lang/String; = "fonts/rextrabold.ttf"

.field public static final TYPEFACE_ROBOTO_ITALIC:Ljava/lang/String; = "fonts/ritalic.ttf"

.field public static final TYPEFACE_ROBOTO_MEDIUM:Ljava/lang/String; = "fonts/rmedium.ttf"

.field public static final TYPEFACE_ROBOTO_MEDIUM_ITALIC:Ljava/lang/String; = "fonts/rmediumitalic.ttf"

.field public static final TYPEFACE_ROBOTO_MONO:Ljava/lang/String; = "fonts/rmono.ttf"

.field public static final TYPEFACE_ROBOTO_REGULAR:Ljava/lang/String; = "fonts/rregular.ttf"

.field public static WEB_URL:Ljava/util/regex/Pattern;

.field public static accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private static accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private static adjustOwnerClassGuid:I

.field private static altFocusableClassGuid:I

.field public static bufferLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[B>;"
        }
    .end annotation
.end field

.field private static final callLock:Ljava/lang/Object;

.field private static callReceiver:Lorg/telegram/messenger/CallReceiver;

.field private static final characters:[C

.field private static charactersMap:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field public static decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field public static density:F

.field public static displayMetrics:Landroid/util/DisplayMetrics;

.field public static displaySize:Landroid/graphics/Point;

.field private static final documentIcons:[I

.field private static final documentMediaIcons:[I

.field public static firstConfigurationWas:Z

.field private static generatingVideoPathFormat:Ljava/text/SimpleDateFormat;

.field private static final hasCallPermissions:Z

.field public static highQualityPhotoSize:Ljava/lang/Integer;

.field public static incorrectDisplaySizeFix:Z

.field private static isHonor:Ljava/lang/Boolean;

.field public static isInMultiwindow:Z

.field private static isSmallScreen:Ljava/lang/Boolean;

.field private static isTablet:Ljava/lang/Boolean;

.field public static leftBaseline:I

.field private static linksPattern:Ljava/util/regex/Pattern;

.field private static mAttachInfoField:Ljava/lang/reflect/Field;

.field private static mStableInsetsField:Ljava/lang/reflect/Field;

.field public static makingGlobalBlurBitmap:Z

.field public static mediumTypeface:Landroid/graphics/Typeface;

.field private static final navbarProtactionPaint:Landroid/graphics/Paint;

.field private static navigationBarColorAnimators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/Window;",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field public static navigationBarHeight:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final numbersSignatureArray:[Ljava/lang/String;

.field public static overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

.field public static photoSize:Ljava/lang/Integer;

.field public static final pointTmp2:[I

.field private static prevOrientation:I

.field public static readBufferLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[B>;"
        }
    .end annotation
.end field

.field public static final rectTmp:Landroid/graphics/RectF;

.field public static final rectTmp2:Landroid/graphics/Rect;

.field public static roundMessageInset:I

.field public static roundMessageSize:I

.field public static roundPlayingMessageSize:I

.field public static roundSidePlayingMessageSize:I

.field public static final sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

.field public static screenMaxRefreshRate:F

.field public static screenRefreshRate:F

.field public static screenRefreshTime:F

.field private static singleTagPatter:Ljava/util/regex/Pattern;

.field private static final smsLock:Ljava/lang/Object;

.field public static statusBarHeight:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final strokeBottom:Landroid/graphics/Paint;

.field public static final strokeTop:Landroid/graphics/Paint;

.field private static final tempFloats:[F

.field private static final tempFloats2:[F

.field public static touchSlop:F

.field private static final typefaceCache:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static uriParse:Ljava/util/regex/Pattern;

.field public static usingHardwareInput:Z

.field private static vibrator:Landroid/os/Vibrator;

.field private static waitingForCall:Z

.field private static waitingForSms:Z

.field private static wasTablet:Ljava/lang/Boolean;


# direct methods
.method public static synthetic $r8$lambda$-KhNaete-puZm8ZT4fOcBgykfoI(Lorg/telegram/messenger/AndroidUtilities$LinkSpec;Lorg/telegram/messenger/AndroidUtilities$LinkSpec;)I
    .locals 2

    .line 1413
    iget v0, p0, Lorg/telegram/messenger/AndroidUtilities$LinkSpec;->start:I

    iget v1, p1, Lorg/telegram/messenger/AndroidUtilities$LinkSpec;->start:I

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    if-le v0, v1, :cond_1

    goto :goto_0

    .line 1419
    :cond_1
    iget p0, p0, Lorg/telegram/messenger/AndroidUtilities$LinkSpec;->end:I

    iget p1, p1, Lorg/telegram/messenger/AndroidUtilities$LinkSpec;->end:I

    if-ge p0, p1, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    if-le p0, p1, :cond_3

    :goto_1
    const/4 p0, -0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$0Agdd6edCfR26CmgFcnIOSmF3hU([Z[Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 10

    const/4 v0, 0x0

    .line 4720
    aget-boolean v1, p0, v0

    if-eqz v1, :cond_0

    return-void

    .line 4722
    :cond_0
    new-instance v2, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda13;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda13;-><init>([Z[Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4744
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 4745
    const-string/jumbo p1, "proxycheckstatusip"

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4746
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    return-void

    .line 4748
    :cond_1
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 p2, p7

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p2, Lorg/telegram/messenger/R$string;->ProxyBottomSheetCheckWarning:I

    .line 4749
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->ProxyBottomSheetCheckWarningText:I

    .line 4750
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->Proceed:I

    .line 4751
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda14;

    invoke-direct {p3, p0, v2}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda14;-><init>(Landroid/content/SharedPreferences;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 4755
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p0

    .line 4756
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method public static synthetic $r8$lambda$0F4KjwN-tH7e-KBB5ZrPUMWlqPs(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 2

    .line 1823
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "market://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {p2, p3, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1824
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p0

    const/16 p1, 0x1f4

    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1826
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$114_tsQ3Yj3FepwwLiuAukKWoYc(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 7

    .line 3505
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x40800000    # 4.0f

    mul-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    mul-float/2addr v1, v2

    float-to-double v1, v1

    float-to-double v3, p1

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4010000000000000L    # 4.0

    mul-double/2addr v3, v5

    .line 3506
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-double v3, p1

    mul-double/2addr v1, v3

    double-to-float p1, v1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$CEcQZmOn3RwbTaUHT0SBERSJNjU(Lorg/telegram/messenger/Utilities$Callback0Return;)Ljava/lang/Boolean;
    .locals 0

    .line 1343
    :try_start_0
    invoke-interface {p0}, Lorg/telegram/messenger/Utilities$Callback0Return;->run()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1345
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1346
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic $r8$lambda$GVblqDyrKZC295RoPlor3ZZo1sk(Ljava/util/ArrayList;)V
    .locals 2

    .line 860
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda22;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$HquIMc7u0b553XZXhwG_MPrzyiE(Landroid/content/SharedPreferences;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 4752
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo p2, "proxycheckstatusip"

    const/4 p3, 0x1

    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4753
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$IdXi5ryV7zNpXUwrfBkR6HhmlQs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 11

    move-object/from16 v0, p5

    const/4 v1, 0x6

    .line 4814
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 4770
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 4771
    const-string/jumbo v3, "proxy_enabled"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4772
    const-string/jumbo v3, "proxy_ip"

    invoke-interface {v2, v3, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4773
    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 4774
    const-string/jumbo p1, "proxy_port"

    invoke-interface {v2, p1, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4777
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string/jumbo v3, "proxy_secret"

    const-string/jumbo v5, "proxy_user"

    const-string/jumbo v6, "proxy_pass"

    if-eqz p1, :cond_2

    .line 4778
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4779
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4780
    invoke-interface {v2, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 4782
    :cond_0
    invoke-interface {v2, v6, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4784
    :goto_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4785
    invoke-interface {v2, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 4787
    :cond_1
    invoke-interface {v2, v5, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4789
    :goto_1
    new-instance v5, Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    const-string v10, ""

    move-object v6, p0

    move-object v9, p3

    move-object v8, p4

    invoke-direct/range {v5 .. v10}, Lorg/telegram/messenger/SharedConfig$ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 4791
    :cond_2
    invoke-interface {v2, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4792
    invoke-interface {v2, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4793
    invoke-interface {v2, v3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4794
    new-instance v5, Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    const-string v8, ""

    const-string v9, ""

    move-object v6, p0

    move-object v10, p2

    invoke-direct/range {v5 .. v10}, Lorg/telegram/messenger/SharedConfig$ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4796
    :goto_2
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4798
    invoke-static {v5}, Lorg/telegram/messenger/SharedConfig;->addProxy(Lorg/telegram/messenger/SharedConfig$ProxyInfo;)Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    move-result-object p1

    sput-object p1, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    const/4 v5, 0x1

    move-object v6, p0

    move-object v10, p2

    move-object v9, p3

    move-object v8, p4

    .line 4800
    invoke-static/range {v5 .. v10}, Lorg/telegram/tgnet/ConnectionsManager;->setProxySettings(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4801
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/NotificationCenter;->proxySettingsChanged:I

    const/4 p2, 0x0

    new-array p3, p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4802
    instance-of p0, v0, Lorg/telegram/ui/LaunchActivity;

    const/4 p1, 0x2

    if-eqz p0, :cond_4

    .line 4803
    move-object p0, v0

    check-cast p0, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p0

    .line 4804
    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    .line 4806
    instance-of p3, p0, Lorg/telegram/ui/ChatActivity;

    if-eqz p3, :cond_3

    .line 4807
    check-cast p0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object p0

    if-eqz p0, :cond_3

    const/16 p1, 0x57

    const/4 p2, 0x0

    const-wide/16 p3, 0x0

    .line 4809
    invoke-virtual {p0, p3, p4, p1, p2}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Runnable;)V

    goto :goto_3

    .line 4814
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget p3, Lorg/telegram/messenger/NotificationCenter;->showBulletin:I

    sget p4, Lorg/telegram/messenger/R$string;->ProxyAddedSuccess:I

    invoke-static {p4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p4

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v1, p1, p2

    aput-object p4, p1, v4

    invoke-virtual {p0, p3, p1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_3

    .line 4817
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget p3, Lorg/telegram/messenger/NotificationCenter;->showBulletin:I

    sget p4, Lorg/telegram/messenger/R$string;->ProxyAddedSuccess:I

    invoke-static {p4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p4

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v1, p1, p2

    aput-object p4, p1, v4

    invoke-virtual {p0, p3, p1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4819
    :goto_3
    invoke-interface/range {p6 .. p6}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$IvmkrQPgAHXbIzKYk9WrbgZPdvI(Ljava/lang/Runnable;I)V
    .locals 0

    .line 1078
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$J4uGjwnOr5qIdWYhIX4Og12v1ts(Ljava/lang/Void;)V
    .locals 0

    .line 2461
    sget-boolean p0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz p0, :cond_0

    .line 2462
    const-string/jumbo p0, "sms listener registered"

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$LY4s7GcuaYBAKIqSknOqzIPV5yc(J[Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;)V
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4731
    aget-object p0, p2, v1

    sget p1, Lorg/telegram/messenger/R$string;->Unavailable:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4732
    aget-object p0, p2, v1

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 4734
    :cond_0
    aget-object v0, p2, v1

    sget v2, Lorg/telegram/messenger/R$string;->Ping2:I

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p0, p1, v1

    invoke-static {v2, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4735
    aget-object p0, p2, v1

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGreenText:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$MbHMujtawjxiihmLhrtIrsRCnI8(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    .line 4338
    const-string p0, "%s"

    return-object p0
.end method

.method public static synthetic $r8$lambda$Mk7Ucs4ufCbWUASeusFo-w0UddU([Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;J)V
    .locals 1

    .line 4729
    new-instance v0, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2, p0}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda3;-><init>(J[Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qk5ef8sjud159Z-ssS0Yt9PvtWo(Landroid/view/ViewTreeObserver;[Landroid/view/ViewTreeObserver$OnPreDrawListener;[ZLjava/lang/Runnable;)Z
    .locals 2

    .line 6646
    invoke-virtual {p0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6647
    aget-object p1, p1, v1

    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 6649
    :cond_0
    aget-boolean p0, p2, v1

    const/4 p1, 0x1

    if-nez p0, :cond_1

    .line 6650
    aput-boolean p1, p2, v1

    .line 6651
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_1
    return p1
.end method

.method public static synthetic $r8$lambda$TqylQ7mqSnaj2Z10Afg6KQFAD-I(Ljava/lang/CharSequence;II)Z
    .locals 0

    const/4 p2, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p1, p2

    .line 1304
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    const/16 p1, 0x40

    if-eq p0, p1, :cond_1

    :goto_0
    return p2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$U1asOTL621l4z8g5RIfymaYl5pg(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 9

    .line 2393
    :try_start_0
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->useSystemFonts:Z

    if-nez v0, :cond_0

    .line 2394
    invoke-static {p0}, Lcom/exteragram/messenger/utils/ui/FontUtils;->getFontFromAssets(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 2396
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v1, "sans-serif-medium"

    const/16 v2, 0x1f4

    const/4 v3, 0x2

    const/16 v4, 0x190

    const-string/jumbo v5, "sans-serif"

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    :try_start_1
    const-string v0, "fonts/rextrabold.ttf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2429
    const-string/jumbo v0, "sans-serif-bold"

    invoke-static {v0, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    .line 2396
    :sswitch_1
    const-string v0, "fonts/rregular.ttf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2424
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_1

    .line 2425
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v0, v4, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    .line 2426
    :cond_1
    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    .line 2396
    :sswitch_2
    const-string v0, "fonts/rmono.ttf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2397
    sget-object p0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    return-object p0

    .line 2396
    :sswitch_3
    const-string v0, "fonts/rmedium.ttf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2410
    invoke-static {}, Lcom/exteragram/messenger/utils/ui/FontUtils;->isMediumWeightSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2411
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_2

    .line 2412
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v0, v2, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    .line 2413
    :cond_2
    invoke-static {v1, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    .line 2415
    :cond_3
    invoke-static {v5, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    .line 2396
    :sswitch_4
    const-string v0, "fonts/rcondensedbold.ttf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2399
    const-string/jumbo v0, "sans-serif-condensed"

    invoke-static {v0, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    .line 2396
    :sswitch_5
    const-string v0, "fonts/rmediumitalic.ttf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2401
    invoke-static {}, Lcom/exteragram/messenger/utils/ui/FontUtils;->isMediumWeightSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2402
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_4

    .line 2403
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v0, v2, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    .line 2404
    :cond_4
    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 v0, 0x3

    .line 2406
    invoke-static {v5, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    .line 2396
    :sswitch_6
    const-string v0, "fonts/ritalic.ttf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2419
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_6

    .line 2420
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v0, v4, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    .line 2421
    :cond_6
    invoke-static {v5, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    .line 2430
    :cond_7
    :goto_0
    invoke-static {p0}, Lcom/exteragram/messenger/utils/ui/FontUtils;->getFontFromAssets(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    .line 2433
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not get typeface \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' because "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x75af2471 -> :sswitch_6
        -0x19524c7c -> :sswitch_5
        0x4f143cdd -> :sswitch_4
        0x596c0654 -> :sswitch_3
        0x64afb882 -> :sswitch_2
        0x6af3db0d -> :sswitch_1
        0x78bb2346 -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic $r8$lambda$U1mjz0c6pNX--EGrZtp2rsOmuR0([ZLjava/util/concurrent/CountDownLatch;I)V
    .locals 1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v0

    .line 1109
    :goto_0
    aput-boolean p2, p0, v0

    .line 1110
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZKSK3CWatNTiC7BwsRbjugXHzOo(Landroid/widget/ImageView;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/graphics/drawable/Drawable;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 5707
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v1, p3, v0

    .line 5708
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v1, v0

    .line 5709
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 5710
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    cmpl-float p3, p3, v0

    if-ltz p3, :cond_0

    .line 5711
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x1

    .line 5712
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5713
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$dbJ_kwONwNyQCcwH5Wpjk9vjteY(Ljava/util/concurrent/CountDownLatch;I)V
    .locals 0

    .line 1089
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public static synthetic $r8$lambda$gmqfnK00Qw6ZUQaCRFv5JDouriU(Lorg/telegram/messenger/AndroidUtilities$IntColorCallback;Landroid/view/Window;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 5500
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p0, :cond_0

    .line 5502
    invoke-interface {p0, p2}, Lorg/telegram/messenger/AndroidUtilities$IntColorCallback;->run(I)V

    .line 5505
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/view/Window;->setNavigationBarColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static synthetic $r8$lambda$j1yJYdY1K3Qj4aTXou-J67JX5Gw(Landroid/text/SpannableStringBuilder;IZZ)Ljava/lang/Boolean;
    .locals 0

    .line 1321
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->addLinks(Landroid/text/Spannable;IZZ)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lt-TKGloVbyFvqFUrf6OBBSAe1s(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lorg/telegram/ui/Components/RecyclerListView;)I
    .locals 2

    const/4 v0, -0x1

    .line 5577
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v1, 0x1

    .line 5578
    invoke-virtual {p1, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 5579
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 5580
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    const/high16 p0, 0x42700000    # 60.0f

    .line 5581
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p0

    invoke-virtual {p2, v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    const/4 p0, 0x0

    .line 5582
    invoke-virtual {p1, p0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return v0
.end method

.method public static synthetic $r8$lambda$qgAShxesFu3Jqe_DzjHU5D6poXE(Ljava/lang/Runnable;Landroid/view/View;FLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    if-eqz p0, :cond_0

    .line 3550
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 3552
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 3553
    sget p0, Lorg/telegram/messenger/R$id;->spring_tag:I

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 3554
    sget p0, Lorg/telegram/messenger/R$id;->spring_was_translation_x_tag:I

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rLoPqu4Dd4z4V6K51HBx8QtDBvM(Ljava/util/concurrent/CountDownLatch;I)V
    .locals 0

    .line 1063
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public static synthetic $r8$lambda$tZkoabMKM1212nONUi1T0va_1wc(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    .line 4344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "$s"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uyKDxJe1zhprAc4OPejyxUCSMYA(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 6631
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6632
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$xUpIG0xWvQrEWNwHNYj7d5nwyYU(Landroid/content/Intent;)V
    .locals 18

    move-object/from16 v0, p0

    .line 882
    :try_start_0
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    .line 883
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->postInitApplication()V

    .line 884
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode()Z

    move-result v2

    if-nez v2, :cond_2

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isWaitingForPasscodeEnter:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 887
    :cond_0
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 888
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 889
    const-string v2, "com.google.android.voicesearch.extra.RECIPIENT_CONTACT_URI"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 890
    const-string v4, "com.google.android.voicesearch.extra.RECIPIENT_CONTACT_CHAT_ID"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 891
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 892
    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_1

    .line 894
    invoke-static {v1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->getUserSync(J)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 896
    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    :cond_1
    if-eqz v0, :cond_2

    .line 900
    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/telegram/messenger/ContactsController;->markAsContacted(Ljava/lang/String;)V

    .line 901
    invoke-static {v1}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v3 .. v17}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZIILorg/telegram/messenger/MessageObject$SendAnimationData;Z)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 905
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yglU0IUD_9dHAT0uEZ_BfZgbfgs([Z[Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    .line 4723
    aget-boolean v1, p0, v0

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 4725
    aput-boolean v1, p0, v0

    .line 4726
    aget-object p0, p1, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lorg/telegram/messenger/R$string;->ProxyBottomSheetChecking:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4727
    aget-object p0, p1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->clear()V

    .line 4729
    :try_start_0
    sget p0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    new-instance v7, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda9;

    invoke-direct {v7, p1}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda9;-><init>([Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;)V

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/tgnet/ConnectionsManager;->checkProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/RequestTimeDelegate;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 4739
    :catch_0
    aget-object p0, p1, v0

    sget p2, Lorg/telegram/messenger/R$string;->Unavailable:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4740
    aget-object p0, p1, v0

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$zrWNCtpqYtQ17xrk0FlGhXkHpvI(Ljava/util/ArrayList;)V
    .locals 3

    const/4 v0, 0x0

    .line 861
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 862
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 863
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->clear()V

    if-eqz v1, :cond_0

    .line 864
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 866
    :try_start_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 868
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetnavigationBarColorAnimators()Ljava/util/HashMap;
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->navigationBarColorAnimators:Ljava/util/HashMap;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 9

    .line 261
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->readBufferLocal:Ljava/lang/ThreadLocal;

    .line 262
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->bufferLocal:Ljava/lang/ThreadLocal;

    .line 275
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->typefaceCache:Lj$/util/concurrent/ConcurrentHashMap;

    const/16 v0, -0xa

    .line 277
    sput v0, Lorg/telegram/messenger/AndroidUtilities;->prevOrientation:I

    const/4 v0, 0x0

    .line 278
    sput-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->waitingForSms:Z

    .line 279
    sput-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->waitingForCall:Z

    .line 280
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lorg/telegram/messenger/AndroidUtilities;->smsLock:Ljava/lang/Object;

    .line 281
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lorg/telegram/messenger/AndroidUtilities;->callLock:Ljava/lang/Object;

    .line 284
    sput v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    .line 287
    sput v0, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 290
    sput v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    .line 291
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    sput-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    const/high16 v1, 0x42700000    # 60.0f

    .line 292
    sput v1, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshRate:F

    .line 293
    sput v1, Lorg/telegram/messenger/AndroidUtilities;->screenMaxRefreshRate:F

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v2, v1

    .line 294
    sput v2, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshTime:F

    const/4 v1, 0x0

    .line 300
    sput-object v1, Lorg/telegram/messenger/AndroidUtilities;->photoSize:Ljava/lang/Integer;

    sput-object v1, Lorg/telegram/messenger/AndroidUtilities;->highQualityPhotoSize:Ljava/lang/Integer;

    .line 301
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v2, Lorg/telegram/messenger/AndroidUtilities;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 310
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v2, Lorg/telegram/messenger/AndroidUtilities;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 311
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v2, Lorg/telegram/messenger/AndroidUtilities;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 312
    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    sput-object v2, Lorg/telegram/messenger/AndroidUtilities;->overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

    .line 317
    sput-object v1, Lorg/telegram/messenger/AndroidUtilities;->isTablet:Ljava/lang/Boolean;

    sput-object v1, Lorg/telegram/messenger/AndroidUtilities;->wasTablet:Ljava/lang/Boolean;

    sput-object v1, Lorg/telegram/messenger/AndroidUtilities;->isSmallScreen:Ljava/lang/Boolean;

    .line 318
    sput v0, Lorg/telegram/messenger/AndroidUtilities;->adjustOwnerClassGuid:I

    .line 319
    sput v0, Lorg/telegram/messenger/AndroidUtilities;->altFocusableClassGuid:I

    .line 321
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    .line 322
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    const/4 v0, 0x2

    .line 323
    new-array v0, v0, [I

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->pointTmp2:[I

    .line 325
    sput-object v1, Lorg/telegram/messenger/AndroidUtilities;->WEB_URL:Ljava/util/regex/Pattern;

    .line 326
    sput-object v1, Lorg/telegram/messenger/AndroidUtilities;->BAD_CHARS_PATTERN:Ljava/util/regex/Pattern;

    .line 327
    sput-object v1, Lorg/telegram/messenger/AndroidUtilities;->LONG_BAD_CHARS_PATTERN:Ljava/util/regex/Pattern;

    .line 328
    sput-object v1, Lorg/telegram/messenger/AndroidUtilities;->BAD_CHARS_MESSAGE_PATTERN:Ljava/util/regex/Pattern;

    .line 329
    sput-object v1, Lorg/telegram/messenger/AndroidUtilities;->BAD_CHARS_MESSAGE_LONG_PATTERN:Ljava/util/regex/Pattern;

    .line 330
    sput-object v1, Lorg/telegram/messenger/AndroidUtilities;->REMOVE_MULTIPLE_DIACRITICS:Ljava/util/regex/Pattern;

    .line 331
    sput-object v1, Lorg/telegram/messenger/AndroidUtilities;->REMOVE_RTL:Ljava/util/regex/Pattern;

    .line 332
    sput-object v1, Lorg/telegram/messenger/AndroidUtilities;->singleTagPatter:Ljava/util/regex/Pattern;

    .line 334
    new-instance v0, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->strokeTop:Landroid/graphics/Paint;

    .line 335
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->strokeBottom:Landroid/graphics/Paint;

    .line 362
    :try_start_0
    const-string v0, "[\u2500-\u25ff]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->BAD_CHARS_PATTERN:Ljava/util/regex/Pattern;

    .line 363
    const-string v0, "[\u4e00-\u9fff]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->LONG_BAD_CHARS_PATTERN:Ljava/util/regex/Pattern;

    .line 364
    const-string v0, "[\u0300-\u036f\u2066-\u2067]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->BAD_CHARS_MESSAGE_LONG_PATTERN:Ljava/util/regex/Pattern;

    .line 365
    const-string v0, "[\u2066-\u2067]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->BAD_CHARS_MESSAGE_PATTERN:Ljava/util/regex/Pattern;

    .line 366
    const-string v0, "([\\u0300-\\u036f]{1,2})[\\u0300-\\u036f]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->REMOVE_MULTIPLE_DIACRITICS:Ljava/util/regex/Pattern;

    .line 367
    const-string v0, "((25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9]))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 376
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef\\-]{0,61}[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]){0,1}\\.)+[a-zA-Z\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]{2,63}|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 377
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "((?:(http|https|Http|Https|ton|tg|tonsite):\\/\\/(?:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,64}(?:\\:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,25})?\\@)?)?(?:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")(?:\\:\\d{1,5})?)(\\/(?:(?:["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\\;\\/\\?\\:\\@\\&\\=\\#\\~\\-\\.\\+\\!\\*\\\'\\(\\)\\,\\_])|(?:\\%[a-fA-F0-9]{2}))*)?(?:\\b|$)"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->WEB_URL:Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 387
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 392
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x50

    goto :goto_1

    :cond_0
    const/16 v0, 0x48

    :goto_1
    sput v0, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    .line 393
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->checkDisplaySize(Landroid/content/Context;Landroid/content/res/Configuration;)V

    .line 396
    sget v0, Lorg/telegram/messenger/R$drawable;->media_doc_blue:I

    sget v1, Lorg/telegram/messenger/R$drawable;->media_doc_green:I

    sget v3, Lorg/telegram/messenger/R$drawable;->media_doc_red:I

    sget v4, Lorg/telegram/messenger/R$drawable;->media_doc_yellow:I

    filled-new-array {v0, v1, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->documentIcons:[I

    .line 403
    sget v0, Lorg/telegram/messenger/R$drawable;->media_doc_blue_b:I

    sget v1, Lorg/telegram/messenger/R$drawable;->media_doc_green_b:I

    sget v3, Lorg/telegram/messenger/R$drawable;->media_doc_red_b:I

    sget v4, Lorg/telegram/messenger/R$drawable;->media_doc_yellow_b:I

    filled-new-array {v0, v1, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->documentMediaIcons:[I

    .line 1300
    new-instance v0, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda25;-><init>()V

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    .line 3064
    sput-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->hasCallPermissions:Z

    .line 4074
    const-string v7, "T"

    const-string v8, "P"

    const-string v3, ""

    const-string v4, "K"

    const-string v5, "M"

    const-string v6, "B"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->numbersSignatureArray:[Ljava/lang/String;

    const/16 v0, 0x9

    .line 5236
    new-array v1, v0, [F

    sput-object v1, Lorg/telegram/messenger/AndroidUtilities;->tempFloats:[F

    new-array v0, v0, [F

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->tempFloats2:[F

    const/16 v0, 0x264

    .line 5332
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->characters:[C

    .line 6787
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->navbarProtactionPaint:Landroid/graphics/Paint;

    return-void

    :array_0
    .array-data 2
        0xa0s
        0x20s
        0x21s
        0x22s
        0x23s
        0x25s
        0x26s
        0x27s
        0x28s
        0x29s
        0x2as
        0x2cs
        0x2ds
        0x2es
        0x2fs
        0x3as
        0x3bs
        0x3fs
        0x40s
        0x5bs
        0x5cs
        0x5ds
        0x5fs
        0x7bs
        0x7ds
        0xa1s
        0xa7s
        0xabs
        0xb6s
        0xb7s
        0xbbs
        0xbfs
        0x37es
        0x387s
        0x55as
        0x55bs
        0x55cs
        0x55ds
        0x55es
        0x55fs
        0x589s
        0x58as
        0x5bes
        0x5c0s
        0x5c3s
        0x5c6s
        0x5f3s
        0x5f4s
        0x609s
        0x60as
        0x60cs
        0x60ds
        0x61bs
        0x61es
        0x61fs
        0x66as
        0x66bs
        0x66cs
        0x66ds
        0x6d4s
        0x700s
        0x701s
        0x702s
        0x703s
        0x704s
        0x705s
        0x706s
        0x707s
        0x708s
        0x709s
        0x70as
        0x70bs
        0x70cs
        0x70ds
        0x7f7s
        0x7f8s
        0x7f9s
        0x830s
        0x831s
        0x832s
        0x833s
        0x834s
        0x835s
        0x836s
        0x837s
        0x838s
        0x839s
        0x83as
        0x83bs
        0x83cs
        0x83ds
        0x83es
        0x85es
        0x964s
        0x965s
        0x970s
        0x9fds
        0xa76s
        0xaf0s
        0xc77s
        0xc84s
        0xdf4s
        0xe4fs
        0xe5as
        0xe5bs
        0xf04s
        0xf05s
        0xf06s
        0xf07s
        0xf08s
        0xf09s
        0xf0as
        0xf0bs
        0xf0cs
        0xf0ds
        0xf0es
        0xf0fs
        0xf10s
        0xf11s
        0xf12s
        0xf14s
        0xf3as
        0xf3bs
        0xf3cs
        0xf3ds
        0xf85s
        0xfd0s
        0xfd1s
        0xfd2s
        0xfd3s
        0xfd4s
        0xfd9s
        0xfdas
        0x104as
        0x104bs
        0x104cs
        0x104ds
        0x104es
        0x104fs
        0x10fbs
        0x1360s
        0x1361s
        0x1362s
        0x1363s
        0x1364s
        0x1365s
        0x1366s
        0x1367s
        0x1368s
        0x1400s
        0x166es
        0x169bs
        0x169cs
        0x16ebs
        0x16ecs
        0x16eds
        0x1735s
        0x1736s
        0x17d4s
        0x17d5s
        0x17d6s
        0x17d8s
        0x17d9s
        0x17das
        0x1800s
        0x1801s
        0x1802s
        0x1803s
        0x1804s
        0x1805s
        0x1806s
        0x1807s
        0x1808s
        0x1809s
        0x180as
        0x1944s
        0x1945s
        0x1a1es
        0x1a1fs
        0x1aa0s
        0x1aa1s
        0x1aa2s
        0x1aa3s
        0x1aa4s
        0x1aa5s
        0x1aa6s
        0x1aa8s
        0x1aa9s
        0x1aaas
        0x1aabs
        0x1aacs
        0x1aads
        0x1b5as
        0x1b5bs
        0x1b5cs
        0x1b5ds
        0x1b5es
        0x1b5fs
        0x1b60s
        0x1bfcs
        0x1bfds
        0x1bfes
        0x1bffs
        0x1c3bs
        0x1c3cs
        0x1c3ds
        0x1c3es
        0x1c3fs
        0x1c7es
        0x1c7fs
        0x1cc0s
        0x1cc1s
        0x1cc2s
        0x1cc3s
        0x1cc4s
        0x1cc5s
        0x1cc6s
        0x1cc7s
        0x1cd3s
        0x2010s
        0x2011s
        0x2012s
        0x2013s
        0x2014s
        0x2015s
        0x2016s
        0x2017s
        0x2018s
        0x2019s
        0x201as
        0x201bs
        0x201cs
        0x201ds
        0x201es
        0x201fs
        0x2020s
        0x2021s
        0x2022s
        0x2023s
        0x2024s
        0x2025s
        0x2026s
        0x2027s
        0x2030s
        0x2031s
        0x2032s
        0x2033s
        0x2034s
        0x2035s
        0x2036s
        0x2037s
        0x2038s
        0x2039s
        0x203as
        0x203bs
        0x203cs
        0x203ds
        0x203es
        0x203fs
        0x2040s
        0x2041s
        0x2042s
        0x2043s
        0x2045s
        0x2046s
        0x2047s
        0x2048s
        0x2049s
        0x204as
        0x204bs
        0x204cs
        0x204ds
        0x204es
        0x204fs
        0x2050s
        0x2051s
        0x2053s
        0x2054s
        0x2055s
        0x2056s
        0x2057s
        0x2058s
        0x2059s
        0x205as
        0x205bs
        0x205cs
        0x205ds
        0x205es
        0x207ds
        0x207es
        0x208ds
        0x208es
        0x2308s
        0x2309s
        0x230as
        0x230bs
        0x2329s
        0x232as
        0x2768s
        0x2769s
        0x276as
        0x276bs
        0x276cs
        0x276ds
        0x276es
        0x276fs
        0x2770s
        0x2771s
        0x2772s
        0x2773s
        0x2774s
        0x2775s
        0x27c5s
        0x27c6s
        0x27e6s
        0x27e7s
        0x27e8s
        0x27e9s
        0x27eas
        0x27ebs
        0x27ecs
        0x27eds
        0x27ees
        0x27efs
        0x2983s
        0x2984s
        0x2985s
        0x2986s
        0x2987s
        0x2988s
        0x2989s
        0x298as
        0x298bs
        0x298cs
        0x298ds
        0x298es
        0x298fs
        0x2990s
        0x2991s
        0x2992s
        0x2993s
        0x2994s
        0x2995s
        0x2996s
        0x2997s
        0x2998s
        0x29d8s
        0x29d9s
        0x29das
        0x29dbs
        0x29fcs
        0x29fds
        0x2cf9s
        0x2cfas
        0x2cfbs
        0x2cfcs
        0x2cfes
        0x2cffs
        0x2d70s
        0x2e00s
        0x2e01s
        0x2e02s
        0x2e03s
        0x2e04s
        0x2e05s
        0x2e06s
        0x2e07s
        0x2e08s
        0x2e09s
        0x2e0as
        0x2e0bs
        0x2e0cs
        0x2e0ds
        0x2e0es
        0x2e0fs
        0x2e10s
        0x2e11s
        0x2e12s
        0x2e13s
        0x2e14s
        0x2e15s
        0x2e16s
        0x2e17s
        0x2e18s
        0x2e19s
        0x2e1as
        0x2e1bs
        0x2e1cs
        0x2e1ds
        0x2e1es
        0x2e1fs
        0x2e20s
        0x2e21s
        0x2e22s
        0x2e23s
        0x2e24s
        0x2e25s
        0x2e26s
        0x2e27s
        0x2e28s
        0x2e29s
        0x2e2as
        0x2e2bs
        0x2e2cs
        0x2e2ds
        0x2e2es
        0x2e30s
        0x2e31s
        0x2e32s
        0x2e33s
        0x2e34s
        0x2e35s
        0x2e36s
        0x2e37s
        0x2e38s
        0x2e39s
        0x2e3as
        0x2e3bs
        0x2e3cs
        0x2e3ds
        0x2e3es
        0x2e3fs
        0x2e40s
        0x2e41s
        0x2e42s
        0x2e43s
        0x2e44s
        0x2e45s
        0x2e46s
        0x2e47s
        0x2e48s
        0x2e49s
        0x2e4as
        0x2e4bs
        0x2e4cs
        0x2e4ds
        0x2e4es
        0x2e4fs
        0x3001s
        0x3002s
        0x3003s
        0x3008s
        0x3009s
        0x300as
        0x300bs
        0x300cs
        0x300ds
        0x300es
        0x300fs
        0x3010s
        0x3011s
        0x3014s
        0x3015s
        0x3016s
        0x3017s
        0x3018s
        0x3019s
        0x301as
        0x301bs
        0x301cs
        0x301ds
        0x301es
        0x301fs
        0x3030s
        0x303ds
        0x30a0s
        0x30fbs
        -0x5b02s
        -0x5b01s
        -0x59f3s
        -0x59f2s
        -0x59f1s
        -0x598ds
        -0x5982s
        -0x590es
        -0x590ds
        -0x590cs
        -0x590bs
        -0x590as
        -0x5909s
        -0x578cs
        -0x578bs
        -0x578as
        -0x5789s
        -0x5732s
        -0x5731s
        -0x5708s
        -0x5707s
        -0x5706s
        -0x5704s
        -0x56d2s
        -0x56d1s
        -0x56a1s
        -0x563fs
        -0x563es
        -0x563ds
        -0x563cs
        -0x563bs
        -0x563as
        -0x5639s
        -0x5638s
        -0x5637s
        -0x5636s
        -0x5635s
        -0x5634s
        -0x5633s
        -0x5622s
        -0x5621s
        -0x55a4s
        -0x55a3s
        -0x55a2s
        -0x55a1s
        -0x5522s
        -0x5521s
        -0x5510s
        -0x550fs
        -0x5415s
        -0x2c2s
        -0x2c1s
        -0x1f0s
        -0x1efs
        -0x1ees
        -0x1eds
        -0x1ecs
        -0x1ebs
        -0x1eas
        -0x1e9s
        -0x1e8s
        -0x1e7s
        -0x1d0s
        -0x1cfs
        -0x1ces
        -0x1cds
        -0x1ccs
        -0x1cbs
        -0x1cas
        -0x1c9s
        -0x1c8s
        -0x1c7s
        -0x1c6s
        -0x1c5s
        -0x1c4s
        -0x1c3s
        -0x1c2s
        -0x1c1s
        -0x1c0s
        -0x1bfs
        -0x1bes
        -0x1bds
        -0x1bcs
        -0x1bbs
        -0x1bas
        -0x1b9s
        -0x1b8s
        -0x1b7s
        -0x1b6s
        -0x1b5s
        -0x1b4s
        -0x1b3s
        -0x1b2s
        -0x1b1s
        -0x1b0s
        -0x1afs
        -0x1aes
        -0x1acs
        -0x1abs
        -0x1aas
        -0x1a9s
        -0x1a8s
        -0x1a7s
        -0x1a6s
        -0x1a5s
        -0x1a4s
        -0x1a3s
        -0x1a2s
        -0x1a1s
        -0x1a0s
        -0x19fs
        -0x19ds
        -0x198s
        -0x196s
        -0x195s
        -0xffs
        -0xfes
        -0xfds
        -0xfbs
        -0xfas
        -0xf9s
        -0xf8s
        -0xf7s
        -0xf6s
        -0xf4s
        -0xf3s
        -0xf2s
        -0xf1s
        -0xe6s
        -0xe5s
        -0xe1s
        -0xe0s
        -0xc5s
        -0xc4s
        -0xc3s
        -0xc1s
        -0xa5s
        -0xa3s
        -0xa1s
        -0xa0s
        -0x9fs
        -0x9es
        -0x9ds
        -0x9cs
        -0x9bs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HSBtoRGB(FFF)I
    .locals 6

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x437f0000    # 255.0f

    if-nez v0, :cond_0

    mul-float/2addr p2, v2

    add-float/2addr p2, v1

    float-to-int p0, p2

    :goto_0
    move p1, p0

    move p2, p1

    goto/16 :goto_3

    :cond_0
    float-to-double v3, p0

    .line 4927
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v0, v3

    sub-float/2addr p0, v0

    const/high16 v0, 0x40c00000    # 6.0f

    mul-float/2addr p0, v0

    float-to-double v3, p0

    .line 4928
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v0, v3

    sub-float v0, p0, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v3, p1

    mul-float/2addr v4, p2

    mul-float v5, p1, v0

    sub-float v5, v3, v5

    mul-float/2addr v5, p2

    sub-float v0, v3, v0

    mul-float/2addr p1, v0

    sub-float/2addr v3, p1

    mul-float/2addr v3, p2

    float-to-int p0, p0

    if-eqz p0, :cond_6

    const/4 p1, 0x1

    if-eq p0, p1, :cond_5

    const/4 p1, 0x2

    if-eq p0, p1, :cond_4

    const/4 p1, 0x3

    if-eq p0, p1, :cond_3

    const/4 p1, 0x4

    if-eq p0, p1, :cond_2

    const/4 p1, 0x5

    if-eq p0, p1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    mul-float/2addr p2, v2

    add-float/2addr p2, v1

    float-to-int p0, p2

    mul-float/2addr v4, v2

    add-float/2addr v4, v1

    float-to-int p1, v4

    mul-float/2addr v5, v2

    add-float/2addr v5, v1

    float-to-int p2, v5

    goto :goto_3

    :cond_2
    mul-float/2addr v3, v2

    add-float/2addr v3, v1

    float-to-int p0, v3

    mul-float/2addr v4, v2

    add-float/2addr v4, v1

    float-to-int p1, v4

    :goto_1
    mul-float/2addr p2, v2

    add-float/2addr p2, v1

    float-to-int p2, p2

    goto :goto_3

    :cond_3
    mul-float/2addr v4, v2

    add-float/2addr v4, v1

    float-to-int p0, v4

    mul-float/2addr v5, v2

    add-float/2addr v5, v1

    float-to-int p1, v5

    goto :goto_1

    :cond_4
    mul-float/2addr v4, v2

    add-float/2addr v4, v1

    float-to-int p0, v4

    mul-float/2addr p2, v2

    add-float/2addr p2, v1

    float-to-int p1, p2

    mul-float/2addr v3, v2

    add-float/2addr v3, v1

    float-to-int p2, v3

    goto :goto_3

    :cond_5
    mul-float/2addr v5, v2

    add-float/2addr v5, v1

    float-to-int p0, v5

    mul-float/2addr p2, v2

    add-float/2addr p2, v1

    float-to-int p1, p2

    :goto_2
    mul-float/2addr v4, v2

    add-float/2addr v4, v1

    float-to-int p2, v4

    goto :goto_3

    :cond_6
    mul-float/2addr p2, v2

    add-float/2addr p2, v1

    float-to-int p0, p2

    mul-float/2addr v3, v2

    add-float/2addr v3, v1

    float-to-int p1, v3

    goto :goto_2

    :goto_3
    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x10

    const/high16 v0, -0x1000000

    or-int/2addr p0, v0

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    and-int/lit16 p1, p2, 0xff

    or-int/2addr p0, p1

    return p0
.end method

.method public static RGBtoHSB(III)[F
    .locals 7

    .line 4883
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-le p2, v0, :cond_0

    move v0, p2

    .line 4887
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge p2, v1, :cond_1

    move v1, p2

    :cond_1
    int-to-float v2, v0

    const/high16 v3, 0x437f0000    # 255.0f

    div-float v3, v2, v3

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    sub-int v5, v0, v1

    int-to-float v5, v5

    div-float/2addr v5, v2

    goto :goto_0

    :cond_2
    move v5, v4

    :goto_0
    cmpl-float v2, v5, v4

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    sub-int v2, v0, p0

    int-to-float v2, v2

    sub-int v1, v0, v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    sub-int v6, v0, p1

    int-to-float v6, v6

    div-float/2addr v6, v1

    sub-int p2, v0, p2

    int-to-float p2, p2

    div-float/2addr p2, v1

    if-ne p0, v0, :cond_4

    sub-float/2addr p2, v6

    goto :goto_1

    :cond_4
    if-ne p1, v0, :cond_5

    const/high16 p0, 0x40000000    # 2.0f

    add-float/2addr v2, p0

    sub-float p2, v2, p2

    goto :goto_1

    :cond_5
    const/high16 p0, 0x40800000    # 4.0f

    add-float/2addr v6, p0

    sub-float p2, v6, v2

    :goto_1
    const/high16 p0, 0x40c00000    # 6.0f

    div-float/2addr p2, p0

    cmpg-float p0, p2, v4

    if-gez p0, :cond_6

    const/high16 p0, 0x3f800000    # 1.0f

    add-float v4, p2, p0

    goto :goto_2

    :cond_6
    move v4, p2

    :goto_2
    const/4 p0, 0x3

    .line 4918
    new-array p0, p0, [F

    const/4 p1, 0x0

    aput v4, p0, p1

    const/4 p1, 0x1

    aput v5, p0, p1

    const/4 p1, 0x2

    aput v3, p0, p1

    return-object p0
.end method

.method public static addLinks(Landroid/text/Spannable;I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1309
    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->addLinks(Landroid/text/Spannable;IZ)Z

    move-result p0

    return p0
.end method

.method public static addLinks(Landroid/text/Spannable;IZ)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 1314
    invoke-static {p0, p1, p2, v0}, Lorg/telegram/messenger/AndroidUtilities;->addLinks(Landroid/text/Spannable;IZZ)Z

    move-result p0

    return p0
.end method

.method public static addLinks(Landroid/text/Spannable;IZZ)Z
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_d

    .line 1368
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->containsUnsupportedCharacters(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    if-nez p1, :cond_0

    goto/16 :goto_5

    .line 1371
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {p0, v0, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/URLSpan;

    .line 1372
    array-length v3, v1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_0
    if-ltz v3, :cond_3

    .line 1373
    aget-object v5, v1, v3

    .line 1374
    instance-of v6, v5, Lorg/telegram/ui/Components/URLSpanReplacement;

    if-eqz v6, :cond_1

    if-eqz p3, :cond_2

    .line 1375
    :cond_1
    invoke-interface {p0, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1378
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-nez p2, :cond_4

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    .line 1380
    invoke-static {p0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    :cond_4
    and-int/2addr p1, v4

    if-eqz p1, :cond_5

    .line 1383
    sget-object v7, Lorg/telegram/messenger/LinkifyPort;->WEB_URL:Ljava/util/regex/Pattern;

    const-string/jumbo p1, "tg://"

    const-string/jumbo v1, "tonsite://"

    const-string v3, "http://"

    const-string v6, "https://"

    filled-new-array {v3, v6, p1, v1}, [Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    move-object v6, p0

    move v10, p2

    invoke-static/range {v5 .. v10}, Lorg/telegram/messenger/AndroidUtilities;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Z)V

    goto :goto_1

    :cond_5
    move-object v6, p0

    .line 1385
    :goto_1
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->pruneOverlaps(Ljava/util/ArrayList;)V

    .line 1386
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_6

    return v0

    .line 1389
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p0

    move p1, v0

    :goto_2
    if-ge p1, p0, :cond_c

    .line 1390
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/AndroidUtilities$LinkSpec;

    .line 1391
    iget v1, p2, Lorg/telegram/messenger/AndroidUtilities$LinkSpec;->start:I

    iget v3, p2, Lorg/telegram/messenger/AndroidUtilities$LinkSpec;->end:I

    invoke-interface {v6, v1, v3, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/URLSpan;

    if-eqz v1, :cond_9

    .line 1392
    array-length v3, v1

    if-lez v3, :cond_9

    .line 1393
    array-length v3, v1

    move v7, v0

    :goto_3
    if-ge v7, v3, :cond_9

    aget-object v8, v1, v7

    .line 1394
    invoke-interface {v6, v8}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1396
    instance-of v9, v8, Lorg/telegram/ui/Components/URLSpanReplacement;

    if-eqz v9, :cond_7

    if-eqz p3, :cond_8

    .line 1397
    :cond_7
    invoke-interface {v6, v8}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1401
    :cond_9
    iget-object v1, p2, Lorg/telegram/messenger/AndroidUtilities$LinkSpec;->url:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 1403
    const-string/jumbo v3, "\u2215|\u2044|%E2%81%84|%E2%88%95"

    const-string v7, "/"

    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1405
    :cond_a
    invoke-static {v1}, Lorg/telegram/messenger/browser/Browser;->isTonsitePunycode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_4

    .line 1406
    :cond_b
    new-instance v3, Landroid/text/style/URLSpan;

    invoke-direct {v3, v1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    iget v1, p2, Lorg/telegram/messenger/AndroidUtilities$LinkSpec;->start:I

    iget p2, p2, Lorg/telegram/messenger/AndroidUtilities$LinkSpec;->end:I

    const/16 v7, 0x21

    invoke-interface {v6, v3, v1, p2, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :goto_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_c
    return v4

    :cond_d
    :goto_5
    return v0
.end method

.method public static addLinksSafe(Landroid/text/Spannable;IZZ)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1320
    :cond_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1321
    new-instance v2, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda19;

    invoke-direct {v2, v1, p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda19;-><init>(Landroid/text/SpannableStringBuilder;IZZ)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->doSafe(Lorg/telegram/messenger/Utilities$Callback0Return;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1323
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const-class p3, Landroid/text/style/URLSpan;

    invoke-interface {p0, v0, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/text/style/URLSpan;

    move v2, v0

    .line 1324
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_1

    .line 1325
    aget-object v3, p2, v2

    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1327
    :cond_1
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    invoke-virtual {v1, v0, p2, p3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/text/style/URLSpan;

    .line 1328
    :goto_1
    array-length p3, p2

    if-ge v0, p3, :cond_2

    .line 1329
    aget-object p3, p2, v0

    invoke-virtual {v1, p3}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    aget-object v3, p2, v0

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    const/16 v4, 0x21

    invoke-interface {p0, p3, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return p1
.end method

.method public static addMediaToGallery(Ljava/io/File;)V
    .locals 2

    .line 3641
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 3646
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3647
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3648
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 3650
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static addMediaToGallery(Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 3636
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3637
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->addMediaToGallery(Ljava/io/File;)V

    return-void
.end method

.method public static addToClipboard(Ljava/lang/CharSequence;)Z
    .locals 4

    .line 3615
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 3617
    instance-of v1, p0, Landroid/text/Spanned;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    const-string/jumbo v3, "label"

    if-eqz v1, :cond_0

    .line 3618
    :try_start_1
    move-object v1, p0

    check-cast v1, Landroid/text/Spanned;

    invoke-static {v1}, Lorg/telegram/messenger/utils/CustomHtml;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, p0, v1}, Landroid/content/ClipData;->newHtmlText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/content/ClipData;

    move-result-object p0

    .line 3619
    invoke-virtual {v0, p0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return v2

    .line 3622
    :cond_0
    invoke-static {v3, p0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p0

    .line 3623
    invoke-virtual {v0, p0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v2

    :catch_0
    move-exception p0

    .line 3627
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static adjustBrightnessColorMatrix(Landroid/graphics/ColorMatrix;F)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    .line 1657
    new-instance v0, Landroid/graphics/ColorMatrix;

    const/16 v1, 0x14

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v4, 0x0

    aput v4, v1, v2

    const/4 v2, 0x2

    aput v4, v1, v2

    const/4 v2, 0x3

    aput v4, v1, v2

    const/4 v2, 0x4

    aput p1, v1, v2

    const/4 v2, 0x5

    aput v4, v1, v2

    const/4 v2, 0x6

    aput v3, v1, v2

    const/4 v2, 0x7

    aput v4, v1, v2

    const/16 v2, 0x8

    aput v4, v1, v2

    const/16 v2, 0x9

    aput p1, v1, v2

    const/16 v2, 0xa

    aput v4, v1, v2

    const/16 v2, 0xb

    aput v4, v1, v2

    const/16 v2, 0xc

    aput v3, v1, v2

    const/16 v2, 0xd

    aput v4, v1, v2

    const/16 v2, 0xe

    aput p1, v1, v2

    const/16 p1, 0xf

    aput v4, v1, p1

    const/16 p1, 0x10

    aput v4, v1, p1

    const/16 p1, 0x11

    aput v4, v1, p1

    const/16 p1, 0x12

    aput v3, v1, p1

    const/16 p1, 0x13

    aput v4, v1, p1

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-virtual {p0, v0}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    return-void
.end method

.method public static adjustHueColorMatrix(Landroid/graphics/ColorMatrix;F)V
    .locals 14

    const/high16 v0, 0x43340000    # 180.0f

    .line 1666
    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->cleanValue(FF)F

    move-result p1

    div-float/2addr p1, v0

    const v0, 0x40490fdb    # (float)Math.PI

    mul-float/2addr p1, v0

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    return-void

    :cond_0
    float-to-double v1, p1

    .line 1670
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float p1, v3

    .line 1671
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    const v2, 0x3f4978d5    # 0.787f

    mul-float/2addr v2, p1

    const v3, 0x3e5a1cac    # 0.213f

    add-float/2addr v2, v3

    const v4, -0x41a5e354    # -0.213f

    mul-float v5, v1, v4

    add-float/2addr v2, v5

    const v5, -0x40c8f5c3    # -0.715f

    mul-float v6, p1, v5

    const v7, 0x3f370a3d    # 0.715f

    add-float/2addr v6, v7

    mul-float/2addr v5, v1

    add-float/2addr v5, v6

    const v8, -0x426c8b44    # -0.072f

    mul-float/2addr v8, p1

    const v9, 0x3d9374bc    # 0.072f

    add-float/2addr v8, v9

    const v10, 0x3f6d9168    # 0.928f

    mul-float v11, v1, v10

    add-float/2addr v11, v8

    mul-float/2addr v4, p1

    add-float/2addr v4, v3

    const v3, 0x3e126e98    # 0.143f

    mul-float/2addr v3, v1

    add-float/2addr v3, v4

    const v12, 0x3e91eb86    # 0.28500003f

    mul-float/2addr v12, p1

    add-float/2addr v12, v7

    const v13, 0x3e0f5c29    # 0.14f

    mul-float/2addr v13, v1

    add-float/2addr v12, v13

    const v13, -0x416f1aa0    # -0.283f

    mul-float/2addr v13, v1

    add-float/2addr v8, v13

    const v13, -0x40b6872b    # -0.787f

    mul-float/2addr v13, v1

    add-float/2addr v4, v13

    mul-float/2addr v7, v1

    add-float/2addr v6, v7

    mul-float/2addr p1, v10

    add-float/2addr p1, v9

    mul-float/2addr v1, v9

    add-float/2addr p1, v1

    const/16 v1, 0x19

    .line 1675
    new-array v1, v1, [F

    const/4 v7, 0x0

    aput v2, v1, v7

    const/4 v2, 0x1

    aput v5, v1, v2

    const/4 v2, 0x2

    aput v11, v1, v2

    const/4 v2, 0x3

    aput v0, v1, v2

    const/4 v2, 0x4

    aput v0, v1, v2

    const/4 v2, 0x5

    aput v3, v1, v2

    const/4 v2, 0x6

    aput v12, v1, v2

    const/4 v2, 0x7

    aput v8, v1, v2

    const/16 v2, 0x8

    aput v0, v1, v2

    const/16 v2, 0x9

    aput v0, v1, v2

    const/16 v2, 0xa

    aput v4, v1, v2

    const/16 v2, 0xb

    aput v6, v1, v2

    const/16 v2, 0xc

    aput p1, v1, v2

    const/16 p1, 0xd

    aput v0, v1, p1

    const/16 p1, 0xe

    aput v0, v1, p1

    const/16 p1, 0xf

    aput v0, v1, p1

    const/16 p1, 0x10

    aput v0, v1, p1

    const/16 p1, 0x11

    aput v0, v1, p1

    const/16 p1, 0x12

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, p1

    const/16 p1, 0x13

    aput v0, v1, p1

    const/16 p1, 0x14

    aput v0, v1, p1

    const/16 p1, 0x15

    aput v0, v1, p1

    const/16 p1, 0x16

    aput v0, v1, p1

    const/16 p1, 0x17

    aput v0, v1, p1

    const/16 p1, 0x18

    aput v2, v1, p1

    .line 1682
    new-instance p1, Landroid/graphics/ColorMatrix;

    invoke-direct {p1, v1}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-virtual {p0, p1}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    return-void
.end method

.method public static adjustSaturationColorMatrix(Landroid/graphics/ColorMatrix;F)V
    .locals 9

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    .line 1644
    new-instance v1, Landroid/graphics/ColorMatrix;

    sub-float v2, v0, p1

    const v3, 0x3e9e00d2    # 0.3086f

    mul-float/2addr v3, v2

    add-float v4, v3, p1

    const v5, 0x3f1c01a3    # 0.6094f

    mul-float/2addr v5, v2

    const v6, 0x3da7ef9e    # 0.082f

    mul-float/2addr v2, v6

    add-float v6, v5, p1

    add-float/2addr p1, v2

    const/16 v7, 0x14

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput v4, v7, v8

    const/4 v4, 0x1

    aput v5, v7, v4

    const/4 v4, 0x2

    aput v2, v7, v4

    const/4 v4, 0x3

    const/4 v8, 0x0

    aput v8, v7, v4

    const/4 v4, 0x4

    aput v8, v7, v4

    const/4 v4, 0x5

    aput v3, v7, v4

    const/4 v4, 0x6

    aput v6, v7, v4

    const/4 v4, 0x7

    aput v2, v7, v4

    const/16 v2, 0x8

    aput v8, v7, v2

    const/16 v2, 0x9

    aput v8, v7, v2

    const/16 v2, 0xa

    aput v3, v7, v2

    const/16 v2, 0xb

    aput v5, v7, v2

    const/16 v2, 0xc

    aput p1, v7, v2

    const/16 p1, 0xd

    aput v8, v7, p1

    const/16 p1, 0xe

    aput v8, v7, p1

    const/16 p1, 0xf

    aput v8, v7, p1

    const/16 p1, 0x10

    aput v8, v7, p1

    const/16 p1, 0x11

    aput v8, v7, p1

    const/16 p1, 0x12

    aput v0, v7, p1

    const/16 p1, 0x13

    aput v8, v7, p1

    invoke-direct {v1, v7}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-virtual {p0, v1}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    return-void
.end method

.method public static allGlobalViews()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 6023
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    .line 6024
    invoke-static {}, Landroid/view/inspector/WindowInspector;->getGlobalWindowViews()Ljava/util/List;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    .line 6026
    :cond_0
    const-string v1, "android.view.WindowManagerGlobal"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 6027
    const-string v2, "getInstance"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 6029
    const-string v3, "getViewRootNames"

    invoke-virtual {v1, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 6030
    const-string v4, "getRootView"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 6031
    invoke-virtual {v3, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 6033
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6034
    array-length v6, v3

    move v7, v8

    :goto_0
    if-ge v7, v6, :cond_1

    aget-object v9, v3, v7

    .line 6035
    new-array v10, v5, [Ljava/lang/Object;

    aput-object v9, v10, v8

    invoke-virtual {v1, v2, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    return-object v4

    .line 6040
    :goto_1
    const-string v2, "allGlobalViews()"

    invoke-static {v2, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static allowScreenCapture()Z
    .locals 1

    .line 5291
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->allowScreenCapture:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static applyColorMatrix(ILandroid/graphics/ColorMatrix;)I
    .locals 8

    .line 6935
    invoke-virtual {p1}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object p1

    .line 6937
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 6938
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 6939
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 6940
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    const/4 v3, 0x0

    .line 6942
    aget v4, p1, v3

    int-to-float v1, v1

    mul-float/2addr v4, v1

    const/4 v5, 0x1

    aget v5, p1, v5

    int-to-float v2, v2

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    const/4 v5, 0x2

    aget v5, p1, v5

    int-to-float p0, p0

    mul-float/2addr v5, p0

    add-float/2addr v4, v5

    const/4 v5, 0x3

    aget v5, p1, v5

    int-to-float v0, v0

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    const/4 v5, 0x4

    aget v5, p1, v5

    add-float/2addr v4, v5

    const/4 v5, 0x5

    .line 6943
    aget v5, p1, v5

    mul-float/2addr v5, v1

    const/4 v6, 0x6

    aget v6, p1, v6

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    const/4 v6, 0x7

    aget v6, p1, v6

    mul-float/2addr v6, p0

    add-float/2addr v5, v6

    const/16 v6, 0x8

    aget v6, p1, v6

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    const/16 v6, 0x9

    aget v6, p1, v6

    add-float/2addr v5, v6

    const/16 v6, 0xa

    .line 6944
    aget v6, p1, v6

    mul-float/2addr v6, v1

    const/16 v7, 0xb

    aget v7, p1, v7

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    const/16 v7, 0xc

    aget v7, p1, v7

    mul-float/2addr v7, p0

    add-float/2addr v6, v7

    const/16 v7, 0xd

    aget v7, p1, v7

    mul-float/2addr v7, v0

    add-float/2addr v6, v7

    const/16 v7, 0xe

    aget v7, p1, v7

    add-float/2addr v6, v7

    const/16 v7, 0xf

    .line 6945
    aget v7, p1, v7

    mul-float/2addr v7, v1

    const/16 v1, 0x10

    aget v1, p1, v1

    mul-float/2addr v1, v2

    add-float/2addr v7, v1

    const/16 v1, 0x11

    aget v1, p1, v1

    mul-float/2addr v1, p0

    add-float/2addr v7, v1

    const/16 p0, 0x12

    aget p0, p1, p0

    mul-float/2addr p0, v0

    add-float/2addr v7, p0

    const/16 p0, 0x13

    aget p0, p1, p0

    add-float/2addr v7, p0

    .line 6947
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result p0

    const/16 p1, 0xff

    invoke-static {p0, v3, p1}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p0

    .line 6948
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0, v3, p1}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v0

    .line 6949
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1, v3, p1}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v1

    .line 6950
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v2, v3, p1}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p1

    .line 6952
    invoke-static {p1, p0, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static applySpring(Landroid/animation/Animator;DD)V
    .locals 9

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 6561
    invoke-static/range {v0 .. v8}, Lorg/telegram/messenger/AndroidUtilities;->applySpring(Landroid/animation/Animator;DDDD)V

    return-void
.end method

.method public static applySpring(Landroid/animation/Animator;DDD)V
    .locals 9

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    .line 6565
    invoke-static/range {v0 .. v8}, Lorg/telegram/messenger/AndroidUtilities;->applySpring(Landroid/animation/Animator;DDDD)V

    return-void
.end method

.method public static applySpring(Landroid/animation/Animator;DDDD)V
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v1, p7

    div-double v3, p1, p5

    .line 6569
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    mul-double v3, p1, p5

    .line 6570
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double/2addr v3, v5

    div-double v6, p3, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double v5, v6, v3

    if-gez v5, :cond_0

    mul-double v10, v6, v6

    sub-double/2addr v3, v10

    .line 6573
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    mul-double/2addr v3, v8

    mul-double v10, v6, v8

    neg-double v1, v1

    add-double/2addr v10, v1

    div-double/2addr v10, v3

    :goto_0
    move-wide v12, v3

    move-wide v14, v10

    goto :goto_1

    :cond_0
    neg-double v1, v1

    add-double v10, v1, v8

    const-wide/16 v3, 0x0

    goto :goto_0

    :goto_1
    const-wide v1, 0x3f647ae147ae147bL    # 0.0025

    .line 6582
    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    neg-double v3, v6

    mul-double/2addr v3, v8

    div-double/2addr v1, v3

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double/2addr v1, v3

    double-to-long v1, v1

    .line 6583
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 6584
    new-instance v5, Lorg/telegram/messenger/AndroidUtilities$15;

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v5 .. v15}, Lorg/telegram/messenger/AndroidUtilities$15;-><init>(DDDDD)V

    invoke-virtual {v0, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public static applySpring(Landroid/animation/Animator;FFFJ)V
    .locals 6

    float-to-double v0, p2

    mul-float p2, p1, p3

    float-to-double v2, p2

    .line 6597
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    div-float/2addr p1, p3

    float-to-double p1, p1

    .line 6598
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    .line 6600
    invoke-virtual {p0, p4, p5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 6601
    new-instance p3, Lorg/telegram/messenger/AndroidUtilities$16;

    invoke-direct {p3, v0, v1, p1, p2}, Lorg/telegram/messenger/AndroidUtilities$16;-><init>(DD)V

    invoke-virtual {p0, p3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public static bold()Landroid/graphics/Typeface;
    .locals 3

    .line 265
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->mediumTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_1

    .line 266
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useSystemBoldFont:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/16 v0, 0x1f4

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 267
    invoke-static {v2, v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->mediumTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    .line 269
    :cond_0
    const-string v0, "fonts/rmedium.ttf"

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->mediumTypeface:Landroid/graphics/Typeface;

    .line 272
    :cond_1
    :goto_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->mediumTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static calcAuthKeyHash([B)[B
    .locals 3

    .line 4172
    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->computeSHA1([B)[B

    move-result-object p0

    const/16 v0, 0x10

    .line 4173
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 4174
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static calcBitmapColor(Landroid/graphics/Bitmap;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    .line 1505
    :try_start_0
    invoke-static {p0, v1, v1, v1}, Lorg/telegram/messenger/Bitmaps;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1507
    invoke-virtual {v1, v0, v0}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    if-eq p0, v1, :cond_1

    .line 1509
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    return v2

    .line 1514
    :goto_0
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    return v0
.end method

.method public static calcDrawableColor(Landroid/graphics/drawable/Drawable;)[I
    .locals 19

    move-object/from16 v0, p0

    .line 1520
    instance-of v1, v0, Lorg/telegram/ui/ChatBackgroundDrawable;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1521
    check-cast v0, Lorg/telegram/ui/ChatBackgroundDrawable;

    .line 1522
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ChatBackgroundDrawable;->getDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->calcDrawableColor(Landroid/graphics/drawable/Drawable;)[I

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x4

    .line 1525
    new-array v1, v1, [I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/high16 v6, -0x1000000

    .line 1527
    :try_start_0
    instance-of v7, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_1

    .line 1528
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1529
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->calcBitmapColor(Landroid/graphics/Bitmap;)I

    move-result v6

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 1530
    :cond_1
    instance-of v7, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v7, :cond_2

    .line 1531
    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v6

    goto :goto_1

    .line 1532
    :cond_2
    instance-of v7, v0, Lorg/telegram/ui/Components/BackgroundGradientDrawable;

    if-eqz v7, :cond_4

    .line 1533
    check-cast v0, Lorg/telegram/ui/Components/BackgroundGradientDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackgroundGradientDrawable;->getColorsList()[I

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1535
    array-length v7, v0

    if-le v7, v2, :cond_3

    .line 1536
    aget v7, v0, v5

    aget v0, v0, v2

    invoke-static {v7, v0}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v6

    goto :goto_1

    .line 1537
    :cond_3
    array-length v7, v0

    if-lez v7, :cond_5

    .line 1538
    aget v6, v0, v5

    goto :goto_1

    .line 1541
    :cond_4
    instance-of v0, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v0, :cond_5

    const/16 v0, 0x2d

    .line 1542
    invoke-static {v0, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    aput v0, v1, v4

    aput v0, v1, v5

    const/16 v0, 0x3d

    .line 1543
    invoke-static {v0, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    aput v0, v1, v3

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1547
    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    shr-int/lit8 v0, v6, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v7, v6, 0x8

    and-int/lit16 v7, v7, 0xff

    and-int/lit16 v6, v6, 0xff

    .line 1550
    invoke-static {v0, v7, v6}, Lorg/telegram/messenger/AndroidUtilities;->rgbToHsv(III)[D

    move-result-object v0

    .line 1551
    aget-wide v6, v0, v2

    const-wide v8, 0x3fa999999999999aL    # 0.05

    add-double/2addr v8, v6

    const-wide v10, 0x3fb999999999999aL    # 0.1

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v6, v12, v6

    mul-double/2addr v6, v10

    add-double/2addr v8, v6

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    aput-wide v6, v0, v2

    .line 1552
    aget-wide v6, v0, v4

    const-wide v8, 0x3fe4cccccccccccdL    # 0.65

    mul-double/2addr v6, v8

    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    .line 1553
    aget-wide v10, v0, v5

    aget-wide v12, v0, v2

    invoke-static/range {v10 .. v15}, Lorg/telegram/messenger/AndroidUtilities;->hsvToRgb(DDD)[I

    move-result-object v6

    .line 1554
    aget v7, v6, v5

    aget v10, v6, v2

    aget v11, v6, v4

    const/16 v12, 0x66

    invoke-static {v12, v7, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    aput v7, v1, v5

    .line 1555
    aget v7, v6, v5

    aget v10, v6, v2

    aget v6, v6, v4

    const/16 v11, 0x88

    invoke-static {v11, v7, v10, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    aput v6, v1, v2

    .line 1557
    aget-wide v6, v0, v4

    const-wide v13, 0x3fe70a3d70a3d70aL    # 0.72

    mul-double/2addr v6, v13

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v17

    .line 1558
    aget-wide v13, v0, v5

    aget-wide v15, v0, v2

    invoke-static/range {v13 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->hsvToRgb(DDD)[I

    move-result-object v0

    .line 1559
    aget v6, v0, v5

    aget v7, v0, v2

    aget v8, v0, v4

    invoke-static {v12, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    aput v6, v1, v4

    .line 1560
    aget v5, v0, v5

    aget v2, v0, v2

    aget v0, v0, v4

    invoke-static {v11, v5, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    aput v0, v1, v3

    return-object v1
.end method

.method public static cancelRunOnUIThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 2957
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 2960
    :cond_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static cascade(FFFF)F
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-gtz v1, :cond_0

    return p0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    div-float v2, v1, p2

    .line 5270
    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p3

    mul-float/2addr v2, p3

    div-float/2addr p1, p2

    sub-float p2, v1, v2

    mul-float/2addr p1, p2

    sub-float/2addr p0, p1

    div-float/2addr p0, v2

    .line 5272
    invoke-static {p0, v0, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p0

    return p0
.end method

.method private static changeSetSystemUiVisibility(Landroid/view/View;IZ)V
    .locals 1

    .line 5438
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 5439
    invoke-static {v0, p1, p2}, Lme/vkryl/core/BitwiseUtils;->setFlag(IIZ)I

    move-result p1

    if-eq v0, p1, :cond_0

    .line 5441
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public static charSequenceContains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 0

    .line 3216
    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->charSequenceIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static charSequenceIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 1

    const/4 v0, 0x0

    .line 3212
    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->charSequenceIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result p0

    return p0
.end method

.method public static charSequenceIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 4

    const/4 v0, -0x1

    if-eqz p1, :cond_3

    .line 3196
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_2

    .line 3197
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v1, v2

    if-gt p2, v1, :cond_3

    const/4 v1, 0x0

    .line 3199
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3200
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int v3, p2, v1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return p2

    :cond_3
    :goto_2
    return v0
.end method

.method public static checkAndroidTheme(Landroid/content/Context;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 6479
    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    sget p1, Lorg/telegram/messenger/R$style;->Theme_TMessages_Dark:I

    goto :goto_0

    :cond_1
    sget p1, Lorg/telegram/messenger/R$style;->Theme_TMessages:I

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->setTheme(I)V

    return-void
.end method

.method public static checkDisplaySize(Landroid/content/Context;Landroid/content/res/Configuration;)V
    .locals 6

    .line 2778
    const-string v0, " "

    :try_start_0
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    .line 2779
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    .line 2781
    sget-boolean v3, Lorg/telegram/messenger/AndroidUtilities;->firstConfigurationWas:Z

    if-eqz v3, :cond_0

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 2782
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme;->reloadAllResources(Landroid/content/Context;)V

    :cond_0
    const/4 v1, 0x1

    .line 2784
    sput-boolean v1, Lorg/telegram/messenger/AndroidUtilities;->firstConfigurationWas:Z

    if-nez p1, :cond_1

    .line 2787
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 2790
    :cond_1
    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v3, 0x0

    if-eq v2, v1, :cond_2

    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v2, v1, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    sput-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    .line 2791
    const-string/jumbo v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    if-eqz v2, :cond_5

    .line 2793
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2795
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2796
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    invoke-virtual {v2, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2797
    invoke-virtual {v2}, Landroid/view/Display;->getRefreshRate()F

    move-result v4

    sput v4, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshRate:F

    .line 2798
    sput v4, Lorg/telegram/messenger/AndroidUtilities;->screenMaxRefreshRate:F

    .line 2799
    invoke-virtual {v2}, Landroid/view/Display;->getSupportedRefreshRates()[F

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2801
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_4

    .line 2802
    aget v4, v2, v3

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->screenMaxRefreshRate:F

    cmpl-float v5, v4, v5

    if-lez v5, :cond_3

    .line 2803
    sput v4, Lorg/telegram/messenger/AndroidUtilities;->screenMaxRefreshRate:F

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2807
    :cond_4
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshRate:F

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v3, v2

    sput v3, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshTime:F

    .line 2810
    :cond_5
    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    const/4 v3, 0x3

    if-eqz v2, :cond_6

    int-to-float v2, v2

    .line 2811
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v2, v4

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 2812
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v4, v3, :cond_6

    .line 2813
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iput v2, v4, Landroid/graphics/Point;->x:I

    .line 2816
    :cond_6
    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v2, :cond_7

    int-to-float v2, v2

    .line 2817
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v2, v4

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 2818
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v4, v3, :cond_7

    .line 2819
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iput v2, v3, Landroid/graphics/Point;->y:I

    .line 2822
    :cond_7
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    if-nez v2, :cond_9

    .line 2823
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    const v3, 0x3f19999a    # 0.6f

    const/high16 v4, 0x41e00000    # 28.0f

    if-eqz v2, :cond_8

    .line 2824
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    .line 2825
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I

    move-result v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    sput v2, Lorg/telegram/messenger/AndroidUtilities;->roundPlayingMessageSize:I

    .line 2826
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I

    move-result v2

    const/high16 v3, 0x42b80000    # 92.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    sput v2, Lorg/telegram/messenger/AndroidUtilities;->roundSidePlayingMessageSize:I

    goto :goto_2

    .line 2828
    :cond_8
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    .line 2829
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    sput v2, Lorg/telegram/messenger/AndroidUtilities;->roundPlayingMessageSize:I

    .line 2830
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    const/high16 v3, 0x42800000    # 64.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    sput v2, Lorg/telegram/messenger/AndroidUtilities;->roundSidePlayingMessageSize:I

    :goto_2
    const/high16 v2, 0x40000000    # 2.0f

    .line 2832
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sput v2, Lorg/telegram/messenger/AndroidUtilities;->roundMessageInset:I

    .line 2834
    :cond_9
    invoke-static {p0, v1}, Lorg/telegram/messenger/AndroidUtilities;->fillStatusBarHeight(Landroid/content/Context;Z)V

    .line 2835
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_a

    .line 2836
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "density = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " display size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "x"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", screen layout: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", statusbar height: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", navbar height: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 2838
    :cond_a
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    .line 2839
    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p0

    int-to-float p0, p0

    sput p0, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    const/4 p0, 0x0

    .line 2840
    sput-object p0, Lorg/telegram/messenger/AndroidUtilities;->isSmallScreen:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2842
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static checkHostForPunycode(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    .line 5534
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v3, v0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v3, v2, :cond_6

    .line 5535
    :try_start_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v7, 0x2e

    if-eq v6, v7, :cond_5

    const/16 v7, 0x2d

    if-eq v6, v7, :cond_5

    const/16 v7, 0x2f

    if-eq v6, v7, :cond_5

    const/16 v7, 0x2b

    if-eq v6, v7, :cond_5

    const/16 v7, 0x30

    if-lt v6, v7, :cond_1

    const/16 v7, 0x39

    if-gt v6, v7, :cond_1

    goto :goto_2

    :cond_1
    const/16 v7, 0x61

    if-lt v6, v7, :cond_2

    const/16 v7, 0x7a

    if-le v6, v7, :cond_3

    :cond_2
    const/16 v7, 0x41

    if-lt v6, v7, :cond_4

    const/16 v7, 0x5a

    if-gt v6, v7, :cond_4

    :cond_3
    move v4, v1

    goto :goto_1

    :cond_4
    move v5, v1

    :goto_1
    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    move v4, v0

    move v5, v4

    .line 5549
    :goto_3
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    if-eqz v4, :cond_7

    if-eqz v5, :cond_7

    move v0, v1

    :cond_7
    return v0
.end method

.method public static checkInlinePermissions(Landroid/content/Context;)Z
    .locals 0

    .line 5597
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static checkPhonePattern(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 3121
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3124
    :cond_0
    const-string v0, "\\*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 3125
    invoke-static {p1}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3128
    array-length v0, p0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_3

    aget-object v5, p0, v3

    .line 3129
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 3130
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    return v2

    .line 3133
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public static checkPipPermissions(Landroid/content/Context;)Z
    .locals 4

    .line 5602
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.picture_in_picture"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5605
    :cond_0
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 5606
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v3, "android:picture_in_picture"

    invoke-virtual {v0, v3, v2, p0}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method protected static cleanValue(FF)F
    .locals 1

    neg-float v0, p1

    .line 1686
    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public static clearDrawableAnimation(Landroid/view/View;)V
    .locals 1

    if-nez p0, :cond_0

    goto :goto_0

    .line 3306
    :cond_0
    instance-of v0, p0, Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 3307
    check-cast p0, Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 3309
    sget-object v0, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void

    .line 3312
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 3314
    sget-object v0, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3315
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static clearTypefaceCache()V
    .locals 2

    .line 2440
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->typefaceCache:Lj$/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 2441
    :try_start_0
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    .line 2442
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static cloneByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 6461
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 6462
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v2

    .line 6463
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 6464
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 6465
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 6466
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 6467
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public static compare(II)I
    .locals 0

    .line 0
    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-le p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static compare(JJ)I
    .locals 0

    .line 0
    cmp-long p0, p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static computeDampingRatio(FFF)F
    .locals 2

    mul-float/2addr p2, p0

    float-to-double v0, p2

    .line 5280
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p0, p2

    div-float/2addr p1, p0

    return p1
.end method

.method public static computePerceivedBrightness(I)F
    .locals 3

    .line 4969
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e59b3d0    # 0.2126f

    mul-float/2addr v0, v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f371759    # 0.7152f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    const v1, 0x3d93dd98    # 0.0722f

    mul-float/2addr p0, v1

    add-float/2addr v0, p0

    const/high16 p0, 0x437f0000    # 255.0f

    div-float/2addr v0, p0

    return v0
.end method

.method public static varargs concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    .line 4846
    array-length v0, p0

    if-nez v0, :cond_0

    .line 4847
    const-string p0, ""

    return-object p0

    .line 4850
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 4851
    aget-object p0, p0, v1

    return-object p0

    .line 4855
    :cond_1
    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    aget-object v3, p0, v2

    .line 4856
    instance-of v3, v3, Landroid/text/Spanned;

    if-eqz v3, :cond_4

    .line 4863
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 4864
    array-length v2, p0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, p0, v1

    if-nez v3, :cond_2

    .line 4868
    const-string/jumbo v3, "null"

    :cond_2
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4870
    :cond_3
    new-instance p0, Landroid/text/SpannedString;

    invoke-direct {p0, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object p0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4872
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4873
    array-length v2, p0

    :goto_2
    if-ge v1, v2, :cond_6

    aget-object v3, p0, v1

    .line 4874
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4876
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static containsUnsupportedCharacters(Ljava/lang/String;)Z
    .locals 2

    .line 414
    const-string/jumbo v0, "\u202c"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 417
    :cond_0
    const-string/jumbo v0, "\u202d"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 420
    :cond_1
    const-string/jumbo v0, "\u202e"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 424
    :cond_2
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->BAD_CHARS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0

    :catchall_0
    return v1
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 9

    .line 4156
    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4159
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4160
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 4162
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4163
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    const-wide/16 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4164
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return v1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    .line 4162
    :try_start_5
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object p0, v0

    :try_start_6
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object p1, v0

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 4165
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static copyFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 1

    .line 4132
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {p0, v0}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result p0

    return p0
.end method

.method public static copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 3

    const/16 v0, 0x1000

    .line 4136
    new-array v0, v0, [B

    .line 4138
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    .line 4139
    invoke-static {}, Ljava/lang/Thread;->yield()V

    const/4 v2, 0x0

    .line 4140
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 4142
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    const/4 p0, 0x1

    return p0
.end method

.method public static copyFileSafe(Ljava/io/File;Ljava/io/File;)Z
    .locals 0

    .line 4148
    :try_start_0
    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 4150
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static createCalendarEvent(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    if-eqz p5, :cond_0

    .line 6961
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 6962
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 p1, 0xb

    const/4 p2, 0x0

    .line 6963
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 6964
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 6965
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    .line 6966
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 6968
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    .line 6969
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    :goto_0
    add-long/2addr v0, p1

    goto :goto_1

    .line 6974
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    goto :goto_0

    .line 6977
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 6978
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "beginTime"

    .line 6979
    invoke-virtual {v2, v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "endTime"

    .line 6980
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "allDay"

    .line 6981
    invoke-virtual {p1, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 6983
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 6984
    const-string/jumbo p2, "title"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6987
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 6988
    const-string p2, "description"

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6992
    :cond_2
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 6994
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static createEmptyFile(Ljava/io/File;)V
    .locals 1

    .line 1795
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1798
    :cond_0
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 1799
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 1800
    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 1802
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static decodeQuotedPrintable([B)[B
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 4106
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    .line 4107
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 4108
    aget-byte v3, p0, v2

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_1

    add-int/lit8 v3, v2, 0x1

    .line 4111
    :try_start_0
    aget-byte v3, p0, v3

    int-to-char v3, v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    add-int/lit8 v2, v2, 0x2

    .line 4112
    aget-byte v5, p0, v2

    int-to-char v5, v5

    invoke-static {v5, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v4

    int-to-char v3, v3

    .line 4113
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 4115
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object v0

    .line 4119
    :cond_1
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4122
    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 4124
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception v0

    .line 4126
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public static distance(FFFF)F
    .locals 0

    sub-float/2addr p2, p0

    mul-float/2addr p2, p2

    sub-float/2addr p3, p1

    mul-float/2addr p3, p3

    add-float/2addr p2, p3

    float-to-double p0, p2

    .line 5102
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static distanceInfluenceForSnapDuration(F)F
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p0, v0

    const v0, 0x3ef1463b

    mul-float/2addr p0, v0

    float-to-double v0, p0

    .line 5047
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static doOnLayout(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 1161
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1164
    :cond_1
    new-instance v0, Lorg/telegram/messenger/AndroidUtilities$10;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/AndroidUtilities$10;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public static doOnPreDraw(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 3

    .line 6641
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    const/4 v0, 0x1

    .line 6643
    new-array v1, v0, [Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 6644
    new-array v0, v0, [Z

    .line 6645
    new-instance v2, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v1, v0, p1}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda5;-><init>(Landroid/view/ViewTreeObserver;[Landroid/view/ViewTreeObserver$OnPreDrawListener;[ZLjava/lang/Runnable;)V

    const/4 p1, 0x0

    aput-object v2, v1, p1

    .line 6655
    invoke-virtual {p0, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public static doSafe(Lorg/telegram/messenger/Utilities$Callback0Return;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback0Return<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/16 v0, 0xc8

    .line 1336
    invoke-static {p0, v0}, Lorg/telegram/messenger/AndroidUtilities;->doSafe(Lorg/telegram/messenger/Utilities$Callback0Return;I)Z

    move-result p0

    return p0
.end method

.method public static doSafe(Lorg/telegram/messenger/Utilities$Callback0Return;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback0Return<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    .line 1340
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 1341
    new-instance v1, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/messenger/Utilities$Callback0Return;)V

    .line 1352
    :try_start_0
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v1, p1

    .line 1353
    :try_start_1
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v1, v2, p1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1361
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1359
    :try_start_2
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1361
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_2

    :catch_1
    const/4 p0, 0x0

    :catch_2
    if-eqz p0, :cond_0

    const/4 p1, 0x1

    .line 1356
    :try_start_3
    invoke-interface {p0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1361
    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 1362
    throw p0

    :goto_2
    const/4 p0, 0x0

    return p0
.end method

.method public static dp(F)I
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2734
    :cond_0
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public static dp2(F)I
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2748
    :cond_0
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public static dpf2(F)F
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-nez v1, :cond_0

    return v0

    .line 2773
    :cond_0
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v0, p0

    return v0
.end method

.method public static dpr(F)I
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2741
    :cond_0
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static drawNavigationBarProtection(Landroid/graphics/Canvas;Landroid/view/View;II)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 6790
    invoke-static {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/AndroidUtilities;->drawNavigationBarProtection(Landroid/graphics/Canvas;Landroid/view/View;IIF)V

    return-void
.end method

.method public static drawNavigationBarProtection(Landroid/graphics/Canvas;Landroid/view/View;IIF)V
    .locals 6

    .line 6794
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->navbarProtactionPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-static {v0, v1, p3}, Lorg/telegram/messenger/AndroidUtilities;->getNavigationBarThirdButtonsFactor(FFI)F

    move-result v0

    mul-float/2addr p4, v0

    invoke-static {p2, p4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p2

    invoke-virtual {v5, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 6797
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    int-to-float p4, p4

    add-float/2addr p2, p4

    int-to-float p3, p3

    sub-float v2, p2, p3

    .line 6798
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float v3, p2

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    add-float v4, p2, p1

    const/4 v1, 0x0

    move-object v0, p0

    .line 6796
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public static drawStroke(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 6862
    invoke-static {p0, p1, p2, v0}, Lorg/telegram/messenger/AndroidUtilities;->drawStroke(Landroid/graphics/Canvas;Landroid/graphics/RectF;FF)V

    return-void
.end method

.method public static drawStroke(Landroid/graphics/Canvas;Landroid/graphics/RectF;FF)V
    .locals 15

    move-object/from16 v8, p1

    move/from16 v9, p3

    const/4 v10, 0x0

    cmpg-float v1, v9, v10

    if-gtz v1, :cond_0

    return-void

    .line 6867
    :cond_0
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v1, v11

    move/from16 v2, p2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v12

    const/high16 v1, 0x3f800000    # 1.0f

    .line 6870
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    div-float v2, v1, v11

    sub-float v3, v12, v1

    .line 6872
    invoke-static {v10, v3}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 6873
    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->strokeTop:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6874
    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const v1, 0x21ffffff

    .line 6875
    invoke-static {v1, v9}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6876
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 6877
    iget v1, v8, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    iget v3, v8, Landroid/graphics/RectF;->top:F

    iget v4, v8, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v2

    add-float v6, v3, v5

    iget v14, v8, Landroid/graphics/RectF;->bottom:F

    invoke-static {v6, v3, v14}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v6

    invoke-virtual {p0, v1, v3, v4, v6}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6878
    iget v1, v8, Landroid/graphics/RectF;->left:F

    iget v3, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v2

    move v4, v2

    move v2, v3

    iget v3, v8, Landroid/graphics/RectF;->right:F

    iget v6, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v6

    move v6, v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 6887
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    const v1, 0x3f2aaaab

    .line 6891
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    div-float v2, v1, v11

    sub-float/2addr v12, v1

    .line 6893
    invoke-static {v10, v12}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 6894
    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->strokeBottom:Landroid/graphics/Paint;

    invoke-virtual {v7, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6895
    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const v1, 0x16ffffff

    .line 6896
    invoke-static {v1, v9}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6897
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 6898
    iget v1, v8, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    iget v3, v8, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v3, v5

    iget v6, v8, Landroid/graphics/RectF;->top:F

    invoke-static {v4, v6, v3}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v3

    iget v4, v8, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v2

    iget v6, v8, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v1, v3, v4, v6}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6899
    iget v1, v8, Landroid/graphics/RectF;->left:F

    iget v3, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v2

    move v4, v2

    move v2, v3

    iget v3, v8, Landroid/graphics/RectF;->right:F

    iget v6, v8, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v6, v4

    move v6, v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 6908
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public static ellipsizeCenterEnd(Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/text/TextPaint;I)Ljava/lang/CharSequence;
    .locals 11

    .line 443
    const-string v0, "..."

    :try_start_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 444
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x0

    if-le v1, p4, :cond_0

    .line 447
    div-int/lit8 v3, p4, 0x2

    sub-int v3, p1, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    div-int/lit8 v4, p4, 0x2

    add-int/2addr v4, p1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-interface {p0, v3, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 448
    div-int/lit8 p4, p4, 0x2

    sub-int p4, p1, p4

    invoke-static {v2, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    sub-int/2addr p1, p4

    .line 449
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move-object v4, p0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_4

    .line 451
    :goto_0
    :try_start_1
    new-instance v3, Landroid/text/StaticLayout;

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v6, 0x7fffffff

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v5, p3

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 452
    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result p0

    .line 453
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p3

    add-float/2addr p3, p0

    int-to-float p2, p2

    cmpg-float p3, p3, p2

    if-gez p3, :cond_1

    goto/16 :goto_3

    :cond_1
    add-int/lit8 p1, p1, 0x1

    move p3, p1

    .line 458
    :goto_1
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    if-ge p3, p4, :cond_2

    invoke-interface {v4, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p4

    invoke-static {p4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p4

    if-nez p4, :cond_2

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object p1, v0

    move-object p0, v4

    goto/16 :goto_4

    .line 463
    :cond_2
    invoke-virtual {v3, p3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result p4

    .line 464
    invoke-virtual {v3, p3}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v1

    if-eqz v1, :cond_3

    sub-float p4, p0, p4

    :cond_3
    cmpg-float p0, p4, p2

    if-gez p0, :cond_4

    goto/16 :goto_3

    :cond_4
    sub-float/2addr p4, p2

    .line 470
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p0, v1

    add-float/2addr p4, p0

    const p0, 0x3dcccccd    # 0.1f

    mul-float/2addr p0, p2

    add-float/2addr p4, p0

    .line 471
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p3

    const/16 p3, 0x14

    if-le v1, p3, :cond_5

    add-float/2addr p4, p0

    :cond_5
    const/4 p0, 0x0

    cmpl-float p0, p4, p0

    if-lez p0, :cond_b

    .line 476
    invoke-virtual {v3, v2, p4}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p0

    .line 478
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-le p0, p3, :cond_6

    .line 479
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :cond_6
    move p3, v2

    .line 481
    :cond_7
    invoke-interface {v4, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    const/16 v5, 0xa

    if-nez v1, :cond_8

    if-ge p3, v5, :cond_8

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p0, p0, 0x1

    .line 484
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p0, v1, :cond_7

    .line 485
    invoke-virtual {v3, v2, p4}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p0

    :cond_8
    if-lt p3, v5, :cond_9

    .line 491
    invoke-virtual {v3, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result p0

    const p1, 0x3e99999a    # 0.3f

    mul-float/2addr p2, p1

    sub-float/2addr p0, p2

    .line 492
    invoke-virtual {v3, v2, p0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-interface {v4, p0, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_2

    :cond_9
    if-lez p0, :cond_a

    .line 494
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    if-ge p0, p1, :cond_a

    invoke-interface {v4, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p1

    if-eqz p1, :cond_a

    add-int/lit8 p0, p0, 0x1

    .line 497
    :cond_a
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-interface {v4, p0, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 499
    :goto_2
    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :cond_b
    :goto_3
    return-object v4

    .line 502
    :goto_4
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public static emptyMotionEvent()Landroid/view/MotionEvent;
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 1049
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static enableEdgeToEdge(Landroid/app/Activity;)V
    .locals 2

    .line 6820
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 6822
    :try_start_0
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->enableEdgeToEdge(Landroid/view/Window;)V

    .line 6823
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 6824
    invoke-virtual {p0, v0}, Landroid/view/Window;->setNavigationBarDividerColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 6827
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static enableEdgeToEdge(Landroid/view/Window;)V
    .locals 5

    .line 6836
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6840
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    const/4 v0, 0x0

    .line 6842
    invoke-static {p0, v0}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 6843
    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 6844
    invoke-virtual {p0, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 6845
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 6849
    :goto_0
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 6850
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/WindowManager$LayoutParams;)I

    move-result v4

    if-eq v4, v2, :cond_1

    .line 6851
    invoke-static {v3, v2}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/WindowManager$LayoutParams;I)V

    .line 6852
    invoke-virtual {p0, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    const/16 v2, 0x1d

    if-lt v1, v2, :cond_2

    .line 6856
    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarContrastEnforced(Z)V

    .line 6857
    invoke-virtual {p0, v0}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    :cond_2
    return-void
.end method

.method public static endIncomingCall()V
    .locals 4

    .line 3068
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->hasCallPermissions:Z

    if-nez v0, :cond_0

    return-void

    .line 3072
    :cond_0
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3073
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 3074
    const-string v2, "getITelephony"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    .line 3075
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3076
    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 3077
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    .line 3080
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 356
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->removeDiacritics(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->removeRTL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fillStatusBarHeight(Landroid/content/Context;Z)V
    .locals 1

    if-eqz p0, :cond_1

    .line 1457
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    if-lez v0, :cond_0

    if-nez p1, :cond_0

    goto :goto_0

    .line 1460
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p1

    sput p1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    .line 1461
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p0

    sput p0, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    :cond_1
    :goto_0
    return-void
.end method

.method public static findActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    .line 556
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 557
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 559
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 560
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static findChildViewUnder(Landroid/view/ViewGroup;FF)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 6522
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const/4 v1, 0x0

    .line 6523
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 6524
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 6526
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 6527
    :cond_3
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_4

    .line 6528
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, p1, v4

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p2, v2

    invoke-static {v3, v4, v2}, Lorg/telegram/messenger/AndroidUtilities;->findChildViewUnder(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    return-object v2

    .line 6533
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v3

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_5

    .line 6534
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v3

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_5

    return-object v2

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method public static findClickableView(Landroid/view/ViewGroup;FF)Z
    .locals 1

    const/4 v0, 0x0

    .line 915
    invoke-static {p0, p1, p2, v0}, Lorg/telegram/messenger/AndroidUtilities;->findClickableView(Landroid/view/ViewGroup;FFLandroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static findClickableView(Landroid/view/ViewGroup;FFLandroid/view/View;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    .line 922
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 923
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 924
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    instance-of v3, v2, Lorg/telegram/ui/Stories/PeerStoriesView;

    if-eqz v3, :cond_1

    if-eq v2, p3, :cond_1

    goto :goto_1

    .line 927
    :cond_1
    instance-of v3, v2, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    if-eqz v3, :cond_3

    .line 928
    move-object v3, p0

    check-cast v3, Lorg/telegram/ui/Stories/StoryMediaAreasView;

    .line 929
    invoke-virtual {v3}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hasSelected()Z

    move-result v4

    if-eqz v4, :cond_2

    const/high16 v4, 0x42700000    # 60.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, p1, v5

    if-ltz v5, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v5, v4

    int-to-float v4, v5

    cmpl-float v4, p1, v4

    if-gtz v4, :cond_3

    :cond_2
    invoke-virtual {v3, p1, p2}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hasAreaAboveAt(FF)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 933
    :cond_3
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    float-to-int v4, p1

    float-to-int v5, p2

    .line 934
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_4

    return v4

    .line 936
    :cond_4
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_5

    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v5

    sub-float v5, p1, v5

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    sub-float v2, p2, v2

    invoke-static {v3, v5, v2, p3}, Lorg/telegram/messenger/AndroidUtilities;->findClickableView(Landroid/view/ViewGroup;FFLandroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_5

    return v4

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return v0
.end method

.method public static fixGoogleMapsBug()V
    .locals 5

    .line 4837
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "google_bug_154855417"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4838
    const-string v1, "fixed"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4839
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v3

    const-string v4, "ZoomTables.data"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4840
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 4841
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static fixLocationCoord(D)D
    .locals 2

    const-wide v0, 0x412e848000000000L    # 1000000.0

    mul-double/2addr p0, v0

    double-to-long p0, p0

    long-to-double p0, p0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static fixedDispatchApplyWindowInsets(Landroid/view/WindowInsets;Landroid/view/ViewGroup;)Landroid/view/WindowInsets;
    .locals 3

    .line 6809
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 6810
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6811
    invoke-virtual {v2, p0}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static forEachViews(Landroid/view/View;Lcom/google/android/exoplayer2/util/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/google/android/exoplayer2/util/Consumer;",
            ")V"
        }
    .end annotation

    .line 6377
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 6378
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 6379
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 6380
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 6381
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/telegram/messenger/AndroidUtilities;->forEachViews(Landroid/view/View;Lcom/google/android/exoplayer2/util/Consumer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 6384
    :cond_1
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static forEachViews(Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/exoplayer2/util/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Lcom/google/android/exoplayer2/util/Consumer;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_0

    goto :goto_4

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 6392
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 6393
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/util/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 6395
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getCachedChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 6396
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getCachedChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/util/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v0

    .line 6398
    :goto_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getHiddenChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 6399
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getHiddenChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/util/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 6401
    :cond_3
    :goto_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAttachedScrapChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 6402
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->getAttachedScrapChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/util/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    return-void
.end method

.method public static formapMapUrl(IDDIIZII)Ljava/lang/String;
    .locals 20

    .line 2882
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, -0x1

    move/from16 v3, p9

    if-ne v3, v2, :cond_0

    .line 2884
    invoke-static/range {p0 .. p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->mapProvider:I

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const/16 v3, 0x9

    const/16 v4, 0x8

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x1

    if-eq v2, v11, :cond_5

    if-ne v2, v10, :cond_1

    goto/16 :goto_1

    .line 2904
    :cond_1
    invoke-static/range {p0 .. p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->mapKey:Ljava/lang/String;

    .line 2905
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    if-eqz p7, :cond_2

    .line 2907
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v13, v3, v9

    aput-object v14, v3, v11

    aput-object v15, v3, v1

    aput-object v16, v3, v10

    aput-object v17, v3, v8

    aput-object v0, v3, v7

    aput-object v18, v3, v6

    aput-object v19, v3, v5

    aput-object v2, v3, v4

    const-string v0, "https://maps.googleapis.com/maps/api/staticmap?center=%.6f,%.6f&zoom=%d&size=%dx%d&maptype=roadmap&scale=%d&markers=color:red%%7Csize:mid%%7C%.6f,%.6f&sensor=false&key=%s"

    invoke-static {v12, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2909
    :cond_2
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v9

    aput-object v12, v5, v11

    aput-object v13, v5, v1

    aput-object v14, v5, v10

    aput-object v15, v5, v8

    aput-object v0, v5, v7

    aput-object v2, v5, v6

    const-string v0, "https://maps.googleapis.com/maps/api/staticmap?center=%.6f,%.6f&zoom=%d&size=%dx%d&maptype=roadmap&scale=%d&key=%s"

    invoke-static {v3, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    if-eqz p7, :cond_4

    .line 2913
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v9

    aput-object v12, v4, v11

    aput-object v13, v4, v1

    aput-object v14, v4, v10

    aput-object v15, v4, v8

    aput-object v0, v4, v7

    aput-object v16, v4, v6

    aput-object v17, v4, v5

    const-string v0, "https://maps.googleapis.com/maps/api/staticmap?center=%.6f,%.6f&zoom=%d&size=%dx%d&maptype=roadmap&scale=%d&markers=color:red%%7Csize:mid%%7C%.6f,%.6f&sensor=false"

    invoke-static {v2, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2915
    :cond_4
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v9

    aput-object v4, v6, v11

    aput-object v5, v6, v1

    aput-object v12, v6, v10

    aput-object v13, v6, v8

    aput-object v0, v6, v7

    const-string v0, "https://maps.googleapis.com/maps/api/staticmap?center=%.6f,%.6f&zoom=%d&size=%dx%d&maptype=roadmap&scale=%d"

    invoke-static {v2, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2888
    :cond_5
    :goto_1
    const-string/jumbo v2, "ru_RU"

    const-string/jumbo v12, "tr_TR"

    filled-new-array {v2, v12}, [Ljava/lang/String;

    move-result-object v2

    .line 2889
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/LocaleController;->getCurrentLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v12

    const/4 v13, 0x0

    move v14, v9

    :goto_2
    if-ge v14, v1, :cond_7

    .line 2890
    aget-object v15, v2, v14

    move/from16 v16, v1

    .line 2891
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    move/from16 p9, v4

    iget-object v4, v12, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v13, v15

    :cond_6
    add-int/lit8 v14, v14, 0x1

    move/from16 v4, p9

    move/from16 v1, v16

    goto :goto_2

    :cond_7
    move/from16 v16, v1

    move/from16 p9, v4

    if-nez v13, :cond_8

    .line 2896
    const-string v13, "en_US"

    :cond_8
    if-eqz p7, :cond_9

    .line 2899
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    mul-int v14, p5, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    mul-int v15, p6, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v9

    aput-object v4, v3, v11

    aput-object v12, v3, v16

    aput-object v14, v3, v10

    aput-object v15, v3, v8

    aput-object v0, v3, v7

    aput-object v17, v3, v6

    aput-object v18, v3, v5

    aput-object v13, v3, p9

    const-string v0, "https://static-maps.yandex.ru/1.x/?ll=%.6f,%.6f&z=%d&size=%d,%d&l=map&scale=%d&pt=%.6f,%.6f,vkbkm&lang=%s"

    invoke-static {v1, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2901
    :cond_9
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    mul-int v12, p5, v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    mul-int v14, p6, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v9

    aput-object v3, v5, v11

    aput-object v4, v5, v16

    aput-object v12, v5, v10

    aput-object v14, v5, v8

    aput-object v0, v5, v7

    aput-object v13, v5, v6

    const-string v0, "https://static-maps.yandex.ru/1.x/?ll=%.6f,%.6f&z=%d&size=%d,%d&l=map&scale=%d&lang=%s"

    invoke-static {v1, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatCount(I)Ljava/lang/String;
    .locals 5

    const/16 v0, 0x3e8

    if-ge p0, v0, :cond_0

    .line 4051
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4053
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const/4 v1, 0x1

    if-eqz p0, :cond_2

    .line 4055
    rem-int/lit16 v2, p0, 0x3e8

    .line 4056
    div-int/lit16 p0, p0, 0x3e8

    if-lez p0, :cond_1

    .line 4058
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const-string v2, "%03d"

    invoke-static {v3, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4060
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4063
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4064
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_1
    if-ltz v2, :cond_4

    .line 4065
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_3

    .line 4067
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 4071
    :cond_4
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDuration(IIZ)Ljava/lang/String;
    .locals 10

    .line 3997
    div-int/lit16 v0, p1, 0xe10

    .line 3998
    div-int/lit8 v1, p1, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    .line 3999
    rem-int/lit8 v2, p1, 0x3c

    .line 4001
    div-int/lit16 v3, p0, 0xe10

    .line 4002
    div-int/lit8 v4, p0, 0x3c

    rem-int/lit8 v4, v4, 0x3c

    .line 4003
    rem-int/lit8 p0, p0, 0x3c

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-nez p1, :cond_2

    if-nez v3, :cond_1

    if-eqz p2, :cond_0

    .line 4008
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v0, v8, [Ljava/lang/Object;

    aput-object p2, v0, v7

    aput-object p0, v0, v6

    const-string p0, "%02d:%02d / -:--"

    invoke-static {p1, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4010
    :cond_0
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v0, v8, [Ljava/lang/Object;

    aput-object p2, v0, v7

    aput-object p0, v0, v6

    const-string p0, "%d:%02d / -:--"

    invoke-static {p1, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4013
    :cond_1
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p2, v1, v7

    aput-object v0, v1, v6

    aput-object p0, v1, v8

    const-string p0, "%d:%02d:%02d / -:--"

    invoke-static {p1, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p1, 0x4

    if-nez v3, :cond_4

    if-nez v0, :cond_4

    if-eqz p2, :cond_3

    .line 4018
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v0, p1, v7

    aput-object p0, p1, v6

    aput-object v1, p1, v8

    aput-object v2, p1, v5

    const-string p0, "%02d:%02d / %02d:%02d"

    invoke-static {p2, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4020
    :cond_3
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v0, p1, v7

    aput-object p0, p1, v6

    aput-object v1, p1, v8

    aput-object v2, p1, v5

    const-string p0, "%d:%02d / %d:%02d"

    invoke-static {p2, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4023
    :cond_4
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v7

    aput-object v4, v9, v6

    aput-object p0, v9, v8

    aput-object v0, v9, v5

    aput-object v1, v9, p1

    const/4 p0, 0x5

    aput-object v2, v9, p0

    const-string p0, "%d:%02d:%02d / %d:%02d:%02d"

    invoke-static {p2, p0, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDuration(IZ)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 3946
    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->formatDuration(IZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDuration(IZZ)Ljava/lang/String;
    .locals 6

    .line 3949
    div-int/lit16 v0, p0, 0xe10

    .line 3950
    div-int/lit8 v1, p0, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    .line 3951
    rem-int/lit8 p0, p0, 0x3c

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 3952
    const-string v5, "%d:%02d"

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 3954
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v3

    aput-object p0, v0, v2

    const-string p0, "%02d:%02d"

    invoke-static {p1, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3956
    :cond_0
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v3

    aput-object p0, v0, v2

    invoke-static {p1, v5, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz p2, :cond_2

    .line 3960
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v3

    aput-object p2, v0, v2

    invoke-static {p0, v5, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3962
    :cond_2
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v3

    aput-object v0, v1, v2

    aput-object p0, v1, v4

    const-string p0, "%d:%02d:%02d"

    invoke-static {p1, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDurationNoHours(IZ)Ljava/lang/String;
    .locals 4

    .line 3979
    div-int/lit8 v0, p0, 0x3c

    .line 3980
    rem-int/lit8 p0, p0, 0x3c

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz p1, :cond_0

    .line 3982
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    aput-object p0, v3, v1

    const-string p0, "%02d:%02d"

    invoke-static {p1, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3984
    :cond_0
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    aput-object p0, v3, v1

    const-string p0, "%d:%02d"

    invoke-static {p1, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatFileSize(J)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 3888
    invoke-static {p0, p1, v0, v0}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(JZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatFileSize(JZZ)Ljava/lang/String;
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3892
    const-string v3, "%d KB"

    if-nez v0, :cond_0

    .line 3893
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p0, p1, v2

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 v4, 0x400

    cmp-long v0, p0, v4

    if-gez v0, :cond_1

    .line 3895
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p0, p1, v2

    const-string p0, "%d B"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-wide/32 v6, 0x100000

    cmp-long v0, p0, v6

    const/4 v6, 0x0

    const/high16 v7, 0x41200000    # 10.0f

    const/high16 v8, 0x44800000    # 1024.0f

    if-gez v0, :cond_3

    long-to-float p0, p0

    div-float/2addr p0, v8

    if-eqz p2, :cond_2

    float-to-int p1, p0

    int-to-float p2, p1

    sub-float p2, p0, p2

    mul-float/2addr p2, v7

    cmpl-float p2, p2, v6

    if-nez p2, :cond_2

    .line 3899
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p0, p1, v2

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3901
    :cond_2
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p0, p1, v2

    const-string p0, "%.1f KB"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-wide/32 v9, 0x3e800000

    cmp-long v0, p0, v9

    if-gez v0, :cond_5

    long-to-float p0, p0

    div-float/2addr p0, v8

    div-float/2addr p0, v8

    if-eqz p2, :cond_4

    float-to-int p1, p0

    int-to-float p2, p1

    sub-float p2, p0, p2

    mul-float/2addr p2, v7

    cmpl-float p2, p2, v6

    if-nez p2, :cond_4

    .line 3906
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p0, p1, v2

    const-string p0, "%d MB"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3908
    :cond_4
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p0, p1, v2

    const-string p0, "%.1f MB"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3911
    :cond_5
    div-long/2addr p0, v4

    div-long/2addr p0, v4

    long-to-int p0, p0

    int-to-float p0, p0

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p0, p1

    if-eqz p2, :cond_6

    float-to-int p1, p0

    int-to-float p2, p1

    sub-float p2, p0, p2

    mul-float/2addr p2, v7

    cmpl-float p2, p2, v6

    if-nez p2, :cond_6

    .line 3913
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p0, p1, v2

    const-string p0, "%d GB"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    if-eqz p3, :cond_7

    .line 3915
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p0, p1, v2

    const-string p0, "%.1f GB"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3917
    :cond_7
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p0, p1, v2

    const-string p0, "%.2f GB"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatFullDuration(I)Ljava/lang/String;
    .locals 7

    .line 3968
    div-int/lit16 v0, p0, 0xe10

    .line 3969
    div-int/lit8 v1, p0, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    .line 3970
    rem-int/lit8 v2, p0, 0x3c

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-gez p0, :cond_0

    .line 3972
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v5

    aput-object v1, v6, v4

    aput-object v2, v6, v3

    const-string v0, "-%02d:%02d:%02d"

    invoke-static {p0, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3974
    :cond_0
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v5

    aput-object v1, v6, v4

    aput-object v2, v6, v3

    const-string v0, "%02d:%02d:%02d"

    invoke-static {p0, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatLongDuration(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 3942
    invoke-static {p0, v0}, Lorg/telegram/messenger/AndroidUtilities;->formatDuration(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatLongDuration(II)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 3993
    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->formatDuration(IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatShortDuration(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 3923
    invoke-static {p0, v0}, Lorg/telegram/messenger/AndroidUtilities;->formatDuration(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatShortDuration(II)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 3989
    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->formatDuration(IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs formatSpannable(Ljava/lang/CharSequence;Lorg/telegram/messenger/GenericProvider;[Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lorg/telegram/messenger/GenericProvider<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/CharSequence;",
            ")",
            "Landroid/text/SpannableStringBuilder;"
        }
    .end annotation

    .line 4348
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4349
    invoke-static {p0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    .line 4350
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_1

    .line 4351
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/telegram/messenger/GenericProvider;->provide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4352
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 4354
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    aget-object v6, p2, v2

    invoke-virtual {p0, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4355
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, p2, v2

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static varargs formatSpannable(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 2

    .line 4342
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4343
    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->formatSpannableSimple(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0

    .line 4344
    :cond_0
    new-instance v0, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {p0, v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->formatSpannable(Ljava/lang/CharSequence;Lorg/telegram/messenger/GenericProvider;[Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static varargs formatSpannableSimple(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 1

    .line 4338
    new-instance v0, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda29;-><init>()V

    invoke-static {p0, v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->formatSpannable(Ljava/lang/CharSequence;Lorg/telegram/messenger/GenericProvider;[Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static formatTimerDurationFast(JI)Ljava/lang/String;
    .locals 10

    .line 995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v1, 0x3c

    .line 996
    div-long v3, p0, v1

    cmp-long v5, v3, v1

    .line 997
    const-string v6, ","

    const-string v7, ":"

    if-ltz v5, :cond_0

    .line 998
    div-long v8, v3, v1

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    rem-long/2addr v3, v1

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->normalizeTimePart(Ljava/lang/StringBuilder;J)V

    .line 1000
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    rem-long/2addr p0, v1

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->normalizeTimePart(Ljava/lang/StringBuilder;J)V

    .line 1002
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit8 p2, p2, 0xa

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1004
    :cond_0
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    rem-long/2addr p0, v1

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->normalizeTimePart(Ljava/lang/StringBuilder;J)V

    .line 1006
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit8 p2, p2, 0xa

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1008
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatTimestamp(I)Ljava/lang/String;
    .locals 9

    .line 3927
    div-int/lit16 v0, p0, 0xe10

    .line 3928
    div-int/lit8 v1, p0, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    .line 3929
    rem-int/lit8 p0, p0, 0x3c

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3931
    const-string v4, ""

    if-lez v0, :cond_0

    .line 3932
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v6, v7, v2

    const-string v6, "%dh"

    invoke-static {v4, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_0
    if-lez v1, :cond_2

    .line 3935
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    if-lez v0, :cond_1

    const-string v6, "%02dm"

    goto :goto_0

    :cond_1
    const-string v6, "%dm"

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v7, v8, v2

    invoke-static {v4, v6, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3937
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    if-gtz v0, :cond_4

    if-lez v1, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "%ds"

    goto :goto_2

    :cond_4
    :goto_1
    const-string v0, "%02ds"

    :goto_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v4, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatVideoDuration(II)Ljava/lang/String;
    .locals 12

    .line 4029
    div-int/lit16 v0, p1, 0xe10

    .line 4030
    div-int/lit8 v1, p1, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    .line 4031
    rem-int/lit8 p1, p1, 0x3c

    .line 4033
    div-int/lit16 v2, p0, 0xe10

    .line 4034
    div-int/lit8 v3, p0, 0x3c

    rem-int/lit8 v3, v3, 0x3c

    .line 4035
    rem-int/lit8 p0, p0, 0x3c

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x4

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    .line 4038
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v2, v3, v7

    aput-object p0, v3, v6

    aput-object v1, v3, v5

    aput-object p1, v3, v4

    const-string p0, "%02d:%02d / %02d:%02d"

    invoke-static {v0, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v9, 0x5

    if-nez v0, :cond_1

    .line 4041
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v2, v9, v7

    aput-object v3, v9, v6

    aput-object p0, v9, v5

    aput-object v1, v9, v4

    aput-object p1, v9, v8

    const-string p0, "%d:%02d:%02d / %02d:%02d"

    invoke-static {v0, p0, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-nez v2, :cond_2

    .line 4043
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v7

    aput-object p0, v9, v6

    aput-object v0, v9, v5

    aput-object v1, v9, v4

    aput-object p1, v9, v8

    const-string p0, "%02d:%02d / %d:%02d:%02d"

    invoke-static {v2, p0, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4045
    :cond_2
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v11, 0x6

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v2, v11, v7

    aput-object v3, v11, v6

    aput-object p0, v11, v5

    aput-object v0, v11, v4

    aput-object v1, v11, v8

    aput-object p1, v11, v9

    const-string p0, "%d:%02d:%02d / %d:%02d:%02d"

    invoke-static {v10, p0, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatVideoDurationFast(II)Ljava/lang/String;
    .locals 4

    .line 979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 980
    const-string v1, ":"

    const/16 v2, 0x3c

    if-lt p0, v2, :cond_0

    .line 981
    div-int/lit8 v3, p0, 0x3c

    invoke-static {v0, v3}, Lorg/telegram/messenger/AndroidUtilities;->normalizeTimePart(Ljava/lang/StringBuilder;I)V

    .line 982
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    rem-int/2addr p0, v2

    invoke-static {v0, p0}, Lorg/telegram/messenger/AndroidUtilities;->normalizeTimePart(Ljava/lang/StringBuilder;I)V

    .line 984
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    invoke-static {v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->normalizeTimePart(Ljava/lang/StringBuilder;I)V

    goto :goto_0

    .line 987
    :cond_0
    invoke-static {v0, p0}, Lorg/telegram/messenger/AndroidUtilities;->normalizeTimePart(Ljava/lang/StringBuilder;I)V

    .line 988
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    invoke-static {v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->normalizeTimePart(Ljava/lang/StringBuilder;I)V

    .line 991
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatWholeNumber(II)Ljava/lang/String;
    .locals 9

    .line 4077
    const-string v0, "0"

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    int-to-float v1, p0

    if-nez p1, :cond_1

    move p1, p0

    :cond_1
    const/16 v2, 0x3e8

    if-ge p1, v2, :cond_2

    .line 4084
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->formatCount(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    move v3, p0

    :goto_0
    const/4 v4, 0x1

    if-lt p1, v2, :cond_3

    .line 4086
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->numbersSignatureArray:[Ljava/lang/String;

    array-length v5, v5

    sub-int/2addr v5, v4

    if-ge v3, v5, :cond_3

    .line 4087
    div-int/lit16 p1, p1, 0x3e8

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    float-to-double v5, v1

    const-wide v7, 0x3fb999999999999aL    # 0.1

    cmpg-double p1, v5, v7

    if-gez p1, :cond_4

    return-object v0

    :cond_4
    const/high16 p1, 0x41200000    # 10.0f

    mul-float v0, v1, p1

    float-to-int v2, v0

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    const/4 v5, 0x2

    if-nez v0, :cond_5

    .line 4095
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    float-to-int v0, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->formatCount(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->numbersSignatureArray:[Ljava/lang/String;

    aget-object v1, v1, v3

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, p0

    aput-object v1, v2, v4

    const-string p0, "%s%s"

    invoke-static {p1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4097
    :cond_5
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    div-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->numbersSignatureArray:[Ljava/lang/String;

    aget-object v1, v1, v3

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, p0

    aput-object v1, v2, v4

    const-string p0, "%.1f%s"

    invoke-static {v0, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/AndroidUtilities$LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Z)V"
        }
    .end annotation

    const/16 v0, 0x2500

    .line 1271
    invoke-static {p1, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v1

    if-ltz v1, :cond_0

    .line 1272
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x20

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object p1, v1

    .line 1274
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const/16 v0, 0x5f

    invoke-static {p1, v0}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_1

    .line 1276
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1277
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const-string v3, "a"

    invoke-virtual {v0, v2, p1, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 1279
    :cond_1
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 1280
    :cond_2
    :goto_0
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1281
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    .line 1282
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    if-eqz p4, :cond_3

    .line 1284
    invoke-interface {p4, p1, v0, v2}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1285
    :cond_3
    new-instance v3, Lorg/telegram/messenger/AndroidUtilities$LinkSpec;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/telegram/messenger/AndroidUtilities$LinkSpec;-><init>(Lorg/telegram/messenger/AndroidUtilities-IA;)V

    const/4 v5, 0x0

    .line 1287
    invoke-virtual {p2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p3}, Lorg/telegram/messenger/AndroidUtilities;->makeUrl(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz p5, :cond_4

    .line 1288
    invoke-static {v5, v1, v4}, Lorg/telegram/messenger/browser/Browser;->isInternalUrl(Ljava/lang/String;Z[Z)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    .line 1291
    :cond_4
    iput-object v5, v3, Lorg/telegram/messenger/AndroidUtilities$LinkSpec;->url:Ljava/lang/String;

    .line 1292
    iput v0, v3, Lorg/telegram/messenger/AndroidUtilities$LinkSpec;->start:I

    .line 1293
    iput v2, v3, Lorg/telegram/messenger/AndroidUtilities$LinkSpec;->end:I

    .line 1295
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static generateFileName(ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 3791
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 3792
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 3793
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd_HHmmss_SSS"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    if-nez p0, :cond_1

    .line 3795
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMG_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p1, "jpg"

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3797
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "VID_"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".mp4"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generatePicturePath()Ljava/io/File;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3772
    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->generatePicturePath(ZLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static generatePicturePath(ZLjava/lang/String;)Ljava/io/File;
    .locals 2

    const/16 v0, 0x64

    .line 3777
    :try_start_0
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 3782
    :cond_0
    new-instance p0, Ljava/io/File;

    invoke-static {v1, p1}, Lorg/telegram/messenger/AndroidUtilities;->generateFileName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0

    .line 3779
    :cond_1
    :goto_0
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 3780
    new-instance v0, Ljava/io/File;

    invoke-static {v1, p1}, Lorg/telegram/messenger/AndroidUtilities;->generateFileName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 3785
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 8

    .line 3802
    const-string v0, ""

    if-nez p0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return-object v0

    .line 3805
    :cond_2
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 3807
    const-string v2, " "

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_5

    .line 3809
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    .line 3810
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    :goto_0
    move-object p0, p1

    :cond_5
    :goto_1
    if-nez p0, :cond_6

    return-object v0

    .line 3815
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 3816
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    move v3, v0

    .line 3820
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_c

    const/4 v5, 0x1

    if-nez v4, :cond_7

    move v6, v0

    goto :goto_3

    :cond_7
    move v6, v5

    :goto_3
    sub-int v6, v4, v6

    .line 3822
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v4, :cond_8

    move v5, v0

    :cond_8
    add-int/2addr v7, v5

    add-int/2addr v7, v6

    if-eqz v3, :cond_9

    add-int/lit8 v4, v6, 0x1

    if-eq v3, v4, :cond_9

    .line 3825
    invoke-virtual {p0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_4

    :cond_9
    if-nez v3, :cond_a

    if-eqz v6, :cond_a

    .line 3827
    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3830
    :cond_a
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 3831
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 3832
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3834
    :cond_b
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 3836
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 3837
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3838
    new-instance v5, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-direct {v5, v6}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v4

    const/16 v6, 0x21

    invoke-virtual {v1, v5, v4, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move v3, v7

    goto :goto_2

    :cond_c
    if-eq v3, v5, :cond_d

    .line 3843
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v3, p1, :cond_d

    .line 3844
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_d
    return-object v1
.end method

.method public static generateVideoPath()Ljava/io/File;
    .locals 1

    const/4 v0, 0x0

    .line 3866
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->generateVideoPath(Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static generateVideoPath(Z)Ljava/io/File;
    .locals 5

    .line 3873
    :try_start_0
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->getAlbumDir(Z)Ljava/io/File;

    move-result-object p0

    .line 3874
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 3875
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 3876
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->generatingVideoPathFormat:Ljava/text/SimpleDateFormat;

    if-nez v1, :cond_0

    .line 3877
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd_HHmmss_SSS"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v1, Lorg/telegram/messenger/AndroidUtilities;->generatingVideoPathFormat:Ljava/text/SimpleDateFormat;

    .line 3879
    :cond_0
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->generatingVideoPathFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 3880
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VID_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".mp4"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 3882
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getActivity()Landroid/app/Activity;
    .locals 1

    const/4 v0, 0x0

    .line 545
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public static getActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    .line 549
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 550
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object p0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    :cond_1
    if-eqz p0, :cond_3

    .line 551
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return-object p0

    :cond_3
    :goto_0
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method private static getAlbumDir(Z)Ljava/io/File;
    .locals 3

    if-nez p0, :cond_6

    .line 3655
    sget-boolean p0, Lorg/telegram/messenger/BuildVars;->NO_SCOPED_STORAGE:Z

    if-eqz p0, :cond_6

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p0, v0, :cond_0

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_MEDIA_IMAGES"

    .line 3660
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    :cond_0
    if-gt p0, v0, :cond_1

    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 3663
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 3669
    :cond_1
    const-string/jumbo p0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 3670
    new-instance p0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "exteraGram"

    invoke-direct {p0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3671
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3672
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3673
    sget-boolean p0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p0, :cond_2

    .line 3674
    const-string p0, "failed to create directory"

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_2
    return-object v0

    :cond_3
    return-object p0

    .line 3680
    :cond_4
    sget-boolean p0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p0, :cond_5

    .line 3681
    const-string p0, "External storage is not mounted READ/WRITE."

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_5
    return-object v0

    :cond_6
    :goto_0
    const/4 p0, 0x0

    .line 3666
    invoke-static {p0}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getAnimatorDurationScale()F
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4659
    :try_start_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    .line 4660
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "animator_duration_scale"

    .line 4659
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method public static getAverageColor(II)I
    .locals 4

    .line 5364
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 5365
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 5366
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 5367
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 5368
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    .line 5369
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 5370
    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    div-int/lit8 p0, p0, 0x2

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    const/16 p1, 0xff

    invoke-static {p1, v0, v2, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static getBitmapFromRaw(I)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    .line 1233
    :try_start_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1234
    :try_start_1
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1239
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object p0, v0

    .line 1236
    :goto_1
    :try_start_3
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catch_0
    :goto_2
    return-object v0

    :catchall_2
    move-exception v0

    .line 1239
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1243
    :catch_1
    throw v0
.end method

.method public static getBitmapFromSurface(Landroid/view/Surface;Landroid/graphics/Bitmap;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 1084
    invoke-virtual {p0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1087
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1088
    new-instance v1, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda30;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda30;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    sget-object v2, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 1090
    invoke-virtual {v2}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1088
    invoke-static {p0, p1, v1, v2}, Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    .line 1092
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1094
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static getBitmapFromSurface(Landroid/view/SurfaceView;Landroid/graphics/Bitmap;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 1058
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1061
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1062
    new-instance v1, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda24;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda24;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    sget-object v2, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 1064
    invoke-virtual {v2}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1062
    invoke-static {p0, p1, v1, v2}, Landroid/view/PixelCopy;->request(Landroid/view/SurfaceView;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    .line 1066
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1068
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static getBitmapFromSurface(Landroid/view/SurfaceView;Landroid/graphics/Bitmap;Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 1074
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1077
    :cond_0
    new-instance v0, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda21;

    invoke-direct {v0, p2}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda21;-><init>(Ljava/lang/Runnable;)V

    sget-object p2, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    invoke-static {p0, p1, v0, p2}, Landroid/view/PixelCopy;->request(Landroid/view/SurfaceView;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static getBitmapFromWindow(Landroid/view/Window;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1100
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1104
    :cond_0
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x1

    .line 1105
    new-array v3, v2, [Z

    const/4 v4, 0x0

    aput-boolean v4, v3, v4

    .line 1107
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v5, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1108
    new-instance v2, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda31;

    invoke-direct {v2, v3, v5}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda31;-><init>([ZLjava/util/concurrent/CountDownLatch;)V

    sget-object v6, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 1111
    invoke-virtual {v6}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v6

    .line 1108
    invoke-static {p0, v1, v2, v6}, Landroid/view/PixelCopy;->request(Landroid/view/Window;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    .line 1113
    :try_start_0
    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1115
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1118
    :goto_0
    aget-boolean p0, v3, v4

    if-eqz p0, :cond_1

    return-object v1

    .line 1121
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static getBitmapShareUri(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Landroid/net/Uri;
    .locals 3

    .line 5881
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 5882
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 5884
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5886
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object v2

    .line 5890
    :cond_0
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5891
    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v0, 0x57

    .line 5892
    :try_start_2
    invoke-virtual {p0, p2, v0, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 5893
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 5894
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".provider"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5895
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 5891
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 5896
    :goto_2
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public static getBuildVersionInfo()Ljava/lang/String;
    .locals 11

    .line 6696
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 6697
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    div-int/lit8 v3, v1, 0xa

    .line 6699
    rem-int/lit8 v1, v1, 0xa
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-string v6, " "

    if-eq v1, v5, :cond_0

    if-eq v1, v4, :cond_0

    .line 6706
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "universal "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 6702
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "store bundled "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6709
    :goto_0
    const-string v6, "TelegramVersion"

    sget v7, Lorg/telegram/messenger/R$string;->TelegramVersion:I

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v9, "v%s (%d) %s"

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v0, v10, v2

    aput-object v3, v10, v5

    aput-object v1, v10, v4

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {v6, v7, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 6711
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCacheDir()Ljava/io/File;
    .locals 6

    const/4 v0, 0x0

    .line 2668
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2670
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    .line 2673
    const-string/jumbo v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2674
    :cond_0
    const-string v1, "external dir mounted"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2677
    :try_start_1
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDirs()[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    .line 2678
    aget-object v3, v1, v2

    .line 2679
    sget-object v4, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2680
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_2

    .line 2681
    aget-object v4, v1, v2

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2682
    aget-object v3, v1, v2

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2688
    :cond_2
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check dir "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    if-eqz v3, :cond_5

    .line 2689
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_5

    return-object v3

    :cond_5
    if-eqz v3, :cond_6

    .line 2701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check dir file exist "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " can write "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 2704
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2708
    :cond_6
    :goto_4
    :try_start_2
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v0, :cond_7

    return-object v0

    :catch_2
    move-exception v0

    .line 2713
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2716
    :cond_7
    :try_start_3
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2718
    new-instance v1, Ljava/io/File;

    const-string v2, "cache/"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2719
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 2720
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v0, :cond_9

    return-object v1

    .line 2727
    :catch_3
    :cond_9
    new-instance v0, Ljava/io/File;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getCertificateSHA1Fingerprint()Ljava/lang/String;
    .locals 3

    .line 5316
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 5317
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    .line 5319
    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 5320
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    .line 5321
    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    .line 5322
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 5323
    const-string v0, "X509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 5324
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 5325
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->computeSHA1([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 5329
    :catchall_0
    const-string v0, ""

    return-object v0
.end method

.method public static getCertificateSHA256Fingerprint()Ljava/lang/String;
    .locals 3

    .line 5299
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 5300
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    .line 5302
    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 5303
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    .line 5304
    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    .line 5305
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 5306
    const-string v0, "X509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 5307
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 5308
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->computeSHA256([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 5312
    :catchall_0
    const-string v0, ""

    return-object v0
.end method

.method public static getColorDistance(II)I
    .locals 5

    .line 5348
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 5349
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 5350
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    .line 5352
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 5353
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 5354
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    add-int v4, v0, v2

    .line 5356
    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v2

    sub-int/2addr v1, v3

    sub-int/2addr p0, p1

    add-int/lit16 p1, v4, 0x200

    mul-int/2addr p1, v0

    mul-int/2addr p1, v0

    shr-int/lit8 p1, p1, 0x8

    mul-int/lit8 v0, v1, 0x4

    mul-int/2addr v0, v1

    add-int/2addr p1, v0

    rsub-int v0, v4, 0x2ff

    mul-int/2addr v0, p0

    mul-int/2addr v0, p0

    shr-int/lit8 p0, v0, 0x8

    add-int/2addr p1, p0

    return p1
.end method

.method public static getCoordinateInParent(Landroid/view/ViewGroup;Landroid/view/View;)[F
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    move v1, v0

    move v2, v1

    :goto_0
    if-eq p1, p0, :cond_3

    if-nez p1, :cond_1

    :cond_0
    move v1, v0

    goto :goto_1

    .line 1138
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v1, v3

    .line 1139
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v2, v3

    .line 1140
    instance-of v3, p1, Landroidx/core/widget/NestedScrollView;

    if-eqz v3, :cond_2

    .line 1141
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    .line 1142
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 1144
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1145
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_1
    const/4 p0, 0x2

    .line 1153
    new-array p0, p0, [F

    const/4 p1, 0x0

    aput v0, p0, p1

    const/4 p1, 0x1

    aput v1, p0, p1

    return-object p0
.end method

.method public static getCurrentKeyboardLanguage()[Ljava/lang/String;
    .locals 8

    .line 2534
    const-string v0, "en"

    :try_start_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 2535
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    const/16 v3, 0x18

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 2538
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_0

    .line 2539
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLanguageTag()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v4

    .line 2541
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2542
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 2545
    :cond_1
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2547
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_2

    .line 2548
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->getLanguageTag()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v4

    .line 2550
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2551
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v2

    goto :goto_2

    :cond_4
    move-object v1, v4

    .line 2555
    :cond_5
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x2d

    const/16 v5, 0x5f

    if-eqz v2, :cond_b

    .line 2556
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getSystemLocaleStringIso639()Ljava/lang/String;

    move-result-object v1

    .line 2558
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController;->getCurrentLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v2

    .line 2559
    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getBaseLangCode()Ljava/lang/String;

    move-result-object v6

    .line 2560
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2561
    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getLangCode()Ljava/lang/String;

    move-result-object v6

    .line 2563
    :cond_6
    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    move-object v4, v6

    goto :goto_4

    .line 2564
    :cond_8
    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    move-object v4, v0

    .line 2570
    :cond_9
    :goto_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 2571
    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2573
    :cond_a
    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2576
    :cond_b
    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2581
    :catch_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 3741
    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    .line 3744
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v6, 0x0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    .line 3745
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3746
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 3747
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3748
    const-string p2, "content://"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "file://"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 3753
    :cond_0
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :cond_1
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v7

    .line 3744
    :goto_1
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1

    :cond_2
    if-eqz p0, :cond_3

    .line 3753
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_3
    return-object v7
.end method

.method public static getDataDirs()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 2602
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 2604
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 2605
    aget-object v3, v0, v2

    if-nez v3, :cond_0

    goto :goto_1

    .line 2608
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    if-nez v1, :cond_1

    .line 2611
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2613
    :cond_1
    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    .line 2617
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2619
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2620
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v1
.end method

.method public static getDominantColor(Landroid/graphics/Bitmap;)I
    .locals 13

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 6410
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    .line 6411
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    div-float/2addr v2, v1

    const/4 v1, 0x0

    move v3, v1

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    const/16 v8, 0xa

    if-ge v3, v8, :cond_3

    move v9, v1

    :goto_1
    if-ge v9, v8, :cond_2

    int-to-float v10, v3

    mul-float/2addr v10, v2

    float-to-int v10, v10

    int-to-float v11, v9

    mul-float/2addr v11, v0

    float-to-int v11, v11

    .line 6418
    invoke-virtual {p0, v10, v11}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v10

    .line 6419
    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v11

    const/16 v12, 0xc8

    if-le v11, v12, :cond_1

    .line 6420
    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v11

    add-int/2addr v5, v11

    .line 6421
    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v11

    add-int/2addr v6, v11

    .line 6422
    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    add-int/2addr v7, v10

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v4, :cond_4

    return v1

    .line 6430
    :cond_4
    div-int/2addr v5, v4

    div-int/2addr v6, v4

    div-int/2addr v7, v4

    const/16 p0, 0xff

    invoke-static {p0, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static getHostAuthority(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 6247
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->getHostAuthority(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHostAuthority(Landroid/net/Uri;Z)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 6254
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->getHostAuthority(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHostAuthority(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 6221
    invoke-static {p0, v0}, Lorg/telegram/messenger/AndroidUtilities;->getHostAuthority(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHostAuthority(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 6229
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getURIParsePattern()Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 6230
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x4

    .line 6231
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 6233
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    :cond_1
    if-eqz p1, :cond_2

    if-eqz p0, :cond_2

    .line 6235
    const-string/jumbo p1, "www."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6236
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0

    :cond_3
    return-object v0
.end method

.method public static getImageOrientation(Landroidx/exifinterface/media/ExifInterface;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/exifinterface/media/ExifInterface;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 6373
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 6341
    :try_start_0
    const-string v2, "Orientation"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v2, 0x2

    const/16 v4, 0x10e

    packed-switch p0, :pswitch_data_0

    move v2, v0

    goto :goto_2

    :pswitch_0
    move v2, v0

    :goto_0
    :pswitch_1
    move v0, v4

    goto :goto_2

    :pswitch_2
    move v2, v3

    goto :goto_0

    :pswitch_3
    const/16 p0, 0x5a

    :goto_1
    move v2, v0

    move v0, p0

    goto :goto_2

    :pswitch_4
    const/16 p0, 0xb4

    goto :goto_1

    :pswitch_5
    move v2, v3

    .line 6369
    :goto_2
    :pswitch_6
    new-instance p0, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6371
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 6373
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static getImageOrientation(Ljava/io/File;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 6329
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 6325
    :try_start_0
    new-instance v1, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v1, p0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/File;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getImageOrientation(Landroidx/exifinterface/media/ExifInterface;)Landroid/util/Pair;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6327
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 6329
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static getImageOrientation(Ljava/io/InputStream;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 6321
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 6317
    :try_start_0
    new-instance v1, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v1, p0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getImageOrientation(Landroidx/exifinterface/media/ExifInterface;)Landroid/util/Pair;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6319
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 6321
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static getImageOrientation(Ljava/lang/String;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 6335
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 6333
    :try_start_0
    new-instance v1, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v1, p0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getImageOrientation(Landroidx/exifinterface/media/ExifInterface;)Landroid/util/Pair;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 6335
    :catch_0
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static getLightNavigationBar(Landroid/view/Window;)Z
    .locals 2

    .line 5395
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 5396
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 5397
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    const/16 v0, 0x10

    .line 5398
    invoke-static {p0, v0}, Lme/vkryl/core/BitwiseUtils;->hasFlag(II)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getLogsDir()Ljava/io/File;
    .locals 5

    .line 955
    const-string v0, "/logs"

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 956
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 957
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 958
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 964
    :catch_0
    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 965
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    .line 970
    :catch_1
    :try_start_2
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 971
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object v2

    :catch_2
    return-object v1
.end method

.method public static getMinTabletSide()I
    .locals 5

    .line 3015
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result v0

    const/high16 v1, 0x43a00000    # 320.0f

    if-nez v0, :cond_1

    .line 3016
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit8 v2, v0, 0x23

    .line 3017
    div-int/lit8 v2, v2, 0x64

    .line 3018
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 3019
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    :cond_0
    sub-int/2addr v0, v2

    return v0

    .line 3023
    :cond_1
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3024
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit8 v3, v2, 0x23

    .line 3025
    div-int/lit8 v3, v3, 0x64

    .line 3026
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 3027
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    :cond_2
    sub-int/2addr v2, v3

    .line 3029
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static getMyLayerVersion(I)I
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method private static getNavigationBarHeight(Landroid/content/Context;)I
    .locals 4

    .line 1470
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dimen"

    const-string v2, "android"

    const-string/jumbo v3, "navigation_bar_height"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1471
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getNavigationBarThirdButtonsFactor(FFI)F
    .locals 0

    .line 6784
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->getNavigationBarThirdButtonsFactor(I)F

    move-result p2

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p0

    return p0
.end method

.method public static getNavigationBarThirdButtonsFactor(I)F
    .locals 1

    int-to-float p0, p0

    const/high16 v0, 0x42000000    # 32.0f

    .line 6780
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p0, v0

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p0, v0

    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result p0

    return p0
.end method

.method public static getOffsetColor(IIFF)I
    .locals 7

    .line 5062
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 5063
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 5064
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 5065
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    .line 5066
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 5067
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 5068
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 5069
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    int-to-float v6, p0

    sub-int/2addr p1, p0

    int-to-float p0, p1

    mul-float/2addr p0, p2

    add-float/2addr v6, p0

    mul-float/2addr v6, p3

    float-to-int p0, v6

    int-to-float p1, v3

    sub-int/2addr v0, v3

    int-to-float p3, v0

    mul-float/2addr p3, p2

    add-float/2addr p1, p3

    float-to-int p1, p1

    int-to-float p3, v4

    sub-int/2addr v1, v4

    int-to-float v0, v1

    mul-float/2addr v0, p2

    add-float/2addr p3, v0

    float-to-int p3, p3

    int-to-float v0, v5

    sub-int/2addr v2, v5

    int-to-float v1, v2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    float-to-int p2, v0

    .line 5070
    invoke-static {p0, p1, p3, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static getPath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 3690
    :try_start_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v1, p0}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3691
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->isExternalStorageDocument(Landroid/net/Uri;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, ":"

    if-eqz v1, :cond_0

    .line 3692
    :try_start_1
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 3693
    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 3694
    aget-object v1, p0, v3

    .line 3695
    const-string/jumbo v3, "primary"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3696
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v2

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto/16 :goto_2

    .line 3698
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->isDownloadsDocument(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3699
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 3700
    const-string v1, "content://downloads/public_downloads"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    .line 3701
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v1, p0, v0, v0}, Lorg/telegram/messenger/AndroidUtilities;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3702
    :cond_1
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->isMediaDocument(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3703
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 3704
    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 3705
    aget-object v1, p0, v3

    .line 3708
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x58d9bd6

    if-eq v3, v4, :cond_4

    const v4, 0x5faa95b

    if-eq v3, v4, :cond_3

    const v4, 0x6b0147b

    if-eq v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "video"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3713
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    .line 3708
    :cond_3
    const-string v3, "image"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3710
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    .line 3708
    :cond_4
    const-string v3, "audio"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3716
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    :cond_5
    :goto_0
    move-object v1, v0

    .line 3721
    :goto_1
    aget-object p0, p0, v2

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 3725
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "_id=?"

    invoke-static {v2, v1, v3, p0}, Lorg/telegram/messenger/AndroidUtilities;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3727
    :cond_6
    const-string v1, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3728
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v1, p0, v0, v0}, Lorg/telegram/messenger/AndroidUtilities;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3729
    :cond_7
    const-string v1, "file"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3730
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    .line 3733
    :goto_2
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_8
    return-object v0
.end method

.method public static getPatternColor(I)I
    .locals 1

    const/4 v0, 0x0

    .line 4973
    invoke-static {p0, v0}, Lorg/telegram/messenger/AndroidUtilities;->getPatternColor(IZ)I

    move-result p0

    return p0
.end method

.method public static getPatternColor(IZ)I
    .locals 7

    .line 4977
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v1, p0}, Lorg/telegram/messenger/AndroidUtilities;->RGBtoHSB(III)[F

    move-result-object p0

    const/4 v0, 0x1

    .line 4978
    aget v1, p0, v0

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    if-gtz v3, :cond_0

    aget v3, p0, v5

    cmpg-float v6, v3, v4

    if-gez v6, :cond_2

    cmpl-float v3, v3, v2

    if-lez v3, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    const v3, 0x3e19999a    # 0.15f

    goto :goto_0

    :cond_1
    const v3, 0x3d4ccccd    # 0.05f

    :goto_0
    add-float/2addr v3, v1

    const v6, 0x3dcccccd    # 0.1f

    sub-float v1, v4, v1

    mul-float/2addr v1, v6

    add-float/2addr v3, v1

    .line 4979
    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, p0, v0

    :cond_2
    const v1, 0x3f266666    # 0.65f

    if-nez p1, :cond_4

    .line 4981
    aget v3, p0, v5

    const/high16 v6, 0x3f000000    # 0.5f

    cmpl-float v6, v3, v6

    if-lez v6, :cond_3

    goto :goto_1

    :cond_3
    mul-float/2addr v3, v1

    sub-float v1, v4, v3

    .line 4984
    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, p0, v5

    goto :goto_2

    .line 4982
    :cond_4
    :goto_1
    aget v3, p0, v5

    mul-float/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, p0, v5

    :goto_2
    const/4 v1, 0x0

    .line 4986
    aget v1, p0, v1

    aget v0, p0, v0

    aget p0, p0, v5

    invoke-static {v1, v0, p0}, Lorg/telegram/messenger/AndroidUtilities;->HSBtoRGB(FFF)I

    move-result p0

    if-eqz p1, :cond_5

    const p1, -0x66000001

    goto :goto_3

    :cond_5
    const p1, 0x66ffffff

    :goto_3
    and-int/2addr p0, p1

    return p0
.end method

.method public static getPatternSideColor(I)I
    .locals 6

    .line 4990
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v1, p0}, Lorg/telegram/messenger/AndroidUtilities;->RGBtoHSB(III)[F

    move-result-object p0

    const/4 v0, 0x1

    .line 4991
    aget v1, p0, v0

    const v2, 0x3d4ccccd    # 0.05f

    add-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, p0, v0

    const/4 v1, 0x2

    .line 4992
    aget v2, p0, v1

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v3, v2, v3

    const v4, 0x3f666666    # 0.9f

    const/4 v5, 0x0

    if-lez v3, :cond_0

    mul-float/2addr v2, v4

    .line 4993
    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, p0, v1

    goto :goto_0

    :cond_0
    mul-float/2addr v2, v4

    .line 4995
    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, p0, v1

    :goto_0
    const/4 v2, 0x0

    .line 4997
    aget v2, p0, v2

    aget v0, p0, v0

    aget p0, p0, v1

    invoke-static {v2, v0, p0}, Lorg/telegram/messenger/AndroidUtilities;->HSBtoRGB(FFF)I

    move-result p0

    const/high16 v0, -0x1000000

    or-int/2addr p0, v0

    return p0
.end method

.method public static getPeerLayerVersion(I)I
    .locals 1

    shr-int/lit8 p0, p0, 0x10

    const v0, 0xffff

    and-int/2addr p0, v0

    const/16 v0, 0x49

    .line 2930
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static getPhotoSize()I
    .locals 1

    const/4 v0, 0x0

    .line 3034
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize(Z)I

    move-result v0

    return v0
.end method

.method public static getPhotoSize(Z)I
    .locals 0

    if-eqz p0, :cond_1

    .line 3039
    sget-object p0, Lorg/telegram/messenger/AndroidUtilities;->highQualityPhotoSize:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/16 p0, 0xa00

    .line 3040
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Lorg/telegram/messenger/AndroidUtilities;->highQualityPhotoSize:Ljava/lang/Integer;

    .line 3042
    :cond_0
    sget-object p0, Lorg/telegram/messenger/AndroidUtilities;->highQualityPhotoSize:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 3044
    :cond_1
    sget-object p0, Lorg/telegram/messenger/AndroidUtilities;->photoSize:Ljava/lang/Integer;

    if-nez p0, :cond_2

    const/16 p0, 0x500

    .line 3045
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Lorg/telegram/messenger/AndroidUtilities;->photoSize:Ljava/lang/Integer;

    .line 3047
    :cond_2
    sget-object p0, Lorg/telegram/messenger/AndroidUtilities;->photoSize:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getPixelsInCM(FZ)F
    .locals 1

    const v0, 0x40228f5c    # 2.54f

    div-float/2addr p0, v0

    if-eqz p1, :cond_0

    .line 2922
    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displayMetrics:Landroid/util/DisplayMetrics;

    iget p1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displayMetrics:Landroid/util/DisplayMetrics;

    iget p1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    :goto_0
    mul-float/2addr p0, p1

    return p0
.end method

.method public static getPrefIntOrLong(Landroid/content/SharedPreferences;Ljava/lang/String;J)J
    .locals 0

    .line 5824
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    long-to-int p2, p2

    .line 5826
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public static getRealScreenSize()Landroid/graphics/Point;
    .locals 3

    .line 3172
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 3174
    :try_start_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 3175
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 3177
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static getRootDirs()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 2626
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2628
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2630
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_4

    aget-object v6, v1, v5

    if-nez v6, :cond_0

    goto :goto_2

    .line 2634
    :cond_0
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 2635
    const-string v7, "/Android"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_3

    if-nez v2, :cond_1

    .line 2638
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2640
    :cond_1
    new-instance v8, Ljava/io/File;

    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move v6, v4

    .line 2641
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 2642
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2646
    :cond_2
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2647
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2648
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    if-nez v2, :cond_5

    .line 2654
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2656
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2657
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 2658
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2659
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v2
.end method

.method public static getRootView(Landroid/view/View;)Landroid/view/View;
    .locals 1

    :goto_0
    if-eqz p0, :cond_0

    .line 6071
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 6072
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static getSafeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 435
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->BAD_CHARS_MESSAGE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v1, "\u200c"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object p0
.end method

.method public static getScaledBitmap(FFLjava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    .line 5833
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 5834
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz p2, :cond_0

    .line 5837
    invoke-static {p2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-object v3, v0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v3, v0

    goto/16 :goto_4

    .line 5839
    :cond_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5840
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p3

    int-to-long v4, p4

    invoke-virtual {p3, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 5841
    invoke-static {v3, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 5843
    :goto_0
    iget p3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez p3, :cond_6

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v4, :cond_6

    cmpl-float v5, p0, p1

    if-lez v5, :cond_1

    if-ge p3, v4, :cond_1

    move v6, p1

    move p1, p0

    move p0, v6

    :cond_1
    int-to-float p3, p3

    div-float/2addr p3, p0

    int-to-float p0, v4

    div-float/2addr p0, p1

    .line 5849
    invoke-static {p3, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    .line 5850
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, p0, p1

    if-lez p1, :cond_3

    .line 5853
    :cond_2
    iget p1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float p1, p1

    cmpg-float p1, p1, p0

    if-ltz p1, :cond_2

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 5856
    iput-boolean p0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz p2, :cond_4

    .line 5859
    invoke-static {p2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_2

    .line 5861
    :cond_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    int-to-long p1, p4

    invoke-virtual {p0, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 5862
    invoke-static {v3, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    if-eqz v3, :cond_5

    .line 5871
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 5874
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_5
    return-object p0

    :cond_6
    if-eqz v3, :cond_7

    .line 5871
    :goto_3
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :catch_1
    move-exception p0

    .line 5874
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 5867
    :goto_4
    :try_start_4
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v3, :cond_7

    goto :goto_3

    :cond_7
    :goto_5
    return-object v0

    :catchall_2
    move-exception p0

    if-eqz v3, :cond_8

    .line 5871
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_6

    :catch_2
    move-exception p1

    .line 5874
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 5876
    :cond_8
    :goto_6
    throw p0
.end method

.method public static getShadowHeight()I
    .locals 2

    .line 2473
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->disableDividers:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2475
    :cond_0
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v1, 0x40800000    # 4.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    const/4 v0, 0x3

    return v0

    :cond_1
    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static getSharingDirectory()Ljava/io/File;
    .locals 3

    .line 5295
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x4

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "sharing/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 4

    .line 1465
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dimen"

    const-string v2, "android"

    const-string/jumbo v3, "status_bar_height"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1466
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getStringBytes(Ljava/lang/String;)[B
    .locals 1

    .line 2206
    :try_start_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    .line 2210
    new-array p0, p0, [B

    return-object p0
.end method

.method public static getSysInfoLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 0

    .line 6291
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->getSysInfoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6294
    :try_start_0
    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSysInfoString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 6272
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6273
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 6282
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object p0

    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_1
    move-object v1, v0

    goto :goto_2

    :goto_1
    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 6286
    :catch_2
    :cond_1
    throw p0

    :catch_3
    :goto_2
    if-eqz v1, :cond_2

    goto :goto_0

    :catch_4
    :cond_2
    :goto_3
    return-object v0
.end method

.method public static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    const/4 v0, 0x0

    .line 4829
    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 4830
    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static getThumbForNameOrMime(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 3

    const/4 p1, 0x0

    if-eqz p0, :cond_c

    .line 1475
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_c

    .line 1477
    const-string v0, ".doc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-nez v0, :cond_7

    const-string v0, ".txt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, ".psd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 1479
    :cond_0
    const-string v0, ".xls"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, ".csv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 1481
    :cond_1
    const-string v0, ".pdf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, ".ppt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, ".key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 1483
    :cond_2
    const-string v0, ".zip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ".rar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ".ai"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ".mp3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ".mov"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ".avi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_4

    :cond_4
    :goto_0
    const/4 v0, 0x3

    goto :goto_4

    :cond_5
    :goto_1
    const/4 v0, 0x2

    goto :goto_4

    :cond_6
    :goto_2
    move v0, v1

    goto :goto_4

    :cond_7
    :goto_3
    move v0, p1

    :goto_4
    if-ne v0, v2, :cond_a

    const/16 v0, 0x2e

    .line 1488
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ne v0, v2, :cond_8

    const-string v0, ""

    goto :goto_5

    :cond_8
    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1489
    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_9

    .line 1490
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->documentIcons:[I

    array-length p1, p1

    rem-int v0, p0, p1

    goto :goto_6

    .line 1492
    :cond_9
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->documentIcons:[I

    array-length p1, p1

    rem-int v0, p0, p1

    :cond_a
    :goto_6
    if-eqz p2, :cond_b

    .line 1495
    sget-object p0, Lorg/telegram/messenger/AndroidUtilities;->documentMediaIcons:[I

    aget p0, p0, v0

    return p0

    :cond_b
    sget-object p0, Lorg/telegram/messenger/AndroidUtilities;->documentIcons:[I

    aget p0, p0, v0

    return p0

    :cond_c
    if-eqz p2, :cond_d

    .line 1497
    sget-object p0, Lorg/telegram/messenger/AndroidUtilities;->documentMediaIcons:[I

    aget p0, p0, p1

    return p0

    :cond_d
    sget-object p0, Lorg/telegram/messenger/AndroidUtilities;->documentIcons:[I

    aget p0, p0, p1

    return p0
.end method

.method public static getTransparentColor(IF)I
    .locals 3

    .line 5902
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 5903
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 5904
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 5905
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    .line 5907
    invoke-static {p1, v1, v2, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static getTrimmedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5

    if-eqz p0, :cond_4

    .line 3220
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 3223
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x20

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v0, :cond_2

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-eq v0, v2, :cond_1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_2

    .line 3224
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p0, v4, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    .line 3226
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-eq v0, v2, :cond_3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_4

    .line 3227
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-interface {p0, v3, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_1

    :cond_4
    :goto_2
    return-object p0
.end method

.method public static getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2

    .line 2391
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->typefaceCache:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda28;

    invoke-direct {v1}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda28;-><init>()V

    invoke-static {v0, p0, v1}, Lj$/util/concurrent/ConcurrentMap$-EL;->computeIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;

    return-object p0
.end method

.method public static getURIParsePattern()Ljava/util/regex/Pattern;
    .locals 1

    .line 6214
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->uriParse:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    .line 6215
    const-string v0, "^(([^:/?#]+):)?(//([^/?#]*))?([^?#]*)(\\?([^#]*))?(#(.*))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->uriParse:Ljava/util/regex/Pattern;

    .line 6217
    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->uriParse:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static getVibrator()Landroid/os/Vibrator;
    .locals 2

    .line 4567
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->vibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 4568
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->vibrator:Landroid/os/Vibrator;

    .line 4570
    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->vibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method public static getViewInset(Landroid/view/View;)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 3143
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 3148
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3149
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    return v0

    .line 3166
    :goto_0
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return v0
.end method

.method public static getViewPositionInParent(Landroid/view/View;Landroid/view/ViewGroup;[F)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1032
    aput v1, p2, v0

    const/4 v2, 0x1

    .line 1033
    aput v1, p2, v2

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    if-eq p0, p1, :cond_2

    .line 1040
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroidx/viewpager/widget/ViewPager;

    if-nez v1, :cond_1

    .line 1041
    aget v1, p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v1, v3

    aput v1, p2, v0

    .line 1042
    aget v1, p2, v2

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v1, v3

    aput v1, p2, v2

    .line 1044
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static getWallPaperUrl(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 5017
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v0, :cond_4

    .line 5018
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 5019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/bg/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5020
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5021
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    if-eqz v2, :cond_2

    .line 5022
    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->blur:Z

    if-eqz v2, :cond_0

    .line 5023
    const-string v2, "blur"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5025
    :cond_0
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->motion:Z

    if-eqz p0, :cond_2

    .line 5026
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_1

    .line 5027
    const-string p0, "+"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5029
    :cond_1
    const-string/jumbo p0, "motion"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5032
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_3

    .line 5033
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?mode="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0

    .line 5035
    :cond_4
    instance-of v0, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v0, :cond_5

    .line 5036
    check-cast p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    .line 5037
    invoke-virtual {p0}, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getWallpaperRotation(IZ)I
    .locals 0

    if-eqz p1, :cond_0

    add-int/lit16 p0, p0, 0xb4

    goto :goto_0

    :cond_0
    add-int/lit16 p0, p0, -0xb4

    :goto_0
    const/16 p1, 0x168

    if-lt p0, p1, :cond_1

    add-int/lit16 p0, p0, -0x168

    goto :goto_0

    :cond_1
    :goto_1
    if-gez p0, :cond_2

    add-int/lit16 p0, p0, 0x168

    goto :goto_1

    :cond_2
    return p0
.end method

.method public static getWasTablet()Ljava/lang/Boolean;
    .locals 1

    .line 2995
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->wasTablet:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static googleVoiceClientService_performAction(Landroid/content/Intent;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 880
    :cond_0
    new-instance p1, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda10;-><init>(Landroid/content/Intent;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static gzip(Ljava/io/File;Ljava/io/File;)Z
    .locals 4

    const/4 v0, 0x0

    .line 6677
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6678
    :try_start_1
    new-instance p0, Ljava/util/zip/GZIPOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p1, 0x2000

    .line 6680
    :try_start_2
    new-array p1, p1, [B

    .line 6682
    :goto_0
    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 6683
    invoke-virtual {p0, p1, v0, v2}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 6686
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 p0, 0x1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception p0

    goto :goto_6

    :catchall_1
    move-exception p0

    goto :goto_3

    .line 6676
    :goto_1
    :try_start_5
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    :try_start_6
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 6689
    :goto_5
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 6687
    :goto_6
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_7
    return v0
.end method

.method public static handleProxyIntent(Landroid/app/Activity;Landroid/content/Intent;Z)Z
    .locals 16

    .line 4588
    const-string/jumbo v0, "tg:proxy"

    const-string/jumbo v1, "tg://telegram.org"

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    .line 4592
    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x100000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    return v2

    .line 4595
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 4602
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_a

    .line 4604
    const-string v7, "http"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v8, "secret"

    const-string/jumbo v9, "pass"

    const-string/jumbo v10, "user"

    const-string/jumbo v11, "port"

    const-string/jumbo v12, "server"

    if-nez v7, :cond_5

    :try_start_1
    const-string v7, "https"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    .line 4621
    :cond_2
    const-string/jumbo v7, "tg"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 4622
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4623
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string/jumbo v7, "tg://socks"

    const-string/jumbo v13, "tg:socks"

    const-string/jumbo v14, "tg://proxy"

    if-nez v4, :cond_3

    :try_start_2
    invoke-virtual {v3, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 4624
    :cond_3
    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 4625
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4626
    invoke-virtual {v0, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4627
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->checkHostForPunycode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4628
    invoke-static {v1, v5}, Ljava/net/IDN;->toASCII(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :cond_4
    move-object v6, v1

    .line 4630
    invoke-virtual {v0, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4631
    invoke-virtual {v0, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4632
    invoke-virtual {v0, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4633
    invoke-virtual {v0, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v1

    move-object v8, v6

    move-object v6, v3

    goto/16 :goto_2

    .line 4605
    :cond_5
    :goto_0
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 4606
    const-string/jumbo v1, "telegram.me"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "t.me"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "telegram.dog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4607
    :cond_6
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 4609
    const-string v1, "/socks"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "/proxy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4610
    :cond_7
    invoke-virtual {v3, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4611
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->checkHostForPunycode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4612
    invoke-static {v0, v5}, Ljava/net/IDN;->toASCII(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_8
    move-object v6, v0

    .line 4614
    invoke-virtual {v3, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4615
    invoke-virtual {v3, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4616
    invoke-virtual {v3, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4617
    invoke-virtual {v3, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v15, v6

    move-object v6, v1

    move-object v1, v15

    goto :goto_1

    :cond_9
    move-object v0, v6

    move-object v1, v0

    move-object v3, v1

    move-object v4, v3

    :goto_1
    move-object v9, v0

    move-object v8, v1

    move-object v0, v3

    goto :goto_2

    :cond_a
    move-object v0, v6

    move-object v4, v0

    move-object v8, v4

    move-object v9, v8

    .line 4637
    :goto_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v1, :cond_f

    .line 4638
    const-string v1, ""

    if-nez v6, :cond_b

    move-object v10, v1

    goto :goto_3

    :cond_b
    move-object v10, v6

    :goto_3
    if-nez v4, :cond_c

    move-object v11, v1

    goto :goto_4

    :cond_c
    move-object v11, v4

    :goto_4
    if-nez v0, :cond_d

    move-object v12, v1

    goto :goto_5

    :cond_d
    move-object v12, v0

    :goto_5
    if-eqz p2, :cond_e

    move-object/from16 v7, p0

    .line 4647
    :try_start_3
    invoke-static/range {v7 .. v12}, Lorg/telegram/messenger/AndroidUtilities;->showProxyAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_e
    return v5

    :catch_0
    :cond_f
    return v2
.end method

.method public static hasDialogOnTop(Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 6047
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    instance-of v3, v1, Lorg/telegram/ui/ActionBar/AlertDialog;

    if-nez v3, :cond_2

    instance-of v3, v1, Lorg/telegram/ui/ActionBar/BottomSheet;

    if-eqz v3, :cond_1

    check-cast v1, Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->attachedFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez v1, :cond_2

    :cond_1
    return v2

    .line 6050
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    if-nez v1, :cond_3

    return v0

    .line 6051
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->allGlobalViews()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 6052
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    .line 6054
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ltz v3, :cond_7

    .line 6055
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 6056
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    instance-of v6, v5, Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v6, :cond_5

    .line 6057
    check-cast v5, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->getContainerView()Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getRootView(Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    if-ne v4, v5, :cond_5

    goto :goto_1

    .line 6061
    :cond_5
    instance-of v5, v4, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;

    if-nez v5, :cond_6

    instance-of v5, v4, Lorg/telegram/ui/Components/PipRoundVideoView$PipFrameLayout;

    if-nez v5, :cond_6

    goto :goto_2

    :cond_6
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 6066
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p0

    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->getRootView(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    if-eq v4, p0, :cond_8

    return v2

    :cond_8
    :goto_3
    return v0
.end method

.method public static hideKeyboard(Landroid/view/View;)V
    .locals 2

    if-nez p0, :cond_0

    goto :goto_0

    .line 2589
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2590
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    .line 2593
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2596
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static highlightText(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;
    .locals 6

    .line 527
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 530
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 531
    invoke-static {p0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 532
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    :goto_0
    if-ltz v2, :cond_1

    .line 535
    :try_start_0
    new-instance v3, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-direct {v3, v4, p2}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 537
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 539
    invoke-virtual {v0, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static highlightText(Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;",
            ")",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 512
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 513
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p0, v3, p2}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object p0, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 520
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne v2, p1, :cond_3

    return-object v0

    :cond_3
    return-object p0
.end method

.method public static hsvToColor(DDD)I
    .locals 0

    .line 1589
    invoke-static/range {p0 .. p5}, Lorg/telegram/messenger/AndroidUtilities;->hsvToRgb(DDD)[I

    move-result-object p0

    const/4 p1, 0x0

    .line 1590
    aget p1, p0, p1

    const/4 p2, 0x1

    aget p2, p0, p2

    const/4 p3, 0x2

    aget p0, p0, p3

    const/16 p3, 0xff

    invoke-static {p3, p1, p2, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static hsvToRgb(DDD)[I
    .locals 10

    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    mul-double/2addr p0, v0

    .line 1595
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-double v0, v0

    sub-double/2addr p0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v4, v2, p2

    mul-double/2addr v4, p4

    mul-double v6, p0, p2

    sub-double v6, v2, v6

    mul-double/2addr v6, p4

    sub-double p0, v2, p0

    mul-double/2addr p0, p2

    sub-double/2addr v2, p0

    mul-double/2addr v2, p4

    double-to-int p0, v0

    .line 1600
    rem-int/lit8 p0, p0, 0x6

    if-eqz p0, :cond_5

    const/4 p1, 0x1

    if-eq p0, p1, :cond_4

    const/4 p1, 0x2

    if-eq p0, p1, :cond_3

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2

    const/4 p1, 0x4

    if-eq p0, p1, :cond_1

    const/4 p1, 0x5

    if-eq p0, p1, :cond_0

    const-wide/16 p4, 0x0

    move-wide v2, p4

    move-wide v4, v2

    goto :goto_1

    :cond_0
    move-wide v2, v6

    goto :goto_1

    :cond_1
    move-wide v8, v2

    move-wide v2, p4

    :goto_0
    move-wide p4, v8

    goto :goto_1

    :cond_2
    move-wide v2, p4

    move-wide p4, v4

    move-wide v4, v6

    goto :goto_1

    :cond_3
    move-wide v8, v4

    move-wide v4, p4

    goto :goto_0

    :cond_4
    move-wide v2, v4

    move-wide v4, p4

    move-wide p4, v6

    goto :goto_1

    :cond_5
    move-wide v8, v4

    move-wide v4, v2

    move-wide v2, v8

    :goto_1
    const-wide p0, 0x406fe00000000000L    # 255.0

    mul-double/2addr p4, p0

    double-to-int p2, p4

    mul-double/2addr v4, p0

    double-to-int p3, v4

    mul-double/2addr v2, p0

    double-to-int p0, v2

    .line 1632
    filled-new-array {p2, p3, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public static ilerp(FFF)F
    .locals 0

    .line 0
    sub-float/2addr p0, p1

    sub-float/2addr p2, p1

    div-float/2addr p0, p2

    return p0
.end method

.method public static ilerp(III)F
    .locals 0

    .line 0
    sub-int/2addr p0, p1

    int-to-float p0, p0

    sub-int/2addr p2, p1

    int-to-float p1, p2

    div-float/2addr p0, p1

    return p0
.end method

.method public static indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .line 5074
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 5078
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_5

    .line 5079
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v2, v4, :cond_1

    return v3

    :cond_1
    move v3, v0

    move v2, v1

    .line 5084
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 5085
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    .line 5086
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    if-eq v4, v5, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5093
    :cond_3
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v3, v2, :cond_4

    return v1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return v3

    .line 5075
    :cond_6
    :goto_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static intersect1d(FFFF)Z
    .locals 2

    .line 6262
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    cmpl-float p0, p2, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static intersect1d(IIII)Z
    .locals 2

    .line 6258
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    if-le p2, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static intersect1dInclusive(IIII)Z
    .locals 2

    .line 6266
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    if-lt p2, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isAccessibilityScreenReaderEnabled()Z
    .locals 1

    .line 5920
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isAccessibilityTouchExplorationEnabled()Z

    move-result v0

    return v0
.end method

.method public static isAccessibilityTouchExplorationEnabled()Z
    .locals 2

    .line 4574
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-nez v0, :cond_0

    .line 4575
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 4577
    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isActivityRunning(Landroid/app/Activity;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 6306
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static isAirplaneModeOn()Z
    .locals 3

    .line 3862
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method public static isBannedForever(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Z
    .locals 6

    if-eqz p0, :cond_1

    .line 4483
    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    int-to-long v0, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x9660180

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isContextSafe(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 6918
    :cond_0
    instance-of v1, p0, Landroid/app/Activity;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 6919
    check-cast p0, Landroid/app/Activity;

    .line 6920
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 6922
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2

    .line 6926
    :cond_3
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_4

    .line 6927
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    .line 6928
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->isContextSafe(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_4
    return v2
.end method

.method public static isDarkColor(I)Z
    .locals 1

    .line 1053
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result p0

    const v0, 0x3f389375    # 0.721f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isDownloadsDocument(Landroid/net/Uri;)Z
    .locals 1

    .line 3764
    const-string v0, "com.android.providers.downloads.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isENOSPC(Ljava/lang/Exception;)Z
    .locals 2

    .line 5957
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 5960
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Landroid/system/ErrnoException;

    if-eqz v0, :cond_0

    .line 5961
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Landroid/system/ErrnoException;

    iget v0, v0, Landroid/system/ErrnoException;->errno:I

    sget v1, Landroid/system/OsConstants;->ENOSPC:I

    if-eq v0, v1, :cond_1

    .line 5962
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "no space left on device"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isEROFS(Ljava/lang/Exception;)Z
    .locals 2

    .line 5967
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 5968
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Landroid/system/ErrnoException;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Landroid/system/ErrnoException;

    iget v0, v0, Landroid/system/ErrnoException;->errno:I

    sget v1, Landroid/system/OsConstants;->EROFS:I

    if-eq v0, v1, :cond_1

    .line 5969
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "read-only file system"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isExternalStorageDocument(Landroid/net/Uri;)Z
    .locals 1

    .line 3760
    const-string v0, "com.android.externalstorage.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isFilNotFoundException(Ljava/lang/Throwable;)Z
    .locals 1

    .line 950
    instance-of v0, p0, Ljava/io/FileNotFoundException;

    if-nez v0, :cond_1

    instance-of p0, p0, Ljava/io/EOFException;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isHonor()Z
    .locals 2

    .line 6484
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->isHonor:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 6486
    :try_start_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 6487
    const-string v1, "huawei"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "honor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->isHonor:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 6489
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 6490
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->isHonor:Ljava/lang/Boolean;

    .line 6493
    :cond_2
    :goto_2
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->isHonor:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isInAirplaneMode(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    .line 6660
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "airplane_mode_on"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method public static isInPictureInPictureMode(Landroid/app/Activity;)Z
    .locals 2

    .line 5612
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isInternalUri(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 1848
    invoke-static {v0, p0}, Lorg/telegram/messenger/AndroidUtilities;->isInternalUri(Landroid/net/Uri;I)Z

    move-result p0

    return p0
.end method

.method public static isInternalUri(Landroid/net/Uri;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1844
    invoke-static {p0, v0}, Lorg/telegram/messenger/AndroidUtilities;->isInternalUri(Landroid/net/Uri;I)Z

    move-result p0

    return p0
.end method

.method private static isInternalUri(Landroid/net/Uri;I)Z
    .locals 7

    const/16 v0, 0xa

    const/16 v1, 0x1000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p0, :cond_5

    .line 1854
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return v2

    .line 1859
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/io/File;

    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    const-string/jumbo v6, "voip_logs"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/\\d+\\.log"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    move p1, v2

    .line 1864
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v1, :cond_2

    return v3

    .line 1869
    :cond_2
    :try_start_0
    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_9

    .line 1873
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    add-int/2addr p1, v3

    if-lt p1, v0, :cond_4

    return v3

    :cond_4
    move-object p0, v4

    goto :goto_0

    :catchall_0
    return v3

    .line 1884
    :cond_5
    const-string p0, ""

    move v4, v2

    .line 1886
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v1, :cond_6

    return v3

    .line 1891
    :cond_6
    :try_start_1
    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->readlinkFd(I)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_9

    .line 1895
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_2

    :cond_7
    add-int/2addr v4, v3

    if-lt v4, v0, :cond_8

    return v3

    :cond_8
    move-object p0, v5

    goto :goto_1

    .line 1906
    :cond_9
    :goto_2
    :try_start_2
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 1908
    :catch_0
    const-string p1, "/./"

    const-string v0, "/"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1911
    :goto_3
    const-string p1, ".attheme"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    return v2

    .line 1914
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/data/data/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :catchall_1
    return v3
.end method

.method public static isKeyguardSecure()Z
    .locals 2

    .line 3851
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 3852
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    return v0
.end method

.method public static isMapsInstalled(Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .locals 5

    .line 1807
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider;->isApplicationRequired()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1811
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider;->getMapsAppPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 1813
    :try_start_0
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1816
    :catch_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    return v2

    .line 1819
    :cond_1
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1820
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/messenger/IMapsProvider;->getInstallMapsString()I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1821
    sget v3, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda18;

    invoke-direct {v4, v0, p0}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda18;-><init>(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1829
    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1830
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return v2
.end method

.method public static isMediaDocument(Landroid/net/Uri;)Z
    .locals 1

    .line 3768
    const-string v0, "com.android.providers.media.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 0

    .line 5912
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isProxyLink(Landroid/net/Uri;)Z
    .locals 4

    .line 4581
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4583
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4584
    invoke-static {v0, v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->handleProxyIntent(Landroid/app/Activity;Landroid/content/Intent;Z)Z

    move-result p0

    return p0
.end method

.method public static isPunctuationCharacter(C)Z
    .locals 5

    .line 5337
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->charactersMap:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 5338
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->charactersMap:Ljava/util/HashSet;

    .line 5339
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->characters:[C

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-char v3, v0, v2

    .line 5340
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->charactersMap:Ljava/util/HashSet;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5344
    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->charactersMap:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isRTL(Ljava/lang/CharSequence;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 6198
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    move v1, v0

    .line 6202
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 6203
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x590

    if-lt v2, v3, :cond_1

    const/16 v3, 0x6ff

    if-gt v2, v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public static isSafeToShow(Landroid/content/Context;)Z
    .locals 0

    .line 6310
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 6312
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->isActivityRunning(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static isSimAvailable()Z
    .locals 3

    .line 3856
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3857
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    if-eqz v1, :cond_0

    .line 3858
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isAirplaneModeOn()Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isSmallScreen()Z
    .locals 2

    .line 3003
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->isSmallScreen:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 3004
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v0, v1

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v0, v1

    const v1, 0x44228000    # 650.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->isSmallScreen:Ljava/lang/Boolean;

    .line 3006
    :cond_1
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->isSmallScreen:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isSmallTablet()Z
    .locals 2

    .line 3010
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v0, v1

    const v1, 0x442c8000    # 690.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isTablet()Z
    .locals 1

    .line 2999
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTabletInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->forceDisableTabletMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isTabletForce()Z
    .locals 2

    .line 2968
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$bool;->isTablet:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isTabletInternal()Z
    .locals 2

    .line 2972
    sget v0, Lcom/exteragram/messenger/ExteraConfig;->tabletMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2973
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->isTablet:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2975
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->isTablet:Ljava/lang/Boolean;

    goto :goto_0

    .line 2976
    :cond_1
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->isTablet:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 2977
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTabletForce()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->isTablet:Ljava/lang/Boolean;

    .line 2979
    :cond_2
    :goto_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isValidWallChar(C)Z
    .locals 1

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isWaitingForCall()Z
    .locals 2

    .line 2486
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->callLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2487
    :try_start_0
    sget-boolean v1, Lorg/telegram/messenger/AndroidUtilities;->waitingForCall:Z

    .line 2488
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isWaitingForSms()Z
    .locals 2

    .line 2447
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->smsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2448
    :try_start_0
    sget-boolean v1, Lorg/telegram/messenger/AndroidUtilities;->waitingForSms:Z

    .line 2449
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isWhitespace(C)Z
    .locals 1

    .line 5924
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x2800

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3164

    if-eq p0, v0, :cond_1

    const v0, 0xffa0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isWifiEnabled(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    .line 6668
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_0

    .line 6669
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method public static lerp(DDF)D
    .locals 2

    .line 0
    float-to-double v0, p4

    sub-double/2addr p2, p0

    mul-double/2addr v0, p2

    add-double/2addr p0, v0

    return-wide p0
.end method

.method public static lerp(FFF)F
    .locals 0

    .line 0
    sub-float/2addr p1, p0

    mul-float/2addr p2, p1

    add-float/2addr p0, p2

    return p0
.end method

.method public static lerp(FFFF)F
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    .line 5119
    invoke-static {p0, p1, p2, v0, p3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFFFF)F

    move-result p0

    return p0
.end method

.method public static lerp(FFFFF)F
    .locals 1

    cmpg-float v0, p4, p3

    if-gez v0, :cond_0

    div-float/2addr p4, p3

    .line 5123
    invoke-static {p0, p1, p4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p0

    return p0

    :cond_0
    sub-float/2addr p4, p3

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p0, p3

    div-float/2addr p4, p0

    .line 5124
    invoke-static {p1, p2, p4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p0

    return p0
.end method

.method public static lerp(ZZF)F
    .locals 3

    .line 0
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    if-eqz p0, :cond_2

    move v0, v1

    :cond_2
    sub-float/2addr p1, v0

    mul-float/2addr p2, p1

    add-float/2addr v2, p2

    return v2
.end method

.method public static lerp([FF)F
    .locals 2

    const/4 v0, 0x0

    .line 5153
    aget v0, p0, v0

    const/4 v1, 0x1

    aget p0, p0, v1

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p0

    return p0
.end method

.method public static lerp(IIF)I
    .locals 1

    .line 0
    int-to-float v0, p0

    sub-int/2addr p1, p0

    int-to-float p0, p1

    mul-float/2addr p2, p0

    add-float/2addr v0, p2

    float-to-int p0, v0

    return p0
.end method

.method public static lerp(Landroid/graphics/Matrix;Landroid/graphics/Matrix;FLandroid/graphics/Matrix;)V
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 5239
    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->tempFloats:[F

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 5240
    sget-object p0, Lorg/telegram/messenger/AndroidUtilities;->tempFloats2:[F

    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 5241
    invoke-static {v0, p0, p2, p0}, Lorg/telegram/messenger/AndroidUtilities;->lerp([F[FF[F)V

    .line 5242
    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->setValues([F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static lerp(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)V
    .locals 4

    if-eqz p3, :cond_0

    .line 5191
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 5192
    invoke-static {v0, v1, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 5193
    invoke-static {v1, v2, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v1

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 5194
    invoke-static {v2, v3, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v2

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 5195
    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result p0

    .line 5191
    invoke-virtual {p3, v0, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    return-void
.end method

.method public static lerp(Landroid/graphics/Rect;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V
    .locals 4

    if-eqz p3, :cond_0

    .line 5158
    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/RectF;->left:F

    .line 5159
    invoke-static {v0, v1, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    iget v1, p0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/RectF;->top:F

    .line 5160
    invoke-static {v1, v2, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    iget v2, p0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/RectF;->right:F

    .line 5161
    invoke-static {v2, v3, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    .line 5162
    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p0

    .line 5158
    invoke-virtual {p3, v0, v1, v2, p0}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_0
    return-void
.end method

.method public static lerp(Landroid/graphics/RectF;Landroid/graphics/Rect;FLandroid/graphics/RectF;)V
    .locals 4

    if-eqz p3, :cond_0

    .line 5169
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    .line 5170
    invoke-static {v0, v1, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    iget v1, p0, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    .line 5171
    invoke-static {v1, v2, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    iget v2, p0, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    .line 5172
    invoke-static {v2, v3, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    .line 5173
    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p0

    .line 5169
    invoke-virtual {p3, v0, v1, v2, p0}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_0
    return-void
.end method

.method public static lerp(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V
    .locals 4

    if-eqz p3, :cond_0

    .line 5180
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    .line 5181
    invoke-static {v0, v1, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    iget v1, p0, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    .line 5182
    invoke-static {v1, v2, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    iget v2, p0, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    .line 5183
    invoke-static {v2, v3, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    .line 5184
    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p0

    .line 5180
    invoke-virtual {p3, v0, v1, v2, p0}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_0
    return-void
.end method

.method public static lerp([F[FF[F)V
    .locals 4

    if-nez p3, :cond_0

    goto :goto_4

    :cond_0
    const/4 v0, 0x0

    .line 5229
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_5

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    .line 5230
    array-length v2, p0

    if-lt v0, v2, :cond_1

    goto :goto_1

    :cond_1
    aget v2, p0, v0

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v1

    :goto_2
    if-eqz p1, :cond_4

    .line 5231
    array-length v3, p1

    if-lt v0, v3, :cond_3

    goto :goto_3

    :cond_3
    aget v1, p1, v0

    .line 5232
    :cond_4
    :goto_3
    invoke-static {v2, v1, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    aput v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_4
    return-void
.end method

.method public static lerp([I[IF[I)V
    .locals 4

    if-nez p3, :cond_0

    goto :goto_5

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 5220
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_5

    if-eqz p0, :cond_2

    .line 5221
    array-length v2, p0

    if-lt v1, v2, :cond_1

    goto :goto_1

    :cond_1
    aget v2, p0, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v0

    :goto_2
    if-eqz p1, :cond_4

    .line 5222
    array-length v3, p1

    if-lt v1, v3, :cond_3

    goto :goto_3

    :cond_3
    aget v3, p1, v1

    goto :goto_4

    :cond_4
    :goto_3
    move v3, v0

    .line 5223
    :goto_4
    invoke-static {v2, v3, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v2

    aput v2, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_5
    return-void
.end method

.method public static lerp3(FFFF)F
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    neg-float p2, p3

    .line 5132
    invoke-static {p1, p0, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p0

    return p0

    .line 5133
    :cond_0
    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p0

    return p0
.end method

.method public static lerpAngle(FFF)F
    .locals 2

    sub-float/2addr p1, p0

    const/high16 v0, 0x43b40000    # 360.0f

    add-float/2addr p1, v0

    const/high16 v1, 0x43340000    # 180.0f

    add-float/2addr p1, v1

    rem-float/2addr p1, v0

    sub-float/2addr p1, v1

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    add-float/2addr p0, v0

    rem-float/2addr p0, v0

    return p0
.end method

.method public static lerpCentered(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)V
    .locals 6

    if-nez p3, :cond_0

    return-void

    .line 5211
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-static {v0, v1, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    .line 5212
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-static {v1, v2, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v1

    int-to-float v1, v1

    .line 5213
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, p2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v2, v3, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 5214
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {v4, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v3

    sub-float p1, v0, v2

    float-to-int p1, p1

    sub-float p2, v1, p0

    float-to-int p2, p2

    add-float/2addr v0, v2

    float-to-int v0, v0

    add-float/2addr v1, p0

    float-to-int p0, v1

    .line 5215
    invoke-virtual {p3, p1, p2, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public static lerpCentered(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V
    .locals 6

    if-nez p3, :cond_0

    return-void

    .line 5202
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-static {v0, v1, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    .line 5203
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-static {v1, v2, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    .line 5204
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, p2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v2, v3, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 5205
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-static {v4, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p0

    div-float/2addr p0, v3

    sub-float p1, v0, v2

    sub-float p2, v1, p0

    add-float/2addr v0, v2

    add-float/2addr v1, p0

    .line 5206
    invoke-virtual {p3, p1, p2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public static lerpColor(IIF)I
    .locals 4

    .line 5137
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-static {v0, v1, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    .line 5138
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v1, v2, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v1

    .line 5139
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v2, v3, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v2

    .line 5140
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result p0

    .line 5136
    invoke-static {v0, v1, v2, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static lerpColor3(IIIF)I
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    neg-float p2, p3

    .line 5144
    invoke-static {p1, p0, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerpColor(IIF)I

    move-result p0

    return p0

    .line 5145
    :cond_0
    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->lerpColor(IIF)I

    move-result p0

    return p0
.end method

.method public static loadVCardFromStream(Landroid/net/Uri;IZLjava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "IZ",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/AndroidUtilities$VcardItem;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 2214
    const-string v2, ""

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 2218
    :try_start_0
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "r"

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 2219
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_18

    .line 2221
    :cond_0
    :try_start_1
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2222
    invoke-virtual {v4, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 2225
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2228
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v0, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v6, 0x0

    move-object v7, v3

    move-object v8, v7

    move-object v10, v8

    move v9, v6

    .line 2234
    :goto_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_24

    .line 2235
    const-string v12, "PHOTO"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/16 v12, 0x3a

    .line 2239
    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v14, "ORG"

    const-string v15, "TEL"

    const/4 v13, 0x2

    if-ltz v12, :cond_12

    .line 2242
    :try_start_2
    const-string v9, "BEGIN:VCARD"

    invoke-virtual {v11, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2243
    new-instance v7, Lorg/telegram/messenger/AndroidUtilities$VcardData;

    invoke-direct {v7, v3}, Lorg/telegram/messenger/AndroidUtilities$VcardData;-><init>(Lorg/telegram/messenger/AndroidUtilities-IA;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v12, p4

    .line 2244
    iput-object v12, v7, Lorg/telegram/messenger/AndroidUtilities$VcardData;->name:Ljava/lang/String;

    :cond_2
    :goto_2
    move-object v10, v3

    :goto_3
    move v9, v6

    goto/16 :goto_8

    :cond_3
    move-object/from16 v12, p4

    .line 2245
    const-string v9, "END:VCARD"

    invoke-virtual {v11, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_2

    .line 2248
    invoke-virtual {v11, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2249
    new-instance v9, Lorg/telegram/messenger/AndroidUtilities$VcardItem;

    invoke-direct {v9}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;-><init>()V

    .line 2250
    iput v6, v9, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->type:I

    goto/16 :goto_7

    .line 2251
    :cond_5
    const-string v9, "EMAIL"

    invoke-virtual {v11, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2252
    new-instance v9, Lorg/telegram/messenger/AndroidUtilities$VcardItem;

    invoke-direct {v9}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;-><init>()V

    const/4 v10, 0x1

    .line 2253
    iput v10, v9, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->type:I

    goto/16 :goto_7

    .line 2254
    :cond_6
    const-string v9, "ADR"

    invoke-virtual {v11, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_10

    const-string v9, "LABEL"

    invoke-virtual {v11, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_10

    const-string v9, "GEO"

    invoke-virtual {v11, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    goto/16 :goto_6

    .line 2257
    :cond_7
    const-string v9, "URL"

    invoke-virtual {v11, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 2258
    new-instance v9, Lorg/telegram/messenger/AndroidUtilities$VcardItem;

    invoke-direct {v9}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;-><init>()V

    const/4 v10, 0x3

    .line 2259
    iput v10, v9, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->type:I

    goto/16 :goto_7

    .line 2260
    :cond_8
    const-string v9, "NOTE"

    invoke-virtual {v11, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 2261
    new-instance v9, Lorg/telegram/messenger/AndroidUtilities$VcardItem;

    invoke-direct {v9}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;-><init>()V

    const/4 v10, 0x4

    .line 2262
    iput v10, v9, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->type:I

    goto/16 :goto_7

    .line 2263
    :cond_9
    const-string v9, "BDAY"

    invoke-virtual {v11, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 2264
    new-instance v9, Lorg/telegram/messenger/AndroidUtilities$VcardItem;

    invoke-direct {v9}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;-><init>()V

    const/4 v10, 0x5

    .line 2265
    iput v10, v9, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->type:I

    goto :goto_7

    .line 2266
    :cond_a
    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_f

    const-string v9, "TITLE"

    invoke-virtual {v11, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_f

    const-string v9, "ROLE"

    invoke-virtual {v11, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    goto :goto_5

    .line 2269
    :cond_b
    const-string v9, "X-ANDROID"

    invoke-virtual {v11, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 2270
    new-instance v9, Lorg/telegram/messenger/AndroidUtilities$VcardItem;

    invoke-direct {v9}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;-><init>()V

    const/4 v10, -0x1

    .line 2271
    iput v10, v9, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->type:I

    goto :goto_7

    .line 2272
    :cond_c
    const-string v9, "X-PHONETIC"

    invoke-virtual {v11, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    goto :goto_4

    .line 2274
    :cond_d
    const-string v9, "X-"

    invoke-virtual {v11, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 2275
    new-instance v9, Lorg/telegram/messenger/AndroidUtilities$VcardItem;

    invoke-direct {v9}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;-><init>()V

    const/16 v10, 0x14

    .line 2276
    iput v10, v9, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->type:I

    goto :goto_7

    :cond_e
    :goto_4
    move-object v9, v3

    goto :goto_7

    .line 2267
    :cond_f
    :goto_5
    new-instance v9, Lorg/telegram/messenger/AndroidUtilities$VcardItem;

    invoke-direct {v9}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;-><init>()V

    const/4 v10, 0x6

    .line 2268
    iput v10, v9, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->type:I

    goto :goto_7

    .line 2255
    :cond_10
    :goto_6
    new-instance v9, Lorg/telegram/messenger/AndroidUtilities$VcardItem;

    invoke-direct {v9}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;-><init>()V

    .line 2256
    iput v13, v9, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->type:I

    :goto_7
    if-eqz v9, :cond_11

    .line 2278
    iget v10, v9, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->type:I

    if-ltz v10, :cond_11

    .line 2279
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_11
    move-object v10, v9

    goto/16 :goto_3

    :cond_12
    move-object/from16 v12, p4

    :goto_8
    if-nez v9, :cond_15

    if-eqz v7, :cond_15

    if-nez v10, :cond_14

    .line 2286
    :try_start_3
    iget-object v3, v7, Lorg/telegram/messenger/AndroidUtilities$VcardData;->vcard:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_13

    .line 2287
    iget-object v3, v7, Lorg/telegram/messenger/AndroidUtilities$VcardData;->vcard:Ljava/lang/StringBuilder;

    const/16 v13, 0xa

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    :catchall_1
    move-exception v0

    const/4 v3, 0x0

    goto/16 :goto_18

    .line 2289
    :cond_13
    :goto_9
    iget-object v3, v7, Lorg/telegram/messenger/AndroidUtilities$VcardData;->vcard:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 2291
    :cond_14
    iget-object v3, v10, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->vcardData:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    :goto_a
    if-eqz v8, :cond_16

    .line 2295
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2296
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v8, 0x0

    .line 2299
    :cond_16
    const-string v3, "=QUOTED-PRINTABLE"

    invoke-virtual {v11, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v13, "="

    if-eqz v3, :cond_17

    :try_start_4
    invoke-virtual {v11, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 2300
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v13, 0x1

    sub-int/2addr v3, v13

    invoke-virtual {v11, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_b
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_17
    if-nez v9, :cond_18

    if-eqz v7, :cond_18

    if-eqz v10, :cond_18

    .line 2304
    iput-object v11, v10, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->fullData:Ljava/lang/String;

    .line 2306
    :cond_18
    const-string v3, ":"

    invoke-virtual {v11, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_19

    move-object/from16 v16, v0

    .line 2310
    invoke-virtual {v11, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    .line 2311
    invoke-virtual {v11, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_19
    move-object/from16 v16, v0

    .line 2314
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 2316
    :goto_c
    array-length v3, v0

    const/4 v11, 0x2

    if-lt v3, v11, :cond_1a

    if-nez v7, :cond_1b

    :cond_1a
    :goto_d
    move/from16 v17, v6

    goto/16 :goto_12

    .line 2319
    :cond_1b
    aget-object v3, v0, v6

    const-string v11, "FN"

    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-string v11, "N"

    if-nez v3, :cond_1d

    :try_start_5
    aget-object v3, v0, v6

    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1d

    aget-object v3, v0, v6

    invoke-virtual {v3, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    iget-object v3, v7, Lorg/telegram/messenger/AndroidUtilities$VcardData;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    goto :goto_e

    .line 2345
    :cond_1c
    aget-object v3, v0, v6

    invoke-virtual {v3, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2346
    iget-object v3, v7, Lorg/telegram/messenger/AndroidUtilities$VcardData;->phones:Ljava/util/ArrayList;

    const/4 v13, 0x1

    aget-object v0, v0, v13

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 2322
    :cond_1d
    :goto_e
    aget-object v3, v0, v6

    const-string v14, ";"

    invoke-virtual {v3, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2323
    array-length v14, v3

    move-object/from16 v18, v0

    move v15, v6

    move/from16 v17, v15

    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_f
    if-ge v15, v14, :cond_21

    aget-object v1, v3, v15

    .line 2324
    invoke-virtual {v1, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object/from16 v19, v3

    .line 2325
    array-length v3, v1

    move-object/from16 v20, v1

    const/4 v1, 0x2

    if-eq v3, v1, :cond_1e

    goto :goto_10

    .line 2328
    :cond_1e
    aget-object v3, v20, v17

    const-string v1, "CHARSET"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v1, 0x1

    .line 2329
    aget-object v0, v20, v1

    goto :goto_10

    .line 2330
    :cond_1f
    aget-object v1, v20, v17

    const-string v3, "ENCODING"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v1, 0x1

    .line 2331
    aget-object v6, v20, v1

    :cond_20
    :goto_10
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p3

    move-object/from16 v3, v19

    goto :goto_f

    .line 2334
    :cond_21
    aget-object v1, v18, v17

    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v13, 0x1

    .line 2335
    aget-object v1, v18, v13

    const/16 v3, 0x3b

    const/16 v11, 0x20

    invoke-virtual {v1, v3, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lorg/telegram/messenger/AndroidUtilities$VcardData;->name:Ljava/lang/String;

    goto :goto_11

    :cond_22
    const/4 v13, 0x1

    .line 2337
    aget-object v1, v18, v13

    iput-object v1, v7, Lorg/telegram/messenger/AndroidUtilities$VcardData;->name:Ljava/lang/String;

    :goto_11
    if-eqz v6, :cond_23

    .line 2339
    const-string v1, "QUOTED-PRINTABLE"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 2340
    iget-object v1, v7, Lorg/telegram/messenger/AndroidUtilities$VcardData;->name:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getStringBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->decodeQuotedPrintable([B)[B

    move-result-object v1

    if-eqz v1, :cond_23

    .line 2341
    array-length v3, v1

    if-eqz v3, :cond_23

    .line 2342
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v3, v7, Lorg/telegram/messenger/AndroidUtilities$VcardData;->name:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_23
    :goto_12
    move-object/from16 v1, p3

    move-object/from16 v0, v16

    move/from16 v6, v17

    goto/16 :goto_b

    :cond_24
    move-object/from16 v16, v0

    move/from16 v17, v6

    .line 2350
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 2351
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_13

    :catch_0
    move-exception v0

    .line 2353
    :try_start_7
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_13
    move/from16 v0, v17

    const/4 v3, 0x0

    .line 2355
    :goto_14
    :try_start_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 2356
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/AndroidUtilities$VcardData;

    .line 2357
    iget-object v5, v1, Lorg/telegram/messenger/AndroidUtilities$VcardData;->name:Ljava/lang/String;

    if-eqz v5, :cond_28

    iget-object v5, v1, Lorg/telegram/messenger/AndroidUtilities$VcardData;->phones:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_28

    if-nez v3, :cond_25

    .line 2359
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v5

    .line 2362
    :cond_25
    iget-object v5, v1, Lorg/telegram/messenger/AndroidUtilities$VcardData;->phones:Ljava/util/ArrayList;

    move/from16 v6, v17

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    .line 2363
    :goto_15
    iget-object v7, v1, Lorg/telegram/messenger/AndroidUtilities$VcardData;->phones:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_27

    .line 2364
    iget-object v7, v1, Lorg/telegram/messenger/AndroidUtilities$VcardData;->phones:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2365
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x7

    const/4 v9, 0x0

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 2366
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v10

    iget-object v10, v10, Lorg/telegram/messenger/ContactsController;->contactsByShortPhone:Ljava/util/HashMap;

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_26

    move-object v5, v7

    goto :goto_16

    :cond_26
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    :cond_27
    const/4 v9, 0x0

    .line 2371
    :goto_16
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_userContact_old2;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_userContact_old2;-><init>()V

    .line 2372
    iput-object v5, v6, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    .line 2373
    iget-object v5, v1, Lorg/telegram/messenger/AndroidUtilities$VcardData;->name:Ljava/lang/String;

    iput-object v5, v6, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 2374
    iput-object v2, v6, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    const-wide/16 v7, 0x0

    .line 2375
    iput-wide v7, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J

    .line 2376
    new-instance v5, Lorg/telegram/tgnet/TLRPC$RestrictionReason;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$RestrictionReason;-><init>()V

    .line 2377
    iget-object v1, v1, Lorg/telegram/messenger/AndroidUtilities$VcardData;->vcard:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lorg/telegram/tgnet/TLRPC$RestrictionReason;->text:Ljava/lang/String;

    .line 2378
    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$RestrictionReason;->platform:Ljava/lang/String;

    .line 2379
    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$RestrictionReason;->reason:Ljava/lang/String;

    .line 2380
    iget-object v1, v6, Lorg/telegram/tgnet/TLRPC$User;->restriction_reason:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2381
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_17

    :cond_28
    move/from16 v9, v17

    :goto_17
    add-int/lit8 v0, v0, 0x1

    move/from16 v17, v9

    goto/16 :goto_14

    .line 2385
    :goto_18
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_29
    return-object v3
.end method

.method public static lockOrientation(Landroid/app/Activity;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    if-eqz p0, :cond_8

    .line 1919
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->prevOrientation:I

    const/16 v1, -0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1923
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    sput v0, Lorg/telegram/messenger/AndroidUtilities;->prevOrientation:I

    .line 1924
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-eqz v0, :cond_8

    .line 1925
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1926
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 1927
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x3

    const/16 v3, 0x8

    const/4 v4, 0x1

    if-ne v0, v2, :cond_2

    if-ne v1, v4, :cond_1

    .line 1931
    invoke-virtual {p0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void

    .line 1933
    :cond_1
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void

    :cond_2
    const/4 v2, 0x0

    const/16 v5, 0x9

    if-ne v0, v4, :cond_4

    if-ne v1, v4, :cond_3

    .line 1937
    invoke-virtual {p0, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void

    .line 1939
    :cond_3
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void

    :cond_4
    const/4 v6, 0x2

    if-nez v0, :cond_6

    if-ne v1, v6, :cond_5

    .line 1943
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void

    .line 1945
    :cond_5
    invoke-virtual {p0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void

    :cond_6
    if-ne v1, v6, :cond_7

    .line 1949
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void

    .line 1951
    :cond_7
    invoke-virtual {p0, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1956
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_8
    :goto_0
    return-void
.end method

.method public static lockOrientation(Landroid/app/Activity;I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 1967
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    sput v0, Lorg/telegram/messenger/AndroidUtilities;->prevOrientation:I

    .line 1968
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1970
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static logFlagSecure()V
    .locals 0

    return-void
.end method

.method public static makeAccessibilityAnnouncement(Ljava/lang/CharSequence;)V
    .locals 3

    .line 5051
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5052
    :cond_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 5053
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5054
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    const/16 v2, 0x4000

    .line 5055
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 5056
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5057
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static makeBlurBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 2

    const/high16 v0, 0x40c00000    # 6.0f

    const/4 v1, 0x7

    .line 6003
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->makeBlurBitmap(Landroid/view/View;FI)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static makeBlurBitmap(Landroid/view/View;FI)Landroid/graphics/Bitmap;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 6010
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    float-to-int v0, v0

    .line 6011
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p1

    float-to-int v1, v1

    .line 6012
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 6013
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v4, 0x3f800000    # 1.0f

    div-float/2addr v4, p1

    .line 6014
    invoke-virtual {v3, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 6015
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 6016
    invoke-virtual {p0, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 6017
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    div-int/lit16 p0, p0, 0xb4

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v2, p0}, Lorg/telegram/messenger/Utilities;->stackBlurBitmap(Landroid/graphics/Bitmap;I)V

    return-object v2
.end method

.method public static makeClickable(Ljava/lang/CharSequence;ILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/text/SpannableStringBuilder;
    .locals 2

    .line 639
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 658
    :cond_0
    new-instance p1, Lorg/telegram/messenger/AndroidUtilities$4;

    invoke-direct {p1, p3}, Lorg/telegram/messenger/AndroidUtilities$4;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 666
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    .line 658
    invoke-virtual {v0, p1, p0, p2, p0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v0

    .line 641
    :cond_1
    :goto_0
    new-instance p3, Lorg/telegram/messenger/AndroidUtilities$3;

    invoke-direct {p3, p1, p2}, Lorg/telegram/messenger/AndroidUtilities$3;-><init>(ILjava/lang/Runnable;)V

    .line 656
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    .line 641
    invoke-virtual {v0, p3, p0, p1, p0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static makeClickable(Ljava/lang/CharSequence;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 672
    invoke-static {p0, v0, p1, v1}, Lorg/telegram/messenger/AndroidUtilities;->makeClickable(Ljava/lang/CharSequence;ILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static makeGlobalBlurBitmap(Lorg/telegram/messenger/Utilities$Callback;F)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Landroid/graphics/Bitmap;",
            ">;F)V"
        }
    .end annotation

    float-to-int v0, p1

    const/4 v1, 0x0

    .line 6079
    invoke-static {p0, p1, v0, v1, v1}, Lorg/telegram/messenger/AndroidUtilities;->makeGlobalBlurBitmap(Lorg/telegram/messenger/Utilities$Callback;FILandroid/view/View;Ljava/util/List;)V

    return-void
.end method

.method public static makeGlobalBlurBitmap(Lorg/telegram/messenger/Utilities$Callback;FILandroid/view/View;Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Landroid/graphics/Bitmap;",
            ">;FI",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object/from16 v2, p4

    if-nez v1, :cond_0

    goto/16 :goto_7

    .line 6087
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->allGlobalViews()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 6090
    invoke-interface {v1, v4}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 v5, 0x1

    .line 6093
    sput-boolean v5, Lorg/telegram/messenger/AndroidUtilities;->makingGlobalBlurBitmap:Z

    const/4 v6, 0x0

    if-nez v0, :cond_2

    .line 6101
    :try_start_0
    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v8, v7, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    div-float v8, v8, p1

    float-to-int v8, v8

    .line 6102
    iget v7, v7, Landroid/graphics/Point;->y:I

    sget v9, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v7, v9

    sget v9, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    add-int/2addr v7, v9

    :goto_0
    int-to-float v7, v7

    div-float v7, v7, p1

    float-to-int v7, v7

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    goto/16 :goto_6

    .line 6104
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v7, p1

    float-to-int v8, v7

    .line 6105
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    goto :goto_0

    :goto_1
    const/4 v9, 0x2

    .line 6107
    new-array v10, v9, [I

    .line 6108
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v7, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 6109
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    if-eqz v0, :cond_3

    .line 6111
    invoke-virtual {v0, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 6112
    aget v0, v10, v6

    neg-int v0, v0

    int-to-float v0, v0

    div-float v0, v0, p1

    aget v13, v10, v5

    neg-int v13, v13

    int-to-float v13, v13

    div-float v13, v13, p1

    invoke-virtual {v12, v0, v13}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    div-float v0, v0, p1

    .line 6114
    invoke-virtual {v12, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 6115
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    move v13, v6

    .line 6116
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_7

    .line 6117
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 6118
    instance-of v14, v0, Lorg/telegram/ui/Components/PipRoundVideoView$PipFrameLayout;

    if-nez v14, :cond_6

    if-eqz v2, :cond_4

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    goto :goto_4

    .line 6122
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 6123
    instance-of v15, v14, Landroid/view/WindowManager$LayoutParams;

    if-eqz v15, :cond_5

    .line 6124
    check-cast v14, Landroid/view/WindowManager$LayoutParams;

    .line 6125
    iget v15, v14, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v15, v9

    if-eqz v15, :cond_5

    .line 6126
    iget v14, v14, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/high16 v15, 0x437f0000    # 255.0f

    mul-float/2addr v14, v15

    float-to-int v14, v14

    const/high16 v15, -0x1000000

    invoke-static {v15, v14}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v14

    invoke-virtual {v12, v14}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 6130
    :cond_5
    invoke-virtual {v12}, Landroid/graphics/Canvas;->save()I

    .line 6131
    invoke-virtual {v0, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 6132
    aget v14, v10, v6

    int-to-float v14, v14

    div-float v14, v14, p1

    aget v15, v10, v5

    int-to-float v15, v15

    div-float v15, v15, p1

    invoke-virtual {v12, v14, v15}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6134
    :try_start_1
    invoke-virtual {v0, v12}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 6136
    :try_start_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 6138
    :goto_3
    invoke-virtual {v12}, Landroid/graphics/Canvas;->restore()V

    :cond_6
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 6140
    :cond_7
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit16 v0, v0, 0xb4

    move/from16 v2, p2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v11, v0}, Lorg/telegram/messenger/Utilities;->stackBlurBitmap(Landroid/graphics/Bitmap;I)V

    .line 6142
    invoke-interface {v1, v11}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6150
    :goto_5
    sput-boolean v6, Lorg/telegram/messenger/AndroidUtilities;->makingGlobalBlurBitmap:Z

    goto :goto_7

    .line 6145
    :goto_6
    :try_start_3
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 6147
    invoke-interface {v1, v4}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :goto_7
    return-void

    .line 6150
    :goto_8
    sput-boolean v6, Lorg/telegram/messenger/AndroidUtilities;->makingGlobalBlurBitmap:Z

    .line 6151
    throw v0
.end method

.method private static makeUrl(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1255
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v6, p1, v2

    const/4 v7, 0x0

    .line 1256
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v7, 0x0

    .line 1258
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 1259
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    move-object p0, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move-object p0, v3

    goto :goto_0

    :cond_2
    move-object v3, p0

    move v0, v1

    :goto_1
    if-nez v0, :cond_3

    .line 1264
    array-length v0, p1

    if-lez v0, :cond_3

    .line 1265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method public static multiplyAlphaComponent(IF)I
    .locals 1

    .line 5276
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    invoke-static {p0, p1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    return p0
.end method

.method public static multiplyBrightnessColorMatrix(Landroid/graphics/ColorMatrix;F)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 1693
    :cond_0
    new-instance v0, Landroid/graphics/ColorMatrix;

    const/16 v1, 0x14

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x2

    aput v3, v1, v2

    const/4 v2, 0x3

    aput v3, v1, v2

    const/4 v2, 0x4

    aput v3, v1, v2

    const/4 v2, 0x5

    aput v3, v1, v2

    const/4 v2, 0x6

    aput p1, v1, v2

    const/4 v2, 0x7

    aput v3, v1, v2

    const/16 v2, 0x8

    aput v3, v1, v2

    const/16 v2, 0x9

    aput v3, v1, v2

    const/16 v2, 0xa

    aput v3, v1, v2

    const/16 v2, 0xb

    aput v3, v1, v2

    const/16 v2, 0xc

    aput p1, v1, v2

    const/16 p1, 0xd

    aput v3, v1, p1

    const/16 p1, 0xe

    aput v3, v1, p1

    const/16 p1, 0xf

    aput v3, v1, p1

    const/16 p1, 0x10

    aput v3, v1, p1

    const/16 p1, 0x11

    aput v3, v1, p1

    const/high16 p1, 0x3f800000    # 1.0f

    const/16 v2, 0x12

    aput p1, v1, v2

    const/16 p1, 0x13

    aput v3, v1, p1

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-virtual {p0, v0}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    return-void
.end method

.method public static needShowPasscode()Z
    .locals 1

    const/4 v0, 0x0

    .line 3476
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode(Z)Z

    move-result v0

    return v0
.end method

.method public static needShowPasscode(Z)Z
    .locals 5

    .line 3480
    invoke-static {}, Lorg/telegram/ui/Components/ForegroundDetector;->getInstance()Lorg/telegram/ui/Components/ForegroundDetector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/ForegroundDetector;->isWasInBackground(Z)Z

    move-result v0

    if-eqz p0, :cond_0

    .line 3482
    invoke-static {}, Lorg/telegram/ui/Components/ForegroundDetector;->getInstance()Lorg/telegram/ui/Components/ForegroundDetector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ForegroundDetector;->resetBackgroundVar()V

    .line 3484
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    .line 3485
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_1

    if-eqz p0, :cond_1

    sget-object p0, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_1

    .line 3486
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wasInBackground = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " appLocked = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->appLocked:Z

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " autoLockIn = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " lastPauseTime = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/telegram/messenger/SharedConfig;->lastPauseTime:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " uptime = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3488
    :cond_1
    sget-object p0, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_4

    if-eqz v0, :cond_4

    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->appLocked:Z

    if-nez p0, :cond_3

    sget p0, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_3

    if-eqz p0, :cond_2

    sget p0, Lorg/telegram/messenger/SharedConfig;->lastPauseTime:I

    if-eqz p0, :cond_2

    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->appLocked:Z

    if-nez p0, :cond_2

    sget p0, Lorg/telegram/messenger/SharedConfig;->lastPauseTime:I

    sget v0, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    add-int/2addr p0, v0

    if-le p0, v1, :cond_3

    :cond_2
    add-int/lit8 v1, v1, 0x5

    sget p0, Lorg/telegram/messenger/SharedConfig;->lastPauseTime:I

    if-ge v1, p0, :cond_4

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static normalizeTimePart(Ljava/lang/StringBuilder;I)V
    .locals 1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 1013
    const-string v0, "0"

    .line 1014
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void

    .line 1017
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static normalizeTimePart(Ljava/lang/StringBuilder;J)V
    .locals 2

    const-wide/16 v0, 0xa

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 1023
    const-string v0, "0"

    .line 1024
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void

    .line 1027
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static notifyDataSetChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    if-nez p0, :cond_0

    goto :goto_0

    .line 6628
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 6629
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6630
    new-instance v0, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda27;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 6636
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public static obtainLoginPhoneCall(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 3085
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->hasCallPermissions:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3089
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    .line 3090
    const-string v0, "date DESC"

    :goto_0
    move-object v7, v0

    goto :goto_1

    .line 3092
    :cond_1
    const-string v0, "date DESC LIMIT 5"

    goto :goto_0

    .line 3094
    :goto_1
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v0, "number"

    const-string v4, "date"

    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "type IN (3,1,5)"

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3101
    :cond_2
    :goto_2
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 3102
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    .line 3103
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 3104
    sget-boolean v5, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v5, :cond_3

    .line 3105
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "number = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_4

    .line 3107
    :cond_3
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/32 v5, 0x36ee80

    cmp-long v3, v3, v5

    if-ltz v3, :cond_4

    goto :goto_2

    .line 3110
    :cond_4
    invoke-static {p0, v0}, Lorg/telegram/messenger/AndroidUtilities;->checkPhonePattern(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    .line 3114
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v0

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_6

    :cond_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :goto_4
    if-eqz v2, :cond_6

    .line 3094
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_5
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 3115
    :goto_6
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_7
    return-object v1
.end method

.method public static openDocument(Lorg/telegram/messenger/MessageObject;Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 4182
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    if-nez v3, :cond_1

    goto/16 :goto_6

    .line 4187
    :cond_1
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v4, :cond_2

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    const-string v4, ""

    .line 4188
    :goto_0
    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    .line 4189
    new-instance v5, Ljava/io/File;

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v5, v6

    :goto_1
    if-eqz v5, :cond_4

    .line 4191
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_5

    .line 4192
    :cond_4
    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v5, v7}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v5

    :cond_5
    if-eqz v5, :cond_10

    .line 4194
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 4195
    const-string v7, "info2.**"

    const-string v8, "info1.**"

    const/4 v9, 0x1

    if-eqz v2, :cond_7

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "attheme"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 4196
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocumentName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v6, v9}, Lorg/telegram/ui/ActionBar/Theme;->applyThemeFile(Ljava/io/File;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_theme;Z)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 4198
    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ThemePreviewActivity;-><init>(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 4200
    :cond_6
    new-instance v10, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v10, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4201
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 4202
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTopBackground:I

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4203
    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4204
    sget v11, Lorg/telegram/messenger/R$raw;->not_available:I

    const/4 v13, 0x0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v14

    const/16 v12, 0x34

    invoke-virtual/range {v10 .. v15}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopAnimation(IIZILjava/util/Map;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4205
    invoke-virtual {v10, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopAnimationIsNew(Z)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4206
    sget v0, Lorg/telegram/messenger/R$string;->IncorrectTheme:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4207
    sget v0, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4208
    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 4213
    :cond_7
    :try_start_0
    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4214
    invoke-virtual {v10, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4215
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v11

    const/16 v12, 0x2e

    .line 4216
    invoke-virtual {v4, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_8

    add-int/2addr v12, v9

    .line 4218
    invoke-virtual {v4, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 4219
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    .line 4221
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 4222
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    move-object v4, v6

    .line 4227
    :cond_9
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v11, ".provider"

    const/16 v12, 0x18

    const-string/jumbo v13, "text/plain"

    if-lt v3, v12, :cond_b

    .line 4228
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v5}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v4, :cond_a

    move-object v14, v4

    goto :goto_2

    :cond_a
    move-object v14, v13

    :goto_2
    invoke-virtual {v10, v3, v14}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 4230
    :cond_b
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v4, :cond_c

    move-object v14, v4

    goto :goto_3

    :cond_c
    move-object v14, v13

    :goto_3
    invoke-virtual {v10, v3, v14}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    const/16 v3, 0x1f4

    if-eqz v4, :cond_e

    .line 4234
    :try_start_2
    invoke-virtual {v1, v10, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_6

    .line 4236
    :catch_0
    :try_start_3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v12, :cond_d

    .line 4237
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v5}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v10, v4, v13}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    .line 4239
    :cond_d
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v10, v4, v13}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 4241
    :goto_5
    invoke-virtual {v1, v10, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_6

    .line 4244
    :cond_e
    invoke-virtual {v1, v10, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    :catch_1
    if-nez v1, :cond_f

    goto :goto_6

    .line 4250
    :cond_f
    new-instance v14, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v14, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4251
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4252
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTopBackground:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4253
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4254
    sget v15, Lorg/telegram/messenger/R$raw;->not_available:I

    const/16 v17, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v18

    const/16 v16, 0x34

    move-object/from16 v19, v1

    invoke-virtual/range {v14 .. v19}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopAnimation(IIZILjava/util/Map;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4255
    invoke-virtual {v14, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopAnimationIsNew(Z)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4256
    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4257
    sget v1, Lorg/telegram/messenger/R$string;->NoHandleAppInstalled:I

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    new-array v3, v9, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, "NoHandleAppInstalled"

    invoke-static {v0, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4259
    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_10
    :goto_6
    return-void
.end method

.method public static openForView(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)Z
    .locals 6

    if-eqz p0, :cond_b

    .line 4269
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4271
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 4272
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4273
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    const/16 v3, 0x2e

    .line 4274
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_1

    add-int/2addr v3, v1

    .line 4276
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p5, :cond_0

    .line 4277
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->isV(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    .line 4280
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    .line 4283
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_3

    :cond_1
    move-object p2, v5

    goto :goto_0

    :cond_2
    move-object p2, p1

    :cond_3
    :goto_0
    if-eqz p2, :cond_5

    .line 4288
    const-string p1, "application/vnd.android.package-archive"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p5, :cond_4

    return v1

    .line 4290
    :cond_4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p5, 0x1a

    if-lt p1, p5, :cond_5

    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result p1

    if-nez p1, :cond_5

    .line 4291
    invoke-static {p3, p4}, Lorg/telegram/ui/Components/AlertsCreator;->createApkRestrictedDialog(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return v1

    .line 4295
    :cond_5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string p4, ".provider"

    const/16 p5, 0x18

    const-string/jumbo v2, "text/plain"

    if-lt p1, p5, :cond_7

    .line 4296
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p2, :cond_6

    move-object v3, p2

    goto :goto_1

    :cond_6
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 4298
    :cond_7
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p2, :cond_8

    move-object v3, p2

    goto :goto_2

    :cond_8
    move-object v3, v2

    :goto_2
    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_3
    const/16 p1, 0x1f4

    if-eqz p2, :cond_a

    .line 4302
    :try_start_0
    invoke-virtual {p3, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 4304
    :catch_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, p5, :cond_9

    .line 4305
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2, p0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 4307
    :cond_9
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 4309
    :goto_4
    invoke-virtual {p3, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_5

    .line 4312
    :cond_a
    invoke-virtual {p3, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_5
    return v1

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static openForView(Lorg/telegram/messenger/MessageObject;Landroid/app/Activity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)Z
    .locals 8

    .line 4321
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4322
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 4324
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    move-object v2, v0

    goto :goto_3

    .line 4325
    :cond_2
    :goto_2
    iget v0, p0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v0

    goto :goto_1

    .line 4327
    :goto_3
    iget v0, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v3, 0x9

    if-eq v0, v3, :cond_4

    if-nez v0, :cond_3

    goto :goto_5

    :cond_3
    :goto_4
    move-object v4, v1

    goto :goto_6

    :cond_4
    :goto_5
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getMimeType()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 4328
    :goto_6
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object v3

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/AndroidUtilities;->openForView(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)Z

    move-result p0

    return p0
.end method

.method public static openForView(Lorg/telegram/tgnet/TLObject;Landroid/app/Activity;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_6

    .line 4437
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v1

    .line 4438
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 4439
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 4441
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4442
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4443
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    const/16 v5, 0x2e

    .line 4444
    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eq v5, v6, :cond_3

    add-int/2addr v5, v3

    .line 4446
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 4447
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 4449
    instance-of v4, p0, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v4, :cond_1

    .line 4450
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_document;

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    :cond_1
    if-eqz v1, :cond_3

    .line 4452
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move-object v7, v1

    .line 4457
    :cond_3
    :goto_0
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, ".provider"

    const/16 v4, 0x18

    const-string/jumbo v5, "text/plain"

    if-lt p0, v4, :cond_5

    .line 4458
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    if-eqz v7, :cond_4

    move-object v6, v7

    goto :goto_1

    :cond_4
    move-object v6, v5

    :goto_1
    invoke-virtual {v0, p0, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 4460
    :cond_5
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    if-eqz v7, :cond_6

    move-object v6, v7

    goto :goto_2

    :cond_6
    move-object v6, v5

    :goto_2
    invoke-virtual {v0, p0, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_3
    const/16 p0, 0x1f4

    if-eqz v7, :cond_8

    .line 4464
    :try_start_0
    invoke-virtual {p1, v0, p0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 4466
    :catch_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v4, :cond_7

    .line 4467
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 4469
    :cond_7
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 4471
    :goto_4
    invoke-virtual {p1, v0, p0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_5

    .line 4474
    :cond_8
    invoke-virtual {p1, v0, p0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_5
    return v3

    :cond_9
    :goto_6
    return v0
.end method

.method public static openForView(Lorg/telegram/tgnet/TLRPC$Document;Landroid/app/Activity;)Z
    .locals 6

    .line 4332
    invoke-static {p0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v1

    .line 4333
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v0

    .line 4334
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/AndroidUtilities;->openForView(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)Z

    move-result p0

    return p0
.end method

.method public static openSharing(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)V
    .locals 8

    if-eqz p0, :cond_1

    .line 5284
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5287
    :cond_0
    new-instance v1, Lorg/telegram/ui/Components/ShareAlert;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v6, p1

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;Z)V

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_1
    :goto_0
    return-void
.end method

.method public static pack(II)J
    .locals 4

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    int-to-long p0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static premiumText(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x2

    .line 566
    invoke-static {p0, v0, v1, p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static printLayoutRequestedChain(Landroid/view/View;)V
    .locals 5

    if-nez p0, :cond_0

    .line 6732
    const-string p0, "LayoutCheck view == null"

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 6740
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 6742
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LayoutCheck level="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", view="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6744
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "@"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6745
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isLayoutRequested="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6746
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRequested()Z

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6742
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 6748
    instance-of p0, v1, Landroid/view/View;

    if-nez p0, :cond_1

    if-eqz v1, :cond_2

    .line 6750
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", parent="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6752
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (not a View)"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6750
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 6758
    :cond_1
    move-object p0, v1

    check-cast p0, Landroid/view/View;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6761
    :cond_2
    :goto_1
    const-string p0, "LayoutCheck"

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static printStackTrace(Ljava/lang/String;)V
    .locals 5

    .line 6718
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-nez v0, :cond_0

    return-void

    .line 6722
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6723
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 6724
    array-length v1, v0

    const/16 v2, 0xe

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x3

    :goto_0
    if-ge v2, v1, :cond_1

    .line 6725
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6727
    :cond_1
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method private static pruneOverlaps(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/AndroidUtilities$LinkSpec;",
            ">;)V"
        }
    .end annotation

    .line 1412
    new-instance v0, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda8;-><init>()V

    .line 1428
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1430
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_4

    .line 1434
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/AndroidUtilities$LinkSpec;

    add-int/lit8 v3, v1, 0x1

    .line 1435
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/AndroidUtilities$LinkSpec;

    .line 1438
    iget v5, v2, Lorg/telegram/messenger/AndroidUtilities$LinkSpec;->start:I

    iget v6, v4, Lorg/telegram/messenger/AndroidUtilities$LinkSpec;->start:I

    if-gt v5, v6, :cond_3

    iget v2, v2, Lorg/telegram/messenger/AndroidUtilities$LinkSpec;->end:I

    if-le v2, v6, :cond_3

    .line 1439
    iget v4, v4, Lorg/telegram/messenger/AndroidUtilities$LinkSpec;->end:I

    const/4 v7, -0x1

    if-gt v4, v2, :cond_0

    :goto_1
    move v2, v3

    goto :goto_2

    :cond_0
    sub-int v8, v2, v5

    sub-int v9, v4, v6

    if-le v8, v9, :cond_1

    goto :goto_1

    :cond_1
    sub-int/2addr v2, v5

    sub-int/2addr v4, v6

    if-ge v2, v4, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v7

    :goto_2
    if-eq v2, v7, :cond_3

    .line 1447
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static quietSleep(J)V
    .locals 0

    .line 6450
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static randomOf(Ljava/util/ArrayList;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 6775
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 6776
    :cond_0
    sget-object v0, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static readRes(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1174
    invoke-static {v0, p0}, Lorg/telegram/messenger/AndroidUtilities;->readRes(Ljava/io/File;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readRes(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1178
    invoke-static {p0, v0}, Lorg/telegram/messenger/AndroidUtilities;->readRes(Ljava/io/File;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readRes(Ljava/io/File;I)Ljava/lang/String;
    .locals 7

    .line 1183
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->readBufferLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_0

    const/high16 v0, 0x10000

    .line 1185
    new-array v0, v0, [B

    .line 1186
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->readBufferLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 1191
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_0

    :catchall_0
    move-object p1, v1

    goto :goto_2

    .line 1193
    :cond_1
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1196
    :goto_0
    :try_start_1
    sget-object p0, Lorg/telegram/messenger/AndroidUtilities;->bufferLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    const/4 v2, 0x0

    if-nez p0, :cond_2

    const/16 p0, 0x1000

    .line 1198
    new-array p0, p0, [B

    .line 1199
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->bufferLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_2
    move v3, v2

    .line 1201
    :cond_3
    :goto_1
    array-length v4, p0

    invoke-virtual {p1, p0, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-ltz v4, :cond_5

    .line 1202
    array-length v5, v0

    add-int v6, v3, v4

    if-ge v5, v6, :cond_4

    .line 1203
    array-length v5, v0

    mul-int/lit8 v5, v5, 0x2

    new-array v5, v5, [B

    .line 1204
    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1206
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->readBufferLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move-object v0, v5

    :cond_4
    if-lez v4, :cond_3

    .line 1209
    invoke-static {p0, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move v3, v6

    goto :goto_1

    .line 1218
    :cond_5
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1225
    :catchall_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Ljava/lang/String;-><init>([BII)V

    return-object p0

    :catchall_2
    :goto_2
    if-eqz p1, :cond_6

    .line 1218
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    :cond_6
    return-object v1
.end method

.method public static recycleBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 911
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->recycleBitmaps(Ljava/util/List;)V

    return-void
.end method

.method public static recycleBitmaps(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 842
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p0, :cond_3

    .line 852
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 853
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 854
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 855
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 856
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 857
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 860
    :cond_2
    new-instance p0, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda11;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda11;-><init>(Ljava/util/ArrayList;)V

    const-wide/16 v0, 0x24

    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static removeAdjustResize(Landroid/app/Activity;I)V
    .locals 1

    if-eqz p0, :cond_1

    .line 1785
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1788
    :cond_0
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->adjustOwnerClassGuid:I

    if-ne v0, p1, :cond_1

    .line 1789
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static removeAltFocusable(Landroid/app/Activity;I)V
    .locals 1

    if-nez p0, :cond_0

    goto :goto_0

    .line 1747
    :cond_0
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->altFocusableClassGuid:I

    if-ne v0, p1, :cond_1

    .line 1748
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/high16 p1, 0x20000

    invoke-virtual {p0, p1}, Landroid/view/Window;->clearFlags(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static removeDiacritics(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 339
    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->REMOVE_MULTIPLE_DIACRITICS:Ljava/util/regex/Pattern;

    if-nez v0, :cond_1

    goto :goto_0

    .line 340
    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_0
    return-object p0

    .line 342
    :cond_2
    const-string p0, "$1"

    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removeFromParent(Landroid/view/View;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 944
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 945
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static removeRTL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 347
    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->REMOVE_RTL:Ljava/util/regex/Pattern;

    if-nez v0, :cond_1

    .line 348
    const-string v0, "[\\u200E\\u200F\\u202A-\\u202E]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->REMOVE_RTL:Ljava/util/regex/Pattern;

    .line 350
    :cond_1
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->REMOVE_RTL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    if-nez v0, :cond_2

    return-object p0

    .line 352
    :cond_2
    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removeSpans(Ljava/lang/CharSequence;Ljava/lang/Class;)Ljava/lang/CharSequence;
    .locals 2

    .line 6617
    instance-of v0, p0, Landroid/text/Spannable;

    if-nez v0, :cond_0

    return-object p0

    .line 6618
    :cond_0
    check-cast p0, Landroid/text/Spannable;

    .line 6619
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0, p1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    .line 6620
    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_1

    .line 6621
    aget-object v0, p1, v1

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static replaceArrows(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 3

    const v0, 0x402aaaab

    .line 795
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p0, p1, v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;ZFFF)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static replaceArrows(Ljava/lang/CharSequence;ZFF)Ljava/lang/CharSequence;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 798
    invoke-static {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;ZFFF)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static replaceArrows(Ljava/lang/CharSequence;ZFFF)Ljava/lang/CharSequence;
    .locals 6

    .line 801
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_mini_forumarrow:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;ZFFFI)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static replaceArrows(Ljava/lang/CharSequence;ZFFFI)Ljava/lang/CharSequence;
    .locals 8

    .line 805
    new-instance v0, Lorg/telegram/ui/Components/ColoredImageSpan;

    const/4 v1, 0x0

    invoke-direct {v0, p5, v1}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(II)V

    const v2, 0x3f6147ae    # 0.88f

    mul-float/2addr p4, v2

    .line 806
    invoke-virtual {v0, p4, p4}, Lorg/telegram/ui/Components/ColoredImageSpan;->setScale(FF)V

    neg-float v2, p2

    .line 807
    invoke-virtual {v0, v2, p3}, Lorg/telegram/ui/Components/ColoredImageSpan;->translate(FF)V

    const v2, 0x3f4ccccd    # 0.8f

    .line 808
    iput v2, v0, Lorg/telegram/ui/Components/ColoredImageSpan;->spaceScaleX:F

    if-eqz p1, :cond_0

    .line 810
    iput-boolean p1, v0, Lorg/telegram/ui/Components/ColoredImageSpan;->useLinkPaintColor:Z

    .line 813
    :cond_0
    new-instance v3, Landroid/text/SpannableString;

    const-string/jumbo v4, "\u00a0>"

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 814
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v3, v0, v4, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 815
    const-string v4, " >"

    invoke-static {v4, p0, v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceMultipleCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 817
    new-instance v3, Landroid/text/SpannableString;

    const-string v4, ">"

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 818
    invoke-virtual {v3, v0, v1, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 819
    invoke-static {v4, p0, v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceMultipleCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 821
    new-instance v0, Lorg/telegram/ui/Components/ColoredImageSpan;

    invoke-direct {v0, p5, v1}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(II)V

    .line 822
    invoke-virtual {v0, p4, p4}, Lorg/telegram/ui/Components/ColoredImageSpan;->setScale(FF)V

    .line 823
    invoke-virtual {v0, p2, p3}, Lorg/telegram/ui/Components/ColoredImageSpan;->translate(FF)V

    const/high16 p2, 0x43340000    # 180.0f

    .line 824
    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/ColoredImageSpan;->rotate(F)V

    .line 825
    iput v2, v0, Lorg/telegram/ui/Components/ColoredImageSpan;->spaceScaleX:F

    if-eqz p1, :cond_1

    .line 827
    iput-boolean p1, v0, Lorg/telegram/ui/Components/ColoredImageSpan;->useLinkPaintColor:Z

    .line 834
    :cond_1
    new-instance p1, Landroid/text/SpannableString;

    const-string p2, "<"

    invoke-direct {p1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 835
    invoke-virtual {p1, v0, v1, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 836
    invoke-static {p2, p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceMultipleCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 1

    .line 5975
    instance-of v0, p1, Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_0

    .line 5976
    move-object v0, p1

    check-cast v0, Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 5978
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 5980
    :goto_0
    invoke-static {p1, p0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 5982
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, p1

    invoke-virtual {v0, p1, p0, p2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_1
    return-object v0
.end method

.method public static replaceLinks(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/text/SpannableStringBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 3422
    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceLinks(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static replaceLinks(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;
    .locals 6

    .line 3425
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->linksPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    .line 3426
    const-string v0, "\\[(.+?)\\]\\((.+?)\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->linksPattern:Ljava/util/regex/Pattern;

    .line 3428
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 3429
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->linksPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const/4 v2, 0x0

    .line 3431
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3432
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {v0, p0, v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    const/4 v2, 0x1

    .line 3433
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 3434
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 3435
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3436
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v4, v2

    .line 3437
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 3438
    new-instance v5, Lorg/telegram/messenger/AndroidUtilities$11;

    invoke-direct {v5, p2, v3, p1}, Lorg/telegram/messenger/AndroidUtilities$11;-><init>(Ljava/lang/Runnable;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v3, 0x21

    invoke-virtual {v0, v5, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3453
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    goto :goto_0

    .line 3455
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p0, v2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public static replaceMultipleCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 5989
    instance-of v0, p1, Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_0

    .line 5990
    move-object v0, p1

    check-cast v0, Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 5992
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 v1, 0x0

    .line 5994
    invoke-static {p1, p0, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result p1

    :goto_1
    if-ltz p1, :cond_1

    .line 5996
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, p1, v1, p2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 p1, p1, 0x1

    .line 5997
    invoke-static {v0, p0, p1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result p1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public static varargs replaceMultipleTags(Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;
    .locals 5

    .line 677
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    .line 678
    :goto_0
    array-length v1, p1

    if-ge p0, v1, :cond_1

    .line 679
    aget-object v1, p1, p0

    .line 681
    const-string v2, "**"

    invoke-static {v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->charSequenceIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v3

    add-int/lit8 v4, v3, 0x2

    .line 682
    invoke-static {v0, v2, v4}, Lorg/telegram/messenger/AndroidUtilities;->charSequenceIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v2

    if-ltz v3, :cond_1

    if-gez v2, :cond_0

    goto :goto_1

    .line 685
    :cond_0
    invoke-virtual {v0, v3, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v4, v2, -0x2

    .line 687
    invoke-virtual {v0, v4, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 688
    new-instance v2, Lorg/telegram/messenger/AndroidUtilities$5;

    invoke-direct {v2, v1}, Lorg/telegram/messenger/AndroidUtilities$5;-><init>(Ljava/lang/Runnable;)V

    const/16 v1, 0x21

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static replaceNewLines(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6

    .line 4402
    instance-of v0, p0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    const/4 v2, 0x0

    const/16 v3, 0xa

    if-eqz v0, :cond_2

    .line 4403
    move-object v0, p0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 4404
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    :goto_0
    if-ge v2, v4, :cond_1

    .line 4405
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_0

    .line 4406
    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p0

    .line 4410
    :cond_2
    instance-of v0, p0, Landroid/text/SpannableStringBuilder;

    const-string v4, " "

    if-eqz v0, :cond_5

    .line 4411
    move-object v0, p0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    .line 4412
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    :goto_1
    if-ge v2, v1, :cond_4

    .line 4413
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_3

    add-int/lit8 v5, v2, 0x1

    .line 4414
    invoke-virtual {v0, v2, v5, v4}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object v0

    .line 4418
    :cond_5
    instance-of v0, p0, Landroid/text/SpannableString;

    if-eqz v0, :cond_9

    .line 4419
    invoke-static {p0, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v0

    if-gez v0, :cond_6

    return-object p0

    .line 4420
    :cond_6
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 4421
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    :goto_2
    if-ge v2, v1, :cond_8

    .line 4422
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_7

    add-int/lit8 v5, v2, 0x1

    .line 4423
    invoke-virtual {v0, v2, v5, v4}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    return-object v0

    :cond_9
    if-nez p0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 4430
    :cond_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replaceSingleLink(Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 704
    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleLink(Ljava/lang/String;ILjava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static replaceSingleLink(Ljava/lang/String;ILjava/lang/Runnable;)Landroid/text/SpannableStringBuilder;
    .locals 4

    .line 708
    const-string v0, "**"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 709
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 710
    const-string v3, ""

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-ltz v1, :cond_0

    if-ltz v2, :cond_0

    sub-int/2addr v2, v1

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    move v2, v0

    .line 717
    :goto_0
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-ltz v1, :cond_2

    if-eqz p2, :cond_1

    .line 720
    new-instance p0, Lorg/telegram/messenger/AndroidUtilities$6;

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities$6;-><init>(ILjava/lang/Runnable;)V

    add-int/2addr v2, v1

    invoke-virtual {v3, p0, v1, v2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v3

    .line 736
    :cond_1
    new-instance p0, Lorg/telegram/messenger/AndroidUtilities$7;

    invoke-direct {p0, p1}, Lorg/telegram/messenger/AndroidUtilities$7;-><init>(I)V

    add-int/2addr v2, v1

    invoke-virtual {v3, p0, v1, v2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    return-object v3
.end method

.method public static replaceSingleLinkBold(Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 749
    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleLinkBold(Ljava/lang/String;ILjava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static replaceSingleLinkBold(Ljava/lang/String;ILjava/lang/Runnable;)Landroid/text/SpannableStringBuilder;
    .locals 4

    .line 753
    const-string v0, "**"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 754
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 755
    const-string v3, ""

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-ltz v1, :cond_0

    if-ltz v2, :cond_0

    sub-int/2addr v2, v1

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    move v2, v0

    .line 762
    :goto_0
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-ltz v1, :cond_2

    if-eqz p2, :cond_1

    .line 765
    new-instance p0, Lorg/telegram/messenger/AndroidUtilities$8;

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities$8;-><init>(ILjava/lang/Runnable;)V

    add-int/2addr v2, v1

    invoke-virtual {v3, p0, v1, v2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v3

    .line 782
    :cond_1
    new-instance p0, Lorg/telegram/messenger/AndroidUtilities$9;

    invoke-direct {p0, p1}, Lorg/telegram/messenger/AndroidUtilities$9;-><init>(I)V

    add-int/2addr v2, v1

    invoke-virtual {v3, p0, v1, v2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    return-object v3
.end method

.method public static replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;)Landroid/text/SpannableStringBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 574
    invoke-static {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/text/SpannableStringBuilder;
    .locals 9

    .line 578
    const-string v0, "**"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 579
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 580
    const-string v3, ""

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v3, 0x0

    if-ltz v1, :cond_0

    if-ltz v2, :cond_0

    sub-int/2addr v2, v1

    if-le v2, v0, :cond_0

    sub-int/2addr v2, v0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    move v2, v3

    :goto_0
    const/4 v4, 0x3

    if-gez v1, :cond_1

    .line 588
    const-string v5, "["

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v6, v5, 0x1

    .line 589
    const-string v7, "]()"

    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    if-ltz v5, :cond_1

    if-le v7, v5, :cond_1

    sub-int v1, v7, v5

    add-int/lit8 v2, v1, -0x1

    .line 593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v7, v4

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move v1, v5

    .line 596
    :cond_1
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-ltz v1, :cond_5

    if-ne p2, v4, :cond_2

    add-int p0, v1, v2

    .line 599
    invoke-virtual {v5, v1, p0}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    const-string/jumbo v7, "\u00a0"

    const-string v8, " "

    invoke-static {v8, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->replaceMultipleCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v1, p0, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_2
    if-eqz p2, :cond_4

    if-eq p2, v4, :cond_4

    if-eq p2, v0, :cond_4

    const/4 p0, 0x4

    if-ne p2, p0, :cond_3

    goto :goto_1

    .line 624
    :cond_3
    new-instance p0, Lorg/telegram/messenger/AndroidUtilities$2;

    invoke-direct {p0, p4}, Lorg/telegram/messenger/AndroidUtilities$2;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    add-int/2addr v2, v1

    invoke-virtual {v5, p0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v5

    .line 602
    :cond_4
    :goto_1
    new-instance p0, Lorg/telegram/messenger/AndroidUtilities$1;

    invoke-direct {p0, p2, p1, p4, p3}, Lorg/telegram/messenger/AndroidUtilities$1;-><init>(IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V

    add-int/2addr v2, v1

    invoke-virtual {v5, p0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_5
    return-object v5
.end method

.method public static replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 570
    invoke-static {p0, v0, v1, p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static replaceTags(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
    .locals 7

    .line 3399
    const-string v0, ""

    const-string v1, "**"

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3400
    :cond_0
    :goto_0
    invoke-static {p0, v1}, Lorg/telegram/messenger/AndroidUtilities;->charSequenceIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    add-int/lit8 v4, v3, 0x2

    .line 3401
    invoke-virtual {p0, v3, v4, v0}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3402
    invoke-static {p0, v1}, Lorg/telegram/messenger/AndroidUtilities;->charSequenceIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v4

    if-ltz v4, :cond_0

    add-int/lit8 v5, v4, 0x2

    .line 3404
    invoke-virtual {p0, v4, v5, v0}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3405
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3406
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    .line 3409
    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 3410
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-ge v1, v3, :cond_2

    .line 3411
    new-instance v3, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    mul-int/lit8 v4, v1, 0x2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v6, 0x21

    invoke-virtual {v0, v3, v5, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v0

    .line 3415
    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public static replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 1

    const/16 v0, 0xb

    .line 3327
    invoke-static {p0, v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static replaceTags(Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;
    .locals 9

    .line 3334
    const-string v0, "<b>"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit8 v2, p1, 0x1

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    .line 3336
    :goto_0
    const-string v2, "<br>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "\n"

    if-eq v2, v3, :cond_0

    add-int/lit8 v5, v2, 0x4

    .line 3337
    :try_start_1
    invoke-virtual {v1, v2, v5, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_6

    .line 3339
    :cond_0
    :goto_1
    const-string v2, "<br/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_1

    add-int/lit8 v5, v2, 0x5

    .line 3340
    invoke-virtual {v1, v2, v5, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3343
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    and-int/lit8 v4, p1, 0x2

    .line 3344
    const-string v5, "**"

    const-string v6, ""

    if-eqz v4, :cond_4

    .line 3345
    :goto_2
    :try_start_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v3, :cond_3

    add-int/lit8 v7, v4, 0x3

    .line 3346
    invoke-virtual {v1, v4, v7, v6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 3347
    const-string v7, "</b>"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v3, :cond_2

    .line 3349
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v7

    :cond_2
    add-int/lit8 v8, v7, 0x4

    .line 3351
    invoke-virtual {v1, v7, v8, v6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 3352
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3353
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3355
    :cond_3
    :goto_3
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_4

    add-int/lit8 v4, v0, 0x2

    .line 3356
    invoke-virtual {v1, v0, v4, v6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 3357
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_3

    add-int/lit8 v7, v4, 0x2

    .line 3359
    invoke-virtual {v1, v4, v7, v6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 3360
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3361
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_6

    .line 3366
    :cond_5
    :goto_4
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v3, :cond_6

    add-int/lit8 v0, p1, 0x2

    .line 3367
    invoke-virtual {v1, p1, v0, v6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 3368
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_5

    add-int/lit8 v4, v0, 0x2

    .line 3370
    invoke-virtual {v1, v0, v4, v6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 3371
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3372
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 3376
    :cond_6
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 3377
    :goto_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_7

    .line 3378
    new-instance v1, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    mul-int/lit8 v3, v0, 0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v5, 0x21

    invoke-virtual {p1, v1, v4, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    return-object p1

    .line 3382
    :goto_6
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3384
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public static replaceTags(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 3388
    instance-of v0, p0, Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_0

    .line 3389
    check-cast p0, Landroid/text/SpannableStringBuilder;

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0

    .line 3391
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static replaceTwoNewLinesToOne(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 10

    const/4 v0, 0x2

    .line 4362
    new-array v0, v0, [C

    .line 4363
    instance-of v1, p0, Ljava/lang/StringBuilder;

    const-string v2, "\n"

    const/4 v3, 0x1

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    .line 4364
    move-object v1, p0

    check-cast v1, Ljava/lang/StringBuilder;

    .line 4365
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move v7, v5

    :goto_0
    add-int/lit8 v8, v6, -0x2

    if-ge v7, v8, :cond_1

    add-int/lit8 v8, v7, 0x2

    .line 4366
    invoke-virtual {v1, v7, v8, v0, v5}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 4367
    aget-char v9, v0, v5

    if-ne v9, v4, :cond_0

    aget-char v9, v0, v3

    if-ne v9, v4, :cond_0

    .line 4368
    invoke-virtual {v1, v7, v8, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v6, v6, -0x1

    :cond_0
    add-int/2addr v7, v3

    goto :goto_0

    :cond_1
    return-object p0

    .line 4374
    :cond_2
    instance-of v1, p0, Landroid/text/SpannableStringBuilder;

    if-eqz v1, :cond_5

    .line 4375
    move-object v1, p0

    check-cast v1, Landroid/text/SpannableStringBuilder;

    .line 4376
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move v7, v5

    :goto_1
    add-int/lit8 v8, v6, -0x2

    if-ge v7, v8, :cond_4

    add-int/lit8 v8, v7, 0x2

    .line 4377
    invoke-virtual {v1, v7, v8, v0, v5}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 4378
    aget-char v9, v0, v5

    if-ne v9, v4, :cond_3

    aget-char v9, v0, v3

    if-ne v9, v4, :cond_3

    .line 4379
    invoke-virtual {v1, v7, v8, v2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v6, v6, -0x1

    :cond_3
    add-int/2addr v7, v3

    goto :goto_1

    :cond_4
    return-object p0

    .line 4385
    :cond_5
    instance-of v1, p0, Landroid/text/SpannableString;

    const-string v6, "\n\n"

    if-eqz v1, :cond_9

    .line 4386
    invoke-static {p0, v6}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    if-gez v1, :cond_6

    return-object p0

    .line 4387
    :cond_6
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 4388
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    move v6, v5

    :goto_2
    add-int/lit8 v7, p0, -0x2

    if-ge v6, v7, :cond_8

    add-int/lit8 v7, v6, 0x2

    .line 4389
    invoke-virtual {v1, v6, v7, v0, v5}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 4390
    aget-char v8, v0, v5

    if-ne v8, v4, :cond_7

    aget-char v8, v0, v3

    if-ne v8, v4, :cond_7

    .line 4391
    invoke-virtual {v1, v6, v7, v2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 p0, p0, -0x1

    :cond_7
    add-int/2addr v6, v3

    goto :goto_2

    :cond_8
    return-object v1

    .line 4398
    :cond_9
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static requestAdjustNothing(Landroid/app/Activity;I)V
    .locals 1

    if-eqz p0, :cond_1

    .line 1768
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1771
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1772
    sput p1, Lorg/telegram/messenger/AndroidUtilities;->adjustOwnerClassGuid:I

    :cond_1
    :goto_0
    return-void
.end method

.method public static requestAdjustResize(Landroid/app/Activity;I)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1756
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/view/Window;I)V

    return-void
.end method

.method public static requestAdjustResize(Landroid/view/Window;I)V
    .locals 1

    if-eqz p0, :cond_1

    .line 1760
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    .line 1763
    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1764
    sput p1, Lorg/telegram/messenger/AndroidUtilities;->adjustOwnerClassGuid:I

    :cond_1
    :goto_0
    return-void
.end method

.method public static requestAltFocusable(Landroid/app/Activity;I)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1738
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/high16 v0, 0x20000

    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 1740
    sput p1, Lorg/telegram/messenger/AndroidUtilities;->altFocusableClassGuid:I

    return-void
.end method

.method public static resetPictureInPictureParams(Landroid/app/Activity;)V
    .locals 3

    .line 5635
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 5636
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticApiModelOutline0;->m()Landroid/app/PictureInPictureParams$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 5637
    invoke-virtual {v1, v2}, Landroid/app/PictureInPictureParams$Builder;->setSourceRectHint(Landroid/graphics/Rect;)Landroid/app/PictureInPictureParams$Builder;

    .line 5638
    invoke-virtual {v1, v2}, Landroid/app/PictureInPictureParams$Builder;->setAspectRatio(Landroid/util/Rational;)Landroid/app/PictureInPictureParams$Builder;

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    .line 5641
    invoke-virtual {v1, v0}, Landroid/app/PictureInPictureParams$Builder;->setAutoEnterEnabled(Z)Landroid/app/PictureInPictureParams$Builder;

    .line 5644
    :cond_0
    invoke-virtual {v1}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/telegram/messenger/AndroidUtilities;->setPictureInPictureParams(Landroid/app/Activity;Landroid/app/PictureInPictureParams;)V

    :cond_1
    return-void
.end method

.method public static resetTabletFlag()V
    .locals 1

    .line 2983
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->wasTablet:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 2984
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTabletInternal()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->wasTablet:Ljava/lang/Boolean;

    :cond_0
    const/4 v0, 0x0

    .line 2986
    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->isTablet:Ljava/lang/Boolean;

    .line 2987
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->updateTabletConfig()V

    return-void
.end method

.method public static resetWasTabletFlag()V
    .locals 1

    const/4 v0, 0x0

    .line 2991
    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->wasTablet:Ljava/lang/Boolean;

    return-void
.end method

.method public static rgbToHsv(III)[D
    .locals 18

    move/from16 v0, p0

    int-to-double v0, v0

    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double/2addr v0, v2

    move/from16 v4, p1

    int-to-double v4, v4

    div-double/2addr v4, v2

    move/from16 v6, p2

    int-to-double v6, v6

    div-double/2addr v6, v2

    cmpl-double v2, v0, v4

    if-lez v2, :cond_0

    cmpl-double v3, v0, v6

    if-lez v3, :cond_0

    move-wide v8, v0

    goto :goto_0

    .line 1568
    :cond_0
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    :goto_0
    cmpg-double v3, v0, v4

    if-gez v3, :cond_1

    cmpg-double v3, v0, v6

    if-gez v3, :cond_1

    move-wide v10, v0

    goto :goto_1

    .line 1569
    :cond_1
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    :goto_1
    sub-double v12, v8, v10

    const-wide/16 v14, 0x0

    cmpl-double v3, v8, v14

    if-nez v3, :cond_2

    move-wide/from16 v16, v14

    goto :goto_2

    :cond_2
    div-double v16, v12, v8

    :goto_2
    cmpl-double v3, v8, v10

    const/4 v10, 0x0

    if-nez v3, :cond_3

    goto :goto_6

    :cond_3
    if-lez v2, :cond_5

    cmpl-double v2, v0, v6

    if-lez v2, :cond_5

    sub-double v0, v4, v6

    div-double/2addr v0, v12

    cmpg-double v2, v4, v6

    if-gez v2, :cond_4

    const/4 v2, 0x6

    goto :goto_3

    :cond_4
    move v2, v10

    :goto_3
    int-to-double v2, v2

    :goto_4
    add-double/2addr v0, v2

    goto :goto_5

    :cond_5
    cmpl-double v2, v4, v6

    if-lez v2, :cond_6

    sub-double/2addr v6, v0

    div-double/2addr v6, v12

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    add-double/2addr v0, v6

    goto :goto_5

    :cond_6
    sub-double/2addr v0, v4

    div-double/2addr v0, v12

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    goto :goto_4

    :goto_5
    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    div-double v14, v0, v2

    :goto_6
    const/4 v0, 0x3

    .line 1585
    new-array v0, v0, [D

    aput-wide v14, v0, v10

    const/4 v1, 0x1

    aput-wide v16, v0, v1

    const/4 v1, 0x2

    aput-wide v8, v0, v1

    return-object v0
.end method

.method public static roundPercents([F[I)[I
    .locals 11

    if-eqz p0, :cond_8

    if-nez p1, :cond_0

    .line 6161
    array-length p1, p0

    new-array p1, p1, [I

    .line 6163
    :cond_0
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    .line 6168
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_1

    .line 6169
    aget v4, p0, v2

    add-float/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    move v4, v2

    .line 6173
    :goto_1
    array-length v5, p0

    const/high16 v6, 0x42c80000    # 100.0f

    if-ge v2, v5, :cond_2

    .line 6174
    aget v5, p0, v2

    div-float/2addr v5, v3

    mul-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    aput v5, p1, v2

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    const/16 v2, 0x64

    if-ge v4, v2, :cond_6

    const/4 v2, -0x1

    move v7, v0

    move v5, v1

    .line 6180
    :goto_3
    array-length v8, p0

    if-ge v5, v8, :cond_4

    .line 6181
    aget v8, p0, v5

    div-float v9, v8, v3

    aget v10, p1, v5

    int-to-float v10, v10

    div-float/2addr v10, v6

    sub-float/2addr v9, v10

    cmpl-float v8, v8, v0

    if-lez v8, :cond_3

    cmpl-float v8, v9, v7

    if-ltz v8, :cond_3

    move v2, v5

    move v7, v9

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    if-gez v2, :cond_5

    goto :goto_4

    .line 6190
    :cond_5
    aget v5, p1, v2

    add-int/lit8 v5, v5, 0x1

    aput v5, p1, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    return-object p1

    .line 6164
    :cond_7
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo p1, "percents.length != output.length"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6158
    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "percents or output is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static roundPlayingMessageSize(Z)I
    .locals 0

    if-eqz p0, :cond_0

    .line 307
    sget p0, Lorg/telegram/messenger/AndroidUtilities;->roundSidePlayingMessageSize:I

    return p0

    :cond_0
    sget p0, Lorg/telegram/messenger/AndroidUtilities;->roundPlayingMessageSize:I

    return p0
.end method

.method public static runOnUIThread(Ljava/lang/Runnable;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2942
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static runOnUIThread(Ljava/lang/Runnable;J)V
    .locals 2

    .line 2946
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 2950
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 2952
    :cond_1
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static scaleRect(Landroid/graphics/RectF;F)V
    .locals 2

    .line 5254
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-static {p0, p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->scaleRect(Landroid/graphics/RectF;FFF)V

    return-void
.end method

.method public static scaleRect(Landroid/graphics/RectF;FFF)V
    .locals 4

    .line 5258
    iget v0, p0, Landroid/graphics/RectF;->left:F

    sub-float v0, p2, v0

    iget v1, p0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, p2

    .line 5259
    iget v2, p0, Landroid/graphics/RectF;->top:F

    sub-float v2, p3, v2

    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, p3

    mul-float/2addr v0, p1

    sub-float v0, p2, v0

    mul-float/2addr v2, p1

    sub-float v2, p3, v2

    mul-float/2addr v1, p1

    add-float/2addr p2, v1

    mul-float/2addr v3, p1

    add-float/2addr p3, v3

    .line 5260
    invoke-virtual {p0, v0, v2, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public static scrollToFragmentRow(Lorg/telegram/ui/ActionBar/INavigationLayout;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 5569
    :cond_0
    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 5571
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "listView"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 5572
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 5573
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView;

    .line 5574
    new-instance v2, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, p1, v1}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lorg/telegram/ui/Components/RecyclerListView;)V

    .line 5589
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->highlightRow(Lorg/telegram/ui/Components/RecyclerListView$IntReturnCallback;)V

    const/4 p0, 0x0

    .line 5590
    invoke-virtual {v0, p0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method

.method public static setAdjustResizeToNothing(Landroid/app/Activity;I)V
    .locals 1

    if-eqz p0, :cond_2

    .line 1776
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1779
    :cond_0
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->adjustOwnerClassGuid:I

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_2

    .line 1780
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static setEnabled(Landroid/view/View;Z)V
    .locals 2

    if-nez p0, :cond_0

    goto :goto_1

    .line 3186
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 3187
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 3188
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 3189
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3190
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/telegram/messenger/AndroidUtilities;->setEnabled(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static setLightNavigationBar(Landroid/app/Activity;Z)V
    .locals 0

    if-eqz p0, :cond_0

    .line 5412
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/view/Window;Z)V

    :cond_0
    return-void
.end method

.method public static setLightNavigationBar(Landroid/app/Dialog;Z)V
    .locals 0

    if-eqz p0, :cond_0

    .line 5405
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/view/Window;Z)V

    :cond_0
    return-void
.end method

.method public static setLightNavigationBar(Landroid/view/View;Z)V
    .locals 2

    if-eqz p0, :cond_0

    .line 5426
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/16 v0, 0x10

    .line 5427
    invoke-static {p0, v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->changeSetSystemUiVisibility(Landroid/view/View;IZ)V

    :cond_0
    return-void
.end method

.method private static setLightNavigationBar(Landroid/view/Window;Z)V
    .locals 0

    if-eqz p0, :cond_0

    .line 5420
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public static setLightStatusBar(Landroid/view/View;Z)V
    .locals 2

    if-eqz p0, :cond_0

    .line 5432
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/16 v0, 0x2000

    .line 5433
    invoke-static {p0, v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->changeSetSystemUiVisibility(Landroid/view/View;IZ)V

    :cond_0
    return-void
.end method

.method public static setLightStatusBar(Landroid/view/Window;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 5374
    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;ZZ)V

    return-void
.end method

.method public static setLightStatusBar(Landroid/view/Window;ZZ)V
    .locals 1

    .line 5379
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x2000

    .line 5380
    invoke-static {p2, v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->changeSetSystemUiVisibility(Landroid/view/View;IZ)V

    .line 5388
    invoke-virtual {p0}, Landroid/view/Window;->getStatusBarColor()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 5389
    invoke-virtual {p0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_0
    return-void
.end method

.method public static setMyLayerVersion(II)I
    .locals 1

    const/high16 v0, -0x10000

    and-int/2addr p0, v0

    or-int/2addr p0, p1

    return p0
.end method

.method public static setNavigationBarColor(Landroid/app/Activity;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 5467
    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->setNavigationBarColor(Landroid/app/Activity;IZ)V

    return-void
.end method

.method public static setNavigationBarColor(Landroid/app/Activity;IZ)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_0

    .line 5473
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/telegram/messenger/AndroidUtilities;->setNavigationBarColor(Landroid/view/Window;IZLorg/telegram/messenger/AndroidUtilities$IntColorCallback;)V

    :cond_0
    return-void
.end method

.method public static setNavigationBarColor(Landroid/app/Dialog;I)V
    .locals 1

    const/4 v0, 0x1

    .line 5452
    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->setNavigationBarColor(Landroid/app/Dialog;IZ)V

    return-void
.end method

.method public static setNavigationBarColor(Landroid/app/Dialog;IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 5456
    invoke-static {p0, p1, p2, v0}, Lorg/telegram/messenger/AndroidUtilities;->setNavigationBarColor(Landroid/app/Dialog;IZLorg/telegram/messenger/AndroidUtilities$IntColorCallback;)V

    return-void
.end method

.method public static setNavigationBarColor(Landroid/app/Dialog;IZLorg/telegram/messenger/AndroidUtilities$IntColorCallback;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 5461
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->setNavigationBarColor(Landroid/view/Window;IZLorg/telegram/messenger/AndroidUtilities$IntColorCallback;)V

    :cond_0
    return-void
.end method

.method private static setNavigationBarColor(Landroid/view/Window;IZLorg/telegram/messenger/AndroidUtilities$IntColorCallback;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 5481
    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->navigationBarColorAnimators:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 5482
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 5484
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 5485
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->navigationBarColorAnimators:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-nez p2, :cond_3

    if-eqz p3, :cond_2

    .line 5491
    invoke-interface {p3, p1}, Lorg/telegram/messenger/AndroidUtilities$IntColorCallback;->run(I)V

    .line 5494
    :cond_2
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/Window;->setNavigationBarColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .line 5498
    :cond_3
    invoke-virtual {p0}, Landroid/view/Window;->getNavigationBarColor()I

    move-result p2

    filled-new-array {p2, p1}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 5499
    new-instance p2, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda17;

    invoke-direct {p2, p3, p0}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/messenger/AndroidUtilities$IntColorCallback;Landroid/view/Window;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5509
    new-instance p2, Lorg/telegram/messenger/AndroidUtilities$13;

    invoke-direct {p2, p0}, Lorg/telegram/messenger/AndroidUtilities$13;-><init>(Landroid/view/Window;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 p2, 0xc8

    .line 5517
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5518
    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5519
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 5520
    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->navigationBarColorAnimators:Ljava/util/HashMap;

    if-nez p2, :cond_4

    .line 5521
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    sput-object p2, Lorg/telegram/messenger/AndroidUtilities;->navigationBarColorAnimators:Ljava/util/HashMap;

    .line 5523
    :cond_4
    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->navigationBarColorAnimators:Ljava/util/HashMap;

    invoke-virtual {p2, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setPeerLayerVersion(II)I
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    return p0
.end method

.method public static setPictureInPictureParams(Landroid/app/Activity;Landroid/app/PictureInPictureParams;)V
    .locals 1

    if-eqz p0, :cond_2

    .line 5617
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 5622
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->resetPictureInPictureParams(Landroid/app/Activity;)V

    return-void

    .line 5627
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setPictureInPictureParams(Landroid/app/PictureInPictureParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 5629
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static setPreferredMaxRefreshRate(Landroid/view/Window;)V
    .locals 1

    .line 2847
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->screenMaxRefreshRate:F

    invoke-static {p0, v0}, Lorg/telegram/messenger/AndroidUtilities;->setPreferredMaxRefreshRate(Landroid/view/Window;F)V

    return-void
.end method

.method public static setPreferredMaxRefreshRate(Landroid/view/Window;F)V
    .locals 2

    if-nez p0, :cond_0

    goto :goto_0

    .line 2852
    :cond_0
    invoke-virtual {p0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 2854
    :cond_1
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 2855
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    .line 2857
    :try_start_0
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-interface {v0, p0, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2859
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setPreferredMaxRefreshRate(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 4

    if-nez p0, :cond_0

    goto :goto_0

    .line 2865
    :cond_0
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->screenMaxRefreshRate:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fc999999999999aL    # 0.2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 2866
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->screenMaxRefreshRate:F

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    .line 2867
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2869
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2871
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setRectD(Landroid/graphics/RectF;FFF)V
    .locals 2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    sub-float v0, p1, p3

    sub-float v1, p2, p3

    add-float/2addr p1, p3

    add-float/2addr p2, p3

    .line 4490
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public static setRectR(Landroid/graphics/RectF;FFF)V
    .locals 2

    sub-float v0, p1, p3

    sub-float v1, p2, p3

    add-float/2addr p1, p3

    add-float/2addr p2, p3

    .line 4487
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public static setRectToRect(Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;IIZ)V
    .locals 9

    const/16 v0, 0x10e

    const/16 v1, 0x5a

    if-eq p3, v1, :cond_1

    if-ne p3, v0, :cond_0

    goto :goto_1

    .line 4501
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v2, v3

    .line 4502
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v4

    :goto_0
    div-float/2addr v3, v4

    goto :goto_2

    .line 4498
    :cond_1
    :goto_1
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v2, v3

    .line 4499
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v4

    goto :goto_0

    :goto_2
    cmpg-float v4, v2, v3

    const/4 v5, 0x1

    if-gez v4, :cond_2

    move v2, v3

    move v3, v5

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    :goto_3
    if-eqz p5, :cond_3

    .line 4511
    iget v4, p2, Landroid/graphics/RectF;->left:F

    iget v6, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v4, v6}, Landroid/graphics/Matrix;->setTranslate(FF)V

    :cond_3
    const/4 v4, 0x0

    const/4 v6, 0x2

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, -0x40800000    # -1.0f

    if-ne p3, v1, :cond_6

    const/high16 p3, 0x42b40000    # 90.0f

    .line 4514
    invoke-virtual {p0, p3}, Landroid/graphics/Matrix;->preRotate(F)Z

    if-ne p4, v5, :cond_4

    .line 4516
    invoke-virtual {p0, v8, v7}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_4

    :cond_4
    if-ne p4, v6, :cond_5

    .line 4518
    invoke-virtual {p0, v7, v8}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 4520
    :cond_5
    :goto_4
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p3

    neg-float p3, p3

    invoke-virtual {p0, v4, p3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_7

    :cond_6
    const/16 v1, 0xb4

    if-ne p3, v1, :cond_9

    const/high16 p3, 0x43340000    # 180.0f

    .line 4522
    invoke-virtual {p0, p3}, Landroid/graphics/Matrix;->preRotate(F)Z

    if-ne p4, v5, :cond_7

    .line 4524
    invoke-virtual {p0, v8, v7}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_5

    :cond_7
    if-ne p4, v6, :cond_8

    .line 4526
    invoke-virtual {p0, v7, v8}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 4528
    :cond_8
    :goto_5
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p3

    neg-float p3, p3

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p4

    neg-float p4, p4

    invoke-virtual {p0, p3, p4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_7

    :cond_9
    if-ne p3, v0, :cond_c

    const/high16 p3, 0x43870000    # 270.0f

    .line 4530
    invoke-virtual {p0, p3}, Landroid/graphics/Matrix;->preRotate(F)Z

    if-ne p4, v5, :cond_a

    .line 4532
    invoke-virtual {p0, v8, v7}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_6

    :cond_a
    if-ne p4, v6, :cond_b

    .line 4534
    invoke-virtual {p0, v7, v8}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 4536
    :cond_b
    :goto_6
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p3

    neg-float p3, p3

    invoke-virtual {p0, p3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_c
    :goto_7
    if-eqz p5, :cond_d

    .line 4540
    iget p3, p1, Landroid/graphics/RectF;->left:F

    neg-float p3, p3

    mul-float/2addr p3, v2

    .line 4541
    iget p4, p1, Landroid/graphics/RectF;->top:F

    neg-float p4, p4

    mul-float/2addr p4, v2

    goto :goto_8

    .line 4543
    :cond_d
    iget p3, p2, Landroid/graphics/RectF;->left:F

    iget p4, p1, Landroid/graphics/RectF;->left:F

    mul-float/2addr p4, v2

    sub-float/2addr p3, p4

    .line 4544
    iget p4, p2, Landroid/graphics/RectF;->top:F

    iget v0, p1, Landroid/graphics/RectF;->top:F

    mul-float/2addr v0, v2

    sub-float/2addr p4, v0

    :goto_8
    if-eqz v3, :cond_e

    .line 4549
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    :goto_9
    mul-float/2addr p1, v2

    sub-float/2addr p2, p1

    goto :goto_a

    .line 4551
    :cond_e
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    goto :goto_9

    :goto_a
    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p2, p1

    if-eqz v3, :cond_f

    add-float/2addr p3, p2

    goto :goto_b

    :cond_f
    add-float/2addr p4, p2

    .line 4560
    :goto_b
    invoke-virtual {p0, v2, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    if-eqz p5, :cond_10

    .line 4562
    invoke-virtual {p0, p3, p4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_10
    return-void
.end method

.method public static setScrollViewEdgeEffectColor(Landroid/widget/HorizontalScrollView;I)V
    .locals 3

    .line 3253
    const-class v0, Landroid/widget/HorizontalScrollView;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    .line 3254
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->setEdgeEffectColor(I)V

    return-void

    .line 3257
    :cond_0
    :try_start_0
    const-string/jumbo v1, "mEdgeGlowLeft"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 3258
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3259
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    .line 3261
    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 3264
    :cond_1
    const-string/jumbo v1, "mEdgeGlowRight"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 3265
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3266
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/EdgeEffect;

    if-eqz p0, :cond_2

    .line 3268
    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p0

    .line 3271
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setScrollViewEdgeEffectColor(Landroid/widget/ScrollView;I)V
    .locals 3

    .line 3277
    const-class v0, Landroid/widget/ScrollView;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    .line 3278
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->setTopEdgeEffectColor(I)V

    .line 3279
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->setBottomEdgeEffectColor(I)V

    return-void

    .line 3282
    :cond_0
    :try_start_0
    const-string/jumbo v1, "mEdgeGlowTop"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 3283
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3284
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    .line 3286
    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 3289
    :cond_1
    const-string/jumbo v1, "mEdgeGlowBottom"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 3290
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3291
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/EdgeEffect;

    if-eqz p0, :cond_2

    .line 3293
    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public static setViewPagerEdgeEffectColor(Landroidx/viewpager/widget/ViewPager;I)V
    .locals 3

    .line 3234
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    :try_start_0
    const-string/jumbo v1, "mLeftEdge"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 3235
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3236
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_0

    .line 3238
    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 3241
    :cond_0
    const-string/jumbo v1, "mRightEdge"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 3242
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3243
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/EdgeEffect;

    if-eqz p0, :cond_1

    .line 3245
    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public static setWaitingForCall(Z)V
    .locals 5

    .line 2495
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->callLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p0, :cond_1

    .line 2498
    :try_start_0
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->callReceiver:Lorg/telegram/messenger/CallReceiver;

    if-nez v1, :cond_2

    .line 2499
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2500
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_0

    .line 2501
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v3, Lorg/telegram/messenger/CallReceiver;

    invoke-direct {v3}, Lorg/telegram/messenger/CallReceiver;-><init>()V

    sput-object v3, Lorg/telegram/messenger/AndroidUtilities;->callReceiver:Lorg/telegram/messenger/CallReceiver;

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2503
    :cond_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v3, Lorg/telegram/messenger/CallReceiver;

    invoke-direct {v3}, Lorg/telegram/messenger/CallReceiver;-><init>()V

    sput-object v3, Lorg/telegram/messenger/AndroidUtilities;->callReceiver:Lorg/telegram/messenger/CallReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 2507
    :cond_1
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->callReceiver:Lorg/telegram/messenger/CallReceiver;

    if-eqz v1, :cond_2

    .line 2508
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->callReceiver:Lorg/telegram/messenger/CallReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    .line 2509
    sput-object v1, Lorg/telegram/messenger/AndroidUtilities;->callReceiver:Lorg/telegram/messenger/CallReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2515
    :catch_0
    :cond_2
    :goto_0
    :try_start_1
    sput-boolean p0, Lorg/telegram/messenger/AndroidUtilities;->waitingForCall:Z

    .line 2516
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static setWaitingForSms(Z)V
    .locals 2

    .line 2454
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->smsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2455
    :try_start_0
    sput-boolean p0, Lorg/telegram/messenger/AndroidUtilities;->waitingForSms:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_0

    .line 2458
    :try_start_1
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/gms/auth/api/phone/SmsRetriever;->getClient(Landroid/content/Context;)Lcom/google/android/gms/auth/api/phone/SmsRetrieverClient;

    move-result-object p0

    .line 2459
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/phone/SmsRetrieverClient;->startSmsRetriever()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    .line 2460
    new-instance v1, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda23;

    invoke-direct {v1}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda23;-><init>()V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2467
    :try_start_2
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    .line 2469
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public static shakeView(Landroid/view/View;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 3499
    :cond_0
    sget v0, Lorg/telegram/messenger/R$id;->shake_animation:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 3500
    instance-of v1, v0, Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    .line 3501
    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x2

    .line 3503
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 3504
    new-instance v1, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda4;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3508
    new-instance v1, Lorg/telegram/messenger/AndroidUtilities$12;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/AndroidUtilities$12;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0x12c

    .line 3514
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3515
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 3516
    sget v1, Lorg/telegram/messenger/R$id;->shake_animation:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static shakeViewSpring(Landroid/view/View;)V
    .locals 2

    const/high16 v0, 0x41200000    # 10.0f

    const/4 v1, 0x0

    .line 3520
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;FLjava/lang/Runnable;)V

    return-void
.end method

.method public static shakeViewSpring(Landroid/view/View;F)V
    .locals 1

    const/4 v0, 0x0

    .line 3524
    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;FLjava/lang/Runnable;)V

    return-void
.end method

.method public static shakeViewSpring(Landroid/view/View;FLjava/lang/Runnable;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 3535
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    .line 3536
    sget v0, Lorg/telegram/messenger/R$id;->spring_tag:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3537
    sget v0, Lorg/telegram/messenger/R$id;->spring_tag:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 3539
    :cond_1
    sget v0, Lorg/telegram/messenger/R$id;->spring_was_translation_x_tag:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 3541
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 3543
    :cond_2
    sget v0, Lorg/telegram/messenger/R$id;->spring_was_translation_x_tag:I

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 3545
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    .line 3546
    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v1, p0, v2, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    new-instance v2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v2, v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const/high16 v3, 0x44160000    # 600.0f

    .line 3547
    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    neg-int p1, p1

    mul-int/lit8 p1, p1, 0x64

    int-to-float p1, p1

    .line 3548
    invoke-virtual {v1, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda6;

    invoke-direct {v1, p2, p0, v0}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Runnable;Landroid/view/View;F)V

    .line 3549
    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 3556
    sget p2, Lorg/telegram/messenger/R$id;->spring_tag:I

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 3557
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method

.method public static shakeViewSpring(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1

    const/high16 v0, 0x41200000    # 10.0f

    .line 3528
    invoke-static {p0, v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;FLjava/lang/Runnable;)V

    return-void
.end method

.method public static shouldEnableAnimation()Z
    .locals 4

    .line 4670
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x1

    if-lt v0, v1, :cond_3

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 4673
    :cond_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 4674
    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    .line 4677
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getAnimatorDurationScale()F

    move-result v0

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-lez v0, :cond_2

    return v2

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v2
.end method

.method public static shouldShowClipboardToast()Z
    .locals 2

    .line 3610
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/OneUIUtilities;->hasBuiltInClipboardToasts()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/16 v1, 0x21

    if-lt v0, v1, :cond_2

    invoke-static {}, Lorg/telegram/messenger/XiaomiUtilities;->isMIUI()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static shouldShowUrlInAlert(Ljava/lang/String;)Z
    .locals 0

    .line 5556
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 5557
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    .line 5558
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->checkHostForPunycode(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 5560
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static showKeyboard(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2524
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x1

    .line 2525
    invoke-virtual {v1, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 2527
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return v0
.end method

.method public static showProxyAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 23

    move-object/from16 v6, p0

    move-object/from16 v5, p3

    .line 4682
    new-instance v9, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-direct {v9, v6}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x0

    .line 4683
    invoke-virtual {v9, v10}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyTopPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 4684
    invoke-virtual {v9, v10}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyBottomPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 4685
    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object v11

    .line 4687
    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v13, 0x1

    .line 4688
    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4689
    invoke-virtual {v9, v12}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    const/high16 v0, 0x41a00000    # 20.0f

    .line 4691
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v6, v0, v1, v13}, Lorg/telegram/ui/Components/TextHelper;->makeTextView(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 4692
    sget v1, Lorg/telegram/messenger/R$string;->UseProxyTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v19, 0x16

    const/16 v20, 0x0

    const/4 v14, -0x1

    const/4 v15, -0x2

    const/16 v16, 0x37

    const/16 v17, 0x16

    const/16 v18, 0x12

    .line 4693
    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4695
    new-instance v14, Lorg/telegram/ui/Components/TableView;

    const/4 v15, 0x0

    invoke-direct {v14, v6, v15}, Lorg/telegram/ui/Components/TableView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v21, 0xe

    const/16 v22, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x2

    const/16 v18, 0x37

    const/16 v19, 0xe

    const/16 v20, 0x12

    .line 4696
    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v12, v14, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4698
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4699
    sget v0, Lorg/telegram/messenger/R$string;->UseProxyAddress:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v14, v0, v1}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    .line 4701
    :goto_0
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4702
    sget v0, Lorg/telegram/messenger/R$string;->UseProxyPort:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, p2

    invoke-virtual {v14, v0, v2}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    goto :goto_1

    :cond_1
    move-object/from16 v2, p2

    .line 4704
    :goto_1
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4705
    sget v0, Lorg/telegram/messenger/R$string;->UseProxySecret:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, p5

    invoke-virtual {v14, v0, v3}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    goto :goto_2

    :cond_2
    move-object/from16 v3, p5

    .line 4707
    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4708
    sget v0, Lorg/telegram/messenger/R$string;->UseProxyUsername:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0, v5}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    .line 4710
    :cond_3
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 4711
    sget v0, Lorg/telegram/messenger/R$string;->UseProxyPassword:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0, v5}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    .line 4713
    :cond_4
    new-array v2, v13, [Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;

    .line 4714
    sget v0, Lorg/telegram/messenger/R$string;->ProxyStatus:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v14, v0, v4, v2}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;)Landroid/widget/TableRow;

    .line 4715
    aget-object v0, v2, v10

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 4716
    aget-object v0, v2, v10

    invoke-virtual {v0, v13}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setDisablePaddingsOffsetY(Z)V

    .line 4717
    aget-object v0, v2, v10

    const v4, 0x414a8f5c    # 12.66f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const v8, 0x411547ae    # 9.33f

    move/from16 v16, v4

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    move/from16 v17, v8

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-virtual {v0, v7, v4, v8, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 4718
    new-array v1, v13, [Z

    .line 4719
    aget-object v15, v2, v10

    sget v0, Lorg/telegram/messenger/R$string;->ProxyBottomSheetCheckStatus:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    move-object v7, v0

    new-instance v0, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda15;

    move v13, v4

    move-object v8, v6

    move-object v10, v7

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object v7, v3

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda15;-><init>([Z[Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    move-object v6, v8

    invoke-static {v10, v13, v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleLink(Ljava/lang/String;ILjava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4759
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 4760
    sget v0, Lorg/telegram/messenger/R$string;->UseProxyTelegramInfo2:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lorg/telegram/ui/Components/TableView;->addFullRow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/TableView$TableRowFullContent;

    move-result-object v0

    const/4 v1, 0x1

    .line 4761
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/TableView$TableRowFullContent;->setFilled(Z)V

    const/4 v2, 0x0

    .line 4762
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    const/high16 v2, 0x41300000    # 11.0f

    .line 4763
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v1, 0x11

    .line 4764
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 4767
    :cond_5
    new-instance v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v1, 0x0

    invoke-direct {v0, v6, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setRound()Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    move-result-object v8

    .line 4768
    sget v0, Lorg/telegram/messenger/R$string;->ConnectingConnectProxy:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;)V

    .line 4769
    new-instance v0, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda16;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v5, p3

    move-object/from16 v4, p4

    move-object/from16 v3, p5

    move-object v7, v11

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda16;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v6, 0xe

    const/16 v7, 0xe

    const/4 v1, -0x1

    const/16 v2, 0x30

    const/16 v3, 0x37

    const/16 v4, 0xe

    const/16 v5, 0x12

    .line 4821
    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v12, v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4823
    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->show()Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void
.end method

.method private static snapshotTextureViews(II[ILandroid/graphics/Canvas;Landroid/view/View;)V
    .locals 5

    .line 1714
    instance-of v0, p4, Landroid/view/TextureView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1715
    move-object v0, p4

    check-cast v0, Landroid/view/TextureView;

    .line 1716
    invoke-virtual {v0, p2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1718
    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1720
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    .line 1721
    aget v2, p2, v1

    sub-int/2addr v2, p0

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v3, p2, v3

    sub-int/2addr v3, p1

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {p3, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1722
    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    .line 1723
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1726
    :cond_0
    instance-of v0, p4, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 1727
    check-cast p4, Landroid/view/ViewGroup;

    .line 1728
    :goto_0
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1729
    invoke-virtual {p4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/AndroidUtilities;->snapshotTextureViews(II[ILandroid/graphics/Canvas;Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static snapshotView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 5

    .line 1702
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1703
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1704
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    const/4 v2, 0x2

    .line 1706
    new-array v2, v2, [I

    .line 1707
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v3, 0x0

    .line 1708
    aget v3, v2, v3

    const/4 v4, 0x1

    aget v4, v2, v4

    invoke-static {v3, v4, v2, v1, p0}, Lorg/telegram/messenger/AndroidUtilities;->snapshotTextureViews(II[ILandroid/graphics/Canvas;Landroid/view/View;)V

    return-object v0
.end method

.method public static superTrim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5929
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 5931
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v1, v0, :cond_2

    add-int/lit8 v2, v0, -0x1

    .line 5932
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    if-gtz v1, :cond_4

    .line 5933
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    goto :goto_2

    :cond_3
    return-object p0

    :cond_4
    :goto_2
    invoke-interface {p0, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static toIntArray(Ljava/util/List;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 1836
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1838
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static translitSafe(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 6436
    const-string v0, ""

    if-eqz p0, :cond_0

    .line 6437
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 6439
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    return-object p0

    :catch_0
    return-object v0
.end method

.method public static trim(Ljava/lang/CharSequence;[I)Ljava/lang/CharSequence;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5940
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x20

    if-ge v2, v0, :cond_1

    .line 5943
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-gt v4, v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v2, v0, :cond_2

    add-int/lit8 v4, v0, -0x1

    .line 5946
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-gt v4, v3, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 5950
    aput v2, p1, v1

    :cond_3
    if-gtz v2, :cond_5

    .line 5952
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-ge v0, p1, :cond_4

    goto :goto_2

    :cond_4
    return-object p0

    :cond_5
    :goto_2
    invoke-interface {p0, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static unlockOrientation(Landroid/app/Activity;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    if-nez p0, :cond_0

    goto :goto_0

    .line 1980
    :cond_0
    :try_start_0
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->prevOrientation:I

    const/16 v1, -0xa

    if-eq v0, v1, :cond_1

    .line 1981
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1982
    sput v1, Lorg/telegram/messenger/AndroidUtilities;->prevOrientation:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception p0

    .line 1985
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static unpackA(J)I
    .locals 1

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static unpackB(J)I
    .locals 0

    long-to-int p0, p0

    return p0
.end method

.method public static updateImageViewImageAnimated(Landroid/widget/ImageView;I)V
    .locals 1

    .line 5697
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateImageViewImageAnimated(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static updateImageViewImageAnimated(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 5701
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 5704
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 5705
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 5706
    new-instance v2, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda26;

    invoke-direct {v2, p0, v1, p1}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda26;-><init>(Landroid/widget/ImageView;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5716
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static updateViewLayout(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 5649
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5650
    invoke-interface {p0, p1, p2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public static updateViewShow(Landroid/view/View;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 5764
    invoke-static {p0, p1, v0, v0}, Lorg/telegram/messenger/AndroidUtilities;->updateViewShow(Landroid/view/View;ZZZ)V

    return-void
.end method

.method public static updateViewShow(Landroid/view/View;ZZFZLjava/lang/Runnable;)V
    .locals 8

    if-nez p0, :cond_0

    goto :goto_4

    .line 5779
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move p4, v1

    .line 5783
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/high16 v0, -0x3e800000    # -16.0f

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez p4, :cond_9

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    .line 5785
    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_3

    const/4 p4, 0x1

    .line 5786
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_3
    invoke-virtual {p0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5787
    invoke-virtual {p0, v5}, Landroid/view/View;->setAlpha(F)V

    if-eqz p2, :cond_4

    if-nez p1, :cond_4

    move p4, v3

    goto :goto_1

    :cond_4
    move p4, v5

    .line 5788
    :goto_1
    invoke-virtual {p0, p4}, Landroid/view/View;->setScaleX(F)V

    if-eqz p2, :cond_5

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    move v3, v5

    .line 5789
    :goto_2
    invoke-virtual {p0, v3}, Landroid/view/View;->setScaleY(F)V

    cmpl-float p2, p3, v4

    if-eqz p2, :cond_7

    if-eqz p1, :cond_6

    goto :goto_3

    .line 5791
    :cond_6
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    mul-float v4, p1, p3

    :goto_3
    invoke-virtual {p0, v4}, Landroid/view/View;->setTranslationY(F)V

    :cond_7
    if-eqz p5, :cond_8

    .line 5794
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    :cond_8
    :goto_4
    return-void

    :cond_9
    const-wide/16 v6, 0x154

    if-eqz p1, :cond_e

    .line 5797
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_c

    .line 5798
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5799
    invoke-virtual {p0, v4}, Landroid/view/View;->setAlpha(F)V

    if-eqz p2, :cond_a

    move p1, v3

    goto :goto_5

    :cond_a
    move p1, v5

    .line 5800
    :goto_5
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    if-eqz p2, :cond_b

    goto :goto_6

    :cond_b
    move v3, v5

    .line 5801
    :goto_6
    invoke-virtual {p0, v3}, Landroid/view/View;->setScaleY(F)V

    cmpl-float p1, p3, v4

    if-eqz p1, :cond_c

    .line 5803
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p3

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 5806
    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 5807
    invoke-virtual {p0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    cmpl-float p1, p3, v4

    if-eqz p1, :cond_d

    .line 5809
    invoke-virtual {p0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 5811
    :cond_d
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 5813
    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 5814
    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p2, :cond_f

    move p4, v3

    goto :goto_7

    :cond_f
    move p4, v5

    :goto_7
    invoke-virtual {p1, p4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p2, :cond_10

    goto :goto_8

    :cond_10
    move v3, v5

    :goto_8
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/HideViewAfterAnimation;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/HideViewAfterAnimation;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    cmpl-float p1, p3, v4

    if-eqz p1, :cond_11

    .line 5816
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p3

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 5818
    :cond_11
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static updateViewShow(Landroid/view/View;ZZZ)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    .line 5768
    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/AndroidUtilities;->updateViewShow(Landroid/view/View;ZZFZLjava/lang/Runnable;)V

    return-void
.end method

.method public static updateViewShow(Landroid/view/View;ZZZLjava/lang/Runnable;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    .line 5772
    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/AndroidUtilities;->updateViewShow(Landroid/view/View;ZZFZLjava/lang/Runnable;)V

    return-void
.end method

.method public static updateViewVisibilityAnimated(Landroid/view/View;Z)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    .line 5720
    invoke-static {p0, p1, v0, v1, v1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZZ)V

    return-void
.end method

.method public static updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V
    .locals 1

    const/4 v0, 0x1

    .line 5724
    invoke-static {p0, p1, p2, v0, p3}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZZ)V

    return-void
.end method

.method public static updateViewVisibilityAnimated(Landroid/view/View;ZFZFZLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 7

    const/4 v0, 0x1

    .line 5742
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez p0, :cond_0

    goto/16 :goto_2

    .line 5735
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move p5, v2

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-nez p5, :cond_5

    .line 5740
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    const/16 v2, 0x8

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    .line 5741
    :goto_0
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move-object v0, v3

    .line 5742
    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5743
    invoke-virtual {p0, p4}, Landroid/view/View;->setAlpha(F)V

    .line 5744
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 5745
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    return-void

    :cond_5
    const-wide/16 v4, 0x96

    const/4 p5, 0x0

    if-eqz p1, :cond_7

    .line 5746
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_7

    .line 5747
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 5748
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_6

    .line 5749
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5750
    invoke-virtual {p0, p5}, Landroid/view/View;->setAlpha(F)V

    .line 5751
    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleX(F)V

    .line 5752
    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleY(F)V

    .line 5754
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p6}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 5755
    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void

    :cond_7
    if-nez p1, :cond_8

    .line 5756
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 5757
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 5758
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/HideViewAfterAnimation;

    invoke-direct {p2, p0, p3}, Lorg/telegram/ui/Components/HideViewAfterAnimation;-><init>(Landroid/view/View;Z)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p6}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 5759
    invoke-virtual {p0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public static updateViewVisibilityAnimated(Landroid/view/View;ZFZZ)V
    .locals 7

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    .line 5728
    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZFZLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public static updateVisibleRow(Lorg/telegram/ui/Components/RecyclerListView;I)V
    .locals 5

    if-nez p0, :cond_0

    goto :goto_2

    .line 5679
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    .line 5683
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 5684
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5685
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    if-ltz v3, :cond_3

    .line 5687
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 5688
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v4

    if-eq v4, p1, :cond_2

    goto :goto_1

    .line 5691
    :cond_2
    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public static updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V
    .locals 5

    if-nez p0, :cond_0

    goto :goto_2

    .line 5658
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    .line 5662
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 5663
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5664
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    if-ltz v3, :cond_3

    .line 5666
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 5667
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 5670
    :cond_2
    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public static vibrate(Landroid/view/View;)V
    .locals 2

    if-eqz p0, :cond_3

    .line 6553
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->inAppVibration:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 6554
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1

    goto :goto_0

    .line 6555
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasAmplitudeControl()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 6556
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_0
    return-void
.end method

.method public static vibrateCursor(Landroid/view/View;)V
    .locals 2

    if-eqz p0, :cond_3

    .line 6544
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->inAppVibration:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 6545
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1

    goto :goto_0

    .line 6546
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasAmplitudeControl()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x9

    const/4 v1, 0x1

    .line 6547
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_0
    return-void
.end method

.method public static withLearnMore(Ljava/lang/CharSequence;Ljava/lang/Runnable;)Ljava/lang/CharSequence;
    .locals 4

    .line 6497
    new-instance v0, Landroid/text/SpannableString;

    sget v1, Lorg/telegram/messenger/R$string;->LearnMoreArrow:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 6498
    new-instance v1, Lorg/telegram/messenger/AndroidUtilities$14;

    invoke-direct {v1, p1}, Lorg/telegram/messenger/AndroidUtilities$14;-><init>(Ljava/lang/Runnable;)V

    .line 6511
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result p1

    const/16 v2, 0x21

    const/4 v3, 0x0

    .line 6498
    invoke-virtual {v0, v1, v3, p1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 6513
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 6514
    const-string p0, " "

    invoke-virtual {p1, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6515
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/4 p0, 0x1

    .line 6517
    invoke-static {p1, p0}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
