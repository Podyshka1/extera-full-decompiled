.class final Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/PillStackCurrencies$CurrencyInfo;
.super Lcom/android/tools/r8/RecordTag;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/PillStackCurrencies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CurrencyInfo"
.end annotation


# instance fields
.field private final code:Ljava/lang/String;

.field private final nameResId:I

.field private final suffixSymbol:Z

.field private final symbolOverride:Ljava/lang/String;


# direct methods
.method private synthetic $record$equals(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    instance-of v0, p1, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/PillStackCurrencies$CurrencyInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/PillStackCurrencies$CurrencyInfo;

    iget-boolean v0, p0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/PillStackCurrencies$CurrencyInfo;->suffixSymbol:Z

    iget-boolean v1, p1, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/PillStackCurrencies$CurrencyInfo;->suffixSymbol:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/PillStackCurrencies$CurrencyInfo;->nameResId:I

    iget v1, p1, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/PillStackCurrencies$CurrencyInfo;->nameResId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/PillStackCurrencies$CurrencyInfo;->code:Ljava/lang/String;

    iget-object v1, p1, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/PillStackCurrencies$CurrencyInfo;->code:Ljava/lang/String;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/PillStackCurrencies$CurrencyInfo;->symbolOverride:Ljava/lang/String;

    iget-object p1, p1, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/PillStackCurrencies$CurrencyInfo;->symbolOverride:Ljava/lang/String;

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
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/PillStackCurrencies$CurrencyInfo;->code:Ljava/lang/String;

    iget v1, p0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/PillStackCurrencies$CurrencyInfo;->nameResId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/PillStackCurrencies$CurrencyInfo;->symbolOverride:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/PillStackCurrencies$CurrencyInfo;->suffixSymbol:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    return-object v4
.end method

.method static bridge synthetic -$$Nest$fgetnameResId(Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/PillStackCurrencies$CurrencyInfo;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/PillStackCurrencies$CurrencyInfo;->nameResId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsuffixSymbol(Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/PillStackCurrencies$CurrencyInfo;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/PillStackCurrencies$CurrencyInfo;->suffixSymbol:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsymbolOverride(Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/PillStackCurrencies$CurrencyInfo;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/PillStackCurrencies$CurrencyInfo;->symbolOverride:Ljava/lang/String;

    return-object p0
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/PillStackCurrencies$CurrencyInfo;->code:Ljava/lang/String;

    iput p2, p0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/PillStackCurrencies$CurrencyInfo;->nameResId:I

    iput-object p3, p0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/PillStackCurrencies$CurrencyInfo;->symbolOverride:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/PillStackCurrencies$CurrencyInfo;->suffixSymbol:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;ZLcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/PillStackCurrencies-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/PillStackCurrencies$CurrencyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/PillStackCurrencies$CurrencyInfo;->$record$equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 4

    .line 31
    iget-boolean v0, p0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/PillStackCurrencies$CurrencyInfo;->suffixSymbol:Z

    iget v1, p0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/PillStackCurrencies$CurrencyInfo;->nameResId:I

    iget-object v2, p0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/PillStackCurrencies$CurrencyInfo;->code:Ljava/lang/String;

    iget-object v3, p0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/PillStackCurrencies$CurrencyInfo;->symbolOverride:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/exteragram/messenger/export/api/ApiWrap$Poll$Answer$$ExternalSyntheticRecord0;->m(ZILjava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 31
    invoke-direct {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/PillStackCurrencies$CurrencyInfo;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/PillStackCurrencies$CurrencyInfo;

    const-string v2, "code;nameResId;symbolOverride;suffixSymbol"

    invoke-static {v0, v1, v2}, Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
