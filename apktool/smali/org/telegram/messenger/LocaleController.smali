.class public Lorg/telegram/messenger/LocaleController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/LocaleController$PluralRules_One;,
        Lorg/telegram/messenger/LocaleController$PluralRules;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Czech;,
        Lorg/telegram/messenger/LocaleController$PluralRules_French;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Balkan;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Serbian;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Latvian;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Lithuanian;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Polish;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Romanian;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Slovenian;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Arabic;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Macedonian;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Welsh;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Breton;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Langi;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Tachelhit;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Maltese;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Two;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Zero;,
        Lorg/telegram/messenger/LocaleController$PluralRules_None;,
        Lorg/telegram/messenger/LocaleController$LocaleInfo;,
        Lorg/telegram/messenger/LocaleController$TimeZoneChangedReceiver;,
        Lorg/telegram/messenger/LocaleController$RelativeIcu;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/messenger/LocaleController; = null

.field static final QUANTITY_FEW:I = 0x8

.field static final QUANTITY_MANY:I = 0x10

.field static final QUANTITY_ONE:I = 0x2

.field static final QUANTITY_OTHER:I = 0x0

.field static final QUANTITY_TWO:I = 0x4

.field static final QUANTITY_ZERO:I = 0x1

.field private static defaultNumbers:[C = null

.field public static is24HourFormat:Z = false

.field public static isRTL:Z = false

.field public static nameDisplayOrder:I = 0x1

.field private static otherNumbers:[[C

.field private static resourcesCacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static useImperialSystemType:Ljava/lang/Boolean;


# instance fields
.field private allRules:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/LocaleController$PluralRules;",
            ">;"
        }
    .end annotation
.end field

.field private changingConfiguration:Z

.field private volatile chatDate:Lorg/telegram/messenger/time/FastDateFormat;

.field private volatile chatDateShort:Lorg/telegram/messenger/time/FastDateFormat;

.field private volatile chatFullDate:Lorg/telegram/messenger/time/FastDateFormat;

.field private checkingUpdateForCurrentRemoteLocale:Z

.field private currencyValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currentLocale:Ljava/util/Locale;

.field private currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

.field private currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

.field private currentSystemLocale:Ljava/lang/String;

.field private volatile exportFileFormatter:Lorg/telegram/messenger/time/FastDateFormat;

.field private volatile exportFullDateFormatter:Lorg/telegram/messenger/time/FastDateFormat;

.field private volatile formatterBannedUntil:Lorg/telegram/messenger/time/FastDateFormat;

.field private volatile formatterBannedUntilThisYear:Lorg/telegram/messenger/time/FastDateFormat;

.field private volatile formatterBoostExpired:Lorg/telegram/messenger/time/FastDateFormat;

.field private volatile formatterConstDay:Lorg/telegram/messenger/time/FastDateFormat;

.field private volatile formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

.field private volatile formatterDayMonth:Lorg/telegram/messenger/time/FastDateFormat;

.field private volatile formatterDayWithSeconds:Lorg/telegram/messenger/time/FastDateFormat;

.field private volatile formatterGiveawayCard:Lorg/telegram/messenger/time/FastDateFormat;

.field private volatile formatterGiveawayMonthDay:Lorg/telegram/messenger/time/FastDateFormat;

.field private volatile formatterGiveawayMonthDayYear:Lorg/telegram/messenger/time/FastDateFormat;

.field private volatile formatterMonthOnly:Lorg/telegram/messenger/time/FastDateFormat;

.field private volatile formatterMonthYear:Lorg/telegram/messenger/time/FastDateFormat;

.field private volatile formatterScheduleDay:Lorg/telegram/messenger/time/FastDateFormat;

.field private final formatterScheduleSend:[Lorg/telegram/messenger/time/FastDateFormat;

.field private volatile formatterScheduleYear:Lorg/telegram/messenger/time/FastDateFormat;

.field private volatile formatterStats:Lorg/telegram/messenger/time/FastDateFormat;

.field private volatile formatterWeek:Lorg/telegram/messenger/time/FastDateFormat;

.field private volatile formatterWeekLong:Lorg/telegram/messenger/time/FastDateFormat;

.field private volatile formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

.field private volatile formatterYearMax:Lorg/telegram/messenger/time/FastDateFormat;

.field private languageOverride:Ljava/lang/String;

.field public languages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/LocaleController$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field public languagesDict:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/LocaleController$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private loadingRemoteLanguages:Z

.field private localeValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private localizedContext:Landroid/content/Context;

.field private otherLanguages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/LocaleController$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private patching:Z

.field private reloadLastFile:Z

.field public remoteLanguages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/LocaleController$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field public remoteLanguagesDict:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/LocaleController$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private ruTranslitChars:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private systemDefaultLocale:Ljava/util/Locale;

.field private translitChars:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public unofficialLanguages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/LocaleController$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$64YSNlPhGyutsumbVkHOMUhUarM(Lorg/telegram/messenger/LocaleController;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/LocaleController;->lambda$checkForcePatchLangpack$6(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6hMdYnQRhjZInbgcdpkngvUvqgI(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLObject;ILjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/LocaleController;->lambda$applyRemoteLanguage$18(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLObject;ILjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FCunhbozLbGYmln_ERn0NZAd-Zo(Lorg/telegram/messenger/LocaleController;ZILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/LocaleController;->lambda$loadRemoteLanguages$12(ZILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FYgTUeWZxo8fXiPIx-r-f6Cr7OU(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLObject;ILjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/LocaleController;->lambda$applyRemoteLanguage$16(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLObject;ILjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J_UbSrw8XmgcXCHrbrK9yiUwLZQ(Lorg/telegram/messenger/LocaleController;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/LocaleController;->lambda$checkForcePatchLangpack$5(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M8xnqQcNw5oaI4ZxKjhICarw5-Y([I[ILjava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x0

    .line 3350
    aget v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p0, v0

    .line 3351
    aget p0, p1, v0

    if-lt v1, p0, :cond_0

    if-eqz p2, :cond_0

    .line 3352
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$Pg2PBPxRCoepG2Tkpuyt86V0Onw(Lorg/telegram/messenger/LocaleController;ILorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;Ljava/util/HashMap;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/LocaleController;->lambda$saveRemoteLocaleStrings$10(ILorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;Ljava/util/HashMap;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wk6G2PmqFWLvh5jGtMb-PM3Tym4(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$LocaleInfo;ILjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/LocaleController;->lambda$applyLanguage$7(Lorg/telegram/messenger/LocaleController$LocaleInfo;ILjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_HFbr_OEe1ylOUlzL1-LC1rmtR0(Lorg/telegram/messenger/LocaleController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$_hLr1MsuU8zyuxAj2dvolS1K9dQ(Lorg/telegram/messenger/LocaleController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$cD3L_IgX18PUWqtmb98mhjvbtAQ()V
    .locals 3

    .line 1417
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reloadInterface:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eTGQJpznHRuluv4gsS5mcdnSBYM(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLObject;ILjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/LocaleController;->lambda$applyRemoteLanguage$20(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLObject;ILjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jVzPUvXqiLacCBr0XWIcEBv2d34(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$LocaleInfo;ILjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/LocaleController;->lambda$applyRemoteLanguage$19(Lorg/telegram/messenger/LocaleController$LocaleInfo;ILjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lVUOg9b39EGnADHk3Jz7OxG-3Ro(Lorg/telegram/messenger/LocaleController;Lorg/telegram/tgnet/TLObject;ZI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/LocaleController;->lambda$loadRemoteLanguages$11(Lorg/telegram/tgnet/TLObject;ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$n3VAxDd6aRdYQtckzKlSSJEOjEQ(Lorg/telegram/messenger/LocaleController;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/LocaleController;->lambda$checkUpdateForCurrentRemoteLocale$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$nNsKsounVhyXZT07xjmrz5-wGDk(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$LocaleInfo;ILjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/LocaleController;->lambda$applyRemoteLanguage$21(Lorg/telegram/messenger/LocaleController$LocaleInfo;ILjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oOyMjA_1y7AiE8hg6hTg3YhZziI(Lorg/telegram/messenger/LocaleController;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/LocaleController;->lambda$checkPatchLangpack$4(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$q6DTnGREibH6summfBCYGWjo1H8(Lorg/telegram/messenger/LocaleController;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/LocaleController;->lambda$checkUpdateForCurrentRemoteLocale$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$qS9PDfpRGfu9Onc5hg3kdW-CEQ8(Lorg/telegram/messenger/LocaleController;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/LocaleController;->lambda$applyLanguage$8(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$qwLv0TnG7vuDQxmix6g-lhuh1QI(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$LocaleInfo;ILjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/LocaleController;->lambda$applyRemoteLanguage$15(Lorg/telegram/messenger/LocaleController$LocaleInfo;ILjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t45j5nZcXoa7lSmpb3Rb3-jT6q4(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$LocaleInfo;ILjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/LocaleController;->lambda$applyRemoteLanguage$17(Lorg/telegram/messenger/LocaleController$LocaleInfo;ILjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yLbW1x63OIEqPblwq1OpGOXWzIw(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLObject;ILjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/LocaleController;->lambda$applyRemoteLanguage$14(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLObject;ILjava/lang/Runnable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 21

    .line 429
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/messenger/LocaleController;->resourcesCacheMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 578
    sput-object v0, Lorg/telegram/messenger/LocaleController;->Instance:Lorg/telegram/messenger/LocaleController;

    const/16 v0, 0xa

    .line 1829
    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lorg/telegram/messenger/LocaleController;->defaultNumbers:[C

    .line 1830
    new-array v1, v0, [C

    fill-array-data v1, :array_1

    new-array v2, v0, [C

    fill-array-data v2, :array_2

    new-array v3, v0, [C

    fill-array-data v3, :array_3

    new-array v4, v0, [C

    fill-array-data v4, :array_4

    new-array v5, v0, [C

    fill-array-data v5, :array_5

    new-array v6, v0, [C

    fill-array-data v6, :array_6

    new-array v7, v0, [C

    fill-array-data v7, :array_7

    new-array v8, v0, [C

    fill-array-data v8, :array_8

    new-array v9, v0, [C

    fill-array-data v9, :array_9

    new-array v10, v0, [C

    fill-array-data v10, :array_a

    new-array v11, v0, [C

    fill-array-data v11, :array_b

    new-array v12, v0, [C

    fill-array-data v12, :array_c

    new-array v13, v0, [C

    fill-array-data v13, :array_d

    new-array v14, v0, [C

    fill-array-data v14, :array_e

    new-array v15, v0, [C

    fill-array-data v15, :array_f

    move-object/from16 v16, v1

    new-array v1, v0, [C

    fill-array-data v1, :array_10

    move-object/from16 v17, v1

    new-array v1, v0, [C

    fill-array-data v1, :array_11

    move-object/from16 v18, v1

    new-array v1, v0, [C

    fill-array-data v1, :array_12

    move/from16 v19, v0

    const/16 v0, 0x12

    new-array v0, v0, [[C

    const/16 v20, 0x0

    aput-object v16, v0, v20

    const/16 v16, 0x1

    aput-object v2, v0, v16

    const/4 v2, 0x2

    aput-object v3, v0, v2

    const/4 v2, 0x3

    aput-object v4, v0, v2

    const/4 v2, 0x4

    aput-object v5, v0, v2

    const/4 v2, 0x5

    aput-object v6, v0, v2

    const/4 v2, 0x6

    aput-object v7, v0, v2

    const/4 v2, 0x7

    aput-object v8, v0, v2

    const/16 v2, 0x8

    aput-object v9, v0, v2

    const/16 v2, 0x9

    aput-object v10, v0, v2

    aput-object v11, v0, v19

    const/16 v2, 0xb

    aput-object v12, v0, v2

    const/16 v2, 0xc

    aput-object v13, v0, v2

    const/16 v2, 0xd

    aput-object v14, v0, v2

    const/16 v2, 0xe

    aput-object v15, v0, v2

    const/16 v2, 0xf

    aput-object v17, v0, v2

    const/16 v2, 0x10

    aput-object v18, v0, v2

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sput-object v0, Lorg/telegram/messenger/LocaleController;->otherNumbers:[[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data

    :array_1
    .array-data 2
        0x660s
        0x661s
        0x662s
        0x663s
        0x664s
        0x665s
        0x666s
        0x667s
        0x668s
        0x669s
    .end array-data

    :array_2
    .array-data 2
        0x6f0s
        0x6f1s
        0x6f2s
        0x6f3s
        0x6f4s
        0x6f5s
        0x6f6s
        0x6f7s
        0x6f8s
        0x6f9s
    .end array-data

    :array_3
    .array-data 2
        0x966s
        0x967s
        0x968s
        0x969s
        0x96as
        0x96bs
        0x96cs
        0x96ds
        0x96es
        0x96fs
    .end array-data

    :array_4
    .array-data 2
        0xae6s
        0xae7s
        0xae8s
        0xae9s
        0xaeas
        0xaebs
        0xaecs
        0xaeds
        0xaees
        0xaefs
    .end array-data

    :array_5
    .array-data 2
        0xa66s
        0xa67s
        0xa68s
        0xa69s
        0xa6as
        0xa6bs
        0xa6cs
        0xa6ds
        0xa6es
        0xa6fs
    .end array-data

    :array_6
    .array-data 2
        0x9e6s
        0x9e7s
        0x9e8s
        0x9e9s
        0x9eas
        0x9ebs
        0x9ecs
        0x9eds
        0x9ees
        0x9efs
    .end array-data

    :array_7
    .array-data 2
        0xce6s
        0xce7s
        0xce8s
        0xce9s
        0xceas
        0xcebs
        0xcecs
        0xceds
        0xcees
        0xcefs
    .end array-data

    :array_8
    .array-data 2
        0xb66s
        0xb67s
        0xb68s
        0xb69s
        0xb6as
        0xb6bs
        0xb6cs
        0xb6ds
        0xb6es
        0xb6fs
    .end array-data

    :array_9
    .array-data 2
        0xd66s
        0xd67s
        0xd68s
        0xd69s
        0xd6as
        0xd6bs
        0xd6cs
        0xd6ds
        0xd6es
        0xd6fs
    .end array-data

    :array_a
    .array-data 2
        0xbe6s
        0xbe7s
        0xbe8s
        0xbe9s
        0xbeas
        0xbebs
        0xbecs
        0xbeds
        0xbees
        0xbefs
    .end array-data

    :array_b
    .array-data 2
        0xc66s
        0xc67s
        0xc68s
        0xc69s
        0xc6as
        0xc6bs
        0xc6cs
        0xc6ds
        0xc6es
        0xc6fs
    .end array-data

    :array_c
    .array-data 2
        0x1040s
        0x1041s
        0x1042s
        0x1043s
        0x1044s
        0x1045s
        0x1046s
        0x1047s
        0x1048s
        0x1049s
    .end array-data

    :array_d
    .array-data 2
        0xf20s
        0xf21s
        0xf22s
        0xf23s
        0xf24s
        0xf25s
        0xf26s
        0xf27s
        0xf28s
        0xf29s
    .end array-data

    :array_e
    .array-data 2
        0x1810s
        0x1811s
        0x1812s
        0x1813s
        0x1814s
        0x1815s
        0x1816s
        0x1817s
        0x1818s
        0x1819s
    .end array-data

    :array_f
    .array-data 2
        0x17e0s
        0x17e1s
        0x17e2s
        0x17e3s
        0x17e4s
        0x17e5s
        0x17e6s
        0x17e7s
        0x17e8s
        0x17e9s
    .end array-data

    :array_10
    .array-data 2
        0xe50s
        0xe51s
        0xe52s
        0xe53s
        0xe54s
        0xe55s
        0xe56s
        0xe57s
        0xe58s
        0xe59s
    .end array-data

    :array_11
    .array-data 2
        0xed0s
        0xed1s
        0xed2s
        0xed3s
        0xed4s
        0xed5s
        0xed6s
        0xed7s
        0xed8s
        0xed9s
    .end array-data

    :array_12
    .array-data 2
        -0x5630s
        -0x562fs
        -0x562es
        -0x562ds
        -0x562cs
        -0x562bs
        -0x562as
        -0x5629s
        -0x5628s
        -0x5627s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 59

    move-object/from16 v1, p0

    .line 592
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12

    .line 398
    new-array v0, v0, [Lorg/telegram/messenger/time/FastDateFormat;

    iput-object v0, v1, Lorg/telegram/messenger/LocaleController;->formatterScheduleSend:[Lorg/telegram/messenger/time/FastDateFormat;

    .line 431
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lorg/telegram/messenger/LocaleController;->allRules:Ljava/util/HashMap;

    .line 437
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lorg/telegram/messenger/LocaleController;->localeValues:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 439
    iput-boolean v0, v1, Lorg/telegram/messenger/LocaleController;->changingConfiguration:Z

    .line 570
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    .line 571
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lorg/telegram/messenger/LocaleController;->unofficialLanguages:Ljava/util/ArrayList;

    .line 572
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lorg/telegram/messenger/LocaleController;->remoteLanguages:Ljava/util/ArrayList;

    .line 573
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lorg/telegram/messenger/LocaleController;->remoteLanguagesDict:Ljava/util/HashMap;

    .line 574
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    .line 576
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lorg/telegram/messenger/LocaleController;->otherLanguages:Ljava/util/ArrayList;

    .line 931
    iput-boolean v0, v1, Lorg/telegram/messenger/LocaleController;->patching:Z

    .line 593
    const-string v57, "an"

    const-string v58, "ast"

    const-string v3, "bem"

    const-string v4, "brx"

    const-string v5, "da"

    const-string v6, "de"

    const-string v7, "el"

    const-string v8, "en"

    const-string v9, "eo"

    const-string v10, "es"

    const-string v11, "et"

    const-string v12, "fi"

    const-string v13, "fo"

    const-string v14, "gl"

    const-string v15, "he"

    const-string/jumbo v16, "iw"

    const-string/jumbo v17, "it"

    const-string/jumbo v18, "nb"

    const-string/jumbo v19, "nl"

    const-string/jumbo v20, "nn"

    const-string/jumbo v21, "no"

    const-string/jumbo v22, "sv"

    const-string v23, "af"

    const-string v24, "bg"

    const-string v25, "bn"

    const-string v26, "ca"

    const-string v27, "eu"

    const-string v28, "fur"

    const-string v29, "fy"

    const-string v30, "gu"

    const-string v31, "ha"

    const-string v32, "is"

    const-string/jumbo v33, "ku"

    const-string/jumbo v34, "lb"

    const-string/jumbo v35, "ml"

    const-string/jumbo v36, "mr"

    const-string/jumbo v37, "nah"

    const-string/jumbo v38, "ne"

    const-string/jumbo v39, "om"

    const-string/jumbo v40, "or"

    const-string/jumbo v41, "pa"

    const-string/jumbo v42, "pap"

    const-string/jumbo v43, "ps"

    const-string/jumbo v44, "so"

    const-string/jumbo v45, "sq"

    const-string/jumbo v46, "sw"

    const-string/jumbo v47, "ta"

    const-string/jumbo v48, "te"

    const-string/jumbo v49, "tk"

    const-string/jumbo v50, "ur"

    const-string/jumbo v51, "zu"

    const-string/jumbo v52, "mn"

    const-string v53, "gsw"

    const-string v54, "chr"

    const-string/jumbo v55, "rm"

    const-string/jumbo v56, "pt"

    filled-new-array/range {v3 .. v58}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/LocaleController$PluralRules_One;

    invoke-direct {v3}, Lorg/telegram/messenger/LocaleController$PluralRules_One;-><init>()V

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 597
    const-string v2, "cs"

    const-string/jumbo v3, "sk"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/LocaleController$PluralRules_Czech;

    invoke-direct {v3}, Lorg/telegram/messenger/LocaleController$PluralRules_Czech;-><init>()V

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 598
    const-string v2, "fr"

    const-string/jumbo v3, "kab"

    const-string v4, "ff"

    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/LocaleController$PluralRules_French;

    invoke-direct {v3}, Lorg/telegram/messenger/LocaleController$PluralRules_French;-><init>()V

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 599
    const-string/jumbo v2, "uk"

    const-string v3, "be"

    const-string/jumbo v4, "ru"

    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/LocaleController$PluralRules_Balkan;

    invoke-direct {v3}, Lorg/telegram/messenger/LocaleController$PluralRules_Balkan;-><init>()V

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 600
    const-string v2, "bs"

    const-string/jumbo v3, "sh"

    const-string/jumbo v4, "sr"

    const-string v5, "hr"

    filled-new-array {v4, v5, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/LocaleController$PluralRules_Serbian;

    invoke-direct {v3}, Lorg/telegram/messenger/LocaleController$PluralRules_Serbian;-><init>()V

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 601
    const-string/jumbo v2, "lv"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/LocaleController$PluralRules_Latvian;

    invoke-direct {v3}, Lorg/telegram/messenger/LocaleController$PluralRules_Latvian;-><init>()V

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 602
    const-string/jumbo v2, "lt"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/LocaleController$PluralRules_Lithuanian;

    invoke-direct {v3}, Lorg/telegram/messenger/LocaleController$PluralRules_Lithuanian;-><init>()V

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 603
    const-string/jumbo v2, "pl"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/LocaleController$PluralRules_Polish;

    invoke-direct {v3}, Lorg/telegram/messenger/LocaleController$PluralRules_Polish;-><init>()V

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 604
    const-string/jumbo v2, "ro"

    const-string/jumbo v3, "mo"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/LocaleController$PluralRules_Romanian;

    invoke-direct {v3}, Lorg/telegram/messenger/LocaleController$PluralRules_Romanian;-><init>()V

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 605
    const-string/jumbo v2, "sl"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/LocaleController$PluralRules_Slovenian;

    invoke-direct {v3}, Lorg/telegram/messenger/LocaleController$PluralRules_Slovenian;-><init>()V

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 606
    const-string v2, "ar"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/LocaleController$PluralRules_Arabic;

    invoke-direct {v4}, Lorg/telegram/messenger/LocaleController$PluralRules_Arabic;-><init>()V

    invoke-direct {v1, v3, v4}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 607
    const-string/jumbo v3, "mk"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/LocaleController$PluralRules_Macedonian;

    invoke-direct {v4}, Lorg/telegram/messenger/LocaleController$PluralRules_Macedonian;-><init>()V

    invoke-direct {v1, v3, v4}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 608
    const-string v3, "cy"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/LocaleController$PluralRules_Welsh;

    invoke-direct {v4}, Lorg/telegram/messenger/LocaleController$PluralRules_Welsh;-><init>()V

    invoke-direct {v1, v3, v4}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 609
    const-string v3, "br"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/LocaleController$PluralRules_Breton;

    invoke-direct {v4}, Lorg/telegram/messenger/LocaleController$PluralRules_Breton;-><init>()V

    invoke-direct {v1, v3, v4}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 610
    const-string/jumbo v3, "lag"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/LocaleController$PluralRules_Langi;

    invoke-direct {v4}, Lorg/telegram/messenger/LocaleController$PluralRules_Langi;-><init>()V

    invoke-direct {v1, v3, v4}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 611
    const-string/jumbo v3, "shi"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/LocaleController$PluralRules_Tachelhit;

    invoke-direct {v4}, Lorg/telegram/messenger/LocaleController$PluralRules_Tachelhit;-><init>()V

    invoke-direct {v1, v3, v4}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 612
    const-string/jumbo v3, "mt"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/LocaleController$PluralRules_Maltese;

    invoke-direct {v4}, Lorg/telegram/messenger/LocaleController$PluralRules_Maltese;-><init>()V

    invoke-direct {v1, v3, v4}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 613
    const-string/jumbo v10, "smn"

    const-string/jumbo v11, "sms"

    const-string v5, "ga"

    const-string/jumbo v6, "se"

    const-string/jumbo v7, "sma"

    const-string/jumbo v8, "smi"

    const-string/jumbo v9, "smj"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/LocaleController$PluralRules_Two;

    invoke-direct {v4}, Lorg/telegram/messenger/LocaleController$PluralRules_Two;-><init>()V

    invoke-direct {v1, v3, v4}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 614
    const-string/jumbo v15, "ti"

    const-string/jumbo v16, "wa"

    const-string v5, "ak"

    const-string v6, "am"

    const-string v7, "bh"

    const-string v8, "fil"

    const-string/jumbo v9, "tl"

    const-string v10, "guw"

    const-string v11, "hi"

    const-string/jumbo v12, "ln"

    const-string/jumbo v13, "mg"

    const-string/jumbo v14, "nso"

    filled-new-array/range {v5 .. v16}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/LocaleController$PluralRules_Zero;

    invoke-direct {v4}, Lorg/telegram/messenger/LocaleController$PluralRules_Zero;-><init>()V

    invoke-direct {v1, v3, v4}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 615
    const-string/jumbo v32, "th"

    const-string v33, "in"

    const-string v5, "az"

    const-string v6, "bm"

    const-string v7, "fa"

    const-string v8, "ig"

    const-string v9, "hu"

    const-string/jumbo v10, "ja"

    const-string/jumbo v11, "kde"

    const-string/jumbo v12, "kea"

    const-string/jumbo v13, "ko"

    const-string/jumbo v14, "my"

    const-string/jumbo v15, "ses"

    const-string/jumbo v16, "sg"

    const-string/jumbo v17, "to"

    const-string/jumbo v18, "tr"

    const-string/jumbo v19, "vi"

    const-string/jumbo v20, "wo"

    const-string/jumbo v21, "yo"

    const-string/jumbo v22, "zh"

    const-string v23, "bo"

    const-string v24, "dz"

    const-string v25, "id"

    const-string/jumbo v26, "jv"

    const-string/jumbo v27, "jw"

    const-string/jumbo v28, "ka"

    const-string/jumbo v29, "km"

    const-string/jumbo v30, "kn"

    const-string/jumbo v31, "ms"

    filled-new-array/range {v5 .. v33}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/LocaleController$PluralRules_None;

    invoke-direct {v4}, Lorg/telegram/messenger/LocaleController$PluralRules_None;-><init>()V

    invoke-direct {v1, v3, v4}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 618
    new-instance v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-direct {v3}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 619
    const-string v4, "English"

    iput-object v4, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 620
    iput-object v4, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 621
    const-string v4, "en"

    iput-object v4, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    iput-object v4, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    const/4 v5, 0x0

    .line 622
    iput-object v5, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    const/4 v6, 0x1

    .line 623
    iput-boolean v6, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    .line 624
    iget-object v7, v1, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    iget-object v7, v1, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v8, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    new-instance v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-direct {v3}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 628
    const-string v7, "Italiano"

    iput-object v7, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 629
    const-string v7, "Italian"

    iput-object v7, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 630
    const-string/jumbo v7, "it"

    iput-object v7, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    iput-object v7, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 631
    iput-object v5, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 632
    iput-boolean v6, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    .line 633
    iget-object v7, v1, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    iget-object v7, v1, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v8, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    new-instance v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-direct {v3}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 637
    const-string v7, "Espa\u00f1ol"

    iput-object v7, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 638
    const-string v7, "Spanish"

    iput-object v7, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 639
    const-string v7, "es"

    iput-object v7, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    iput-object v7, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 640
    iput-boolean v6, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    .line 641
    iget-object v7, v1, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    iget-object v7, v1, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v8, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    new-instance v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-direct {v3}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 645
    const-string v7, "Deutsch"

    iput-object v7, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 646
    const-string v7, "German"

    iput-object v7, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 647
    const-string v7, "de"

    iput-object v7, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    iput-object v7, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 648
    iput-object v5, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 649
    iput-boolean v6, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    .line 650
    iget-object v7, v1, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    iget-object v7, v1, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v8, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    new-instance v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-direct {v3}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 654
    const-string v7, "Nederlands"

    iput-object v7, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 655
    const-string v7, "Dutch"

    iput-object v7, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 656
    const-string/jumbo v7, "nl"

    iput-object v7, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    iput-object v7, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 657
    iput-object v5, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 658
    iput-boolean v6, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    .line 659
    iget-object v7, v1, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    iget-object v7, v1, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v8, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    new-instance v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-direct {v3}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 663
    const-string/jumbo v7, "\u0627\u0644\u0639\u0631\u0628\u064a\u0629"

    iput-object v7, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 664
    const-string v7, "Arabic"

    iput-object v7, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 665
    iput-object v2, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    iput-object v2, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 666
    iput-object v5, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 667
    iput-boolean v6, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    .line 668
    iput-boolean v6, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isRtl:Z

    .line 669
    iget-object v2, v1, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    iget-object v2, v1, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v7, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    new-instance v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-direct {v2}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 673
    const-string v3, "Portugu\u00eas (Brasil)"

    iput-object v3, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 674
    const-string v3, "Portuguese (Brazil)"

    iput-object v3, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 675
    const-string/jumbo v3, "pt_br"

    iput-object v3, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 676
    iput-object v5, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 677
    iput-boolean v6, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    .line 678
    iget-object v3, v1, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    iget-object v3, v1, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v7, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v3, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    new-instance v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-direct {v2}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 682
    const-string/jumbo v3, "\ud55c\uad6d\uc5b4"

    iput-object v3, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 683
    const-string v3, "Korean"

    iput-object v3, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 684
    const-string/jumbo v3, "ko"

    iput-object v3, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 685
    iput-object v5, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 686
    iput-boolean v6, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    .line 687
    iget-object v3, v1, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    iget-object v3, v1, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v7, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v3, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    new-instance v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-direct {v2}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 691
    const-string/jumbo v3, "\u65e5\u672c\u8a9e"

    iput-object v3, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 692
    const-string v3, "Japanese"

    iput-object v3, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 693
    const-string/jumbo v3, "ja_raw"

    iput-object v3, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 694
    iput-object v5, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseLangCode:Ljava/lang/String;

    .line 695
    iput-boolean v0, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isRtl:Z

    .line 696
    const-string/jumbo v3, "unofficial"

    iput-object v3, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 697
    const-string/jumbo v3, "ja"

    iput-object v3, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    .line 698
    iput-boolean v6, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    .line 699
    iget-object v7, v1, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    iget-object v7, v1, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    iget-object v7, v1, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    invoke-virtual {v7, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    invoke-direct {v1}, Lorg/telegram/messenger/LocaleController;->loadOtherLanguages()V

    .line 704
    iget-object v2, v1, Lorg/telegram/messenger/LocaleController;->remoteLanguages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 705
    new-instance v2, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1}, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/LocaleController;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    move v2, v0

    .line 708
    :goto_0
    iget-object v3, v1, Lorg/telegram/messenger/LocaleController;->otherLanguages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 709
    iget-object v3, v1, Lorg/telegram/messenger/LocaleController;->otherLanguages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 710
    iget-object v7, v1, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    iget-object v7, v1, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    invoke-virtual {v3}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v0

    .line 714
    :goto_1
    iget-object v3, v1, Lorg/telegram/messenger/LocaleController;->remoteLanguages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 715
    iget-object v3, v1, Lorg/telegram/messenger/LocaleController;->remoteLanguages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 716
    invoke-virtual {v3}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/telegram/messenger/LocaleController;->getLanguageFromDict(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 718
    iget-object v8, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    iput-object v8, v7, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 719
    iget v8, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->version:I

    iput v8, v7, Lorg/telegram/messenger/LocaleController$LocaleInfo;->version:I

    .line 720
    iget v8, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseVersion:I

    iput v8, v7, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseVersion:I

    .line 721
    iget v3, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->serverIndex:I

    iput v3, v7, Lorg/telegram/messenger/LocaleController$LocaleInfo;->serverIndex:I

    .line 722
    iget-object v3, v1, Lorg/telegram/messenger/LocaleController;->remoteLanguages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 724
    :cond_2
    iget-object v7, v1, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    iget-object v7, v1, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    invoke-virtual {v3}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v2, v0

    .line 729
    :goto_3
    iget-object v3, v1, Lorg/telegram/messenger/LocaleController;->unofficialLanguages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 730
    iget-object v3, v1, Lorg/telegram/messenger/LocaleController;->unofficialLanguages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 731
    invoke-virtual {v3}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/telegram/messenger/LocaleController;->getLanguageFromDict(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 733
    iget-object v8, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    iput-object v8, v7, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 734
    iget v8, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->version:I

    iput v8, v7, Lorg/telegram/messenger/LocaleController$LocaleInfo;->version:I

    .line 735
    iget v8, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseVersion:I

    iput v8, v7, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseVersion:I

    .line 736
    iget v3, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->serverIndex:I

    iput v3, v7, Lorg/telegram/messenger/LocaleController$LocaleInfo;->serverIndex:I

    .line 737
    iget-object v3, v1, Lorg/telegram/messenger/LocaleController;->unofficialLanguages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 739
    :cond_4
    iget-object v7, v1, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    invoke-virtual {v3}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 743
    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/messenger/LocaleController;->systemDefaultLocale:Ljava/util/Locale;

    .line 744
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/LocaleController;->is24HourFormat:Z

    .line 749
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 750
    const-string/jumbo v3, "language"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 752
    invoke-virtual {v1, v2}, Lorg/telegram/messenger/LocaleController;->getLanguageFromDict(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v2

    if-eqz v2, :cond_7

    move v0, v6

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_6
    move-object v2, v5

    :cond_7
    :goto_5
    if-nez v2, :cond_8

    .line 758
    iget-object v3, v1, Lorg/telegram/messenger/LocaleController;->systemDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 759
    iget-object v2, v1, Lorg/telegram/messenger/LocaleController;->systemDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/LocaleController;->getLanguageFromDict(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v2

    :cond_8
    if-nez v2, :cond_9

    .line 762
    iget-object v2, v1, Lorg/telegram/messenger/LocaleController;->systemDefaultLocale:Ljava/util/Locale;

    invoke-direct {v1, v2}, Lorg/telegram/messenger/LocaleController;->getLocaleString(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/LocaleController;->getLanguageFromDict(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v2

    if-nez v2, :cond_9

    .line 764
    invoke-virtual {v1, v4}, Lorg/telegram/messenger/LocaleController;->getLanguageFromDict(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v2

    .line 768
    :cond_9
    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-virtual {v1, v2, v0, v6, v3}, Lorg/telegram/messenger/LocaleController;->applyLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;ZZI)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 770
    :goto_6
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 774
    :goto_7
    :try_start_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 775
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_a

    .line 776
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v3, Lorg/telegram/messenger/LocaleController$TimeZoneChangedReceiver;

    invoke-direct {v3, v1, v5}, Lorg/telegram/messenger/LocaleController$TimeZoneChangedReceiver;-><init>(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController-IA;)V

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_8

    .line 778
    :cond_a
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v3, Lorg/telegram/messenger/LocaleController$TimeZoneChangedReceiver;

    invoke-direct {v3, v1, v5}, Lorg/telegram/messenger/LocaleController$TimeZoneChangedReceiver;-><init>(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController-IA;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    .line 781
    :goto_8
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 784
    :goto_9
    new-instance v0, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda6;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/LocaleController;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static addNbsp(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x20

    const/16 v1, 0xa0

    .line 4267
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V
    .locals 4

    .line 824
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 825
    iget-object v3, p0, Lorg/telegram/messenger/LocaleController;->allRules:Ljava/util/HashMap;

    invoke-virtual {v3, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private applyRemoteLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;Ljava/lang/String;ZILjava/lang/Runnable;)I
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 3343
    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isRemote()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isUnofficial()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 3346
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyRemoteLanguage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " force="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " currentAccount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 3347
    new-array v2, v1, [I

    .line 3348
    filled-new-array {v0}, [I

    move-result-object v3

    aput v0, v2, v0

    .line 3349
    new-instance v4, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, v2, p5}, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda0;-><init>([I[ILjava/lang/Runnable;)V

    if-eqz p3, :cond_1

    .line 3356
    iget-object p5, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-direct {p0, p5}, Lorg/telegram/messenger/LocaleController;->patched(Ljava/lang/String;)V

    .line 3358
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->hasBaseLang()Z

    move-result p5

    const-string v3, ""

    const/16 v5, 0x8

    if-eqz p5, :cond_4

    if-eqz p2, :cond_2

    iget-object p5, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseLangCode:Ljava/lang/String;

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_4

    .line 3359
    :cond_2
    iget p5, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseVersion:I

    if-eqz p5, :cond_3

    if-nez p3, :cond_3

    .line 3360
    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->hasBaseLang()Z

    move-result p5

    if-eqz p5, :cond_4

    .line 3361
    const-string p5, "applyRemoteLanguage getDifference of base"

    invoke-static {p5}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3362
    new-instance p5, Lorg/telegram/tgnet/TLRPC$TL_langpack_getDifference;

    invoke-direct {p5}, Lorg/telegram/tgnet/TLRPC$TL_langpack_getDifference;-><init>()V

    .line 3363
    iget v6, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseVersion:I

    iput v6, p5, Lorg/telegram/tgnet/TLRPC$TL_langpack_getDifference;->from_version:I

    .line 3364
    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getBaseLangCode()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p5, Lorg/telegram/tgnet/TLRPC$TL_langpack_getDifference;->lang_code:Ljava/lang/String;

    .line 3365
    iput-object v3, p5, Lorg/telegram/tgnet/TLRPC$TL_langpack_getDifference;->lang_pack:Ljava/lang/String;

    .line 3366
    aget v6, v2, v0

    add-int/2addr v6, v1

    aput v6, v2, v0

    .line 3367
    invoke-static {p4}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    new-instance v7, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0, p1, p4, v4}, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$LocaleInfo;ILjava/lang/Runnable;)V

    invoke-virtual {v6, p5, v7, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_0

    .line 3374
    :cond_3
    const-string p5, "applyRemoteLanguage getLangPack of base"

    invoke-static {p5}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3375
    new-instance p5, Lorg/telegram/tgnet/TLRPC$TL_langpack_getLangPack;

    invoke-direct {p5}, Lorg/telegram/tgnet/TLRPC$TL_langpack_getLangPack;-><init>()V

    .line 3376
    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getBaseLangCode()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p5, Lorg/telegram/tgnet/TLRPC$TL_langpack_getLangPack;->lang_code:Ljava/lang/String;

    .line 3377
    aget v6, v2, v0

    add-int/2addr v6, v1

    aput v6, v2, v0

    .line 3378
    invoke-static {p4}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    new-instance v7, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0, p1, p4, v4}, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$LocaleInfo;ILjava/lang/Runnable;)V

    invoke-virtual {v6, p5, v7, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    :cond_4
    :goto_0
    if-eqz p2, :cond_6

    .line 3387
    iget-object p5, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_1

    :cond_5
    return v0

    .line 3388
    :cond_6
    :goto_1
    iget p2, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->version:I

    if-eqz p2, :cond_7

    if-nez p3, :cond_7

    .line 3389
    const-string p2, "applyRemoteLanguage getDifference"

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3390
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_langpack_getDifference;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_langpack_getDifference;-><init>()V

    .line 3391
    iget p3, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->version:I

    iput p3, p2, Lorg/telegram/tgnet/TLRPC$TL_langpack_getDifference;->from_version:I

    .line 3392
    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getLangCode()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$TL_langpack_getDifference;->lang_code:Ljava/lang/String;

    .line 3393
    iput-object v3, p2, Lorg/telegram/tgnet/TLRPC$TL_langpack_getDifference;->lang_pack:Ljava/lang/String;

    .line 3394
    aget p3, v2, v0

    add-int/2addr p3, v1

    aput p3, v2, v0

    .line 3395
    invoke-static {p4}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p3

    new-instance p5, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda3;

    invoke-direct {p5, p0, p1, p4, v4}, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$LocaleInfo;ILjava/lang/Runnable;)V

    invoke-virtual {p3, p2, p5, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result p1

    return p1

    :cond_7
    move p2, v0

    :goto_2
    const/16 p3, 0x10

    if-ge p2, p3, :cond_8

    .line 3404
    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getLangCode()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/tgnet/ConnectionsManager;->setLangCode(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 3406
    :cond_8
    const-string p2, "applyRemoteLanguage getLangPack"

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3407
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_langpack_getLangPack;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_langpack_getLangPack;-><init>()V

    .line 3408
    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getLangCode()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$TL_langpack_getLangPack;->lang_code:Ljava/lang/String;

    .line 3409
    aget p3, v2, v0

    add-int/2addr p3, v1

    aput p3, v2, v0

    .line 3410
    invoke-static {p4}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p3

    new-instance p5, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda4;

    invoke-direct {p5, p0, p1, p4, v4}, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$LocaleInfo;ILjava/lang/Runnable;)V

    invoke-virtual {p3, p2, p5, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result p1

    return p1

    :cond_9
    :goto_3
    return v0
.end method

.method public static bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5

    .line 1609
    instance-of v0, p0, Landroid/text/Spannable;

    const/16 v1, 0x21

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1610
    move-object v0, p0

    check-cast v0, Landroid/text/Spannable;

    new-instance v3, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-interface {v0, v3, v2, v4, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-object p0

    .line 1613
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1614
    new-instance v3, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;
    .locals 1

    if-eqz p2, :cond_0

    .line 2762
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object p2, p3

    .line 2767
    :cond_1
    :try_start_0
    invoke-static {p2, p1}, Lorg/telegram/messenger/time/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 2770
    :catch_0
    invoke-static {p3, p1}, Lorg/telegram/messenger/time/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object p1

    return-object p1
.end method

.method public static ensureImperialSystemInit()V
    .locals 4

    .line 4282
    sget-object v0, Lorg/telegram/messenger/LocaleController;->useImperialSystemType:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 4285
    :cond_0
    sget v0, Lorg/telegram/messenger/SharedConfig;->distanceSystemType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_4

    .line 4287
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_3

    .line 4289
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 4290
    const-string v3, "US"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "GB"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "MM"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "LR"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/LocaleController;->useImperialSystemType:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v0

    .line 4293
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v1, Lorg/telegram/messenger/LocaleController;->useImperialSystemType:Ljava/lang/Boolean;

    .line 4294
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void

    :cond_4
    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    .line 4297
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/LocaleController;->useImperialSystemType:Ljava/lang/Boolean;

    return-void
.end method

.method private escapeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3110
    const-string v0, "[CDATA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 3113
    :cond_0
    const-string v0, "<"

    const-string v1, "&lt;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ">"

    const-string v1, "&gt;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "& "

    const-string v1, "&amp; "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static fixNumbers(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 8

    .line 1852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1853
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_5

    .line 1854
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_0

    const/16 v4, 0x39

    if-le v3, v4, :cond_4

    :cond_0
    const/16 v4, 0x2e

    if-eq v3, v4, :cond_4

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_1

    goto :goto_4

    :cond_1
    move v4, v1

    .line 1858
    :goto_1
    sget-object v5, Lorg/telegram/messenger/LocaleController;->otherNumbers:[[C

    array-length v5, v5

    if-ge v4, v5, :cond_4

    move v5, v1

    .line 1859
    :goto_2
    sget-object v6, Lorg/telegram/messenger/LocaleController;->otherNumbers:[[C

    aget-object v6, v6, v4

    array-length v7, v6

    if-ge v5, v7, :cond_3

    .line 1860
    aget-char v6, v6, v5

    if-ne v3, v6, :cond_2

    .line 1861
    sget-object v4, Lorg/telegram/messenger/LocaleController;->defaultNumbers:[C

    aget-char v4, v4, v5

    invoke-virtual {v0, v2, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1862
    sget-object v4, Lorg/telegram/messenger/LocaleController;->otherNumbers:[[C

    array-length v4, v4

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1868
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatCallDuration(I)Ljava/lang/String;
    .locals 7

    .line 2125
    const-string v0, "Minutes"

    const/16 v1, 0x3c

    const/4 v2, 0x0

    const/16 v3, 0xe10

    if-le p0, v3, :cond_1

    .line 2126
    div-int/lit16 v4, p0, 0xe10

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "Hours"

    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2127
    rem-int/2addr p0, v3

    div-int/2addr p0, v1

    if-lez p0, :cond_0

    .line 2129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v4

    :cond_1
    if-le p0, v1, :cond_2

    .line 2133
    div-int/2addr p0, v1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2135
    :cond_2
    const-string v0, "Seconds"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDate(J)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 2256
    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatDate(JZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDate(JZ)Ljava/lang/String;
    .locals 5

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    .line 2261
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    .line 2262
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    .line 2263
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 2264
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2265
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 2266
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v2, :cond_1

    if-ne v4, v0, :cond_1

    if-eqz p2, :cond_0

    .line 2270
    sget p0, Lorg/telegram/messenger/R$string;->ShortToday:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2272
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object p2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/2addr v1, v3

    if-ne v1, v2, :cond_2

    if-ne v4, v0, :cond_2

    .line 2274
    const-string p0, "Yesterday"

    sget p1, Lorg/telegram/messenger/R$string;->Yesterday:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2275
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide v2, 0x757b12c00L

    cmp-long p2, v0, v2

    if-gez p2, :cond_3

    .line 2276
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/LocaleController;->getFormatterDayMonth()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object p2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2278
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/LocaleController;->getFormatterYear()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object p2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2281
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2283
    const-string p0, "LOC_ERR: formatDate"

    return-object p0
.end method

.method public static formatDateAudio(JZ)Ljava/lang/String;
    .locals 8

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    .line 2289
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    .line 2290
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    .line 2291
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 2292
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2293
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 2294
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v5, 0x0

    if-ne v1, v2, :cond_1

    if-ne v4, v0, :cond_1

    if-eqz p2, :cond_0

    .line 2298
    sget p2, Lorg/telegram/messenger/R$string;->TodayAtFormatted:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    aput-object p0, p1, v5

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2300
    :cond_0
    sget p2, Lorg/telegram/messenger/R$string;->TodayAtFormattedWithToday:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    aput-object p0, p1, v5

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/2addr v1, v3

    if-ne v1, v2, :cond_2

    if-ne v4, v0, :cond_2

    .line 2303
    sget p2, Lorg/telegram/messenger/R$string;->YesterdayAtFormatted:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    aput-object p0, p1, v5

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2304
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide v6, 0x757b12c00L

    cmp-long p2, v0, v6

    const/4 v0, 0x2

    if-gez p2, :cond_3

    .line 2305
    sget p2, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController;->getFormatterDayMonth()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    aput-object v1, p1, v5

    aput-object p0, p1, v3

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2307
    :cond_3
    sget p2, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController;->getFormatterYear()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    aput-object v1, p1, v5

    aput-object p0, p1, v3

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2310
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2312
    const-string p0, "LOC_ERR"

    return-object p0
.end method

.method public static formatDateCallLog(J)Ljava/lang/String;
    .locals 8

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    .line 2568
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    .line 2569
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    .line 2570
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 2571
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2572
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 2573
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v2, :cond_0

    if-ne v4, v0, :cond_0

    .line 2576
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/2addr v1, v3

    const/4 v5, 0x0

    if-ne v1, v2, :cond_1

    if-ne v4, v0, :cond_1

    .line 2578
    sget v0, Lorg/telegram/messenger/R$string;->YesterdayAtFormatted:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    aput-object p0, p1, v5

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2579
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide v6, 0x757b12c00L

    cmp-long v0, v0, v6

    const/4 v1, 0x2

    if-gez v0, :cond_2

    .line 2580
    sget v0, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController;->getChatDateShort()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v4

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object v2, p1, v5

    aput-object p0, p1, v3

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2582
    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController;->getChatFullDate()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v4

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object v2, p1, v5

    aput-object p0, p1, v3

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2585
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2587
    const-string p0, "LOC_ERR"

    return-object p0
.end method

.method public static formatDateChat(J)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 2199
    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatDateChat(JZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDateChat(JZ)Ljava/lang/String;
    .locals 6

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    .line 2206
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2207
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2209
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    .line 2211
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x6

    if-ne v3, v4, :cond_0

    .line 2212
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 2213
    sget p0, Lorg/telegram/messenger/R$string;->SearchTipToday:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v3, -0x1

    .line 2216
    invoke-virtual {v1, v5, v3}, Ljava/util/Calendar;->add(II)V

    .line 2217
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 2218
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 2219
    sget p0, Lorg/telegram/messenger/R$string;->SearchTipYesterday:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2222
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eqz p2, :cond_2

    .line 2223
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-eq v1, v0, :cond_3

    :cond_2
    if-nez p2, :cond_4

    .line 2224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide v2, 0x757b12c00L

    cmp-long p2, v0, v2

    if-gez p2, :cond_4

    .line 2225
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/LocaleController;->getChatDate()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2227
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/LocaleController;->getChatFullDate()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2229
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2231
    const-string p0, "LOC_ERR: formatDateChat"

    return-object p0
.end method

.method public static formatDateForBan(J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    .line 2932
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 2933
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 2934
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2935
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v2, v0, :cond_0

    .line 2938
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController;->getFormatterBannedUntilThisYear()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2940
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController;->getFormatterBannedUntil()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2943
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2945
    const-string p0, "LOC_ERR"

    return-object p0
.end method

.method public static formatDateOnline(J[Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 2702
    invoke-static {p0, p1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatDateOnline(J[Z[Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDateOnline(J[Z[Z)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x1

    if-eqz p3, :cond_1

    .line 2707
    :try_start_0
    sget-boolean p3, Lcom/exteragram/messenger/ExteraConfig;->relativeLastSeen:Z

    if-eqz p3, :cond_1

    .line 2708
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v1

    sub-long/2addr v4, p0

    const-wide/16 v6, 0x0

    cmp-long p3, v4, v6

    if-gez p3, :cond_0

    move-wide v4, v6

    :cond_0
    const-wide/32 v6, 0x15180

    cmp-long p3, v4, v6

    if-gez p3, :cond_1

    .line 2713
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatRelativeDate(J)Ljava/lang/String;

    move-result-object p0

    .line 2714
    sget p1, Lorg/telegram/messenger/R$string;->LastSeenDateFormatted:I

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p0, p2, v0

    invoke-static {p1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    mul-long/2addr p0, v1

    .line 2719
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    const/4 v1, 0x6

    .line 2720
    invoke-virtual {p3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 2721
    invoke-virtual {p3, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xb

    .line 2722
    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 2723
    invoke-virtual {p3, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2724
    invoke-virtual {p3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 2725
    invoke-virtual {p3, v3}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 2726
    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    move-result p3

    if-ne v7, v2, :cond_2

    if-ne v4, v8, :cond_2

    .line 2729
    sget p2, Lorg/telegram/messenger/R$string;->LastSeenFormatted:I

    const-string p3, "TodayAtFormatted"

    sget v1, Lorg/telegram/messenger/R$string;->TodayAtFormatted:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    aput-object p0, p1, v0

    invoke-static {p3, v1, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    aput-object p0, p1, v0

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/2addr v7, v3

    if-ne v7, v2, :cond_5

    if-ne v4, v8, :cond_5

    if-eqz p2, :cond_4

    .line 2740
    aput-boolean v3, p2, v0

    if-gt v6, v1, :cond_3

    const/16 p2, 0x12

    if-le p3, p2, :cond_3

    .line 2741
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->is24HourFormat:Z

    if-eqz p2, :cond_3

    .line 2742
    sget p2, Lorg/telegram/messenger/R$string;->LastSeenFormatted:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object p3

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p3, v1}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    aput-object p0, p1, v0

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2744
    :cond_3
    sget p2, Lorg/telegram/messenger/R$string;->YesterdayAtFormatted:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object p3

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p3, v1}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    aput-object p0, p1, v0

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2746
    :cond_4
    sget p2, Lorg/telegram/messenger/R$string;->LastSeenFormatted:I

    const-string p3, "YesterdayAtFormatted"

    sget v1, Lorg/telegram/messenger/R$string;->YesterdayAtFormatted:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    aput-object p0, p1, v0

    invoke-static {p3, v1, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    aput-object p0, p1, v0

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2748
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, p0

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide v1, 0x757b12c00L

    cmp-long p2, p2, v1

    const/4 p3, 0x2

    const-string v1, "LastSeenDateFormatted"

    const-string v2, "formatDateAtTime"

    if-gez p2, :cond_6

    .line 2749
    :try_start_1
    sget p2, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/LocaleController;->getFormatterDayMonth()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, p3, [Ljava/lang/Object;

    aput-object v4, p1, v0

    aput-object p0, p1, v3

    invoke-static {v2, p2, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2750
    sget p1, Lorg/telegram/messenger/R$string;->LastSeenDateFormatted:I

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p0, p2, v0

    invoke-static {v1, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2752
    :cond_6
    sget p2, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/LocaleController;->getFormatterYear()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, p3, [Ljava/lang/Object;

    aput-object v4, p1, v0

    aput-object p0, p1, v3

    invoke-static {v2, p2, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2753
    sget p1, Lorg/telegram/messenger/R$string;->LastSeenDateFormatted:I

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p0, p2, v0

    invoke-static {v1, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2756
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2758
    const-string p0, "LOC_ERR"

    return-object p0
.end method

.method public static formatDateTime(JZ)Ljava/lang/String;
    .locals 8

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    .line 2616
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    .line 2617
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    .line 2618
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 2619
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2620
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 2621
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v5, 0x0

    if-ne v1, v2, :cond_0

    if-ne v4, v0, :cond_0

    if-eqz p2, :cond_0

    .line 2624
    sget p2, Lorg/telegram/messenger/R$string;->TodayAtFormattedWithToday:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    aput-object p0, p1, v5

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/2addr v1, v3

    if-ne v1, v2, :cond_1

    if-ne v4, v0, :cond_1

    if-eqz p2, :cond_1

    .line 2626
    sget p2, Lorg/telegram/messenger/R$string;->YesterdayAtFormatted:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    aput-object p0, p1, v5

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2627
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide v6, 0x757b12c00L

    cmp-long p2, v0, v6

    const/4 v0, 0x2

    if-gez p2, :cond_2

    .line 2628
    sget p2, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController;->getChatDate()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    aput-object v1, p1, v5

    aput-object p0, p1, v3

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2630
    :cond_2
    sget p2, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController;->getChatFullDate()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    aput-object v1, p1, v5

    aput-object p0, p1, v3

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2633
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2635
    const-string p0, "LOC_ERR"

    return-object p0
.end method

.method public static formatDistance(FI)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 4302
    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatDistance(FILjava/lang/Boolean;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDistance(FILjava/lang/Boolean;)Ljava/lang/String;
    .locals 8

    .line 4325
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->ensureImperialSystemInit()V

    const/4 v0, 0x0

    .line 4326
    const-string v1, "%.2f"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x447a0000    # 1000.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const-string v6, "%d"

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    if-nez p2, :cond_8

    sget-object p2, Lorg/telegram/messenger/LocaleController;->useImperialSystemType:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_8

    :cond_1
    const p2, 0x4051f948

    mul-float/2addr p0, p2

    cmpg-float p2, p0, v4

    if-gez p2, :cond_4

    if-eqz p1, :cond_3

    if-eq p1, v3, :cond_2

    .line 4337
    sget p1, Lorg/telegram/messenger/R$string;->FootsShort:I

    invoke-static {v5, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p0, p2, v0

    invoke-static {v6, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p0, p2, v0

    const-string p0, "FootsShort"

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4334
    :cond_2
    sget p1, Lorg/telegram/messenger/R$string;->FootsFromYou:I

    invoke-static {v5, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p0, p2, v0

    invoke-static {v6, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p0, p2, v0

    const-string p0, "FootsFromYou"

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4332
    :cond_3
    sget p1, Lorg/telegram/messenger/R$string;->FootsAway:I

    invoke-static {v5, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p0, p2, v0

    invoke-static {v6, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p0, p2, v0

    const-string p0, "FootsAway"

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const/high16 p2, 0x45a50000    # 5280.0f

    rem-float v4, p0, p2

    cmpl-float v2, v4, v2

    if-nez v2, :cond_5

    div-float/2addr p0, p2

    float-to-int p0, p0

    .line 4342
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p0, p2, v0

    invoke-static {v6, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_5
    div-float/2addr p0, p2

    .line 4344
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p0, p2, v0

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-eqz p1, :cond_7

    if-eq p1, v3, :cond_6

    .line 4353
    sget p1, Lorg/telegram/messenger/R$string;->MilesShort:I

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p0, p2, v0

    const-string p0, "MilesShort"

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4350
    :cond_6
    sget p1, Lorg/telegram/messenger/R$string;->MilesFromYou:I

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p0, p2, v0

    const-string p0, "MilesFromYou"

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4348
    :cond_7
    sget p1, Lorg/telegram/messenger/R$string;->MilesAway:I

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p0, p2, v0

    const-string p0, "MilesAway"

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    cmpg-float p2, p0, v4

    if-gez p2, :cond_b

    if-eqz p1, :cond_a

    if-eq p1, v3, :cond_9

    .line 4366
    sget p1, Lorg/telegram/messenger/R$string;->MetersShort:I

    invoke-static {v5, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p0, p2, v0

    invoke-static {v6, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p0, p2, v0

    const-string p0, "MetersShort"

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4363
    :cond_9
    sget p1, Lorg/telegram/messenger/R$string;->MetersFromYou2:I

    invoke-static {v5, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p0, p2, v0

    invoke-static {v6, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p0, p2, v0

    const-string p0, "MetersFromYou2"

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4361
    :cond_a
    sget p1, Lorg/telegram/messenger/R$string;->MetersAway2:I

    invoke-static {v5, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p0, p2, v0

    invoke-static {v6, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p0, p2, v0

    const-string p0, "MetersAway2"

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    rem-float p2, p0, v4

    cmpl-float p2, p2, v2

    if-nez p2, :cond_c

    div-float/2addr p0, v4

    float-to-int p0, p0

    .line 4371
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p0, p2, v0

    invoke-static {v6, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_c
    div-float/2addr p0, v4

    .line 4373
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p0, p2, v0

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    if-eqz p1, :cond_e

    if-eq p1, v3, :cond_d

    .line 4382
    sget p1, Lorg/telegram/messenger/R$string;->KMetersShort:I

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p0, p2, v0

    const-string p0, "KMetersShort"

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4379
    :cond_d
    sget p1, Lorg/telegram/messenger/R$string;->KMetersFromYou2:I

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p0, p2, v0

    const-string p0, "KMetersFromYou2"

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4377
    :cond_e
    sget p1, Lorg/telegram/messenger/R$string;->KMetersAway2:I

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p0, p2, v0

    const-string p0, "KMetersAway2"

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDuration(I)Ljava/lang/String;
    .locals 7

    .line 2099
    const-string v0, "Seconds"

    const/4 v1, 0x0

    if-gtz p0, :cond_0

    .line 2100
    new-array p0, v1, [Ljava/lang/Object;

    invoke-static {v0, v1, p0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2102
    :cond_0
    div-int/lit16 v2, p0, 0xe10

    .line 2103
    div-int/lit8 v3, p0, 0x3c

    rem-int/lit8 v3, v3, 0x3c

    .line 2104
    rem-int/lit8 p0, p0, 0x3c

    .line 2105
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v2, :cond_1

    .line 2107
    const-string v5, "Hours"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v5, v2, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v2, 0x20

    if-lez v3, :cond_3

    .line 2110
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 2111
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2113
    :cond_2
    const-string v5, "Minutes"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v5, v3, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    if-lez p0, :cond_5

    .line 2116
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 2117
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2119
    :cond_4
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2121
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatEntityFormattedDate(Lorg/telegram/tgnet/TLRPC$TL_messageEntityFormattedDate;)Ljava/lang/String;
    .locals 4

    .line 4449
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatEntityFormattedDate(Lorg/telegram/tgnet/TLRPC$TL_messageEntityFormattedDate;JLjava/util/Locale;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static formatEntityFormattedDate(Lorg/telegram/tgnet/TLRPC$TL_messageEntityFormattedDate;JLjava/util/Locale;Z)Ljava/lang/String;
    .locals 4

    .line 4462
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityFormattedDate;->date:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 4464
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityFormattedDate;->relative:Z

    if-eqz v2, :cond_0

    if-nez p4, :cond_0

    .line 4465
    invoke-static {v0, v1, p1, p2, p3}, Lorg/telegram/messenger/LocaleController;->formatEntityFormattedDateRelative(JJLjava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4471
    :cond_0
    iget p1, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->flags:I

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-nez p1, :cond_1

    move p1, p3

    goto :goto_0

    :cond_1
    move p1, p2

    :goto_0
    or-int/2addr p1, p4

    .line 4473
    iget-boolean p4, p0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityFormattedDate;->day_of_week:Z

    const-string v2, ""

    if-eqz p4, :cond_2

    .line 4474
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p4

    invoke-virtual {p4}, Lorg/telegram/messenger/LocaleController;->getFormatterWeekLong()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object p4

    invoke-virtual {p4, v0, v1}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object p4

    goto :goto_1

    :cond_2
    move-object p4, v2

    :goto_1
    if-eqz p1, :cond_3

    .line 4477
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/LocaleController;->getFormatterGiveawayCard()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 4478
    :cond_3
    iget-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityFormattedDate;->long_date:Z

    if-eqz v3, :cond_4

    .line 4479
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/LocaleController;->getChatFullDate()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 4480
    :cond_4
    iget-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityFormattedDate;->short_date:Z

    if-eqz v3, :cond_5

    .line 4481
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/LocaleController;->getFormatterYear()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_5
    move-object v3, v2

    :goto_2
    if-eqz p1, :cond_7

    .line 4485
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 4486
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 p1, 0xd

    .line 4487
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-eqz p0, :cond_6

    .line 4490
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/LocaleController;->getFormatterDayWithSeconds()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    :goto_3
    move-object v2, p0

    goto :goto_4

    .line 4491
    :cond_6
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 4492
    :cond_7
    iget-boolean p1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityFormattedDate;->long_time:Z

    if-eqz p1, :cond_8

    .line 4493
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/LocaleController;->getFormatterDayWithSeconds()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 4494
    :cond_8
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityFormattedDate;->short_time:Z

    if-eqz p0, :cond_9

    .line 4495
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    .line 4498
    :cond_9
    :goto_4
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    .line 4499
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    .line 4500
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz p1, :cond_a

    if-eqz v0, :cond_a

    return-object p4

    :cond_a
    const/4 v1, 0x2

    if-nez p1, :cond_b

    if-nez v0, :cond_b

    .line 4508
    sget p1, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v3, v0, p2

    aput-object v2, v0, p3

    invoke-static {p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_b
    if-nez p1, :cond_c

    goto :goto_5

    :cond_c
    move-object v3, v2

    :goto_5
    move-object p1, v3

    :goto_6
    if-nez p0, :cond_d

    .line 4513
    sget p0, Lorg/telegram/messenger/R$string;->RelativeDateFormatterWeek2:I

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p4, v0, p2

    aput-object p1, v0, p3

    invoke-static {p0, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    return-object p1
.end method

.method public static formatEntityFormattedDate(Lorg/telegram/tgnet/TLRPC$TL_messageEntityFormattedDate;Z)Ljava/lang/String;
    .locals 3

    .line 4453
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {p0, v0, v1, v2, p1}, Lorg/telegram/messenger/LocaleController;->formatEntityFormattedDate(Lorg/telegram/tgnet/TLRPC$TL_messageEntityFormattedDate;JLjava/util/Locale;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static formatEntityFormattedDateRelative(JJLjava/util/Locale;)Ljava/lang/String;
    .locals 7

    sub-long v0, p0, p2

    .line 4522
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 4523
    invoke-static {v0, v1, p4}, Lorg/telegram/messenger/LocaleController$RelativeIcu;->format(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 v4, 0x3e8

    const/high16 v6, 0x40000

    move-wide v0, p0

    move-wide v2, p2

    .line 4528
    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object p0

    .line 4533
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatGroupMemberJoined(J)Ljava/lang/String;
    .locals 7

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    .line 3035
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide v2, 0x757b12c00L

    cmp-long v0, v0, v2

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v0, :cond_0

    .line 3036
    sget v0, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/LocaleController;->getFormatterDayMonth()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object v4, p1, v3

    aput-object p0, p1, v2

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3038
    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/LocaleController;->getFormatterYear()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object v4, p1, v3

    aput-object p0, p1, v2

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 3040
    :goto_0
    sget p1, Lorg/telegram/messenger/R$string;->GroupMemberJoined:I

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v3

    invoke-static {p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3042
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3044
    const-string p0, "LOC_ERR"

    return-object p0
.end method

.method public static formatImportedDate(J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    .line 3050
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 3051
    const-string p0, "%1$s, %2$s"

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController;->getFormatterYear()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object v0, v1, p1

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3053
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3055
    const-string p0, "LOC_ERR"

    return-object p0
.end method

.method public static formatJoined(J)Ljava/lang/String;
    .locals 7

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    .line 3019
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide v2, 0x757b12c00L

    cmp-long v0, v0, v2

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v0, :cond_0

    .line 3020
    sget v0, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/LocaleController;->getFormatterDayMonth()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object v4, p1, v3

    aput-object p0, p1, v2

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3022
    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/LocaleController;->getFormatterYear()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object v4, p1, v3

    aput-object p0, p1, v2

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 3024
    :goto_0
    sget p1, Lorg/telegram/messenger/R$string;->ChannelOtherSubscriberJoined:I

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v3

    invoke-static {p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3026
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3028
    const-string p0, "LOC_ERR"

    return-object p0
.end method

.method public static formatLocationLeftTime(I)Ljava/lang/String;
    .locals 5

    .line 2687
    div-int/lit8 v0, p0, 0x3c

    div-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v1, v0, 0xe10

    sub-int/2addr p0, v1

    .line 2689
    div-int/lit8 v1, p0, 0x3c

    mul-int/lit8 v2, v1, 0x3c

    sub-int/2addr p0, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1e

    if-eqz v0, :cond_1

    if-le v1, v4, :cond_0

    move p0, v3

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    add-int/2addr v0, p0

    .line 2692
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p0, v0, v2

    const-string p0, "%dh"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2693
    :cond_1
    const-string v0, "%d"

    if-eqz v1, :cond_3

    if-le p0, v4, :cond_2

    move p0, v3

    goto :goto_1

    :cond_2
    move p0, v2

    :goto_1
    add-int/2addr v1, p0

    .line 2694
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2696
    :cond_3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatLocationUpdateDate(J)Ljava/lang/String;
    .locals 8

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    .line 2655
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x6

    .line 2656
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x1

    .line 2657
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 2658
    invoke-virtual {v2, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2659
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 2660
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v7, 0x0

    if-ne v3, v4, :cond_2

    if-ne v6, v2, :cond_2

    .line 2663
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    int-to-long v2, v2

    div-long v0, p0, v0

    sub-long/2addr v2, v0

    long-to-int v0, v2

    const/16 v1, 0x3c

    div-int/2addr v0, v1

    if-ge v0, v5, :cond_0

    .line 2665
    sget p0, Lorg/telegram/messenger/R$string;->LocationUpdatedJustNow:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-ge v0, v1, :cond_1

    .line 2667
    const-string p0, "UpdatedMinutes"

    new-array p1, v7, [Ljava/lang/Object;

    invoke-static {p0, v0, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2669
    :cond_1
    sget v0, Lorg/telegram/messenger/R$string;->LocationUpdatedFormatted:I

    const-string v1, "TodayAtFormatted"

    sget v2, Lorg/telegram/messenger/R$string;->TodayAtFormatted:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v5, [Ljava/lang/Object;

    aput-object p0, p1, v7

    invoke-static {v1, v2, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v5, [Ljava/lang/Object;

    aput-object p0, p1, v7

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/2addr v3, v5

    if-ne v3, v4, :cond_3

    if-ne v6, v2, :cond_3

    .line 2671
    sget v0, Lorg/telegram/messenger/R$string;->LocationUpdatedFormatted:I

    const-string v1, "YesterdayAtFormatted"

    sget v2, Lorg/telegram/messenger/R$string;->YesterdayAtFormatted:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v5, [Ljava/lang/Object;

    aput-object p0, p1, v7

    invoke-static {v1, v2, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v5, [Ljava/lang/Object;

    aput-object p0, p1, v7

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2672
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide v2, 0x757b12c00L

    cmp-long v0, v0, v2

    const/4 v1, 0x2

    if-gez v0, :cond_4

    .line 2673
    sget v0, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController;->getFormatterDayMonth()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object v2, p1, v7

    aput-object p0, p1, v5

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2674
    sget p1, Lorg/telegram/messenger/R$string;->LocationUpdatedFormatted:I

    new-array v0, v5, [Ljava/lang/Object;

    aput-object p0, v0, v7

    invoke-static {p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2676
    :cond_4
    sget v0, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController;->getFormatterYear()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object v2, p1, v7

    aput-object p0, p1, v5

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2677
    sget p1, Lorg/telegram/messenger/R$string;->LocationUpdatedFormatted:I

    new-array v0, v5, [Ljava/lang/Object;

    aput-object p0, v0, v7

    invoke-static {p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2680
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2682
    const-string p0, "LOC_ERR"

    return-object p0
.end method

.method public static formatNumber(JC)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 1667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-long p0, p0

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1670
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, p1, v1

    const-string p0, "%d"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1671
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x3

    :goto_0
    if-lez p0, :cond_1

    .line 1672
    invoke-virtual {v0, p0, p2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, -0x3

    goto :goto_0

    .line 1674
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatNumberWithMillion(JC)Ljava/lang/String;
    .locals 2

    const-wide/32 v0, 0xf4240

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 1679
    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    long-to-int p0, p0

    const p1, 0xf4240

    .line 1682
    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs formatPluralSpannable(Ljava/lang/String;I[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7

    if-eqz p0, :cond_1

    .line 1570
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 1573
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/LocaleController$PluralRules;->quantityForNumber(I)I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/LocaleController;->stringForQuantity(I)Ljava/lang/String;

    move-result-object v0

    .line 1574
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1575
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "string"

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1576
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_other"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v3, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1577
    array-length v3, p2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [Ljava/lang/Object;

    .line 1578
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v6, 0x0

    aput-object p1, v3, v6

    .line 1579
    array-length p1, p2

    invoke-static {p2, v6, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1580
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatSpannable(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1571
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "LOC_ERR:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    if-eqz p0, :cond_1

    .line 1556
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 1559
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/LocaleController$PluralRules;->quantityForNumber(I)I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/LocaleController;->stringForQuantity(I)Ljava/lang/String;

    move-result-object v0

    .line 1560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1561
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "string"

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1562
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_other"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v3, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1563
    array-length v3, p2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [Ljava/lang/Object;

    .line 1564
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v6, 0x0

    aput-object p1, v3, v6

    .line 1565
    array-length p1, p2

    invoke-static {p2, v6, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1566
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1557
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "LOC_ERR:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x2c

    .line 1588
    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatPluralStringComma(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1605
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;IC[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs formatPluralStringComma(Ljava/lang/String;IC[Ljava/lang/Object;)Ljava/lang/String;
    .locals 10

    .line 1621
    const-string v0, "%1$s"

    const-string v1, "%d"

    if-eqz p0, :cond_b

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    if-nez v2, :cond_0

    goto/16 :goto_5

    .line 1624
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    invoke-virtual {v3, p1}, Lorg/telegram/messenger/LocaleController$PluralRules;->quantityForNumber(I)I

    move-result v3

    invoke-direct {v2, v3}, Lorg/telegram/messenger/LocaleController;->stringForQuantity(I)Ljava/lang/String;

    move-result-object v2

    .line 1625
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1626
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1627
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x3

    :goto_0
    if-lez p1, :cond_1

    .line 1628
    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, -0x3

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_6

    .line 1631
    :cond_1
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->USE_CLOUD_STRINGS:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/LocaleController;->localeValues:Ljava/util/HashMap;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    move-object p1, p2

    .line 1632
    :goto_1
    const-string v5, "_other"

    if-nez p1, :cond_4

    .line 1633
    :try_start_1
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->USE_CLOUD_STRINGS:Z

    if-eqz p1, :cond_3

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/LocaleController;->localeValues:Ljava/util/HashMap;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    move-object p1, p2

    .line 1635
    :cond_4
    const-string/jumbo p2, "string"

    if-nez p1, :cond_5

    .line 1636
    :try_start_2
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v7

    invoke-direct {v7}, Lorg/telegram/messenger/LocaleController;->getLocalizedContext()Landroid/content/Context;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1638
    :try_start_3
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v2, p2, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1639
    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_5
    if-nez p1, :cond_6

    .line 1643
    :try_start_4
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p1

    invoke-direct {p1}, Lorg/telegram/messenger/LocaleController;->getLocalizedContext()Landroid/content/Context;

    move-result-object p1

    .line 1644
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, p2, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 1645
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1647
    :cond_6
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1648
    const-string p2, "%1$d"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    if-nez p3, :cond_7

    move p2, v6

    goto :goto_2

    .line 1650
    :cond_7
    array-length p2, p3

    :goto_2
    add-int/2addr p2, v4

    new-array v0, p2, [Ljava/lang/Object;

    :goto_3
    if-ge v6, p2, :cond_9

    if-nez v6, :cond_8

    move-object v1, v3

    goto :goto_4

    :cond_8
    add-int/lit8 v1, v6, -0x1

    .line 1652
    aget-object v1, p3, v1

    :goto_4
    aput-object v1, v0, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1654
    :cond_9
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    if-eqz p2, :cond_a

    .line 1655
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    invoke-static {p2, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1657
    :cond_a
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1622
    :cond_b
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "LOC_ERR:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object p0

    .line 1660
    :goto_6
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1661
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "LOC_ERR: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs formatPluralStringComma(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x2c

    .line 1600
    invoke-static {p0, p1, v0, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;IC[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatPluralStringSpaced(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x20

    .line 1592
    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs formatPluralStringSpaced(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x20

    .line 1596
    invoke-static {p0, p1, v0, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;IC[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatPmEditedDate(J)Ljava/lang/String;
    .locals 8

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    .line 2393
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    .line 2394
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    .line 2395
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 2396
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2397
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 2398
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v5, 0x0

    if-ne v1, v2, :cond_0

    if-ne v4, v0, :cond_0

    .line 2401
    sget v0, Lorg/telegram/messenger/R$string;->PmEditedTodayAt:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    aput-object p0, p1, v5

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/2addr v1, v3

    if-ne v1, v2, :cond_1

    if-ne v4, v0, :cond_1

    .line 2403
    sget v0, Lorg/telegram/messenger/R$string;->PmEditedYesterdayAt:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    aput-object p0, p1, v5

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2404
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide v6, 0x757b12c00L

    cmp-long v0, v0, v6

    const/4 v1, 0x2

    if-gez v0, :cond_2

    .line 2405
    sget v0, Lorg/telegram/messenger/R$string;->PmEditedDateTimeAt:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController;->getFormatterDayMonth()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v4

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object v2, p1, v5

    aput-object p0, p1, v3

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2407
    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->PmEditedDateTimeAt:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController;->getFormatterYear()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v4

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object v2, p1, v5

    aput-object p0, p1, v3

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2410
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2412
    const-string p0, "LOC_ERR"

    return-object p0
.end method

.method public static formatPmFwdDate(J)Ljava/lang/String;
    .locals 8

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    .line 2418
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    .line 2419
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    .line 2420
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 2421
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2422
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 2423
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v5, 0x0

    if-ne v1, v2, :cond_0

    if-ne v4, v0, :cond_0

    .line 2426
    sget v0, Lorg/telegram/messenger/R$string;->PmFwdOriginalTodayAt:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    aput-object p0, p1, v5

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/2addr v1, v3

    if-ne v1, v2, :cond_1

    if-ne v4, v0, :cond_1

    .line 2428
    sget v0, Lorg/telegram/messenger/R$string;->PmFwdOriginalYesterdayAt:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    aput-object p0, p1, v5

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2429
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide v6, 0x757b12c00L

    cmp-long v0, v0, v6

    const/4 v1, 0x2

    if-gez v0, :cond_2

    .line 2430
    sget v0, Lorg/telegram/messenger/R$string;->PmFwdOriginalDateTimeAt:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController;->getFormatterDayMonth()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v4

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object v2, p1, v5

    aput-object p0, p1, v3

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2432
    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->PmFwdOriginalDateTimeAt:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController;->getFormatterYear()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v4

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object v2, p1, v5

    aput-object p0, p1, v3

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2435
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2437
    const-string p0, "LOC_ERR"

    return-object p0
.end method

.method public static formatPmSeenDate(J)Ljava/lang/String;
    .locals 8

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    .line 2343
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    .line 2344
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    .line 2345
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 2346
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2347
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 2348
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v5, 0x0

    if-ne v1, v2, :cond_0

    if-ne v4, v0, :cond_0

    .line 2351
    sget v0, Lorg/telegram/messenger/R$string;->PmReadTodayAt:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    aput-object p0, p1, v5

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/2addr v1, v3

    if-ne v1, v2, :cond_1

    if-ne v4, v0, :cond_1

    .line 2353
    sget v0, Lorg/telegram/messenger/R$string;->PmReadYesterdayAt:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    aput-object p0, p1, v5

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2354
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide v6, 0x757b12c00L

    cmp-long v0, v0, v6

    const/4 v1, 0x2

    if-gez v0, :cond_2

    .line 2355
    sget v0, Lorg/telegram/messenger/R$string;->PmReadDateTimeAt:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController;->getFormatterDayMonth()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v4

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object v2, p1, v5

    aput-object p0, p1, v3

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2357
    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->PmReadDateTimeAt:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController;->getFormatterYear()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v4

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object v2, p1, v5

    aput-object p0, p1, v3

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2360
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2362
    const-string p0, "LOC_ERR"

    return-object p0
.end method

.method public static formatRelativeDate(J)Ljava/lang/String;
    .locals 11

    const-wide/16 v0, 0x3c

    .line 2520
    :try_start_0
    div-long/2addr p0, v0

    .line 2521
    div-long v0, p0, v0

    const-wide/16 v2, 0x18

    .line 2522
    div-long v2, v0, v2

    const-wide/16 v4, 0x1e

    .line 2523
    div-long v4, v2, v4

    const-wide/16 v6, 0x16d

    .line 2524
    div-long v6, v2, v6

    const-wide/16 v8, 0x1

    cmp-long v10, v6, v8

    if-ltz v10, :cond_1

    if-nez v10, :cond_0

    .line 2528
    sget p0, Lorg/telegram/messenger/R$string;->YearAgo:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2530
    :cond_0
    const-string p0, "YearsAgo"

    long-to-int p1, v6

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    cmp-long v6, v4, v8

    if-ltz v6, :cond_3

    if-nez v6, :cond_2

    .line 2534
    sget p0, Lorg/telegram/messenger/R$string;->MonthAgo:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2536
    :cond_2
    const-string p0, "MonthsAgo"

    long-to-int p1, v4

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    cmp-long v4, v2, v8

    if-ltz v4, :cond_5

    if-nez v4, :cond_4

    .line 2540
    sget p0, Lorg/telegram/messenger/R$string;->DayAgo:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2542
    :cond_4
    const-string p0, "DaysAgo"

    long-to-int p1, v2

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    cmp-long v2, v0, v8

    if-ltz v2, :cond_7

    if-nez v2, :cond_6

    .line 2546
    sget p0, Lorg/telegram/messenger/R$string;->HourAgo:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2548
    :cond_6
    const-string p0, "HoursAgo"

    long-to-int p1, v0

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    cmp-long v0, p0, v8

    if-ltz v0, :cond_9

    if-nez v0, :cond_8

    .line 2552
    sget p0, Lorg/telegram/messenger/R$string;->MinuteAgo:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2554
    :cond_8
    const-string v0, "MinutesAgo"

    long-to-int p0, p0

    invoke-static {v0, p0}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2557
    :cond_9
    sget p0, Lorg/telegram/messenger/R$string;->LessMinuteAgo:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2560
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2562
    const-string p0, "LOC_ERR"

    return-object p0
.end method

.method public static formatSectionDate(J)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 2857
    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatYearMont(JZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatSeenDate(J)Ljava/lang/String;
    .locals 8

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    .line 2318
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    .line 2319
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    .line 2320
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 2321
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2322
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 2323
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v5, 0x0

    if-ne v1, v2, :cond_0

    if-ne v4, v0, :cond_0

    .line 2326
    sget v0, Lorg/telegram/messenger/R$string;->TodayAtFormattedWithToday:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    aput-object p0, p1, v5

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/2addr v1, v3

    if-ne v1, v2, :cond_1

    if-ne v4, v0, :cond_1

    .line 2328
    sget v0, Lorg/telegram/messenger/R$string;->YesterdayAtFormatted:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    aput-object p0, p1, v5

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2329
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide v6, 0x757b12c00L

    cmp-long v0, v0, v6

    const/4 v1, 0x2

    if-gez v0, :cond_2

    .line 2330
    sget v0, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController;->getFormatterDayMonth()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v4

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object v2, p1, v5

    aput-object p0, p1, v3

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2332
    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController;->getFormatterYear()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v4

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object v2, p1, v5

    aput-object p0, p1, v3

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2335
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2337
    const-string p0, "LOC_ERR"

    return-object p0
.end method

.method public static formatShortDate(J)Ljava/lang/String;
    .locals 13

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    .line 2454
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    .line 2455
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    .line 2456
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 2457
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 2458
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2459
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 2460
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-long/2addr v5, p0

    const-wide/32 v7, 0xea60

    cmp-long v9, v5, v7

    if-gez v9, :cond_0

    .line 2463
    sget p0, Lorg/telegram/messenger/R$string;->ShortNow:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/32 v9, 0x36ee80

    cmp-long v11, v5, v9

    const/4 v12, 0x0

    if-gez v11, :cond_1

    .line 2465
    div-long/2addr v5, v7

    long-to-int p0, v5

    .line 2466
    const-string p1, "ShortMinutesAgo"

    new-array v0, v12, [Ljava/lang/Object;

    invoke-static {p1, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-ne v1, v2, :cond_3

    if-ne v4, v0, :cond_3

    const-wide/32 p0, 0x2932e00

    cmp-long p0, v5, p0

    if-gez p0, :cond_2

    .line 2469
    div-long/2addr v5, v9

    long-to-int p0, v5

    .line 2470
    const-string p1, "ShortHoursAgo"

    new-array v0, v12, [Ljava/lang/Object;

    invoke-static {p1, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2472
    :cond_2
    sget p0, Lorg/telegram/messenger/R$string;->ShortToday:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    add-int/2addr v1, v3

    if-ne v1, v2, :cond_4

    if-ne v4, v0, :cond_4

    .line 2475
    sget p0, Lorg/telegram/messenger/R$string;->ShortYesterday:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2476
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide v4, 0x757b12c00L

    cmp-long v0, v0, v4

    if-gez v0, :cond_5

    .line 2477
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController;->getFormatterDayMonth()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2479
    :cond_5
    sget v0, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController;->getFormatterYear()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v1, p1, v12

    aput-object p0, p1, v3

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2482
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2484
    const-string p0, "LOC_ERR"

    return-object p0
.end method

.method public static formatShortDateTime(J)Ljava/lang/String;
    .locals 4

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    .line 2641
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide v2, 0x757b12c00L

    cmp-long v0, v0, v2

    const-string v1, ", "

    if-gez v0, :cond_0

    .line 2642
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController;->getFormatterScheduleDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2644
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController;->getFormatterScheduleYear()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2647
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2649
    const-string p0, "LOC_ERR"

    return-object p0
.end method

.method public static formatShortDuration(I)Ljava/lang/String;
    .locals 8

    .line 2140
    div-int/lit16 v0, p0, 0xe10

    .line 2141
    div-int/lit8 v1, p0, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    .line 2142
    rem-int/lit8 p0, p0, 0x3c

    .line 2143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2144
    const-string v3, "0"

    const-string v4, ""

    const/16 v5, 0xa

    const-string v6, ":"

    if-lez v0, :cond_2

    .line 2145
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_0

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-le v0, v5, :cond_1

    move-object v7, v4

    goto :goto_0

    :cond_1
    move-object v7, v3

    .line 2146
    :goto_0
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2147
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2149
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    if-le v1, v5, :cond_4

    move-object v0, v4

    goto :goto_1

    :cond_4
    move-object v0, v3

    .line 2150
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2151
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2152
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    if-le p0, v5, :cond_6

    move-object v3, v4

    .line 2153
    :cond_6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2154
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2155
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatShortDuration2(I)Ljava/lang/String;
    .locals 6

    .line 2441
    div-int/lit8 v0, p0, 0x3c

    .line 2442
    div-int/lit16 p0, p0, 0xe10

    .line 2444
    const-string v1, "ShortMinutesAgo"

    const/4 v2, 0x0

    if-lez p0, :cond_0

    .line 2445
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ShortHoursAgo"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, p0, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/lit8 v0, v0, 0x3c

    new-array p0, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, p0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2448
    :cond_0
    new-array p0, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, p0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatShortNumber(I[I)Ljava/lang/String;
    .locals 11

    .line 2975
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->disableNumberRounding:Z

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 2976
    new-instance p1, Ljava/lang/StringBuilder;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    const-string p0, "%d"

    invoke-static {v0, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2977
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v1

    :goto_0
    if-lez p0, :cond_0

    const/16 v0, 0x2c

    .line 2978
    invoke-virtual {p1, p0, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, -0x3

    goto :goto_0

    .line 2980
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2982
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v4, v3

    .line 2985
    :goto_1
    div-int/lit16 v5, p0, 0x3e8

    if-lez v5, :cond_2

    .line 2986
    const-string v4, "K"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2987
    rem-int/lit16 p0, p0, 0x3e8

    div-int/lit8 v4, p0, 0x64

    move p0, v5

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_4

    int-to-double v5, p0

    int-to-double v7, v4

    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    div-double/2addr v7, v9

    add-double/2addr v5, v7

    move v7, v3

    .line 2992
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-ge v7, v8, :cond_3

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    double-to-int v5, v5

    .line 2995
    aput v5, p1, v3

    :cond_4
    const/4 p1, 0x2

    if-eqz v4, :cond_6

    .line 2997
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_6

    .line 2998
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-ne v5, p1, :cond_5

    .line 2999
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p0, p1, v3

    aput-object v1, p1, v2

    const-string p0, "%d.%dM"

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3001
    :cond_5
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v3

    aput-object v4, v1, v2

    aput-object v0, v1, p1

    const-string p0, "%d.%d%s"

    invoke-static {v5, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3004
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ne v1, p1, :cond_7

    .line 3005
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v3

    const-string p0, "%dM"

    invoke-static {p1, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3007
    :cond_7
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p0, p1, v3

    aput-object v0, p1, v2

    const-string p0, "%d%s"

    invoke-static {v1, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatSmallDateChat(J)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 2235
    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatSmallDateChat(JZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatSmallDateChat(JZ)Ljava/lang/String;
    .locals 5

    .line 2239
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x1

    .line 2241
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const-wide/16 v3, 0x3e8

    mul-long/2addr p0, v3

    .line 2244
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    if-nez p2, :cond_0

    .line 2245
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    if-ne v2, p2, :cond_0

    .line 2246
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/LocaleController;->getFormatterDayMonth()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2248
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController;->getFormatterDayMonth()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2250
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2252
    const-string p0, "LOC_ERR: formatDateChat"

    return-object p0
.end method

.method public static varargs formatSpannable(I[Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 3

    .line 1737
    sget-object v0, Lorg/telegram/messenger/LocaleController;->resourcesCacheMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1739
    sget-object v0, Lorg/telegram/messenger/LocaleController;->resourcesCacheMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 1741
    :cond_0
    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatSpannable(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static varargs formatSpannable(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1745
    invoke-static {p0, v0, p1, v1, p2}, Lorg/telegram/messenger/LocaleController;->formatSpannable(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static varargs formatSpannable(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 5

    .line 1750
    const-string v0, "%"

    :try_start_0
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->USE_CLOUD_STRINGS:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/LocaleController;->localeValues:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    .line 1752
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->USE_CLOUD_STRINGS:Z

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 1753
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/LocaleController;->localeValues:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    if-nez v1, :cond_3

    if-eqz p2, :cond_2

    .line 1758
    :try_start_1
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p1

    invoke-direct {p1}, Lorg/telegram/messenger/LocaleController;->getLocalizedContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    if-eqz p3, :cond_3

    .line 1762
    :try_start_2
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p1

    invoke-direct {p1}, Lorg/telegram/messenger/LocaleController;->getLocalizedContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    .line 1768
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p1

    invoke-direct {p1}, Lorg/telegram/messenger/LocaleController;->getLocalizedContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1774
    :catch_2
    :cond_3
    :goto_1
    :try_start_3
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    .line 1775
    :cond_4
    :goto_2
    array-length p3, p4

    if-ge p2, p3, :cond_a

    .line 1776
    const-string/jumbo p3, "s"

    .line 1778
    aget-object v1, p4, p2

    instance-of v2, v1, Ljava/lang/CharSequence;

    if-eqz v2, :cond_5

    .line 1779
    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_4

    .line 1780
    :cond_5
    instance-of v2, v1, Ljava/lang/Integer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v3, "d"

    const-string v4, ""

    if-eqz v2, :cond_6

    .line 1782
    :try_start_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p4, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    move-object p3, v3

    goto :goto_4

    .line 1783
    :cond_6
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_7

    .line 1785
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p4, p2

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_7
    if-nez v1, :cond_8

    .line 1787
    const-string/jumbo v1, "null"

    goto :goto_4

    :cond_8
    move-object v1, v4

    .line 1789
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1790
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_9

    .line 1792
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p3, v3

    invoke-virtual {p1, v3, p3, v1}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    .line 1794
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1795
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_4

    .line 1797
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p3, v2

    invoke-virtual {p1, v2, p3, v1}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    :cond_a
    return-object p1

    .line 1803
    :goto_5
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1804
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "LOC_ERR: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatStartsTime(JI)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 2821
    invoke-static {p0, p1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatStartsTime(JIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatStartsTime(JIZ)Ljava/lang/String;
    .locals 7

    .line 2825
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2826
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x1

    .line 2827
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x6

    .line 2828
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const-wide/16 v5, 0x3e8

    mul-long/2addr p0, v5

    .line 2830
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2831
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    .line 2832
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/4 v3, 0x2

    if-ne v2, p0, :cond_1

    if-eqz p3, :cond_0

    if-ne p1, v4, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    move p0, v1

    goto :goto_0

    :cond_1
    move p0, v3

    :goto_0
    if-ne p2, v1, :cond_2

    add-int/lit8 p0, p0, 0x3

    goto :goto_1

    :cond_2
    if-ne p2, v3, :cond_3

    add-int/lit8 p0, p0, 0x6

    goto :goto_1

    :cond_3
    const/4 p1, 0x3

    if-ne p2, p1, :cond_4

    add-int/lit8 p0, p0, 0x9

    goto :goto_1

    :cond_4
    const/4 p1, 0x4

    if-ne p2, p1, :cond_5

    add-int/lit8 p0, p0, 0xc

    .line 2853
    :cond_5
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/telegram/messenger/LocaleController;->getFormatterScheduleSend(I)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatStatusExpireDateTime(J)Ljava/lang/String;
    .locals 5

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    .line 2593
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    .line 2594
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    .line 2595
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 2596
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2597
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 2598
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v2, :cond_0

    if-ne v4, v0, :cond_0

    .line 2601
    sget v0, Lorg/telegram/messenger/R$string;->TodayAtFormatted:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, p1, v1

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2602
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide v2, 0x757b12c00L

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 2603
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController;->getFormatterScheduleDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2605
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController;->getChatFullDate()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2608
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2610
    const-string p0, "LOC_ERR"

    return-object p0
.end method

.method public static formatStoryDate(J)Ljava/lang/String;
    .locals 11

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    .line 2490
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    .line 2491
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    .line 2492
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 2493
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 2494
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2495
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 2496
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-long/2addr v5, p0

    const-wide/32 v7, 0xea60

    cmp-long v9, v5, v7

    if-gez v9, :cond_0

    .line 2499
    sget p0, Lorg/telegram/messenger/R$string;->RightNow:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/32 v9, 0x36ee80

    cmp-long v9, v5, v9

    const/4 v10, 0x0

    if-gez v9, :cond_1

    .line 2501
    div-long/2addr v5, v7

    long-to-int p0, v5

    .line 2502
    const-string p1, "MinutesAgo"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v10

    invoke-static {p1, p0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-ne v1, v2, :cond_2

    if-ne v4, v0, :cond_2

    .line 2504
    sget v0, Lorg/telegram/messenger/R$string;->TodayAtFormattedWithToday:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    aput-object p0, p1, v10

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/2addr v1, v3

    if-ne v1, v2, :cond_3

    if-ne v4, v0, :cond_3

    .line 2506
    sget v0, Lorg/telegram/messenger/R$string;->YesterdayAtFormatted:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    aput-object p0, p1, v10

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2507
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide v4, 0x757b12c00L

    cmp-long v0, v0, v4

    const/4 v1, 0x2

    if-gez v0, :cond_4

    .line 2508
    sget v0, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController;->getFormatterDayMonth()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object v2, p1, v10

    aput-object p0, p1, v3

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2510
    :cond_4
    sget v0, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController;->getFormatterYear()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object v2, p1, v10

    aput-object p0, p1, v3

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2513
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2515
    const-string p0, "LOC_ERR"

    return-object p0
.end method

.method public static varargs formatString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 1686
    sget-object v0, Lorg/telegram/messenger/LocaleController;->resourcesCacheMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1688
    sget-object v0, Lorg/telegram/messenger/LocaleController;->resourcesCacheMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 1690
    :cond_0
    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1696
    invoke-static {p0, v0, p1, v1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs formatString(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1701
    :try_start_0
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->USE_CLOUD_STRINGS:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->localeValues:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 1703
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->USE_CLOUD_STRINGS:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 1704
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->localeValues:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    .line 1709
    :try_start_1
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p1

    invoke-direct {p1}, Lorg/telegram/messenger/LocaleController;->getLocalizedContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    if-eqz p3, :cond_3

    .line 1713
    :try_start_2
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p1

    invoke-direct {p1}, Lorg/telegram/messenger/LocaleController;->getLocalizedContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    .line 1719
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p1

    invoke-direct {p1}, Lorg/telegram/messenger/LocaleController;->getLocalizedContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1725
    :catch_2
    :cond_3
    :goto_1
    :try_start_3
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    if-eqz p1, :cond_4

    .line 1726
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    invoke-static {p1, v0, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1728
    :cond_4
    invoke-static {v0, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object p0

    .line 1731
    :goto_2
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1732
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "LOC_ERR: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs formatStringSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 2087
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 2088
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p1

    goto :goto_0

    .line 2090
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2093
    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2094
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LOC_ERR: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatTTLString(I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x3c

    if-ge p0, v1, :cond_0

    .line 1810
    const-string v1, "Seconds"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v2, 0xe10

    if-ge p0, v2, :cond_1

    .line 1812
    div-int/2addr p0, v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Minutes"

    invoke-static {v1, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const v2, 0x15180

    if-ge p0, v2, :cond_2

    .line 1814
    div-int/2addr p0, v1

    div-int/2addr p0, v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Hours"

    invoke-static {v1, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const v2, 0x93a80

    .line 1815
    const-string v3, "Days"

    if-ge p0, v2, :cond_3

    .line 1816
    div-int/2addr p0, v1

    div-int/2addr p0, v1

    div-int/lit8 p0, p0, 0x18

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const v2, 0x28de80

    if-ge p0, v2, :cond_5

    .line 1818
    div-int/lit8 v2, p0, 0x3c

    div-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x18

    .line 1819
    rem-int/lit8 p0, p0, 0x7

    const-string v1, "Weeks"

    if-nez p0, :cond_4

    .line 1820
    div-int/lit8 v2, v2, 0x7

    new-array p0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, p0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1822
    :cond_4
    div-int/lit8 p0, v2, 0x7

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    rem-int/lit8 v2, v2, 0x7

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v3, v2, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v0

    const/4 p0, 0x1

    aput-object v1, v2, p0

    const-string p0, "%s %s"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1825
    :cond_5
    div-int/2addr p0, v1

    div-int/2addr p0, v1

    div-int/lit8 p0, p0, 0x18

    div-int/lit8 p0, p0, 0x1e

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Months"

    invoke-static {v1, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatTodoCompletedDate(J)Ljava/lang/String;
    .locals 8

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    .line 2368
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    .line 2369
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    .line 2370
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 2371
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2372
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 2373
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v5, 0x0

    if-ne v1, v2, :cond_0

    if-ne v4, v0, :cond_0

    .line 2376
    sget v0, Lorg/telegram/messenger/R$string;->TodoCompletedTodayAt:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    aput-object p0, p1, v5

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/2addr v1, v3

    if-ne v1, v2, :cond_1

    if-ne v4, v0, :cond_1

    .line 2378
    sget v0, Lorg/telegram/messenger/R$string;->TodoCompletedYesterdayAt:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    aput-object p0, p1, v5

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2379
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide v6, 0x757b12c00L

    cmp-long v0, v0, v6

    const/4 v1, 0x2

    if-gez v0, :cond_2

    .line 2380
    sget v0, Lorg/telegram/messenger/R$string;->TodoCompletedDateTimeAt:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController;->getFormatterDayMonth()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v4

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object v2, p1, v5

    aput-object p0, p1, v3

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2382
    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->TodoCompletedDateTimeAt:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController;->getFormatterYear()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v4

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object v2, p1, v5

    aput-object p0, p1, v3

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2385
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2387
    const-string p0, "LOC_ERR"

    return-object p0
.end method

.method public static formatUserStatus(ILorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    .line 3012
    new-array v0, v0, [Z

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v1, v0}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(ILorg/telegram/tgnet/TLRPC$User;[Z[Z[Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatUserStatus(ILorg/telegram/tgnet/TLRPC$User;[Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 3059
    invoke-static {p0, p1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(ILorg/telegram/tgnet/TLRPC$User;[Z[Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatUserStatus(ILorg/telegram/tgnet/TLRPC$User;[Z[Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 3063
    invoke-static {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(ILorg/telegram/tgnet/TLRPC$User;[Z[Z[Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatUserStatus(ILorg/telegram/tgnet/TLRPC$User;[Z[Z[Z)Ljava/lang/String;
    .locals 12

    const/16 v0, -0x66

    const/16 v1, -0x3ea

    const/16 v2, -0x65

    const/16 v3, -0x3e9

    const/16 v4, -0x64

    const/16 v5, -0x3e8

    if-eqz p1, :cond_5

    .line 3067
    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v6, :cond_5

    iget v7, v6, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-nez v7, :cond_5

    .line 3068
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_userStatusRecently;

    if-eqz v7, :cond_1

    .line 3069
    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$UserStatus;->by_me:Z

    if-eqz v7, :cond_0

    move v7, v5

    goto :goto_0

    :cond_0
    move v7, v4

    :goto_0
    iput v7, v6, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_3

    .line 3070
    :cond_1
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_userStatusLastWeek;

    if-eqz v7, :cond_3

    .line 3071
    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$UserStatus;->by_me:Z

    if-eqz v7, :cond_2

    move v7, v3

    goto :goto_1

    :cond_2
    move v7, v2

    :goto_1
    iput v7, v6, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_3

    .line 3072
    :cond_3
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_userStatusLastMonth;

    if-eqz v7, :cond_5

    .line 3073
    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$UserStatus;->by_me:Z

    if-eqz v7, :cond_4

    move v7, v1

    goto :goto_2

    :cond_4
    move v7, v0

    :goto_2
    iput v7, v6, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 3076
    :cond_5
    :goto_3
    const-string v6, "Online"

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz p1, :cond_7

    iget-object v9, p1, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v9, :cond_7

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-gtz v9, :cond_7

    .line 3077
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Lj$/util/concurrent/ConcurrentHashMap;

    iget-wide v10, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    if-eqz p2, :cond_6

    .line 3079
    aput-boolean v7, p2, v8

    .line 3081
    :cond_6
    sget p0, Lorg/telegram/messenger/R$string;->Online:I

    invoke-static {v6, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    if-eqz p1, :cond_12

    .line 3084
    iget-object v9, p1, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v9, :cond_12

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-eqz v9, :cond_12

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v9

    if-nez v9, :cond_12

    instance-of v9, p1, Lorg/telegram/tgnet/TLRPC$TL_userEmpty;

    if-eqz v9, :cond_8

    goto :goto_7

    .line 3087
    :cond_8
    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result p0

    .line 3088
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-le p1, p0, :cond_a

    if-eqz p2, :cond_9

    .line 3090
    aput-boolean v7, p2, v8

    .line 3092
    :cond_9
    sget p0, Lorg/telegram/messenger/R$string;->Online:I

    invoke-static {v6, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    const/4 p0, -0x1

    if-ne p1, p0, :cond_b

    .line 3095
    const-string p0, "Invisible"

    sget p1, Lorg/telegram/messenger/R$string;->Invisible:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    if-eq p1, v4, :cond_11

    if-ne p1, v5, :cond_c

    goto :goto_6

    :cond_c
    if-eq p1, v2, :cond_10

    if-ne p1, v3, :cond_d

    goto :goto_5

    :cond_d
    if-eq p1, v0, :cond_f

    if-ne p1, v1, :cond_e

    goto :goto_4

    :cond_e
    int-to-long p0, p1

    move-object/from16 v0, p4

    .line 3103
    invoke-static {p0, p1, p3, v0}, Lorg/telegram/messenger/LocaleController;->formatDateOnline(J[Z[Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3101
    :cond_f
    :goto_4
    const-string p0, "WithinAMonth"

    sget p1, Lorg/telegram/messenger/R$string;->WithinAMonth:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3099
    :cond_10
    :goto_5
    const-string p0, "WithinAWeek"

    sget p1, Lorg/telegram/messenger/R$string;->WithinAWeek:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3097
    :cond_11
    :goto_6
    const-string p0, "Lately"

    sget p1, Lorg/telegram/messenger/R$string;->Lately:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3085
    :cond_12
    :goto_7
    const-string p0, "ALongTimeAgo"

    sget p1, Lorg/telegram/messenger/R$string;->ALongTimeAgo:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatYearMont(JZ)Ljava/lang/String;
    .locals 17

    const-wide/16 v0, 0x3e8

    mul-long v0, v0, p0

    .line 2898
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x1

    .line 2899
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 2900
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2901
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x2

    .line 2902
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 2904
    sget v2, Lorg/telegram/messenger/R$string;->January:I

    .line 2905
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v2, Lorg/telegram/messenger/R$string;->February:I

    .line 2906
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v2, Lorg/telegram/messenger/R$string;->March:I

    .line 2907
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v2, Lorg/telegram/messenger/R$string;->April:I

    .line 2908
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v2, Lorg/telegram/messenger/R$string;->May:I

    .line 2909
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v2, Lorg/telegram/messenger/R$string;->June:I

    .line 2910
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget v2, Lorg/telegram/messenger/R$string;->July:I

    .line 2911
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    sget v2, Lorg/telegram/messenger/R$string;->August:I

    .line 2912
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    sget v2, Lorg/telegram/messenger/R$string;->September:I

    .line 2913
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    sget v2, Lorg/telegram/messenger/R$string;->October:I

    .line 2914
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    sget v2, Lorg/telegram/messenger/R$string;->November:I

    .line 2915
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v15

    sget v2, Lorg/telegram/messenger/R$string;->December:I

    .line 2916
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v16

    filled-new-array/range {v5 .. v16}, [Ljava/lang/String;

    move-result-object v2

    if-ne v4, v0, :cond_0

    if-nez p2, :cond_0

    .line 2919
    aget-object v0, v2, v1

    return-object v0

    .line 2921
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v2, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2924
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2926
    const-string v0, "LOC_ERR"

    return-object v0
.end method

.method public static formatYearMonthDay(JZ)Ljava/lang/String;
    .locals 17

    const-wide/16 v0, 0x3e8

    mul-long v0, v0, p0

    .line 2863
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x1

    .line 2864
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 2865
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2866
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x2

    .line 2867
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v3, 0x5

    .line 2868
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 2870
    sget v3, Lorg/telegram/messenger/R$string;->January:I

    .line 2871
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v3, Lorg/telegram/messenger/R$string;->February:I

    .line 2872
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v3, Lorg/telegram/messenger/R$string;->March:I

    .line 2873
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v3, Lorg/telegram/messenger/R$string;->April:I

    .line 2874
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v3, Lorg/telegram/messenger/R$string;->May:I

    .line 2875
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v3, Lorg/telegram/messenger/R$string;->June:I

    .line 2876
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget v3, Lorg/telegram/messenger/R$string;->July:I

    .line 2877
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    sget v3, Lorg/telegram/messenger/R$string;->August:I

    .line 2878
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    sget v3, Lorg/telegram/messenger/R$string;->September:I

    .line 2879
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    sget v3, Lorg/telegram/messenger/R$string;->October:I

    .line 2880
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    sget v3, Lorg/telegram/messenger/R$string;->November:I

    .line 2881
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v15

    sget v3, Lorg/telegram/messenger/R$string;->December:I

    .line 2882
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v16

    filled-new-array/range {v5 .. v16}, [Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2884
    const-string v5, " "

    if-ne v4, v0, :cond_0

    if-nez p2, :cond_0

    .line 2885
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2887
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v3, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2890
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2892
    const-string v0, "LOC_ERR"

    return-object v0
.end method

.method public static getCountryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 4433
    sget v0, Lorg/telegram/messenger/R$string;->Fragment:I

    invoke-static {p0, v0}, Lorg/telegram/messenger/LocaleController;->getCountryName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCountryName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 4437
    const-string v0, "ft"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4438
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4441
    :cond_0
    :try_start_0
    new-instance p1, Ljava/util/Locale;

    const-string v0, ""

    invoke-direct {p1, v0, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/LocaleController;->getCurrentLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4443
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCountryWithFlag(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 1

    .line 4409
    sget v0, Lorg/telegram/messenger/R$string;->Fragment:I

    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/LocaleController;->getCountryWithFlag(Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static getCountryWithFlag(Ljava/lang/String;II)Ljava/lang/CharSequence;
    .locals 3

    .line 4413
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 4414
    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getLanguageFlag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4416
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4417
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4420
    :cond_0
    invoke-static {p0, p2}, Lorg/telegram/messenger/LocaleController;->getCountryName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 4421
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4422
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 4424
    :cond_1
    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4427
    :goto_0
    new-instance p0, Landroid/text/TextPaint;

    invoke-direct {p0}, Landroid/text/TextPaint;-><init>()V

    int-to-float p1, p1

    .line 4428
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 4429
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static getCurrencyExpDivider(Ljava/lang/String;)I
    .locals 4

    .line 1978
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "XPF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x1c

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "XOF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x1b

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "XAF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x1a

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "VUV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x19

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "VND"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x18

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "UYI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x17

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "UGX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x16

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "TND"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0x15

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "RWF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0x14

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "PYG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0x13

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "OMR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0x12

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "MRO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0x11

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "MGA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v3, 0x10

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "LYD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "KWD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "KRW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "KMF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "JPY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "JOD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto/16 :goto_0

    :cond_12
    move v3, v1

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "ISK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "IQD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "GNF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_0

    :cond_15
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_16
    const-string v0, "DJF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto :goto_0

    :cond_16
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_17
    const-string v0, "CVE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto :goto_0

    :cond_17
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_18
    const-string v0, "CLP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto :goto_0

    :cond_18
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_19
    const-string v0, "CLF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto :goto_0

    :cond_19
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_1a
    const-string v0, "BYR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto :goto_0

    :cond_1a
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1b
    const-string v0, "BIF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    goto :goto_0

    :cond_1b
    move v3, v2

    goto :goto_0

    :sswitch_1c
    const-string v0, "BHD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto :goto_0

    :cond_1c
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    const/16 p0, 0x64

    return p0

    :pswitch_0
    return v1

    :pswitch_1
    const/16 p0, 0x2710

    return p0

    :pswitch_2
    return v2

    :pswitch_3
    const/16 p0, 0x3e8

    return p0

    :sswitch_data_0
    .sparse-switch
        0x100be -> :sswitch_1c
        0x100df -> :sswitch_1b
        0x102db -> :sswitch_1a
        0x104fd -> :sswitch_19
        0x10507 -> :sswitch_18
        0x10632 -> :sswitch_17
        0x10880 -> :sswitch_16
        0x1143f -> :sswitch_15
        0x11c1c -> :sswitch_14
        0x11c61 -> :sswitch_13
        0x11f9f -> :sswitch_12
        0x11fd3 -> :sswitch_11
        0x12324 -> :sswitch_10
        0x123d0 -> :sswitch_f
        0x12458 -> :sswitch_e
        0x12857 -> :sswitch_d
        0x129e7 -> :sswitch_c
        0x12b4a -> :sswitch_b
        0x13234 -> :sswitch_a
        0x1375e -> :sswitch_9
        0x13ea1 -> :sswitch_8
        0x1450a -> :sswitch_7
        0x14806 -> :sswitch_6
        0x14a25 -> :sswitch_5
        0x14c8c -> :sswitch_4
        0x14d77 -> :sswitch_3
        0x1527d -> :sswitch_2
        0x1542f -> :sswitch_1
        0x1544e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static getCurrentLanguageName()Ljava/lang/String;
    .locals 2

    .line 1446
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    if-eqz v0, :cond_1

    .line 1447
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "LanguageName"

    sget v1, Lorg/telegram/messenger/R$string;->LanguageName:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lorg/telegram/messenger/LocaleController;
    .locals 2

    .line 580
    sget-object v0, Lorg/telegram/messenger/LocaleController;->Instance:Lorg/telegram/messenger/LocaleController;

    if-nez v0, :cond_1

    .line 582
    const-class v1, Lorg/telegram/messenger/LocaleController;

    monitor-enter v1

    .line 583
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/LocaleController;->Instance:Lorg/telegram/messenger/LocaleController;

    if-nez v0, :cond_0

    .line 585
    new-instance v0, Lorg/telegram/messenger/LocaleController;

    invoke-direct {v0}, Lorg/telegram/messenger/LocaleController;-><init>()V

    sput-object v0, Lorg/telegram/messenger/LocaleController;->Instance:Lorg/telegram/messenger/LocaleController;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 587
    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return-object v0
.end method

.method public static getLanguageFlag(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 788
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    const-string v0, "YL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 790
    :cond_0
    const-string v0, "FT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 791
    const-string/jumbo p0, "\ud83c\udff4\u200d\u2620\ufe0f"

    return-object p0

    .line 792
    :cond_1
    const-string v0, "XG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 793
    const-string/jumbo p0, "\ud83d\udef0"

    return-object p0

    .line 794
    :cond_2
    const-string v0, "XV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 795
    const-string/jumbo p0, "\ud83c\udf0d"

    return-object p0

    .line 799
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const v0, 0x1f1a5

    .line 801
    invoke-static {v0}, Lorg/telegram/messenger/CharacterCompat;->highSurrogate(I)C

    move-result v2

    const/4 v3, 0x0

    aget-char v4, p0, v3

    add-int/2addr v4, v0

    .line 802
    invoke-static {v4}, Lorg/telegram/messenger/CharacterCompat;->lowSurrogate(I)C

    move-result v4

    .line 803
    invoke-static {v0}, Lorg/telegram/messenger/CharacterCompat;->highSurrogate(I)C

    move-result v5

    const/4 v6, 0x1

    aget-char p0, p0, v6

    add-int/2addr p0, v0

    .line 804
    invoke-static {p0}, Lorg/telegram/messenger/CharacterCompat;->lowSurrogate(I)C

    move-result p0

    const/4 v0, 0x4

    new-array v0, v0, [C

    aput-char v2, v0, v3

    aput-char v4, v0, v6

    aput-char v5, v0, v1

    const/4 v1, 0x3

    aput-char p0, v0, v1

    .line 806
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLocaleAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 15

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1027
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "fil"

    const-string/jumbo v3, "yi"

    const-string/jumbo v4, "tl"

    const-string/jumbo v5, "no"

    const-string/jumbo v6, "nb"

    const-string/jumbo v7, "jw"

    const-string/jumbo v8, "jv"

    const-string/jumbo v9, "ji"

    const-string/jumbo v10, "iw"

    const-string v11, "in"

    const-string v12, "id"

    const-string v13, "he"

    const/4 v14, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v14, 0xb

    goto/16 :goto_0

    :sswitch_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v14, 0xa

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v14, 0x9

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/16 v14, 0x8

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v14, 0x7

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v14, 0x6

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v14, 0x5

    goto :goto_0

    :sswitch_7
    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v14, 0x4

    goto :goto_0

    :sswitch_8
    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v14, 0x3

    goto :goto_0

    :sswitch_9
    invoke-virtual {p0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v14, 0x2

    goto :goto_0

    :sswitch_a
    invoke-virtual {p0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v14, 0x1

    goto :goto_0

    :sswitch_b
    invoke-virtual {p0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v14, 0x0

    :goto_0
    packed-switch v14, :pswitch_data_0

    return-object v0

    :pswitch_0
    return-object v4

    :pswitch_1
    return-object v9

    :pswitch_2
    return-object v2

    :pswitch_3
    return-object v6

    :pswitch_4
    return-object v5

    :pswitch_5
    return-object v8

    :pswitch_6
    return-object v7

    :pswitch_7
    return-object v3

    :pswitch_8
    return-object v13

    :pswitch_9
    return-object v12

    :pswitch_a
    return-object v11

    :pswitch_b
    return-object v10

    :sswitch_data_0
    .sparse-switch
        0xcfd -> :sswitch_b
        0xd1b -> :sswitch_a
        0xd25 -> :sswitch_9
        0xd2e -> :sswitch_8
        0xd3f -> :sswitch_7
        0xd4c -> :sswitch_6
        0xd4d -> :sswitch_5
        0xdb4 -> :sswitch_4
        0xdc1 -> :sswitch_3
        0xe78 -> :sswitch_2
        0xf10 -> :sswitch_1
        0x18c09 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getLocaleFileStrings(Ljava/io/File;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1222
    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/LocaleController;->getLocaleFileStrings(Ljava/io/File;Z)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method private getLocaleFileStrings(Ljava/io/File;Z)Ljava/util/HashMap;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Z)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1227
    iput-boolean v0, p0, Lorg/telegram/messenger/LocaleController;->reloadLastFile:Z

    .line 1228
    const-string v1, "getLocaleFileStrings: reloadLastFile = false"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1230
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1231
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    return-object p2

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p2

    goto/16 :goto_2

    .line 1233
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    const/16 v4, 0x2710

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 1234
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 1236
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1237
    :try_start_1
    const-string v6, "UTF-8"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1238
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    move-object v7, v2

    move-object v8, v7

    move-object v9, v8

    :goto_0
    if-eq v6, v1, :cond_6

    const/4 v10, 0x2

    if-ne v6, v10, :cond_1

    .line 1244
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1245
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    if-lez v6, :cond_4

    .line 1247
    invoke-interface {v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    move-object v2, v5

    goto/16 :goto_4

    :catch_1
    move-exception p2

    move-object v2, v5

    goto/16 :goto_2

    :cond_1
    const/4 v10, 0x4

    if-ne v6, v10, :cond_3

    if-eqz v7, :cond_4

    .line 1251
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 1253
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1254
    const-string v9, "&lt;"

    const-string v10, "<"

    if-eqz p2, :cond_2

    .line 1255
    :try_start_2
    invoke-virtual {v6, v10, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v9, ">"

    const-string v10, "&gt;"

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "\'"

    const-string v10, "\\\'"

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "& "

    const-string v10, "&amp; "

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 1257
    :cond_2
    const-string v11, "\\n"

    const-string v12, "\n"

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1258
    const-string v11, "\\"

    const-string v12, ""

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1260
    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 1261
    iget-boolean v10, p0, Lorg/telegram/messenger/LocaleController;->reloadLastFile:Z

    if-nez v10, :cond_4

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1262
    iput-boolean v1, p0, Lorg/telegram/messenger/LocaleController;->reloadLastFile:Z

    .line 1263
    const-string v6, "getLocaleFileStrings: value != old, reloadLastFile = true;"

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v10, 0x3

    if-ne v6, v10, :cond_4

    move-object v7, v2

    move-object v8, v7

    move-object v9, v8

    :cond_4
    :goto_1
    if-eqz v8, :cond_5

    .line 1273
    const-string/jumbo v6, "string"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v9, :cond_5

    if-eqz v7, :cond_5

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_5

    .line 1274
    invoke-virtual {v3, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v2

    move-object v8, v7

    move-object v9, v8

    .line 1279
    :cond_5
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_0

    .line 1295
    :cond_6
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-object v3

    :catch_2
    move-exception p1

    .line 1298
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object v3

    .line 1284
    :goto_2
    :try_start_4
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v0

    .line 1285
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "malformed_locales/"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1286
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 1287
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1289
    :catch_3
    :try_start_5
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1290
    const-string p1, "getLocaleFileStrings: error, reloadLastFile = true;"

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1291
    iput-boolean v1, p0, Lorg/telegram/messenger/LocaleController;->reloadLastFile:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_7

    .line 1295
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    :catch_4
    move-exception p1

    .line 1298
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1301
    :cond_7
    :goto_3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1

    :goto_4
    if-eqz v2, :cond_8

    .line 1295
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_5

    :catch_5
    move-exception p2

    .line 1298
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1300
    :cond_8
    :goto_5
    throw p1
.end method

.method private getLocaleString(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4

    .line 949
    const-string v0, "en"

    if-nez p1, :cond_0

    return-object v0

    .line 952
    :cond_0
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 953
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 954
    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object p1

    .line 955
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    return-object v0

    .line 958
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0xb

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 959
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x5f

    if-gtz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 961
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 963
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 965
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 967
    :cond_4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getLocaleStringIso639()Ljava/lang/String;
    .locals 5

    .line 996
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    if-eqz v0, :cond_0

    .line 998
    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getLangCode()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1000
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    .line 1001
    const-string v1, "en"

    if-nez v0, :cond_1

    return-object v1

    .line 1004
    :cond_1
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 1005
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 1006
    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v0

    .line 1007
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    return-object v1

    .line 1010
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v4, 0xb

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1011
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1012
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    :cond_3
    const/16 v2, 0x2d

    .line 1013
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1015
    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    const/16 v2, 0x5f

    .line 1017
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1019
    :cond_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLocalizedContext()Landroid/content/Context;
    .locals 4

    .line 4579
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->localizedContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    .line 4583
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    if-nez v0, :cond_1

    .line 4585
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->systemDefaultLocale:Ljava/util/Locale;

    .line 4588
    :cond_1
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    .line 4589
    new-instance v2, Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 4590
    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 4592
    invoke-virtual {v1, v2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->localizedContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getPluralString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_1

    .line 1545
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1548
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/LocaleController$PluralRules;->quantityForNumber(I)I

    move-result p1

    invoke-direct {v0, p1}, Lorg/telegram/messenger/LocaleController;->stringForQuantity(I)Ljava/lang/String;

    move-result-object p1

    .line 1549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1550
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "string"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1551
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_other"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v2, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1552
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1546
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LOC_ERR:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getServerString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1486
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->localeValues:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1488
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-direct {v1}, Lorg/telegram/messenger/LocaleController;->getLocalizedContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-direct {v2}, Lorg/telegram/messenger/LocaleController;->getLocalizedContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "string"

    invoke-virtual {v1, p0, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    .line 1490
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-direct {v0}, Lorg/telegram/messenger/LocaleController;->getLocalizedContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 3

    .line 1497
    sget-object v0, Lorg/telegram/messenger/LocaleController;->resourcesCacheMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1499
    sget-object v0, Lorg/telegram/messenger/LocaleController;->resourcesCacheMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 1501
    :cond_0
    invoke-static {v0, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1525
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LOC_ERR:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1528
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getStringResId(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1530
    invoke-static {p0, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1532
    :cond_1
    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getServerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1507
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1519
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p2}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1513
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getStringInternal(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1451
    invoke-direct {p0, p1, v0, v1, p2}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getStringInternal(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    .line 1455
    const-string v0, "AppName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1456
    invoke-static {}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->getAppName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1458
    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->USE_CLOUD_STRINGS:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->localeValues:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    .line 1460
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->USE_CLOUD_STRINGS:Z

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    .line 1461
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->localeValues:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    :cond_2
    if-nez v0, :cond_4

    .line 1465
    :try_start_0
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController;->getLocalizedContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    if-eqz p3, :cond_3

    .line 1469
    :try_start_1
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController;->getLocalizedContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, p3

    .line 1472
    :catch_1
    :cond_3
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    if-nez v0, :cond_5

    .line 1477
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "LOC_ERR:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1479
    :cond_5
    const-string p2, "AppUpdate"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1480
    const-string p1, "Telegram"

    const-string p2, "exteraGram"

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    return-object v0
.end method

.method public static getStringParamForNumber(I)Ljava/lang/String;
    .locals 2

    .line 1584
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    invoke-virtual {v1, p0}, Lorg/telegram/messenger/LocaleController$PluralRules;->quantityForNumber(I)I

    move-result p0

    invoke-direct {v0, p0}, Lorg/telegram/messenger/LocaleController;->stringForQuantity(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringResId(Ljava/lang/String;)I
    .locals 3

    .line 1536
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "string"

    invoke-virtual {v0, p0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getSystemLocaleStringIso639()Ljava/lang/String;
    .locals 5

    .line 972
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController;->getSystemDefaultLocale()Ljava/util/Locale;

    move-result-object v0

    .line 973
    const-string v1, "en"

    if-nez v0, :cond_0

    return-object v1

    .line 976
    :cond_0
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 977
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 978
    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v0

    .line 979
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    return-object v1

    .line 982
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v4, 0xb

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 983
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    :cond_2
    const/16 v2, 0x2d

    .line 985
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 987
    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    const/16 v2, 0x5f

    .line 989
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 991
    :cond_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeZoneName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    .line 4396
    invoke-static {p0}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    if-nez p0, :cond_0

    .line 4397
    const-string p0, ""

    return-object p0

    .line 4398
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 4400
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController;->getCurrentLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p0, v1, v1, p1}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 4401
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4402
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static getUseImperialSystemType()Z
    .locals 1

    .line 4277
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->ensureImperialSystemInit()V

    .line 4278
    sget-object v0, Lorg/telegram/messenger/LocaleController;->useImperialSystemType:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isRTLCharacter(C)Z
    .locals 3

    .line 2817
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    const/16 v2, 0x10

    if-eq v0, v2, :cond_1

    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result p0

    const/16 v0, 0x11

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method private synthetic lambda$applyLanguage$7(Lorg/telegram/messenger/LocaleController$LocaleInfo;ILjava/lang/Runnable;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    .line 1344
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/LocaleController;->applyRemoteLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;Ljava/lang/String;ZILjava/lang/Runnable;)I

    return-void
.end method

.method private synthetic lambda$applyLanguage$8(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1408
    invoke-virtual {p0, p1, v0, v1, v0}, Lorg/telegram/messenger/LocaleController;->reloadCurrentRemoteLocale(ILjava/lang/String;ZLjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$applyRemoteLanguage$14(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLObject;ILjava/lang/Runnable;)V
    .locals 0

    .line 3369
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/LocaleController;->saveRemoteLocaleStrings(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;ILjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$applyRemoteLanguage$15(Lorg/telegram/messenger/LocaleController$LocaleInfo;ILjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    if-eqz p4, :cond_0

    .line 3369
    new-instance v0, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda21;

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLObject;ILjava/lang/Runnable;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$applyRemoteLanguage$16(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLObject;ILjava/lang/Runnable;)V
    .locals 0

    .line 3381
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/LocaleController;->saveRemoteLocaleStrings(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;ILjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$applyRemoteLanguage$17(Lorg/telegram/messenger/LocaleController$LocaleInfo;ILjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    if-eqz p4, :cond_0

    .line 3380
    new-instance v0, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda10;

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLObject;ILjava/lang/Runnable;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$applyRemoteLanguage$18(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLObject;ILjava/lang/Runnable;)V
    .locals 0

    .line 3398
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/LocaleController;->saveRemoteLocaleStrings(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;ILjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$applyRemoteLanguage$19(Lorg/telegram/messenger/LocaleController$LocaleInfo;ILjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    if-eqz p4, :cond_0

    .line 3397
    new-instance v0, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda16;

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLObject;ILjava/lang/Runnable;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$applyRemoteLanguage$20(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLObject;ILjava/lang/Runnable;)V
    .locals 0

    .line 3413
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/LocaleController;->saveRemoteLocaleStrings(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;ILjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$applyRemoteLanguage$21(Lorg/telegram/messenger/LocaleController$LocaleInfo;ILjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    if-eqz p4, :cond_0

    .line 3412
    new-instance v0, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda15;

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLObject;ILjava/lang/Runnable;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$checkForcePatchLangpack$5(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3

    .line 939
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "langpack_patched"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p2, :cond_0

    .line 941
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 p1, 0x0

    .line 943
    iput-boolean p1, p0, Lorg/telegram/messenger/LocaleController;->patching:Z

    return-void
.end method

.method private synthetic lambda$checkForcePatchLangpack$6(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    .line 938
    new-instance v0, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/LocaleController;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$checkPatchLangpack$4(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 927
    invoke-virtual {p0, p1, v0, v1, v0}, Lorg/telegram/messenger/LocaleController;->reloadCurrentRemoteLocale(ILjava/lang/String;ZLjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$checkUpdateForCurrentRemoteLocale$2(I)V
    .locals 1

    const/4 v0, 0x0

    .line 874
    iput-boolean v0, p0, Lorg/telegram/messenger/LocaleController;->checkingUpdateForCurrentRemoteLocale:Z

    .line 875
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/LocaleController;->checkPatchLangpack(I)V

    return-void
.end method

.method private synthetic lambda$checkUpdateForCurrentRemoteLocale$3(I)V
    .locals 1

    const/4 v0, 0x0

    .line 885
    iput-boolean v0, p0, Lorg/telegram/messenger/LocaleController;->checkingUpdateForCurrentRemoteLocale:Z

    .line 886
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/LocaleController;->checkPatchLangpack(I)V

    return-void
.end method

.method private synthetic lambda$loadRemoteLanguages$11(Lorg/telegram/tgnet/TLObject;ZI)V
    .locals 9

    const/4 v0, 0x0

    .line 3276
    iput-boolean v0, p0, Lorg/telegram/messenger/LocaleController;->loadingRemoteLanguages:Z

    .line 3277
    check-cast p1, Lorg/telegram/tgnet/Vector;

    .line 3278
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->remoteLanguages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :goto_0
    const v3, 0x7fffffff

    if-ge v2, v1, :cond_0

    .line 3279
    iget-object v4, p0, Lorg/telegram/messenger/LocaleController;->remoteLanguages:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    iput v3, v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;->serverIndex:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3281
    :cond_0
    iget-object v1, p1, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_5

    .line 3282
    iget-object v4, p1, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;

    .line 3283
    sget-boolean v5, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v5, :cond_1

    .line 3284
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "loaded lang "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3286
    :cond_1
    new-instance v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-direct {v5}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 3287
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->name:Ljava/lang/String;

    iput-object v6, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 3288
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->native_name:Ljava/lang/String;

    iput-object v6, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 3289
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->lang_code:Ljava/lang/String;

    const/16 v7, 0x2d

    const/16 v8, 0x5f

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 3290
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->base_lang_code:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 3291
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseLangCode:Ljava/lang/String;

    goto :goto_2

    .line 3293
    :cond_2
    const-string v6, ""

    iput-object v6, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseLangCode:Ljava/lang/String;

    .line 3295
    :goto_2
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->plural_code:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    .line 3296
    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->rtl:Z

    iput-boolean v4, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isRtl:Z

    .line 3297
    const-string/jumbo v4, "remote"

    iput-object v4, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 3298
    iput v2, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->serverIndex:I

    .line 3300
    invoke-virtual {v5}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/LocaleController;->getLanguageFromDict(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v4

    if-nez v4, :cond_3

    .line 3302
    iget-object v4, p0, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3303
    iget-object v4, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    invoke-virtual {v5}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 3305
    :cond_3
    iget-object v6, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 3306
    iget-object v6, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 3307
    iget-object v6, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseLangCode:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseLangCode:Ljava/lang/String;

    .line 3308
    iget-object v6, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    .line 3309
    iget-object v6, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 3310
    iget v5, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->serverIndex:I

    iput v5, v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;->serverIndex:I

    move-object v5, v4

    .line 3313
    :goto_3
    iget-object v4, p0, Lorg/telegram/messenger/LocaleController;->remoteLanguagesDict:Ljava/util/HashMap;

    invoke-virtual {v5}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 3314
    iget-object v4, p0, Lorg/telegram/messenger/LocaleController;->remoteLanguages:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3315
    iget-object v4, p0, Lorg/telegram/messenger/LocaleController;->remoteLanguagesDict:Ljava/util/HashMap;

    invoke-virtual {v5}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_5
    move p1, v0

    .line 3318
    :goto_4
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->remoteLanguages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge p1, v1, :cond_9

    .line 3319
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->remoteLanguages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 3320
    iget v4, v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->serverIndex:I

    if-ne v4, v3, :cond_8

    iget-object v4, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    if-ne v1, v4, :cond_6

    goto :goto_5

    .line 3323
    :cond_6
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v4, :cond_7

    .line 3324
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "remove lang "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3326
    :cond_7
    iget-object v4, p0, Lorg/telegram/messenger/LocaleController;->remoteLanguages:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3327
    iget-object v4, p0, Lorg/telegram/messenger/LocaleController;->remoteLanguagesDict:Ljava/util/HashMap;

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3328
    iget-object v4, p0, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3329
    iget-object v4, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    :cond_8
    :goto_5
    add-int/2addr p1, v2

    goto :goto_4

    .line 3332
    :cond_9
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController;->saveOtherLanguages()V

    .line 3333
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->suggestedLangpack:I

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    if-eqz p2, :cond_a

    .line 3335
    iget-object p1, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-virtual {p0, p1, v2, v0, p3}, Lorg/telegram/messenger/LocaleController;->applyLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;ZZI)I

    :cond_a
    return-void
.end method

.method private synthetic lambda$loadRemoteLanguages$12(ZILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 3274
    instance-of p4, p3, Lorg/telegram/tgnet/Vector;

    if-eqz p4, :cond_0

    .line 3275
    new-instance p4, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda20;

    invoke-direct {p4, p0, p3, p1, p2}, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/messenger/LocaleController;Lorg/telegram/tgnet/TLObject;ZI)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 705
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/LocaleController;->loadRemoteLanguages(I)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    .line 784
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getSystemLocaleStringIso639()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentSystemLocale:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$saveRemoteLocaleStrings$10(ILorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;Ljava/util/HashMap;Ljava/lang/Runnable;)V
    .locals 4

    if-nez p1, :cond_0

    .line 3197
    iget p1, p3, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;->version:I

    iput p1, p2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->version:I

    goto :goto_0

    .line 3199
    :cond_0
    iget p1, p3, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;->version:I

    iput p1, p2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseVersion:I

    .line 3201
    :goto_0
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController;->saveOtherLanguages()V

    const/4 p1, 0x0

    .line 3203
    :try_start_0
    iget-object p3, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    if-ne p3, p2, :cond_6

    .line 3206
    iget-object p3, p2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "_"

    if-nez p3, :cond_1

    .line 3207
    :try_start_1
    iget-object p3, p2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :catch_0
    move-exception p2

    goto/16 :goto_3

    .line 3208
    :cond_1
    iget-object p3, p2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseLangCode:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 3209
    iget-object p3, p2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseLangCode:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 3211
    :cond_2
    iget-object p3, p2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 3213
    :goto_1
    array-length v0, p3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 3214
    new-instance v0, Ljava/util/Locale;

    aget-object p3, p3, p1

    invoke-direct {v0, p3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 3216
    :cond_3
    new-instance v0, Ljava/util/Locale;

    aget-object v2, p3, p1

    aget-object p3, p3, v1

    invoke-direct {v0, v2, p3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3218
    :goto_2
    iget-object p3, p2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/messenger/LocaleController;->languageOverride:Ljava/lang/String;

    .line 3220
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p3

    .line 3221
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    .line 3222
    const-string/jumbo v2, "language"

    invoke-virtual {p2}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3223
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3225
    iput-object p4, p0, Lorg/telegram/messenger/LocaleController;->localeValues:Ljava/util/HashMap;

    .line 3226
    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    .line 3227
    iput-object p2, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 3228
    iget-object p2, p2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 3229
    iget-object p2, p0, Lorg/telegram/messenger/LocaleController;->allRules:Ljava/util/HashMap;

    iget-object p3, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    iget-object p3, p3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/LocaleController$PluralRules;

    iput-object p2, p0, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    .line 3231
    :cond_4
    iget-object p2, p0, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    if-nez p2, :cond_5

    .line 3232
    iget-object p2, p0, Lorg/telegram/messenger/LocaleController;->allRules:Ljava/util/HashMap;

    iget-object p3, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    invoke-virtual {p3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/LocaleController$PluralRules;

    iput-object p2, p0, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    if-nez p2, :cond_5

    .line 3234
    iget-object p2, p0, Lorg/telegram/messenger/LocaleController;->allRules:Ljava/util/HashMap;

    const-string p3, "en"

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/LocaleController$PluralRules;

    iput-object p2, p0, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    .line 3237
    :cond_5
    iput-boolean v1, p0, Lorg/telegram/messenger/LocaleController;->changingConfiguration:Z

    .line 3238
    iget-object p2, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    invoke-static {p2}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 3239
    new-instance p2, Landroid/content/res/Configuration;

    invoke-direct {p2}, Landroid/content/res/Configuration;-><init>()V

    .line 3240
    iget-object p3, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    iput-object p3, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 3241
    sget-object p3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget-object p4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    invoke-virtual {p3, p2, p4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 3242
    iput-boolean p1, p0, Lorg/telegram/messenger/LocaleController;->changingConfiguration:Z

    .line 3244
    invoke-static {}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->invalidateRestrictedLanguages()V

    goto :goto_4

    .line 3246
    :cond_6
    const-string/jumbo p2, "saveRemoteLocaleStrings: currentLocaleInfo != localeInfo, do nothing"

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 3249
    :goto_3
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3250
    iput-boolean p1, p0, Lorg/telegram/messenger/LocaleController;->changingConfiguration:Z

    .line 3252
    :goto_4
    invoke-virtual {p0}, Lorg/telegram/messenger/LocaleController;->recreateFormatters()V

    .line 3253
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/NotificationCenter;->reloadInterface:I

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p2, p3, p1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    if-eqz p5, :cond_7

    .line 3255
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    :cond_7
    return-void
.end method

.method private loadOtherLanguages()V
    .locals 12

    .line 1183
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "langconfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1184
    const-string/jumbo v1, "locales"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1185
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "&"

    if-nez v4, :cond_1

    .line 1186
    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1187
    array-length v4, v1

    move v6, v2

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v1, v6

    .line 1188
    invoke-static {v7}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->createWithString(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1190
    iget-object v8, p0, Lorg/telegram/messenger/LocaleController;->otherLanguages:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1194
    :cond_1
    const-string/jumbo v1, "remote"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1195
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v6, "_"

    const-string v7, "-"

    if-nez v4, :cond_3

    .line 1196
    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1197
    array-length v4, v1

    move v8, v2

    :goto_1
    if-ge v8, v4, :cond_3

    aget-object v9, v1, v8

    .line 1198
    invoke-static {v9}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->createWithString(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v9

    .line 1199
    iget-object v10, v9, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v10, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 1200
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->remoteLanguagesDict:Ljava/util/HashMap;

    invoke-virtual {v9}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_2

    .line 1203
    :cond_2
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->remoteLanguages:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1204
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->remoteLanguagesDict:Ljava/util/HashMap;

    invoke-virtual {v9}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1207
    :cond_3
    const-string/jumbo v1, "unofficial"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1208
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1209
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1210
    array-length v1, v0

    :goto_3
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    .line 1211
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->createWithString(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_4

    .line 1215
    :cond_4
    iget-object v4, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 1216
    iget-object v4, p0, Lorg/telegram/messenger/LocaleController;->unofficialLanguages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method public static nullable(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 1540
    const-string v0, "LOC_ERR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private patched(Ljava/lang/String;)V
    .locals 3

    .line 4389
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 4390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set as patched "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " langpack"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 4392
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lngpack_patched_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static resetImperialSystemType()V
    .locals 1

    const/4 v0, 0x0

    .line 4273
    sput-object v0, Lorg/telegram/messenger/LocaleController;->useImperialSystemType:Ljava/lang/Boolean;

    return-void
.end method

.method private saveOtherLanguages()V
    .locals 7

    .line 1111
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "langconfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1112
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move v3, v2

    .line 1114
    :goto_0
    iget-object v4, p0, Lorg/telegram/messenger/LocaleController;->otherLanguages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-string v5, "&"

    if-ge v3, v4, :cond_2

    .line 1115
    iget-object v4, p0, Lorg/telegram/messenger/LocaleController;->otherLanguages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 1116
    invoke-virtual {v4}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getSaveString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1118
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 1119
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1121
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1124
    :cond_2
    const-string/jumbo v3, "locales"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    move v3, v2

    .line 1126
    :goto_1
    iget-object v4, p0, Lorg/telegram/messenger/LocaleController;->remoteLanguages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 1127
    iget-object v4, p0, Lorg/telegram/messenger/LocaleController;->remoteLanguages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 1128
    invoke-virtual {v4}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getSaveString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1130
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_3

    .line 1131
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1133
    :cond_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1136
    :cond_5
    const-string/jumbo v3, "remote"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1138
    :goto_2
    iget-object v3, p0, Lorg/telegram/messenger/LocaleController;->unofficialLanguages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 1139
    iget-object v3, p0, Lorg/telegram/messenger/LocaleController;->unofficialLanguages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 1140
    invoke-virtual {v3}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getSaveString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 1142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_6

    .line 1143
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1145
    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1148
    :cond_8
    const-string/jumbo v2, "unofficial"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1149
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private shouldReinstallLangpack(Ljava/lang/String;)Z
    .locals 5

    .line 4307
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->checkResetLangpack:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 4311
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lngpack_patched_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 4315
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/LocaleController;->localeValues:Ljava/util/HashMap;

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/LocaleController;->calculateTranslatedCount(Ljava/util/HashMap;)I

    move-result v2

    if-lt v2, v0, :cond_2

    return v1

    .line 4319
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reinstalling "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " langpack because of patch ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " keys, must be at least "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 4320
    invoke-direct {p0, p1}, Lorg/telegram/messenger/LocaleController;->patched(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public static stringForMessageListDate(J)Ljava/lang/String;
    .locals 6

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    .line 2951
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide v2, 0x757b12c00L

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 2952
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController;->getFormatterYear()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2954
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    .line 2955
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 2956
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2957
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v0, v2

    if-eqz v0, :cond_3

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 2960
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p0

    const-wide/32 v4, 0x1b77400

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, -0x7

    if-le v0, v2, :cond_2

    if-gt v0, v1, :cond_2

    .line 2963
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController;->getFormatterWeek()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2965
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController;->getFormatterDayMonth()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2961
    :cond_3
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2969
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2971
    const-string p0, "LOC_ERR"

    return-object p0
.end method

.method private stringForQuantity(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    .line 842
    const-string/jumbo p1, "other"

    return-object p1

    .line 840
    :cond_0
    const-string/jumbo p1, "many"

    return-object p1

    .line 838
    :cond_1
    const-string p1, "few"

    return-object p1

    .line 836
    :cond_2
    const-string/jumbo p1, "two"

    return-object p1

    .line 834
    :cond_3
    const-string/jumbo p1, "one"

    return-object p1

    .line 832
    :cond_4
    const-string/jumbo p1, "zero"

    return-object p1
.end method


# virtual methods
.method public applyLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;ZZI)I
    .locals 8

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    .line 1305
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/LocaleController;->applyLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;ZZZZILjava/lang/Runnable;)I

    move-result p1

    return p1
.end method

.method public applyLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;ZZZZILjava/lang/Runnable;)I
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v7, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    .line 1309
    const-string v0, " isLoadingRemote="

    const-string v8, " force="

    const/4 v9, 0x0

    if-nez v2, :cond_0

    return v9

    :cond_0
    const/4 v10, 0x0

    .line 1313
    iput-object v10, v1, Lorg/telegram/messenger/LocaleController;->localizedContext:Landroid/content/Context;

    .line 1316
    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->hasBaseLang()Z

    move-result v11

    .line 1317
    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getPathToFile()Ljava/io/File;

    move-result-object v12

    .line 1318
    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getPathToBaseFile()Ljava/io/File;

    move-result-object v13

    if-nez p3, :cond_1

    .line 1321
    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getLangCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->setLangCode(Ljava/lang/String;)V

    .line 1323
    :cond_1
    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/LocaleController;->getLanguageFromDict(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1325
    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isRemote()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1326
    iget-object v3, v1, Lorg/telegram/messenger/LocaleController;->remoteLanguages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1327
    iget-object v3, v1, Lorg/telegram/messenger/LocaleController;->remoteLanguagesDict:Ljava/util/HashMap;

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1328
    iget-object v3, v1, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1329
    iget-object v3, v1, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1330
    invoke-direct {v1}, Lorg/telegram/messenger/LocaleController;->saveOtherLanguages()V

    goto :goto_0

    .line 1331
    :cond_2
    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isUnofficial()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1332
    iget-object v3, v1, Lorg/telegram/messenger/LocaleController;->unofficialLanguages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1333
    iget-object v3, v1, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1334
    invoke-direct {v1}, Lorg/telegram/messenger/LocaleController;->saveOtherLanguages()V

    .line 1338
    :cond_3
    :goto_0
    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isRemote()Z

    move-result v3

    const-string v14, " "

    const/4 v15, 0x1

    if-nez v3, :cond_4

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isUnofficial()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    if-nez v7, :cond_6

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v11, :cond_5

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    move v3, v9

    move v4, v3

    goto :goto_3

    .line 1339
    :cond_6
    :goto_1
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_7

    .line 1340
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reload locale because one of file doesn\'t exist "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_7
    if-eqz p3, :cond_8

    .line 1344
    new-instance v3, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda12;

    invoke-direct {v3, v1, v2, v5, v6}, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$LocaleInfo;ILjava/lang/Runnable;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    move v3, v9

    :goto_2
    move v4, v15

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1346
    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/LocaleController;->applyRemoteLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;Ljava/lang/String;ZILjava/lang/Runnable;)I

    move-result v3

    goto :goto_2

    .line 1352
    :goto_3
    :try_start_0
    iget-object v6, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "_"

    if-nez v6, :cond_9

    .line 1353
    :try_start_1
    iget-object v6, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :catch_0
    move-exception v0

    :goto_4
    move/from16 v18, v3

    goto/16 :goto_d

    .line 1354
    :cond_9
    iget-object v6, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseLangCode:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 1355
    iget-object v6, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseLangCode:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    .line 1357
    :cond_a
    iget-object v6, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1359
    :goto_5
    array-length v10, v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v10, v15, :cond_b

    .line 1360
    :try_start_2
    new-instance v10, Ljava/util/Locale;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move/from16 v16, v9

    :try_start_3
    aget-object v9, v6, v16

    invoke-direct {v10, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move/from16 v17, v15

    goto :goto_6

    :catch_1
    move-exception v0

    move/from16 v16, v9

    goto :goto_4

    :cond_b
    move/from16 v16, v9

    .line 1362
    new-instance v10, Ljava/util/Locale;

    aget-object v9, v6, v16

    move/from16 v17, v15

    aget-object v15, v6, v17

    invoke-direct {v10, v9, v15}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    if-eqz p2, :cond_c

    .line 1365
    iget-object v9, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    iput-object v9, v1, Lorg/telegram/messenger/LocaleController;->languageOverride:Ljava/lang/String;

    .line 1367
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v9

    .line 1368
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 1369
    const-string/jumbo v15, "language"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move/from16 v18, v3

    :try_start_4
    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v15, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1370
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_7

    :catch_2
    move-exception v0

    goto/16 :goto_d

    :cond_c
    move/from16 v18, v3

    :goto_7
    if-nez v12, :cond_d

    .line 1373
    iget-object v3, v1, Lorg/telegram/messenger/LocaleController;->localeValues:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    goto :goto_9

    :cond_d
    if-nez p4, :cond_f

    if-eqz v11, :cond_e

    .line 1375
    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getPathToBaseFile()Ljava/io/File;

    move-result-object v3

    goto :goto_8

    :cond_e
    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getPathToFile()Ljava/io/File;

    move-result-object v3

    :goto_8
    invoke-direct {v1, v3}, Lorg/telegram/messenger/LocaleController;->getLocaleFileStrings(Ljava/io/File;)Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/messenger/LocaleController;->localeValues:Ljava/util/HashMap;

    if-eqz v11, :cond_f

    .line 1377
    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getPathToFile()Ljava/io/File;

    move-result-object v9

    invoke-direct {v1, v9}, Lorg/telegram/messenger/LocaleController;->getLocaleFileStrings(Ljava/io/File;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1380
    :cond_f
    :goto_9
    iput-object v10, v1, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    .line 1381
    iput-object v2, v1, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 1382
    const-string v3, "applyLanguage: currentLocaleInfo is set"

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1384
    iget-object v3, v1, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    iget-object v3, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 1385
    iget-object v3, v1, Lorg/telegram/messenger/LocaleController;->allRules:Ljava/util/HashMap;

    iget-object v9, v1, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    iget-object v9, v9, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/LocaleController$PluralRules;

    iput-object v3, v1, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    .line 1387
    :cond_10
    iget-object v3, v1, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    if-nez v3, :cond_11

    .line 1388
    iget-object v3, v1, Lorg/telegram/messenger/LocaleController;->allRules:Ljava/util/HashMap;

    aget-object v6, v6, v16

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/LocaleController$PluralRules;

    iput-object v3, v1, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    .line 1390
    :cond_11
    iget-object v3, v1, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    if-nez v3, :cond_12

    .line 1391
    iget-object v3, v1, Lorg/telegram/messenger/LocaleController;->allRules:Ljava/util/HashMap;

    iget-object v6, v1, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/LocaleController$PluralRules;

    iput-object v3, v1, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    .line 1393
    :cond_12
    iget-object v3, v1, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    if-nez v3, :cond_13

    .line 1394
    new-instance v3, Lorg/telegram/messenger/LocaleController$PluralRules_None;

    invoke-direct {v3}, Lorg/telegram/messenger/LocaleController$PluralRules_None;-><init>()V

    iput-object v3, v1, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    :cond_13
    move/from16 v3, v17

    .line 1396
    iput-boolean v3, v1, Lorg/telegram/messenger/LocaleController;->changingConfiguration:Z

    .line 1397
    iget-object v3, v1, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    invoke-static {v3}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 1398
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    .line 1399
    iget-object v6, v1, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    iput-object v6, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1400
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-virtual {v6, v3, v9}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    move/from16 v3, v16

    .line 1401
    iput-boolean v3, v1, Lorg/telegram/messenger/LocaleController;->changingConfiguration:Z

    .line 1402
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "applyLanguage: reloadLastFile="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v1, Lorg/telegram/messenger/LocaleController;->reloadLastFile:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1403
    iget-boolean v3, v1, Lorg/telegram/messenger/LocaleController;->reloadLastFile:Z

    if-nez v3, :cond_14

    if-nez v4, :cond_17

    if-nez v7, :cond_17

    iget-object v2, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/telegram/messenger/LocaleController;->shouldReinstallLangpack(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1404
    :cond_14
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_15

    .line 1405
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reload locale because one of file is corrupted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " reloadLastFile="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lorg/telegram/messenger/LocaleController;->reloadLastFile:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_15
    if-eqz p3, :cond_16

    .line 1408
    new-instance v0, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda13;

    invoke-direct {v0, v1, v5}, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/messenger/LocaleController;I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_a
    const/4 v3, 0x0

    goto :goto_b

    :cond_16
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 1410
    invoke-virtual {v1, v5, v0, v3, v0}, Lorg/telegram/messenger/LocaleController;->reloadCurrentRemoteLocale(ILjava/lang/String;ZLjava/lang/Runnable;)V

    goto :goto_a

    .line 1412
    :goto_b
    iput-boolean v3, v1, Lorg/telegram/messenger/LocaleController;->reloadLastFile:Z

    .line 1413
    const-string/jumbo v0, "reloadLastFile=false"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_17
    if-nez v4, :cond_19

    if-eqz p3, :cond_18

    .line 1417
    new-instance v0, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda14;-><init>()V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_c

    .line 1419
    :cond_18
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->reloadInterface:I

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1421
    :goto_c
    invoke-static {}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->invalidateRestrictedLanguages()V

    if-eqz p7, :cond_19

    .line 1423
    invoke-interface/range {p7 .. p7}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_19
    const/4 v3, 0x0

    goto :goto_e

    .line 1427
    :goto_d
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v3, 0x0

    .line 1428
    iput-boolean v3, v1, Lorg/telegram/messenger/LocaleController;->changingConfiguration:Z

    .line 1430
    :goto_e
    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController;->recreateFormatters()V

    if-eqz v7, :cond_1a

    .line 1432
    invoke-static {v5}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v2}, Lorg/telegram/messenger/MediaDataController;->loadAttachMenuBots(ZZ)V

    :cond_1a
    return v18
.end method

.method public applyLanguageFile(Ljava/io/File;I)Z
    .locals 11

    .line 1059
    const-string/jumbo v0, "|"

    const-string v1, "&"

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/LocaleController;->getLocaleFileStrings(Ljava/io/File;)Ljava/util/HashMap;

    move-result-object v3

    .line 1061
    const-string v4, "LanguageName"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1062
    const-string v5, "LanguageNameInEnglish"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1063
    const-string v6, "LanguageCode"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 1065
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6

    if-eqz v5, :cond_6

    .line 1066
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6

    if-eqz v6, :cond_6

    .line 1067
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6

    .line 1069
    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto/16 :goto_1

    .line 1072
    :cond_0
    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_1

    .line 1075
    :cond_1
    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "/"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "\\"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    .line 1079
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1080
    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    .line 1084
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "local_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1085
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/LocaleController;->getLanguageFromDict(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object p1

    if-nez p1, :cond_4

    .line 1087
    new-instance p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-direct {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 1088
    iput-object v4, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 1089
    iput-object v5, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 1090
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 1091
    iput-object v1, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    .line 1093
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 1094
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1095
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->otherLanguages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1098
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController;->saveOtherLanguages()V

    :cond_4
    move-object v4, p1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    .line 1100
    :goto_0
    iput-object v3, p0, Lorg/telegram/messenger/LocaleController;->localeValues:Ljava/util/HashMap;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v3, p0

    move v9, p2

    .line 1101
    invoke-virtual/range {v3 .. v10}, Lorg/telegram/messenger/LocaleController;->applyLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;ZZZZILjava/lang/Runnable;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_1
    return v2

    .line 1105
    :goto_2
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_6
    return v2
.end method

.method public calculateTranslatedCount(Ljava/util/HashMap;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 895
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 896
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_0

    .line 901
    :cond_1
    const-string v4, "_other"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 902
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x6

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 903
    :cond_2
    const-string v4, "_zero"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "_many"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    .line 905
    :cond_3
    const-string v4, "_one"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "_two"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "_few"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    .line 906
    :cond_5
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 904
    :cond_6
    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_3
    if-nez v3, :cond_7

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 910
    :cond_7
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 911
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 915
    :cond_8
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return v2
.end method

.method public checkForcePatchLangpack(ILjava/lang/Runnable;)V
    .locals 4

    .line 934
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getCurrentLanguageName()Ljava/lang/String;

    move-result-object v0

    .line 935
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->checkResetLangpack:I

    if-lez v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "langpack_patched"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/messenger/LocaleController;->patching:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 937
    iput-boolean v1, p0, Lorg/telegram/messenger/LocaleController;->patching:Z

    .line 938
    new-instance v2, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0, v0, p2}, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/messenger/LocaleController;Ljava/lang/String;Ljava/lang/Runnable;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/telegram/messenger/LocaleController;->reloadCurrentRemoteLocale(ILjava/lang/String;ZLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public checkPatchLangpack(I)V
    .locals 2

    .line 920
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lorg/telegram/messenger/LocaleController;->checkingUpdateForCurrentRemoteLocale:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 923
    :cond_0
    iget-object v0, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/LocaleController;->shouldReinstallLangpack(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 924
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    .line 925
    const-string/jumbo v0, "reload locale because locale file is not enough"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 927
    :cond_1
    new-instance v0, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/messenger/LocaleController;I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public checkUpdateForCurrentRemoteLocale(III)V
    .locals 9

    .line 866
    iget-object v2, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isRemote()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isUnofficial()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 869
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->hasBaseLang()Z

    move-result v2

    const/4 v6, 0x1

    const-string v7, ")"

    const-string v8, ", remote is "

    if-eqz v2, :cond_2

    .line 870
    iget-object v2, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    iget v2, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseVersion:I

    if-ge v2, p3, :cond_1

    .line 871
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LocaleController checkUpdateForCurrentRemoteLocale base version is out of date, applying (local is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    iget v3, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 872
    iput-boolean v6, p0, Lorg/telegram/messenger/LocaleController;->checkingUpdateForCurrentRemoteLocale:Z

    .line 873
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    iget-object v2, v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseLangCode:Ljava/lang/String;

    new-instance v5, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda8;

    invoke-direct {v5, p0, p1}, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/LocaleController;I)V

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/LocaleController;->applyRemoteLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;Ljava/lang/String;ZILjava/lang/Runnable;)I

    goto :goto_0

    .line 878
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LocaleController checkUpdateForCurrentRemoteLocale base version is up to date (local is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    iget v3, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 881
    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    iget v1, v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->version:I

    if-ge v1, p2, :cond_3

    .line 882
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocaleController checkUpdateForCurrentRemoteLocale version is out of date, applying (local is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    iget v2, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->version:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 883
    iput-boolean v6, p0, Lorg/telegram/messenger/LocaleController;->checkingUpdateForCurrentRemoteLocale:Z

    .line 884
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    iget-object v2, v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    new-instance v5, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda9;

    invoke-direct {v5, p0, p1}, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/LocaleController;I)V

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/LocaleController;->applyRemoteLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;Ljava/lang/String;ZILjava/lang/Runnable;)I

    return-void

    .line 889
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocaleController checkUpdateForCurrentRemoteLocale version is up to date (local is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    iget v2, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->version:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public deleteLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;I)Z
    .locals 3

    .line 1153
    iget-object v0, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isRemote()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->serverIndex:I

    const v2, 0x7fffffff

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 1156
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    const/4 v2, 0x1

    if-ne v0, p1, :cond_4

    .line 1158
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->systemDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1159
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->systemDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/LocaleController;->getLanguageFromDict(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 1162
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->systemDefaultLocale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/LocaleController;->getLocaleString(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/LocaleController;->getLanguageFromDict(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    .line 1165
    const-string v0, "en"

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/LocaleController;->getLanguageFromDict(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v0

    .line 1167
    :cond_3
    invoke-virtual {p0, v0, v2, v1, p2}, Lorg/telegram/messenger/LocaleController;->applyLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;ZZI)I

    .line 1170
    :cond_4
    iget-object p2, p0, Lorg/telegram/messenger/LocaleController;->unofficialLanguages:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1171
    iget-object p2, p0, Lorg/telegram/messenger/LocaleController;->remoteLanguages:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1172
    iget-object p2, p0, Lorg/telegram/messenger/LocaleController;->remoteLanguagesDict:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    iget-object p2, p0, Lorg/telegram/messenger/LocaleController;->otherLanguages:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1174
    iget-object p2, p0, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1175
    iget-object p2, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    new-instance p2, Ljava/io/File;

    iget-object p1, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1177
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 1178
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController;->saveOtherLanguages()V

    return v2

    :cond_5
    :goto_1
    return v1
.end method

.method public formatCurrencyDecimalString(JLjava/lang/String;Z)Ljava/lang/String;
    .locals 9

    .line 2018
    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p3

    .line 2021
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    .line 2022
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "XPF"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x1d

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "XOF"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x1c

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "XAF"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x1b

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "VUV"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x1a

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "VND"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x19

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "UYI"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x18

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "UGX"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x17

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "TND"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0x16

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "RWF"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0x15

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "PYG"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0x14

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "OMR"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0x13

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "MRO"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0x12

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "MGA"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v3, 0x11

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "LYD"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0x10

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "KWD"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "KRW"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "KMF"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "JPY"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "JOD"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "ISK"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "IRR"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "IQD"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "GNF"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_0

    :cond_16
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_17
    const-string v0, "DJF"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_0

    :cond_17
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_18
    const-string v0, "CVE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_0

    :cond_18
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_19
    const-string v0, "CLP"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_0

    :cond_19
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_1a
    const-string v0, "CLF"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_0

    :cond_1a
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_1b
    const-string v0, "BYR"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_0

    :cond_1b
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1c
    const-string v0, "BIF"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_0

    :cond_1c
    move v3, v1

    goto :goto_0

    :sswitch_1d
    const-string v0, "BHD"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_0

    :cond_1d
    move v3, v2

    .line 2079
    :goto_0
    const-string v0, " %.0f"

    const-string v4, " %.2f"

    packed-switch v3, :pswitch_data_0

    long-to-double p1, p1

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double/2addr p1, v5

    move-object v0, v4

    goto :goto_2

    :pswitch_0
    long-to-double p1, p1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    div-double/2addr p1, v3

    .line 2075
    const-string v0, " %.1f"

    goto :goto_2

    :pswitch_1
    long-to-float v3, p1

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v3, v5

    float-to-double v5, v3

    const-wide/16 v7, 0x64

    .line 2030
    rem-long/2addr p1, v7

    const-wide/16 v7, 0x0

    cmp-long p1, p1, v7

    if-nez p1, :cond_1e

    :goto_1
    move-wide p1, v5

    goto :goto_2

    :cond_1e
    move-object v0, v4

    goto :goto_1

    :pswitch_2
    long-to-double p1, p1

    const-wide v3, 0x40c3880000000000L    # 10000.0

    div-double/2addr p1, v3

    .line 2026
    const-string v0, " %.4f"

    goto :goto_2

    :pswitch_3
    long-to-double p1, p1

    goto :goto_2

    :pswitch_4
    long-to-double p1, p1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v3

    .line 2046
    const-string v0, " %.3f"

    .line 2082
    :goto_2
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    if-eqz p4, :cond_1f

    goto :goto_3

    :cond_1f
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, ""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_3
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v2

    invoke-static {v3, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x100be -> :sswitch_1d
        0x100df -> :sswitch_1c
        0x102db -> :sswitch_1b
        0x104fd -> :sswitch_1a
        0x10507 -> :sswitch_19
        0x10632 -> :sswitch_18
        0x10880 -> :sswitch_17
        0x1143f -> :sswitch_16
        0x11c1c -> :sswitch_15
        0x11c49 -> :sswitch_14
        0x11c61 -> :sswitch_13
        0x11f9f -> :sswitch_12
        0x11fd3 -> :sswitch_11
        0x12324 -> :sswitch_10
        0x123d0 -> :sswitch_f
        0x12458 -> :sswitch_e
        0x12857 -> :sswitch_d
        0x129e7 -> :sswitch_c
        0x12b4a -> :sswitch_b
        0x13234 -> :sswitch_a
        0x1375e -> :sswitch_9
        0x13ea1 -> :sswitch_8
        0x1450a -> :sswitch_7
        0x14806 -> :sswitch_6
        0x14a25 -> :sswitch_5
        0x14c8c -> :sswitch_4
        0x14d77 -> :sswitch_3
        0x1527d -> :sswitch_2
        0x1542f -> :sswitch_1
        0x1544e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public formatCurrencyString(JLjava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v6, p3

    .line 1872
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/LocaleController;->formatCurrencyString(JZZZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatCurrencyString(JZZZLjava/lang/String;)Ljava/lang/String;
    .locals 18

    move-object/from16 v1, p0

    .line 1876
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-gez v0, :cond_0

    move v7, v5

    goto :goto_0

    :cond_0
    move v7, v6

    .line 1880
    :goto_0
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    .line 1883
    :try_start_0
    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1885
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 1887
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v10

    const-string v11, "IRR"

    const/4 v12, -0x1

    sparse-switch v10, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v10, "XTR"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    goto/16 :goto_2

    :cond_1
    const/16 v12, 0x1e

    goto/16 :goto_2

    :sswitch_1
    const-string v10, "XPF"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    goto/16 :goto_2

    :cond_2
    const/16 v12, 0x1d

    goto/16 :goto_2

    :sswitch_2
    const-string v10, "XOF"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    goto/16 :goto_2

    :cond_3
    const/16 v12, 0x1c

    goto/16 :goto_2

    :sswitch_3
    const-string v10, "XAF"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    goto/16 :goto_2

    :cond_4
    const/16 v12, 0x1b

    goto/16 :goto_2

    :sswitch_4
    const-string v10, "VUV"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    goto/16 :goto_2

    :cond_5
    const/16 v12, 0x1a

    goto/16 :goto_2

    :sswitch_5
    const-string v10, "VND"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    goto/16 :goto_2

    :cond_6
    const/16 v12, 0x19

    goto/16 :goto_2

    :sswitch_6
    const-string v10, "UYI"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    goto/16 :goto_2

    :cond_7
    const/16 v12, 0x18

    goto/16 :goto_2

    :sswitch_7
    const-string v10, "UGX"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    goto/16 :goto_2

    :cond_8
    const/16 v12, 0x17

    goto/16 :goto_2

    :sswitch_8
    const-string v10, "TND"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    goto/16 :goto_2

    :cond_9
    const/16 v12, 0x16

    goto/16 :goto_2

    :sswitch_9
    const-string v10, "RWF"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    goto/16 :goto_2

    :cond_a
    const/16 v12, 0x15

    goto/16 :goto_2

    :sswitch_a
    const-string v10, "PYG"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    goto/16 :goto_2

    :cond_b
    const/16 v12, 0x14

    goto/16 :goto_2

    :sswitch_b
    const-string v10, "OMR"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    goto/16 :goto_2

    :cond_c
    const/16 v12, 0x13

    goto/16 :goto_2

    :sswitch_c
    const-string v10, "MRO"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    goto/16 :goto_2

    :cond_d
    const/16 v12, 0x12

    goto/16 :goto_2

    :sswitch_d
    const-string v10, "MGA"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    goto/16 :goto_2

    :cond_e
    const/16 v12, 0x11

    goto/16 :goto_2

    :sswitch_e
    const-string v10, "LYD"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    goto/16 :goto_2

    :cond_f
    const/16 v12, 0x10

    goto/16 :goto_2

    :sswitch_f
    const-string v10, "KWD"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    goto/16 :goto_2

    :cond_10
    const/16 v12, 0xf

    goto/16 :goto_2

    :sswitch_10
    const-string v10, "KRW"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11

    goto/16 :goto_2

    :cond_11
    const/16 v12, 0xe

    goto/16 :goto_2

    :sswitch_11
    const-string v10, "KMF"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_12

    goto/16 :goto_2

    :cond_12
    const/16 v12, 0xd

    goto/16 :goto_2

    :sswitch_12
    const-string v10, "JPY"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13

    goto/16 :goto_2

    :cond_13
    const/16 v12, 0xc

    goto/16 :goto_2

    :sswitch_13
    const-string v10, "JOD"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_14

    goto/16 :goto_2

    :cond_14
    const/16 v12, 0xb

    goto/16 :goto_2

    :sswitch_14
    const-string v10, "ISK"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_15

    goto/16 :goto_2

    :cond_15
    const/16 v12, 0xa

    goto/16 :goto_2

    :sswitch_15
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_16

    goto/16 :goto_2

    :cond_16
    const/16 v12, 0x9

    goto/16 :goto_2

    :sswitch_16
    const-string v10, "IQD"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_17

    goto/16 :goto_2

    :cond_17
    const/16 v12, 0x8

    goto/16 :goto_2

    :sswitch_17
    const-string v10, "GNF"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_18

    goto :goto_2

    :cond_18
    const/4 v12, 0x7

    goto :goto_2

    :sswitch_18
    const-string v10, "DJF"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_19

    goto :goto_2

    :cond_19
    const/4 v12, 0x6

    goto :goto_2

    :sswitch_19
    const-string v10, "CVE"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1a

    goto :goto_2

    :cond_1a
    const/4 v12, 0x5

    goto :goto_2

    :sswitch_1a
    const-string v10, "CLP"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1b

    goto :goto_2

    :cond_1b
    const/4 v12, 0x4

    goto :goto_2

    :sswitch_1b
    const-string v10, "CLF"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1c

    goto :goto_2

    :cond_1c
    const/4 v12, 0x3

    goto :goto_2

    :sswitch_1c
    const-string v10, "BYR"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1d

    goto :goto_2

    :cond_1d
    const/4 v12, 0x2

    goto :goto_2

    :sswitch_1d
    const-string v10, "BIF"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1e

    goto :goto_2

    :cond_1e
    move v12, v5

    goto :goto_2

    :sswitch_1e
    const-string v10, "BHD"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1f

    goto :goto_2

    :cond_1f
    move v12, v6

    .line 1949
    :goto_2
    const-string v10, " %.2f"

    const-string v13, " %.0f"

    packed-switch v12, :pswitch_data_0

    long-to-double v3, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v8

    goto :goto_3

    :pswitch_0
    long-to-double v3, v8

    move-object v10, v13

    goto :goto_3

    :pswitch_1
    long-to-double v3, v8

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    div-double/2addr v3, v8

    .line 1945
    const-string v10, " %.1f"

    goto :goto_3

    :pswitch_2
    long-to-float v12, v8

    const/high16 v14, 0x42c80000    # 100.0f

    div-float/2addr v12, v14

    float-to-double v14, v12

    if-eqz p3, :cond_20

    const-wide/16 v16, 0x64

    .line 1900
    rem-long v8, v8, v16

    cmp-long v3, v8, v3

    if-nez v3, :cond_20

    move-object v10, v13

    :cond_20
    move-wide v3, v14

    goto :goto_3

    :pswitch_3
    long-to-double v3, v8

    const-wide v8, 0x40c3880000000000L    # 10000.0

    div-double/2addr v3, v8

    .line 1896
    const-string v10, " %.4f"

    goto :goto_3

    :pswitch_4
    long-to-double v3, v8

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v8

    .line 1916
    const-string v10, " %.3f"

    :goto_3
    if-nez p4, :cond_21

    goto :goto_4

    :cond_21
    move-object v13, v10

    .line 1955
    :goto_4
    const-string v8, ""

    const-string v9, "-"

    if-eqz v0, :cond_28

    .line 1956
    iget-object v5, v1, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    if-eqz v5, :cond_22

    goto :goto_5

    :cond_22
    iget-object v5, v1, Lorg/telegram/messenger/LocaleController;->systemDefaultLocale:Ljava/util/Locale;

    :goto_5
    invoke-static {v5}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v5

    .line 1957
    invoke-virtual {v5, v0}, Ljava/text/NumberFormat;->setCurrency(Ljava/util/Currency;)V

    if-eqz p5, :cond_23

    .line 1959
    invoke-virtual {v5, v6}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    :cond_23
    if-eqz p4, :cond_24

    if-eqz p3, :cond_25

    .line 1961
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1962
    :cond_24
    invoke-virtual {v5, v6}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 1964
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v7, :cond_26

    move-object v8, v9

    :cond_26
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1965
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_27

    .line 1967
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v3, v2

    .line 1968
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v3, v2, :cond_27

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x20

    if-eq v2, v4, :cond_27

    .line 1969
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_27
    return-object v0

    .line 1974
    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v7, :cond_29

    move-object v8, v9

    :cond_29
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v3, v4, v6

    invoke-static {v7, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x100be -> :sswitch_1e
        0x100df -> :sswitch_1d
        0x102db -> :sswitch_1c
        0x104fd -> :sswitch_1b
        0x10507 -> :sswitch_1a
        0x10632 -> :sswitch_19
        0x10880 -> :sswitch_18
        0x1143f -> :sswitch_17
        0x11c1c -> :sswitch_16
        0x11c49 -> :sswitch_15
        0x11c61 -> :sswitch_14
        0x11f9f -> :sswitch_13
        0x11fd3 -> :sswitch_12
        0x12324 -> :sswitch_11
        0x123d0 -> :sswitch_10
        0x12458 -> :sswitch_f
        0x12857 -> :sswitch_e
        0x129e7 -> :sswitch_d
        0x12b4a -> :sswitch_c
        0x13234 -> :sswitch_b
        0x1375e -> :sswitch_a
        0x13ea1 -> :sswitch_9
        0x1450a -> :sswitch_8
        0x14806 -> :sswitch_7
        0x14a25 -> :sswitch_6
        0x14c8c -> :sswitch_5
        0x14d77 -> :sswitch_4
        0x1527d -> :sswitch_3
        0x1542f -> :sswitch_2
        0x1544e -> :sswitch_1
        0x154d6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getBuiltinLanguageByPlural(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .locals 4

    .line 816
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 817
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 818
    iget-object v2, v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string/jumbo v3, "remote"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v3, "_raw"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    iget-object v2, v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getChatDate()Lorg/telegram/messenger/time/FastDateFormat;
    .locals 3

    .line 257
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->chatDate:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_2

    .line 258
    monitor-enter p0

    .line 259
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->chatDate:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_1

    .line 260
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 261
    :cond_0
    :goto_0
    const-string v1, "chatDate"

    sget v2, Lorg/telegram/messenger/R$string;->chatDate:I

    invoke-direct {p0, v1, v2}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "d MMMM"

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->chatDate:Lorg/telegram/messenger/time/FastDateFormat;

    .line 263
    :cond_1
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 265
    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->chatDate:Lorg/telegram/messenger/time/FastDateFormat;

    return-object v0
.end method

.method public getChatDateShort()Lorg/telegram/messenger/time/FastDateFormat;
    .locals 3

    .line 270
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->chatDateShort:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_2

    .line 271
    monitor-enter p0

    .line 272
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->chatDateShort:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_1

    .line 273
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 274
    :cond_0
    :goto_0
    const-string v1, "chatDateShort"

    sget v2, Lorg/telegram/messenger/R$string;->chatDateShort:I

    invoke-direct {p0, v1, v2}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "d MMM"

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->chatDateShort:Lorg/telegram/messenger/time/FastDateFormat;

    .line 276
    :cond_1
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 278
    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->chatDateShort:Lorg/telegram/messenger/time/FastDateFormat;

    return-object v0
.end method

.method public getChatFullDate()Lorg/telegram/messenger/time/FastDateFormat;
    .locals 3

    .line 283
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->chatFullDate:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_2

    .line 284
    monitor-enter p0

    .line 285
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->chatFullDate:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_1

    .line 286
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 287
    :cond_0
    :goto_0
    const-string v1, "chatFullDate"

    sget v2, Lorg/telegram/messenger/R$string;->chatFullDate:I

    invoke-direct {p0, v1, v2}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "d MMMM yyyy"

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->chatFullDate:Lorg/telegram/messenger/time/FastDateFormat;

    .line 289
    :cond_1
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 291
    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->chatFullDate:Lorg/telegram/messenger/time/FastDateFormat;

    return-object v0
.end method

.method public getCurrentLocale()Ljava/util/Locale;
    .locals 1

    .line 1442
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getCurrentLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .locals 1

    .line 1438
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    return-object v0
.end method

.method public getExportFileFormatter()Lorg/telegram/messenger/time/FastDateFormat;
    .locals 3

    .line 121
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->exportFileFormatter:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_2

    .line 122
    monitor-enter p0

    .line 123
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->exportFileFormatter:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_1

    .line 124
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 125
    :cond_0
    :goto_0
    const-string v1, "dd-MM-yyyy_HH-mm"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->exportFileFormatter:Lorg/telegram/messenger/time/FastDateFormat;

    .line 127
    :cond_1
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 129
    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->exportFileFormatter:Lorg/telegram/messenger/time/FastDateFormat;

    return-object v0
.end method

.method public getExportFullDateFormatter()Lorg/telegram/messenger/time/FastDateFormat;
    .locals 3

    .line 109
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->exportFullDateFormatter:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_2

    .line 110
    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->exportFullDateFormatter:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_1

    .line 112
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 113
    :cond_0
    :goto_0
    const-string v1, "dd MMM yyyy HH:mm:ss"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->exportFullDateFormatter:Lorg/telegram/messenger/time/FastDateFormat;

    .line 115
    :cond_1
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 117
    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->exportFullDateFormatter:Lorg/telegram/messenger/time/FastDateFormat;

    return-object v0
.end method

.method public getFormatterBannedUntil()Lorg/telegram/messenger/time/FastDateFormat;
    .locals 3

    .line 231
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterBannedUntil:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_4

    .line 232
    monitor-enter p0

    .line 233
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterBannedUntil:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_3

    .line 234
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    .line 235
    :cond_0
    :goto_0
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->is24HourFormat:Z

    if-eqz v1, :cond_1

    const-string v1, "formatterBannedUntil24H"

    sget v2, Lorg/telegram/messenger/R$string;->formatterBannedUntil24H:I

    :goto_1
    invoke-direct {p0, v1, v2}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_1
    const-string v1, "formatterBannedUntil12H"

    sget v2, Lorg/telegram/messenger/R$string;->formatterBannedUntil12H:I

    goto :goto_1

    :goto_2
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->is24HourFormat:Z

    if-eqz v2, :cond_2

    const-string v2, "MMM dd yyyy, HH:mm"

    goto :goto_3

    :cond_2
    const-string v2, "MMM dd yyyy, h:mm a"

    :goto_3
    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterBannedUntil:Lorg/telegram/messenger/time/FastDateFormat;

    .line 237
    :cond_3
    monitor-exit p0

    goto :goto_5

    :goto_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 239
    :cond_4
    :goto_5
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterBannedUntil:Lorg/telegram/messenger/time/FastDateFormat;

    return-object v0
.end method

.method public getFormatterBannedUntilThisYear()Lorg/telegram/messenger/time/FastDateFormat;
    .locals 3

    .line 244
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterBannedUntilThisYear:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_4

    .line 245
    monitor-enter p0

    .line 246
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterBannedUntilThisYear:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_3

    .line 247
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    .line 248
    :cond_0
    :goto_0
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->is24HourFormat:Z

    if-eqz v1, :cond_1

    const-string v1, "formatterBannedUntilThisYear24H"

    sget v2, Lorg/telegram/messenger/R$string;->formatterBannedUntilThisYear24H:I

    :goto_1
    invoke-direct {p0, v1, v2}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_1
    const-string v1, "formatterBannedUntilThisYear12H"

    sget v2, Lorg/telegram/messenger/R$string;->formatterBannedUntilThisYear12H:I

    goto :goto_1

    :goto_2
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->is24HourFormat:Z

    if-eqz v2, :cond_2

    const-string v2, "MMM dd, HH:mm"

    goto :goto_3

    :cond_2
    const-string v2, "MMM dd, h:mm a"

    :goto_3
    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterBannedUntilThisYear:Lorg/telegram/messenger/time/FastDateFormat;

    .line 250
    :cond_3
    monitor-exit p0

    goto :goto_5

    :goto_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 252
    :cond_4
    :goto_5
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterBannedUntilThisYear:Lorg/telegram/messenger/time/FastDateFormat;

    return-object v0
.end method

.method public getFormatterBoostExpired()Lorg/telegram/messenger/time/FastDateFormat;
    .locals 3

    .line 361
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterBoostExpired:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_2

    .line 362
    monitor-enter p0

    .line 363
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterBoostExpired:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_1

    .line 364
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 365
    :cond_0
    :goto_0
    const-string v1, "formatterBoostExpired"

    sget v2, Lorg/telegram/messenger/R$string;->formatterBoostExpired:I

    invoke-direct {p0, v1, v2}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MMM dd, yyyy"

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterBoostExpired:Lorg/telegram/messenger/time/FastDateFormat;

    .line 367
    :cond_1
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 369
    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterBoostExpired:Lorg/telegram/messenger/time/FastDateFormat;

    return-object v0
.end method

.method public getFormatterConstDay()Lorg/telegram/messenger/time/FastDateFormat;
    .locals 4

    .line 135
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterConstDay:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_7

    .line 136
    monitor-enter p0

    .line 137
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterConstDay:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_6

    .line 138
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    .line 139
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 141
    const-string v1, "en"

    .line 143
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ko"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    :cond_3
    :goto_1
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->is24HourFormat:Z

    if-eqz v1, :cond_4

    const-string v2, "HH:mm"

    goto :goto_2

    :cond_4
    const-string v2, "h:mm a"

    :goto_2
    if-eqz v1, :cond_5

    const-string v1, "HH:mm"

    goto :goto_3

    :cond_5
    const-string v1, "h:mm a"

    :goto_3
    invoke-direct {p0, v0, v2, v1}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterConstDay:Lorg/telegram/messenger/time/FastDateFormat;

    .line 146
    :cond_6
    monitor-exit p0

    goto :goto_5

    :goto_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 148
    :cond_7
    :goto_5
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterConstDay:Lorg/telegram/messenger/time/FastDateFormat;

    return-object v0
.end method

.method public getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;
    .locals 3

    .line 79
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_a

    .line 80
    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_9

    .line 82
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_5

    .line 83
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 84
    const-string v2, "ar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "ko"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    :cond_2
    :goto_1
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->is24HourFormat:Z

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->formatTimeWithSeconds:Z

    if-eqz v1, :cond_3

    const-string v1, "formatterDay24HSec"

    sget v2, Lorg/telegram/messenger/R$string;->formatterDay24HSec:I

    goto :goto_2

    :cond_3
    const-string v1, "formatterDay24H"

    sget v2, Lorg/telegram/messenger/R$string;->formatterDay24H:I

    :goto_2
    invoke-direct {p0, v1, v2}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    sget-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->formatTimeWithSeconds:Z

    if-eqz v1, :cond_5

    const-string v1, "formatterDay12HSec"

    sget v2, Lorg/telegram/messenger/R$string;->formatterDay12HSec:I

    goto :goto_2

    :cond_5
    const-string v1, "formatterDay12H"

    sget v2, Lorg/telegram/messenger/R$string;->formatterDay12H:I

    goto :goto_2

    :goto_3
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->is24HourFormat:Z

    if-eqz v2, :cond_7

    sget-boolean v2, Lcom/exteragram/messenger/ExteraConfig;->formatTimeWithSeconds:Z

    if-eqz v2, :cond_6

    const-string v2, "HH:mm:ss"

    goto :goto_4

    :cond_6
    const-string v2, "HH:mm"

    goto :goto_4

    :cond_7
    sget-boolean v2, Lcom/exteragram/messenger/ExteraConfig;->formatTimeWithSeconds:Z

    if-eqz v2, :cond_8

    const-string v2, "h:mm:ss a"

    goto :goto_4

    :cond_8
    const-string v2, "h:mm a"

    :goto_4
    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    .line 86
    :cond_9
    monitor-exit p0

    goto :goto_6

    :goto_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 88
    :cond_a
    :goto_6
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    return-object v0
.end method

.method public getFormatterDayMonth()Lorg/telegram/messenger/time/FastDateFormat;
    .locals 3

    .line 179
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterDayMonth:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_2

    .line 180
    monitor-enter p0

    .line 181
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterDayMonth:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_1

    .line 182
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 183
    :cond_0
    :goto_0
    const-string v1, "formatterMonth"

    sget v2, Lorg/telegram/messenger/R$string;->formatterMonth:I

    invoke-direct {p0, v1, v2}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dd MMM"

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterDayMonth:Lorg/telegram/messenger/time/FastDateFormat;

    .line 185
    :cond_1
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 187
    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterDayMonth:Lorg/telegram/messenger/time/FastDateFormat;

    return-object v0
.end method

.method public getFormatterDayWithSeconds()Lorg/telegram/messenger/time/FastDateFormat;
    .locals 3

    .line 93
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterDayWithSeconds:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_6

    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterDayWithSeconds:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_5

    .line 96
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_5

    .line 97
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 98
    const-string v2, "ar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "ko"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    :cond_2
    :goto_1
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->is24HourFormat:Z

    if-eqz v1, :cond_3

    const-string v1, "formatterDayWithSeconds24H"

    sget v2, Lorg/telegram/messenger/R$string;->formatterDayWithSeconds24H:I

    :goto_2
    invoke-direct {p0, v1, v2}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    const-string v1, "formatterDayWithSeconds12H"

    sget v2, Lorg/telegram/messenger/R$string;->formatterDayWithSeconds12H:I

    goto :goto_2

    :goto_3
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->is24HourFormat:Z

    if-eqz v2, :cond_4

    const-string v2, "HH:mm:ss"

    goto :goto_4

    :cond_4
    const-string v2, "h:mm:ss a"

    :goto_4
    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterDayWithSeconds:Lorg/telegram/messenger/time/FastDateFormat;

    .line 100
    :cond_5
    monitor-exit p0

    goto :goto_6

    :goto_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 102
    :cond_6
    :goto_6
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterDayWithSeconds:Lorg/telegram/messenger/time/FastDateFormat;

    return-object v0
.end method

.method public getFormatterGiveawayCard()Lorg/telegram/messenger/time/FastDateFormat;
    .locals 3

    .line 348
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterGiveawayCard:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_2

    .line 349
    monitor-enter p0

    .line 350
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterGiveawayCard:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_1

    .line 351
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 352
    :cond_0
    :goto_0
    const-string v1, "formatterGiveawayCard"

    sget v2, Lorg/telegram/messenger/R$string;->formatterGiveawayCard:I

    invoke-direct {p0, v1, v2}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dd MMM yyyy"

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterGiveawayCard:Lorg/telegram/messenger/time/FastDateFormat;

    .line 354
    :cond_1
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 356
    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterGiveawayCard:Lorg/telegram/messenger/time/FastDateFormat;

    return-object v0
.end method

.method public getFormatterGiveawayMonthDay()Lorg/telegram/messenger/time/FastDateFormat;
    .locals 3

    .line 374
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterGiveawayMonthDay:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_2

    .line 375
    monitor-enter p0

    .line 376
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterGiveawayMonthDay:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_1

    .line 377
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 378
    :cond_0
    :goto_0
    const-string v1, "formatterGiveawayMonthDay"

    sget v2, Lorg/telegram/messenger/R$string;->formatterGiveawayMonthDay:I

    invoke-direct {p0, v1, v2}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MMMM dd"

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterGiveawayMonthDay:Lorg/telegram/messenger/time/FastDateFormat;

    .line 380
    :cond_1
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 382
    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterGiveawayMonthDay:Lorg/telegram/messenger/time/FastDateFormat;

    return-object v0
.end method

.method public getFormatterGiveawayMonthDayYear()Lorg/telegram/messenger/time/FastDateFormat;
    .locals 3

    .line 387
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterGiveawayMonthDayYear:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_2

    .line 388
    monitor-enter p0

    .line 389
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterGiveawayMonthDayYear:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_1

    .line 390
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 391
    :cond_0
    :goto_0
    const-string v1, "formatterGiveawayMonthDayYear"

    sget v2, Lorg/telegram/messenger/R$string;->formatterGiveawayMonthDayYear:I

    invoke-direct {p0, v1, v2}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MMMM dd, yyyy"

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterGiveawayMonthDayYear:Lorg/telegram/messenger/time/FastDateFormat;

    .line 393
    :cond_1
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 395
    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterGiveawayMonthDayYear:Lorg/telegram/messenger/time/FastDateFormat;

    return-object v0
.end method

.method public getFormatterMonthOnly()Lorg/telegram/messenger/time/FastDateFormat;
    .locals 3

    .line 335
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterMonthOnly:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_2

    .line 336
    monitor-enter p0

    .line 337
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterMonthOnly:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_1

    .line 338
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 339
    :cond_0
    :goto_0
    const-string v1, "formatterMonthOnly"

    sget v2, Lorg/telegram/messenger/R$string;->formatterMonthOnly:I

    invoke-direct {p0, v1, v2}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MMMM"

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterMonthOnly:Lorg/telegram/messenger/time/FastDateFormat;

    .line 341
    :cond_1
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 343
    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterMonthOnly:Lorg/telegram/messenger/time/FastDateFormat;

    return-object v0
.end method

.method public getFormatterMonthYear()Lorg/telegram/messenger/time/FastDateFormat;
    .locals 3

    .line 322
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterMonthYear:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_2

    .line 323
    monitor-enter p0

    .line 324
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterMonthYear:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_1

    .line 325
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 326
    :cond_0
    :goto_0
    const-string v1, "formatterMonthYear"

    sget v2, Lorg/telegram/messenger/R$string;->formatterMonthYear:I

    invoke-direct {p0, v1, v2}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MMM yyyy"

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterMonthYear:Lorg/telegram/messenger/time/FastDateFormat;

    .line 328
    :cond_1
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 330
    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterMonthYear:Lorg/telegram/messenger/time/FastDateFormat;

    return-object v0
.end method

.method public getFormatterScheduleDay()Lorg/telegram/messenger/time/FastDateFormat;
    .locals 3

    .line 296
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleDay:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_2

    .line 297
    monitor-enter p0

    .line 298
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleDay:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_1

    .line 299
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 300
    :cond_0
    :goto_0
    const-string v1, "formatDateSchedule"

    sget v2, Lorg/telegram/messenger/R$string;->formatDateSchedule:I

    invoke-direct {p0, v1, v2}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MMM d"

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleDay:Lorg/telegram/messenger/time/FastDateFormat;

    .line 302
    :cond_1
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 304
    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleDay:Lorg/telegram/messenger/time/FastDateFormat;

    return-object v0
.end method

.method public getFormatterScheduleSend(I)Lorg/telegram/messenger/time/FastDateFormat;
    .locals 4

    if-ltz p1, :cond_3

    .line 400
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleSend:[Lorg/telegram/messenger/time/FastDateFormat;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto/16 :goto_1

    .line 402
    :cond_0
    aget-object v0, v0, p1

    if-nez v0, :cond_2

    .line 403
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 422
    :pswitch_0
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleSend:[Lorg/telegram/messenger/time/FastDateFormat;

    const-string v2, "PublishDayYearAt"

    sget v3, Lorg/telegram/messenger/R$string;->PublishDayYearAt:I

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\'Publish on\' MMM d yyyy \'at\' HH:mm"

    invoke-direct {p0, v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    aput-object v0, v1, p1

    goto/16 :goto_0

    .line 421
    :pswitch_1
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleSend:[Lorg/telegram/messenger/time/FastDateFormat;

    const-string v2, "PublishDayAt"

    sget v3, Lorg/telegram/messenger/R$string;->PublishDayAt:I

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\'Publish on\' MMM d \'at\' HH:mm"

    invoke-direct {p0, v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    aput-object v0, v1, p1

    goto/16 :goto_0

    .line 420
    :pswitch_2
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleSend:[Lorg/telegram/messenger/time/FastDateFormat;

    const-string v2, "PublishTodayAt"

    sget v3, Lorg/telegram/messenger/R$string;->PublishTodayAt:I

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\'Publish today at\' HH:mm"

    invoke-direct {p0, v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    aput-object v0, v1, p1

    goto/16 :goto_0

    .line 419
    :pswitch_3
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleSend:[Lorg/telegram/messenger/time/FastDateFormat;

    const-string v2, "StartsDayYearAt"

    sget v3, Lorg/telegram/messenger/R$string;->StartsDayYearAt:I

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\'Starts on\' MMM d yyyy \'at\' HH:mm"

    invoke-direct {p0, v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    aput-object v0, v1, p1

    goto/16 :goto_0

    .line 418
    :pswitch_4
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleSend:[Lorg/telegram/messenger/time/FastDateFormat;

    const-string v2, "StartsDayAt"

    sget v3, Lorg/telegram/messenger/R$string;->StartsDayAt:I

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\'Starts on\' MMM d \'at\' HH:mm"

    invoke-direct {p0, v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    aput-object v0, v1, p1

    goto/16 :goto_0

    .line 417
    :pswitch_5
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleSend:[Lorg/telegram/messenger/time/FastDateFormat;

    const-string v2, "StartsTodayAt"

    sget v3, Lorg/telegram/messenger/R$string;->StartsTodayAt:I

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\'Starts today at\' HH:mm"

    invoke-direct {p0, v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    aput-object v0, v1, p1

    goto/16 :goto_0

    .line 416
    :pswitch_6
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleSend:[Lorg/telegram/messenger/time/FastDateFormat;

    const-string v2, "StartShortDayYearAt"

    sget v3, Lorg/telegram/messenger/R$string;->StartShortDayYearAt:I

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MMM d yyyy, HH:mm"

    invoke-direct {p0, v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    aput-object v0, v1, p1

    goto/16 :goto_0

    .line 415
    :pswitch_7
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleSend:[Lorg/telegram/messenger/time/FastDateFormat;

    const-string v2, "StartShortDayAt"

    sget v3, Lorg/telegram/messenger/R$string;->StartShortDayAt:I

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MMM d\',\' HH:mm"

    invoke-direct {p0, v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    aput-object v0, v1, p1

    goto/16 :goto_0

    .line 414
    :pswitch_8
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleSend:[Lorg/telegram/messenger/time/FastDateFormat;

    const-string v2, "StartShortTodayAt"

    sget v3, Lorg/telegram/messenger/R$string;->StartShortTodayAt:I

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\'Today,\' HH:mm"

    invoke-direct {p0, v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    aput-object v0, v1, p1

    goto/16 :goto_0

    .line 413
    :pswitch_9
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleSend:[Lorg/telegram/messenger/time/FastDateFormat;

    const-string v2, "StartDayYearAt"

    sget v3, Lorg/telegram/messenger/R$string;->StartDayYearAt:I

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\'Start on\' MMM d yyyy \'at\' HH:mm"

    invoke-direct {p0, v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    aput-object v0, v1, p1

    goto/16 :goto_0

    .line 412
    :pswitch_a
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleSend:[Lorg/telegram/messenger/time/FastDateFormat;

    const-string v2, "StartDayAt"

    sget v3, Lorg/telegram/messenger/R$string;->StartDayAt:I

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\'Start on\' MMM d \'at\' HH:mm"

    invoke-direct {p0, v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    aput-object v0, v1, p1

    goto/16 :goto_0

    .line 411
    :pswitch_b
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleSend:[Lorg/telegram/messenger/time/FastDateFormat;

    const-string v2, "StartTodayAt"

    sget v3, Lorg/telegram/messenger/R$string;->StartTodayAt:I

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\'Start today at\' HH:mm"

    invoke-direct {p0, v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    aput-object v0, v1, p1

    goto :goto_0

    .line 410
    :pswitch_c
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleSend:[Lorg/telegram/messenger/time/FastDateFormat;

    const-string v2, "RemindDayYearAt"

    sget v3, Lorg/telegram/messenger/R$string;->RemindDayYearAt:I

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\'Remind on\' MMM d yyyy \'at\' HH:mm"

    invoke-direct {p0, v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    aput-object v0, v1, p1

    goto :goto_0

    .line 409
    :pswitch_d
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleSend:[Lorg/telegram/messenger/time/FastDateFormat;

    const-string v2, "RemindDayAt"

    sget v3, Lorg/telegram/messenger/R$string;->RemindDayAt:I

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\'Remind on\' MMM d \'at\' HH:mm"

    invoke-direct {p0, v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    aput-object v0, v1, p1

    goto :goto_0

    .line 408
    :pswitch_e
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleSend:[Lorg/telegram/messenger/time/FastDateFormat;

    const-string v2, "RemindTodayAt"

    sget v3, Lorg/telegram/messenger/R$string;->RemindTodayAt:I

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\'Remind today at\' HH:mm"

    invoke-direct {p0, v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    aput-object v0, v1, p1

    goto :goto_0

    .line 407
    :pswitch_f
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleSend:[Lorg/telegram/messenger/time/FastDateFormat;

    const-string v2, "SendDayYearAt"

    sget v3, Lorg/telegram/messenger/R$string;->SendDayYearAt:I

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\'Send on\' MMM d yyyy \'at\' HH:mm"

    invoke-direct {p0, v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    aput-object v0, v1, p1

    goto :goto_0

    .line 406
    :pswitch_10
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleSend:[Lorg/telegram/messenger/time/FastDateFormat;

    const-string v2, "SendDayAt"

    sget v3, Lorg/telegram/messenger/R$string;->SendDayAt:I

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\'Send on\' MMM d \'at\' HH:mm"

    invoke-direct {p0, v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    aput-object v0, v1, p1

    goto :goto_0

    .line 405
    :pswitch_11
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleSend:[Lorg/telegram/messenger/time/FastDateFormat;

    const-string v2, "SendTodayAt"

    sget v3, Lorg/telegram/messenger/R$string;->SendTodayAt:I

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\'Send today at\' HH:mm"

    invoke-direct {p0, v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    aput-object v0, v1, p1

    .line 425
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleSend:[Lorg/telegram/messenger/time/FastDateFormat;

    aget-object p1, v0, p1

    return-object p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getFormatterScheduleYear()Lorg/telegram/messenger/time/FastDateFormat;
    .locals 3

    .line 309
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleYear:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_2

    .line 310
    monitor-enter p0

    .line 311
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleYear:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_1

    .line 312
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 313
    :cond_0
    :goto_0
    const-string v1, "formatDateScheduleYear"

    sget v2, Lorg/telegram/messenger/R$string;->formatDateScheduleYear:I

    invoke-direct {p0, v1, v2}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MMM d yyyy"

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleYear:Lorg/telegram/messenger/time/FastDateFormat;

    .line 315
    :cond_1
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 317
    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleYear:Lorg/telegram/messenger/time/FastDateFormat;

    return-object v0
.end method

.method public getFormatterStats()Lorg/telegram/messenger/time/FastDateFormat;
    .locals 3

    .line 218
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterStats:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_4

    .line 219
    monitor-enter p0

    .line 220
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterStats:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_3

    .line 221
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    .line 222
    :cond_0
    :goto_0
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->is24HourFormat:Z

    if-eqz v1, :cond_1

    const-string v1, "formatterStats24H"

    sget v2, Lorg/telegram/messenger/R$string;->formatterStats24H:I

    :goto_1
    invoke-direct {p0, v1, v2}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_1
    const-string v1, "formatterStats12H"

    sget v2, Lorg/telegram/messenger/R$string;->formatterStats12H:I

    goto :goto_1

    :goto_2
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->is24HourFormat:Z

    if-eqz v2, :cond_2

    const-string v2, "MMM dd yyyy, HH:mm"

    goto :goto_3

    :cond_2
    const-string v2, "MMM dd yyyy, h:mm a"

    :goto_3
    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterStats:Lorg/telegram/messenger/time/FastDateFormat;

    .line 224
    :cond_3
    monitor-exit p0

    goto :goto_5

    :goto_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 226
    :cond_4
    :goto_5
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterStats:Lorg/telegram/messenger/time/FastDateFormat;

    return-object v0
.end method

.method public getFormatterWeek()Lorg/telegram/messenger/time/FastDateFormat;
    .locals 3

    .line 153
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterWeek:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_2

    .line 154
    monitor-enter p0

    .line 155
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterWeek:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_1

    .line 156
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 157
    :cond_0
    :goto_0
    const-string v1, "formatterWeek"

    sget v2, Lorg/telegram/messenger/R$string;->formatterWeek:I

    invoke-direct {p0, v1, v2}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EEE"

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterWeek:Lorg/telegram/messenger/time/FastDateFormat;

    .line 159
    :cond_1
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 161
    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterWeek:Lorg/telegram/messenger/time/FastDateFormat;

    return-object v0
.end method

.method public getFormatterWeekLong()Lorg/telegram/messenger/time/FastDateFormat;
    .locals 3

    .line 166
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterWeekLong:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_2

    .line 167
    monitor-enter p0

    .line 168
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterWeekLong:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_1

    .line 169
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 170
    :cond_0
    :goto_0
    const-string v1, "formatterWeekLong"

    sget v2, Lorg/telegram/messenger/R$string;->formatterWeekLong:I

    invoke-direct {p0, v1, v2}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EEEE"

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterWeekLong:Lorg/telegram/messenger/time/FastDateFormat;

    .line 172
    :cond_1
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 174
    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterWeekLong:Lorg/telegram/messenger/time/FastDateFormat;

    return-object v0
.end method

.method public getFormatterYear()Lorg/telegram/messenger/time/FastDateFormat;
    .locals 3

    .line 192
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_2

    .line 193
    monitor-enter p0

    .line 194
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_1

    .line 195
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 196
    :cond_0
    :goto_0
    const-string v1, "formatterYear"

    sget v2, Lorg/telegram/messenger/R$string;->formatterYear:I

    invoke-direct {p0, v1, v2}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dd.MM.yy"

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

    .line 198
    :cond_1
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 200
    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

    return-object v0
.end method

.method public getFormatterYearMax()Lorg/telegram/messenger/time/FastDateFormat;
    .locals 3

    .line 205
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterYearMax:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_2

    .line 206
    monitor-enter p0

    .line 207
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterYearMax:Lorg/telegram/messenger/time/FastDateFormat;

    if-nez v0, :cond_1

    .line 208
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 209
    :cond_0
    :goto_0
    const-string v1, "formatterYearMax"

    sget v2, Lorg/telegram/messenger/R$string;->formatterYearMax:I

    invoke-direct {p0, v1, v2}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dd.MM.yyyy"

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterYearMax:Lorg/telegram/messenger/time/FastDateFormat;

    .line 211
    :cond_1
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 213
    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterYearMax:Lorg/telegram/messenger/time/FastDateFormat;

    return-object v0
.end method

.method public getLanguageFromDict(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 813
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, "-"

    const-string v2, "_"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    return-object p1
.end method

.method public getSystemDefaultLocale()Ljava/util/Locale;
    .locals 1

    .line 847
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->systemDefaultLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getTranslitString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3423
    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTranslitString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 3427
    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTranslitString(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 27

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 3435
    :cond_0
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v3, "m"

    const-string/jumbo v4, "p"

    const-string/jumbo v5, "v"

    const-string v6, "b"

    const-string/jumbo v7, "k"

    const-string v8, "h"

    const-string/jumbo v9, "z"

    const-string v10, "g"

    const-string v11, "d"

    const-string/jumbo v12, "n"

    const-string/jumbo v13, "t"

    const-string/jumbo v14, "s"

    const-string/jumbo v15, "l"

    move-object/from16 v16, v2

    const-string v2, "i"

    const-string/jumbo v1, "r"

    move-object/from16 v17, v8

    const-string/jumbo v8, "u"

    move-object/from16 v18, v8

    const-string v8, "a"

    move-object/from16 v19, v13

    const-string v13, "e"

    move-object/from16 v20, v14

    const-string/jumbo v14, "o"

    if-nez v16, :cond_1

    move-object/from16 v16, v1

    .line 3436
    new-instance v1, Ljava/util/HashMap;

    move-object/from16 v21, v4

    const/16 v4, 0x21

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    .line 3437
    const-string/jumbo v4, "\u0430"

    invoke-virtual {v1, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3438
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0431"

    invoke-virtual {v1, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3439
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0432"

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3440
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0433"

    invoke-virtual {v1, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3441
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0434"

    invoke-virtual {v1, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3442
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0435"

    invoke-virtual {v1, v4, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3443
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0451"

    move-object/from16 v22, v10

    const-string/jumbo v10, "yo"

    invoke-virtual {v1, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3444
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0436"

    const-string/jumbo v10, "zh"

    invoke-virtual {v1, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3445
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0437"

    invoke-virtual {v1, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3446
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0438"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3447
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0439"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3448
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u043a"

    invoke-virtual {v1, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3449
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u043b"

    invoke-virtual {v1, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3450
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u043c"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3451
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u043d"

    invoke-virtual {v1, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3452
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u043e"

    invoke-virtual {v1, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3453
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u043f"

    move-object/from16 v10, v21

    invoke-virtual {v1, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3454
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0440"

    move-object/from16 v21, v3

    move-object/from16 v3, v16

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3455
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0441"

    move-object/from16 v16, v9

    move-object/from16 v9, v20

    invoke-virtual {v1, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3456
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0442"

    move-object/from16 v20, v5

    move-object/from16 v5, v19

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3457
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0443"

    move-object/from16 v5, v18

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3458
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0444"

    move-object/from16 v18, v9

    const-string v9, "f"

    invoke-virtual {v1, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3459
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0445"

    move-object/from16 v9, v17

    invoke-virtual {v1, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3460
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0446"

    move-object/from16 v17, v10

    const-string/jumbo v10, "ts"

    invoke-virtual {v1, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3461
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0447"

    const-string v10, "ch"

    invoke-virtual {v1, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3462
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0448"

    const-string/jumbo v10, "sh"

    invoke-virtual {v1, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3463
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0449"

    const-string/jumbo v10, "sch"

    invoke-virtual {v1, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3464
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u044b"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3465
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u044c"

    const-string v10, ""

    invoke-virtual {v1, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3466
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u044a"

    const-string v10, ""

    invoke-virtual {v1, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3467
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u044d"

    invoke-virtual {v1, v4, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3468
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u044e"

    const-string/jumbo v10, "yu"

    invoke-virtual {v1, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3469
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u044f"

    const-string/jumbo v10, "ya"

    invoke-virtual {v1, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object/from16 v16, v20

    move-object/from16 v20, v5

    move-object/from16 v5, v18

    move-object/from16 v18, v16

    move-object/from16 v21, v3

    move-object/from16 v16, v9

    move-object/from16 v22, v10

    move-object/from16 v9, v17

    move-object v3, v1

    move-object/from16 v17, v4

    .line 3472
    :goto_0
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    if-nez v1, :cond_2

    .line 3473
    new-instance v1, Ljava/util/HashMap;

    const/16 v4, 0x1e8

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    .line 3474
    const-string/jumbo v4, "\u023c"

    const-string v10, "c"

    invoke-virtual {v1, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3475
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u1d87"

    invoke-virtual {v1, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3476
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0256"

    invoke-virtual {v1, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3477
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u1eff"

    move-object/from16 v23, v12

    const-string/jumbo v12, "y"

    invoke-virtual {v1, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3478
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u1d13"

    invoke-virtual {v1, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3479
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u00f8"

    invoke-virtual {v1, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3480
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u1e01"

    invoke-virtual {v1, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3481
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u02af"

    invoke-virtual {v1, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3482
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0177"

    invoke-virtual {v1, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3483
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u029e"

    invoke-virtual {v1, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3484
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u1eeb"

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3485
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\ua733"

    move-object/from16 v24, v5

    const-string v5, "aa"

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3486
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0133"

    const-string v5, "ij"

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3487
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u1e3d"

    invoke-virtual {v1, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3488
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u026a"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3489
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u1e07"

    invoke-virtual {v1, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3490
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0280"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3491
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u011b"

    invoke-virtual {v1, v4, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3492
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\ufb03"

    const-string v5, "ffi"

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3493
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u01a1"

    invoke-virtual {v1, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3494
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u2c79"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3495
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u1ed3"

    invoke-virtual {v1, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3496
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u01d0"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3497
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\ua755"

    move-object/from16 v5, v17

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3498
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u00fd"

    invoke-virtual {v1, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3499
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u1e1d"

    invoke-virtual {v1, v4, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3500
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u2092"

    invoke-virtual {v1, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3501
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u2c65"

    invoke-virtual {v1, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3502
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0299"

    invoke-virtual {v1, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3503
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u1e1b"

    invoke-virtual {v1, v4, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3504
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0188"

    invoke-virtual {v1, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3505
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0266"

    invoke-virtual {v1, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3506
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u1d6c"

    invoke-virtual {v1, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3507
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u1e63"

    move-object/from16 v17, v9

    move-object/from16 v9, v18

    invoke-virtual {v1, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3508
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0111"

    invoke-virtual {v1, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3509
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u1ed7"

    invoke-virtual {v1, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3510
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u025f"

    move-object/from16 v18, v2

    const-string/jumbo v2, "j"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3511
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e9a"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3512
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u024f"

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3513
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u028c"

    move-object/from16 v4, v20

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3514
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua753"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3515
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ufb01"

    const-string v4, "fi"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3516
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d84"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3517
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e0f"

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3518
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d0c"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3519
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0117"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3520
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d0b"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3521
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u010b"

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3522
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0281"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3523
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0195"

    const-string v4, "hv"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3524
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0180"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3525
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e4d"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3526
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0223"

    const-string/jumbo v4, "ou"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3527
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01f0"

    const-string/jumbo v4, "j"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3528
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d83"

    move-object/from16 v4, v22

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3529
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e4b"

    move-object/from16 v22, v5

    move-object/from16 v5, v23

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3530
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0249"

    move-object/from16 v23, v11

    const-string/jumbo v11, "j"

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3531
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01e7"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3532
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01f3"

    const-string v11, "dz"

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3533
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u017a"

    move-object/from16 v11, v16

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3534
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua737"

    move-object/from16 v16, v6

    const-string v6, "au"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3535
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01d6"

    move-object/from16 v6, v24

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3536
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d79"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3537
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u022f"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3538
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0250"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3539
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0105"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3540
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00f5"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3541
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u027b"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3542
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua74d"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3543
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01df"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3544
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0234"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3545
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0282"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3546
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ufb02"

    move-object/from16 v24, v14

    const-string v14, "fl"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3547
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0209"

    move-object/from16 v14, v18

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3548
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u2c7b"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3549
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e49"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3550
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00ef"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3551
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00f1"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3552
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d09"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3553
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0287"

    move-object/from16 v18, v5

    move-object/from16 v5, v19

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3554
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e93"

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3555
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ef7"

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3556
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0233"

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3557
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e69"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3558
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u027d"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3559
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u011d"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3560
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d1d"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3561
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e33"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3562
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua76b"

    move-object/from16 v19, v12

    const-string v12, "et"

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3563
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u012b"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3564
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0165"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3565
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua73f"

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3566
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u029f"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3567
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua739"

    const-string v12, "av"

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3568
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00fb"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3569
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00e6"

    const-string v12, "ae"

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3570
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0103"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3571
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01d8"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3572
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua785"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3573
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d63"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3574
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d00"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3575
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0183"

    move-object/from16 v12, v16

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3576
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e29"

    move-object/from16 v16, v15

    move-object/from16 v15, v17

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3577
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e67"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3578
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u2091"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3579
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u029c"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3580
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e8b"

    move-object/from16 v17, v9

    const-string/jumbo v9, "x"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3581
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua745"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3582
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e0b"

    move-object/from16 v9, v23

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3583
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01a3"

    move-object/from16 v23, v5

    const-string/jumbo v5, "oi"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3584
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua751"

    move-object/from16 v5, v22

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3585
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0127"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3586
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u2c74"

    move-object/from16 v22, v15

    move-object/from16 v15, v20

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3587
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e87"

    move-object/from16 v20, v14

    const-string/jumbo v14, "w"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3588
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01f9"

    move-object/from16 v25, v14

    move-object/from16 v14, v18

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3589
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u026f"

    move-object/from16 v18, v7

    move-object/from16 v7, v21

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3590
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0261"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3591
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0274"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3592
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d18"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3593
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d65"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3594
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u016b"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3595
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e03"

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3596
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e57"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3597
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00e5"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3598
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0255"

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3599
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ecd"

    move-object/from16 v21, v5

    move-object/from16 v5, v24

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3600
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1eaf"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3601
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0192"

    move-object/from16 v24, v4

    const-string v4, "f"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3602
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01e3"

    const-string v4, "ae"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3603
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua761"

    const-string/jumbo v4, "vy"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3604
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ufb00"

    const-string v4, "ff"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3605
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d89"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3606
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00f4"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3607
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01ff"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3608
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e73"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3609
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0225"

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3610
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e1f"

    const-string v4, "f"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3611
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e13"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3612
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0207"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3613
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0215"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3614
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0235"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3615
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u02a0"

    const-string/jumbo v4, "q"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3616
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ea5"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3617
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01e9"

    move-object/from16 v4, v18

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3618
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0129"

    move-object/from16 v18, v7

    move-object/from16 v7, v20

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3619
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e75"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3620
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0167"

    move-object/from16 v7, v23

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3621
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u027e"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3622
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0199"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3623
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e6b"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3624
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua757"

    move-object/from16 v23, v4

    const-string/jumbo v4, "q"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3625
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ead"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3626
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0284"

    const-string/jumbo v4, "j"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3627
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u019a"

    move-object/from16 v4, v16

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3628
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d82"

    const-string v4, "f"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3629
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d74"

    move-object/from16 v4, v17

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3630
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua783"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3631
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d8c"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3632
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0275"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3633
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e09"

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3634
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d64"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3635
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e91"

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3636
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e79"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3637
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0148"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3638
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u028d"

    move-object/from16 v17, v10

    move-object/from16 v10, v25

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3639
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ea7"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3640
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01c9"

    move-object/from16 v25, v15

    const-string/jumbo v15, "lj"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3641
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0253"

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3642
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u027c"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3643
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00f2"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3644
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e98"

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3645
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0257"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3646
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua73d"

    const-string v15, "ay"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3647
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01b0"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3648
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d80"

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3649
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01dc"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3650
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1eb9"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3651
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01e1"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3652
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0265"

    move-object/from16 v15, v22

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3653
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e4f"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3654
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01d4"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3655
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u028e"

    move-object/from16 v22, v12

    move-object/from16 v12, v19

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3656
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0231"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3657
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ec7"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3658
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ebf"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3659
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u012d"

    move-object/from16 v19, v8

    move-object/from16 v8, v20

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3660
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u2c78"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3661
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e6f"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3662
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d91"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3663
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e27"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3664
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e65"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3665
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00eb"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3666
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d0d"

    move-object/from16 v20, v7

    move-object/from16 v7, v18

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3667
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00f6"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3668
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00e9"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3669
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0131"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3670
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u010f"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3671
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d6f"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3672
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ef5"

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3673
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0175"

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3674
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ec1"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3675
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ee9"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3676
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01b6"

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3677
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0135"

    move-object/from16 v18, v10

    const-string/jumbo v10, "j"

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3678
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e0d"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3679
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u016d"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3680
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u029d"

    const-string/jumbo v10, "j"

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3681
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00ea"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3682
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01da"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3683
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0121"

    move-object/from16 v10, v24

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3684
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e59"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3685
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u019e"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3686
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e17"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3687
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e9d"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3688
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d81"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3689
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0137"

    move-object/from16 v10, v23

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3690
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d02"

    move-object/from16 v23, v8

    const-string v8, "ae"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3691
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0258"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3692
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ee3"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3693
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e3f"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3694
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua730"

    const-string v8, "f"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3695
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1eb5"

    move-object/from16 v8, v19

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3696
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua74f"

    move-object/from16 v19, v5

    const-string/jumbo v5, "oo"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3697
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d86"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3698
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d7d"

    move-object/from16 v5, v21

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3699
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1eef"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3700
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u2c6a"

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3701
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e25"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3702
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0163"

    move-object/from16 v21, v10

    move-object/from16 v10, v20

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3703
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d71"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3704
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e41"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3705
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00e1"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3706
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d0e"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3707
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua75f"

    move-object/from16 v20, v4

    move-object/from16 v4, v25

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3708
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00e8"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3709
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d8e"

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3710
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua77a"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3711
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d88"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3712
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u026b"

    move-object/from16 v25, v5

    move-object/from16 v5, v16

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3713
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d22"

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3714
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0271"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3715
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e5d"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3716
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e7d"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3717
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0169"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3718
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00df"

    move-object/from16 v16, v7

    const-string/jumbo v7, "ss"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3719
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0125"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3720
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d75"

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3721
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0290"

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3722
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e5f"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3723
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0272"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3724
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00e0"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3725
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e99"

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3726
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ef3"

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3727
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d14"

    const-string/jumbo v7, "oe"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3728
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u2093"

    const-string/jumbo v7, "x"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3729
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0217"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3730
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u2c7c"

    const-string/jumbo v7, "j"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3731
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1eab"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3732
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0291"

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3733
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e9b"

    move-object/from16 v7, v20

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3734
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e2d"

    move-object/from16 v20, v14

    move-object/from16 v14, v23

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3735
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua735"

    move-object/from16 v23, v4

    const-string v4, "ao"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3736
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0240"

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3737
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00ff"

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3738
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01dd"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3739
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01ed"

    move-object/from16 v4, v19

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3740
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d05"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3741
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d85"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3742
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00f9"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3743
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ea1"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3744
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e05"

    move-object/from16 v19, v9

    move-object/from16 v9, v22

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3745
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ee5"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3746
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1eb1"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3747
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d1b"

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3748
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01b4"

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3749
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u2c66"

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3750
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u2c61"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3751
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0237"

    const-string/jumbo v9, "j"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3752
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d76"

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3753
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e2b"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3754
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u2c73"

    move-object/from16 v9, v18

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3755
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e35"

    move-object/from16 v18, v15

    move-object/from16 v15, v21

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3756
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1edd"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3757
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00ee"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3758
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0123"

    move-object/from16 v15, v24

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3759
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0205"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3760
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0227"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3761
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1eb3"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3762
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u024b"

    const-string/jumbo v15, "q"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3763
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e6d"

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3764
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua778"

    const-string/jumbo v15, "um"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3765
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d04"

    move-object/from16 v15, v17

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3766
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e8d"

    const-string/jumbo v15, "x"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3767
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ee7"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3768
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ec9"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3769
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d1a"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3770
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u015b"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3771
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua74b"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3772
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ef9"

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3773
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e61"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3774
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01cc"

    const-string/jumbo v15, "nj"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3775
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0201"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3776
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e97"

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3777
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u013a"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3778
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u017e"

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3779
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d7a"

    const-string/jumbo v15, "th"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3780
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u018c"

    move-object/from16 v15, v19

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3781
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0219"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3782
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0161"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3783
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d99"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3784
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ebd"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3785
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e9c"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3786
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0247"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3787
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e77"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3788
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ed1"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3789
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u023f"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3790
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d20"

    move-object/from16 v19, v12

    move-object/from16 v12, v23

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3791
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua76d"

    move-object/from16 v23, v5

    const-string v5, "is"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3792
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d0f"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3793
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u025b"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3794
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01fb"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3795
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ufb04"

    const-string v5, "ffl"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3796
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u2c7a"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3797
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u020b"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3798
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d6b"

    const-string/jumbo v5, "ue"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3799
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0221"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3800
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u2c6c"

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3801
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e81"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3802
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d8f"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3803
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua787"

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3804
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u011f"

    move-object/from16 v5, v24

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3805
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0273"

    move-object/from16 v24, v9

    move-object/from16 v9, v20

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3806
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u029b"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3807
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d1c"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3808
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ea9"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3809
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e45"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3810
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0268"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3811
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d19"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3812
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01ce"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3813
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u017f"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3814
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u022b"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3815
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u027f"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3816
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01ad"

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3817
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e2f"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3818
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01fd"

    const-string v9, "ae"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3819
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u2c71"

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3820
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0276"

    const-string/jumbo v9, "oe"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3821
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e43"

    move-object/from16 v9, v16

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3822
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u017c"

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3823
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0115"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3824
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua73b"

    const-string v9, "av"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3825
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1edf"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3826
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ec5"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3827
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u026c"

    move-object/from16 v9, v23

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3828
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ecb"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3829
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d6d"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3830
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ufb06"

    move-object/from16 v23, v12

    const-string/jumbo v12, "st"

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3831
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e37"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3832
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0155"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3833
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d15"

    const-string/jumbo v12, "ou"

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3834
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0288"

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3835
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0101"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3836
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e19"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3837
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d11"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3838
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00e7"

    move-object/from16 v12, v17

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3839
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d8a"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3840
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1eb7"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3841
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0173"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3842
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ea3"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3843
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01e5"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3844
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua741"

    move-object/from16 v17, v6

    move-object/from16 v6, v21

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3845
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e95"

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3846
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u015d"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3847
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e15"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3848
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0260"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3849
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua749"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3850
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua77c"

    const-string v11, "f"

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3851
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d8d"

    const-string/jumbo v11, "x"

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3852
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01d2"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3853
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0119"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3854
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ed5"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3855
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01ab"

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3856
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01eb"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3857
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "i\u0307"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3858
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e47"

    move-object/from16 v11, v20

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3859
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0107"

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3860
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d77"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3861
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e85"

    move-object/from16 v20, v12

    move-object/from16 v12, v24

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3862
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e11"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3863
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e39"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3864
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0153"

    const-string/jumbo v15, "oe"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3865
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d73"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3866
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u013c"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3867
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0211"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3868
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u022d"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3869
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d70"

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3870
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d01"

    const-string v15, "ae"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3871
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0140"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3872
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00e4"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3873
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01a5"

    move-object/from16 v15, v25

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3874
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ecf"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3875
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u012f"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3876
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0213"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3877
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01c6"

    move-object/from16 v21, v7

    const-string v7, "dz"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3878
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e21"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3879
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e7b"

    move-object/from16 v7, v17

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3880
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u014d"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3881
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u013e"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3882
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e83"

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3883
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u021b"

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3884
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0144"

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3885
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u024d"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3886
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0203"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3887
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00fc"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3888
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua781"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3889
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d10"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3890
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1edb"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3891
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d03"

    move-object/from16 v17, v6

    move-object/from16 v6, v22

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3892
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0279"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3893
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d72"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3894
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u028f"

    move-object/from16 v6, v19

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3895
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d6e"

    const-string v6, "f"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3896
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u2c68"

    move-object/from16 v6, v18

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3897
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u014f"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3898
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00fa"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3899
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e5b"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3900
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u02ae"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3901
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00f3"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3902
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u016f"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3903
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ee1"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3904
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e55"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3905
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d96"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3906
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ef1"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3907
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00e3"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3908
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d62"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3909
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e71"

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3910
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ec3"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3911
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1eed"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3912
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00ed"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3913
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0254"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3914
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u027a"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3915
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0262"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3916
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0159"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3917
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e96"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3918
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0171"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3919
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u020d"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3920
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e3b"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3921
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e23"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3922
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0236"

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3923
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0146"

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3924
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d92"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3925
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00ec"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3926
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e89"

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3927
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0113"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3928
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d07"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3929
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0142"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3930
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ed9"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3931
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u026d"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3932
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e8f"

    move-object/from16 v7, v19

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3933
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d0a"

    const-string/jumbo v7, "j"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3934
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e31"

    move-object/from16 v15, v17

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3935
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e7f"

    move-object/from16 v7, v23

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3936
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0229"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3937
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00e2"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3938
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u015f"

    move-object/from16 v9, v21

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3939
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0157"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3940
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u028b"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3941
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u2090"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3942
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u2184"

    move-object/from16 v3, v20

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3943
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d93"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3944
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0270"

    move-object/from16 v7, v16

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3945
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d21"

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3946
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u020f"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3947
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u010d"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3948
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01f5"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3949
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0109"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3950
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d97"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3951
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua743"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3952
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua759"

    const-string/jumbo v3, "q"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3953
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e51"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3954
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua731"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3955
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e53"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3956
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u021f"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3957
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0151"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3958
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua729"

    const-string/jumbo v3, "tz"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3959
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ebb"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3960
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0456"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3961
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0457"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3963
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3964
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_b

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v6, p1

    .line 3967
    invoke-virtual {v6, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    if-eqz p3, :cond_3

    .line 3969
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 3970
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    move/from16 v26, v4

    move-object v4, v3

    move/from16 v3, v26

    .line 3973
    :cond_3
    iget-object v7, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_4

    if-eqz p2, :cond_4

    .line 3975
    iget-object v7, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    :cond_4
    if-eqz v7, :cond_7

    if-eqz p3, :cond_6

    if-eqz v3, :cond_6

    .line 3979
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v8, 0x1

    if-le v4, v8, :cond_5

    .line 3980
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 3982
    :cond_5
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    .line 3985
    :cond_6
    :goto_2
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_7
    if-eqz p3, :cond_a

    const/4 v7, 0x0

    .line 3988
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x61

    if-lt v7, v8, :cond_8

    const/16 v8, 0x7a

    if-gt v7, v8, :cond_8

    const/16 v8, 0x30

    if-lt v7, v8, :cond_8

    const/16 v8, 0x39

    if-le v7, v8, :cond_9

    :cond_8
    const/16 v8, 0x20

    if-eq v7, v8, :cond_9

    const/16 v8, 0x27

    if-eq v7, v8, :cond_9

    const/16 v8, 0x2c

    if-eq v7, v8, :cond_9

    const/16 v8, 0x2e

    if-eq v7, v8, :cond_9

    const/16 v8, 0x26

    if-eq v7, v8, :cond_9

    const/16 v8, 0x2d

    if-eq v7, v8, :cond_9

    const/16 v8, 0x2f

    if-eq v7, v8, :cond_9

    const/4 v1, 0x0

    return-object v1

    :cond_9
    if-eqz v3, :cond_a

    .line 3993
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 3996
    :cond_a
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    move v4, v5

    goto/16 :goto_1

    .line 3999
    :cond_b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isCurrentLocalLocale()Z
    .locals 1

    .line 851
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isLocal()Z

    move-result v0

    return v0
.end method

.method public loadRemoteLanguages(I)V
    .locals 1

    const/4 v0, 0x1

    .line 3264
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/LocaleController;->loadRemoteLanguages(IZ)V

    return-void
.end method

.method public loadRemoteLanguages(IZ)V
    .locals 3

    .line 3268
    iget-boolean v0, p0, Lorg/telegram/messenger/LocaleController;->loadingRemoteLanguages:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3271
    iput-boolean v0, p0, Lorg/telegram/messenger/LocaleController;->loadingRemoteLanguages:Z

    .line 3272
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_langpack_getLanguages;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_langpack_getLanguages;-><init>()V

    .line 3273
    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0, p2, p1}, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/messenger/LocaleController;ZI)V

    const/16 p1, 0x8

    invoke-virtual {v1, v0, v2, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method public onDeviceConfigurationChange(Landroid/content/res/Configuration;)V
    .locals 2

    .line 2159
    iget-boolean v0, p0, Lorg/telegram/messenger/LocaleController;->changingConfiguration:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2163
    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->localizedContext:Landroid/content/Context;

    .line 2165
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lorg/telegram/messenger/LocaleController;->is24HourFormat:Z

    .line 2166
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object p1, p0, Lorg/telegram/messenger/LocaleController;->systemDefaultLocale:Ljava/util/Locale;

    .line 2167
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->languageOverride:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2168
    iget-object p1, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 2169
    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 2170
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v1, v0}, Lorg/telegram/messenger/LocaleController;->applyLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;ZZI)I

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_4

    .line 2174
    invoke-virtual {p1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 2175
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 2176
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2177
    invoke-virtual {p0}, Lorg/telegram/messenger/LocaleController;->recreateFormatters()V

    .line 2179
    :cond_2
    iput-object p1, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    .line 2180
    iget-object p1, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 2181
    iget-object p1, p0, Lorg/telegram/messenger/LocaleController;->allRules:Ljava/util/HashMap;

    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/LocaleController$PluralRules;

    iput-object p1, p0, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    .line 2183
    :cond_3
    iget-object p1, p0, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    if-nez p1, :cond_4

    .line 2184
    iget-object p1, p0, Lorg/telegram/messenger/LocaleController;->allRules:Ljava/util/HashMap;

    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/LocaleController$PluralRules;

    iput-object p1, p0, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    if-nez p1, :cond_4

    .line 2186
    iget-object p1, p0, Lorg/telegram/messenger/LocaleController;->allRules:Ljava/util/HashMap;

    const-string v0, "en"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/LocaleController$PluralRules;

    iput-object p1, p0, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    .line 2191
    :cond_4
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getSystemLocaleStringIso639()Ljava/lang/String;

    move-result-object p1

    .line 2192
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentSystemLocale:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2193
    iput-object p1, p0, Lorg/telegram/messenger/LocaleController;->currentSystemLocale:Ljava/lang/String;

    .line 2194
    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->setSystemLangCode(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public recreateFormatters()V
    .locals 5

    .line 2776
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    if-nez v0, :cond_0

    .line 2778
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 2780
    :cond_0
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2782
    const-string v0, "en"

    .line 2784
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2785
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v1, v3, :cond_2

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "fa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "he"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    const-string v1, "ar_"

    .line 2786
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "fa_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "he_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "iw_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    if-eqz v1, :cond_3

    iget-boolean v1, v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isRtl:Z

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    :goto_0
    move v1, v4

    :goto_1
    sput-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    .line 2788
    const-string/jumbo v1, "ko"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    move v3, v4

    :goto_2
    sput v3, Lorg/telegram/messenger/LocaleController;->nameDisplayOrder:I

    const/4 v0, 0x0

    .line 2790
    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterBoostExpired:Lorg/telegram/messenger/time/FastDateFormat;

    .line 2791
    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterGiveawayCard:Lorg/telegram/messenger/time/FastDateFormat;

    .line 2792
    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterGiveawayMonthDay:Lorg/telegram/messenger/time/FastDateFormat;

    .line 2793
    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterGiveawayMonthDayYear:Lorg/telegram/messenger/time/FastDateFormat;

    .line 2794
    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterMonthYear:Lorg/telegram/messenger/time/FastDateFormat;

    .line 2795
    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterMonthOnly:Lorg/telegram/messenger/time/FastDateFormat;

    .line 2796
    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterDayMonth:Lorg/telegram/messenger/time/FastDateFormat;

    .line 2797
    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

    .line 2798
    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterYearMax:Lorg/telegram/messenger/time/FastDateFormat;

    .line 2799
    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->chatDate:Lorg/telegram/messenger/time/FastDateFormat;

    .line 2800
    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->chatFullDate:Lorg/telegram/messenger/time/FastDateFormat;

    .line 2801
    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterWeek:Lorg/telegram/messenger/time/FastDateFormat;

    .line 2802
    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterWeekLong:Lorg/telegram/messenger/time/FastDateFormat;

    .line 2803
    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleDay:Lorg/telegram/messenger/time/FastDateFormat;

    .line 2804
    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleYear:Lorg/telegram/messenger/time/FastDateFormat;

    .line 2805
    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    .line 2806
    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterDayWithSeconds:Lorg/telegram/messenger/time/FastDateFormat;

    .line 2807
    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterConstDay:Lorg/telegram/messenger/time/FastDateFormat;

    .line 2808
    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterStats:Lorg/telegram/messenger/time/FastDateFormat;

    .line 2809
    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterBannedUntil:Lorg/telegram/messenger/time/FastDateFormat;

    .line 2810
    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->formatterBannedUntilThisYear:Lorg/telegram/messenger/time/FastDateFormat;

    .line 2811
    :goto_3
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleSend:[Lorg/telegram/messenger/time/FastDateFormat;

    array-length v3, v1

    if-ge v2, v3, :cond_6

    .line 2812
    aput-object v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method public reloadCurrentRemoteLocale(ILjava/lang/String;ZLjava/lang/Runnable;)V
    .locals 6

    if-eqz p2, :cond_0

    .line 856
    const-string v0, "-"

    const-string v1, "_"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    move-object v2, p2

    if-eqz v2, :cond_2

    .line 858
    iget-object p2, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    if-eqz p2, :cond_1

    iget-object p2, p2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    iget-object p2, p2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseLangCode:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 859
    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-object v0, p0

    move v4, p1

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/LocaleController;->applyRemoteLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;Ljava/lang/String;ZILjava/lang/Runnable;)I

    return-void
.end method

.method public saveRemoteLocaleStrings(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;ILjava/lang/Runnable;)V
    .locals 11

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 3128
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;->strings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isLocal()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object v7, p1

    move-object v8, p2

    move-object v10, p4

    goto/16 :goto_d

    .line 3137
    :cond_1
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;->lang_code:Ljava/lang/String;

    const/16 v2, 0x2d

    const/16 v3, 0x5f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 3139
    iget-object v2, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    move v6, v0

    goto :goto_0

    .line 3141
    :cond_2
    iget-object v2, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseLangCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v6, p3

    goto :goto_0

    :cond_3
    move v6, v3

    .line 3146
    :goto_0
    const-string v2, ")"

    if-ne v6, v3, :cond_4

    .line 3147
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "saveRemoteLocaleStrings: unknown language "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " (locale short="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", base="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseLangCode:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void

    :cond_4
    if-nez v6, :cond_5

    .line 3152
    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getPathToFile()Ljava/io/File;

    move-result-object v1

    goto :goto_1

    .line 3154
    :cond_5
    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getPathToBaseFile()Ljava/io/File;

    move-result-object v1

    .line 3158
    :goto_1
    :try_start_0
    iget v3, p2, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;->from_version:I

    if-nez v3, :cond_6

    .line 3159
    const-string/jumbo v2, "saveRemoteLocaleStrings: difference is straight from the beginning"

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3160
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_c

    .line 3162
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "saveRemoteLocaleStrings: difference is from version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p2, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;->from_version:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ours "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->version:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " (base version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseLangCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3163
    invoke-direct {p0, v1, p3}, Lorg/telegram/messenger/LocaleController;->getLocaleFileStrings(Ljava/io/File;Z)Ljava/util/HashMap;

    move-result-object v2

    :goto_2
    move v3, v0

    .line 3165
    :goto_3
    iget-object v4, p2, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;->strings:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_10

    .line 3166
    iget-object v4, p2, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;->strings:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$LangPackString;

    .line 3167
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_langPackString;

    if-eqz v5, :cond_7

    .line 3168
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$LangPackString;->key:Ljava/lang/String;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$LangPackString;->value:Ljava/lang/String;

    invoke-direct {p0, v4}, Lorg/telegram/messenger/LocaleController;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    .line 3169
    :cond_7
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_langPackStringPluralized;

    if-eqz v5, :cond_e

    .line 3170
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$LangPackString;->key:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_zero"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$LangPackString;->zero_value:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, ""

    if-eqz v7, :cond_8

    :try_start_1
    invoke-direct {p0, v7}, Lorg/telegram/messenger/LocaleController;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_8
    move-object v7, v8

    :goto_4
    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3171
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$LangPackString;->key:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_one"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$LangPackString;->one_value:Ljava/lang/String;

    if-eqz v7, :cond_9

    invoke-direct {p0, v7}, Lorg/telegram/messenger/LocaleController;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_9
    move-object v7, v8

    :goto_5
    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3172
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$LangPackString;->key:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_two"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$LangPackString;->two_value:Ljava/lang/String;

    if-eqz v7, :cond_a

    invoke-direct {p0, v7}, Lorg/telegram/messenger/LocaleController;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_a
    move-object v7, v8

    :goto_6
    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3173
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$LangPackString;->key:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_few"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$LangPackString;->few_value:Ljava/lang/String;

    if-eqz v7, :cond_b

    invoke-direct {p0, v7}, Lorg/telegram/messenger/LocaleController;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    :cond_b
    move-object v7, v8

    :goto_7
    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3174
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$LangPackString;->key:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_many"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$LangPackString;->many_value:Ljava/lang/String;

    if-eqz v7, :cond_c

    invoke-direct {p0, v7}, Lorg/telegram/messenger/LocaleController;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    :cond_c
    move-object v7, v8

    :goto_8
    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3175
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$LangPackString;->key:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_other"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$LangPackString;->other_value:Ljava/lang/String;

    if-eqz v4, :cond_d

    invoke-direct {p0, v4}, Lorg/telegram/messenger/LocaleController;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_d
    invoke-virtual {v2, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 3176
    :cond_e
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_langPackStringDeleted;

    if-eqz v5, :cond_f

    .line 3177
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$LangPackString;->key:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 3180
    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "save locale file to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3181
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 3182
    const-string v4, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3183
    const-string v4, "<resources>\n"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3184
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 3185
    const-string v5, "<string name=\"%1$s\">%2$s</string>\n"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v7, v8, v0

    aput-object v4, v8, p3

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_a

    .line 3187
    :cond_11
    const-string p3, "</resources>"

    invoke-virtual {v3, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3188
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 3189
    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->hasBaseLang()Z

    move-result p3

    if-eqz p3, :cond_12

    .line 3190
    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getPathToBaseFile()Ljava/io/File;

    move-result-object v0

    goto :goto_b

    :cond_12
    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getPathToFile()Ljava/io/File;

    move-result-object v0

    :goto_b
    invoke-direct {p0, v0}, Lorg/telegram/messenger/LocaleController;->getLocaleFileStrings(Ljava/io/File;)Ljava/util/HashMap;

    move-result-object v9

    if-eqz p3, :cond_13

    .line 3192
    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getPathToFile()Ljava/io/File;

    move-result-object p3

    invoke-direct {p0, p3}, Lorg/telegram/messenger/LocaleController;->getLocaleFileStrings(Ljava/io/File;)Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {v9, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 3194
    :cond_13
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "saved locale file to "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3195
    new-instance v4, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda11;

    move-object v5, p0

    move-object v7, p1

    move-object v8, p2

    move-object v10, p4

    invoke-direct/range {v4 .. v10}, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/messenger/LocaleController;ILorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;Ljava/util/HashMap;Ljava/lang/Runnable;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 3259
    :goto_c
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void

    .line 3129
    :goto_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "saveRemoteLocaleStrings: empty difference="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_15

    iget-object p2, v8, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;->strings:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_14

    goto :goto_e

    :cond_14
    move p2, v0

    goto :goto_f

    :cond_15
    :goto_e
    move p2, p3

    :goto_f
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "; locale is local or null="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_17

    invoke-virtual {v7}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isLocal()Z

    move-result p2

    if-eqz p2, :cond_16

    goto :goto_10

    :cond_16
    move p3, v0

    :cond_17
    :goto_10
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3130
    invoke-virtual {p0}, Lorg/telegram/messenger/LocaleController;->recreateFormatters()V

    .line 3131
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->reloadInterface:I

    new-array p3, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    if-eqz v10, :cond_18

    .line 3133
    invoke-interface {v10}, Ljava/lang/Runnable;->run()V

    :cond_18
    return-void
.end method

.method public saveRemoteLocaleStringsForCurrentLocale(Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;I)V
    .locals 3

    .line 3117
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3120
    :cond_0
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;->lang_code:Ljava/lang/String;

    const/16 v1, 0x2d

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 3121
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    iget-object v1, v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    iget-object v1, v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseLangCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 3124
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lorg/telegram/messenger/LocaleController;->saveRemoteLocaleStrings(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;ILjava/lang/Runnable;)V

    return-void
.end method
