.class public Lcom/exteragram/messenger/pillstack/ui/pills/crypto/UsdPill;
.super Lcom/exteragram/messenger/pillstack/ui/pills/crypto/RatePill;
.source "SourceFile"


# static fields
.field private static final CACHE:Lcom/exteragram/messenger/pillstack/ui/pills/crypto/RatePill$RateCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/RatePill$RateCache;

    invoke-direct {v0}, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/RatePill$RateCache;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/UsdPill;->CACHE:Lcom/exteragram/messenger/pillstack/ui/pills/crypto/RatePill$RateCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 8

    .line 31
    sget-object v3, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/UsdPill;->CACHE:Lcom/exteragram/messenger/pillstack/ui/pills/crypto/RatePill$RateCache;

    sget v6, Lorg/telegram/messenger/R$drawable;->pillstack_usd:I

    new-instance v7, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ColoredBackground;

    const v0, -0xe274a3

    const v1, -0xe784a7

    invoke-direct {v7, v0, v1}, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ColoredBackground;-><init>(II)V

    const-string v4, "USD"

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/RatePill;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lcom/exteragram/messenger/pillstack/ui/pills/crypto/RatePill$RateCache;Ljava/lang/String;IILcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ColoredBackground;)V

    return-void
.end method


# virtual methods
.method public getPillId()I
    .locals 1

    .line 36
    sget-object v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;->USD:Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;

    iget v0, v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;->id:I

    return v0
.end method

.method protected getTargetCurrencies()[Ljava/lang/String;
    .locals 1

    .line 54
    const-string v0, "USD"

    invoke-static {v0}, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/PillStackCurrencies;->getTargetCurrencies(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTargetSelection()Ljava/lang/String;
    .locals 2

    .line 41
    const-string v0, "USD"

    sget-object v1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->usdTargetCurrency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const-string v0, "AUTO"

    return-object v0

    .line 44
    :cond_0
    sget-object v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->usdTargetCurrency:Ljava/lang/String;

    return-object v0
.end method

.method protected setTargetSelection(Ljava/lang/String;)V
    .locals 2

    .line 49
    sget-object v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->editor:Landroid/content/SharedPreferences$Editor;

    sput-object p1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->usdTargetCurrency:Ljava/lang/String;

    const-string/jumbo v1, "usdTargetCurrency"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
