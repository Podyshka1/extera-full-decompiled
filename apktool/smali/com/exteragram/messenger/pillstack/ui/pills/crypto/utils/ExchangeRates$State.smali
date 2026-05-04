.class public final Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;
.super Lcom/android/tools/r8/RecordTag;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation


# static fields
.field public static final formatter:Ljava/text/DecimalFormat;


# instance fields
.field private final usdRates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private synthetic $record$equals(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    instance-of v0, p1, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;

    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;->usdRates:Ljava/util/Map;

    iget-object p1, p1, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;->usdRates:Ljava/util/Map;

    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;->usdRates:Ljava/util/Map;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 92
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;->formatter:Ljava/text/DecimalFormat;

    .line 95
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/math/BigDecimal;",
            ">;)V"
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;->usdRates:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;->$record$equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public formatDonate(Ljava/lang/String;D)D
    .locals 4

    .line 113
    const-string v0, "USD"

    invoke-virtual {p0, v0, p1}, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;->getRate(Ljava/lang/String;Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p2

    .line 116
    :cond_0
    const-string v0, "donates_amount_usd"

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Lcom/exteragram/messenger/utils/network/RemoteUtils;->getFloatConfigValue(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr p2, v0

    .line 119
    const-string/jumbo v0, "ton"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 120
    const-string p1, "donates_ton_markup_percent"

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/exteragram/messenger/utils/network/RemoteUtils;->getIntConfigValue(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-double v0, p1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    mul-double/2addr v0, p2

    add-double/2addr p2, v0

    .line 124
    :cond_1
    sget-object p1, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;->formatter:Ljava/text/DecimalFormat;

    invoke-virtual {p1, p2, p3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    return-wide p1
.end method

.method public getRate(Ljava/lang/String;Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 2

    .line 104
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;->getUsdRate(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 105
    invoke-virtual {p0, p2}, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;->getUsdRate(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 106
    invoke-virtual {p2}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    .line 109
    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {p1, p2, v0, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getUsdRate(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;->usdRates:Ljava/util/Map;

    invoke-static {p1}, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->-$$Nest$smnormalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/math/BigDecimal;

    return-object p1
.end method

.method public final hashCode()I
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;->usdRates:Ljava/util/Map;

    invoke-static {v0}, Lcom/exteragram/messenger/export/api/ApiWrap$ActionChatEditPhoto$$ExternalSyntheticRecord0;->m(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 91
    invoke-direct {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;

    const-string/jumbo v2, "usdRates"

    invoke-static {v0, v1, v2}, Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usdRates()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;->usdRates:Ljava/util/Map;

    return-object v0
.end method
