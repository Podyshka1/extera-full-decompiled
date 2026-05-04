.class public final enum Lcom/exteragram/messenger/api/model/RegDateFlag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/exteragram/messenger/api/model/RegDateFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/exteragram/messenger/api/model/RegDateFlag;

.field public static final enum ET:Lcom/exteragram/messenger/api/model/RegDateFlag;

.field public static final enum EXACT:Lcom/exteragram/messenger/api/model/RegDateFlag;

.field public static final enum INTERPOLATED:Lcom/exteragram/messenger/api/model/RegDateFlag;

.field public static final enum LT:Lcom/exteragram/messenger/api/model/RegDateFlag;


# direct methods
.method private static final synthetic $values()[Lcom/exteragram/messenger/api/model/RegDateFlag;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/exteragram/messenger/api/model/RegDateFlag;

    sget-object v1, Lcom/exteragram/messenger/api/model/RegDateFlag;->EXACT:Lcom/exteragram/messenger/api/model/RegDateFlag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/api/model/RegDateFlag;->INTERPOLATED:Lcom/exteragram/messenger/api/model/RegDateFlag;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/api/model/RegDateFlag;->LT:Lcom/exteragram/messenger/api/model/RegDateFlag;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/api/model/RegDateFlag;->ET:Lcom/exteragram/messenger/api/model/RegDateFlag;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Lcom/exteragram/messenger/api/model/RegDateFlag;

    const-string v1, "EXACT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/exteragram/messenger/api/model/RegDateFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/exteragram/messenger/api/model/RegDateFlag;->EXACT:Lcom/exteragram/messenger/api/model/RegDateFlag;

    .line 16
    new-instance v0, Lcom/exteragram/messenger/api/model/RegDateFlag;

    const-string v1, "INTERPOLATED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/exteragram/messenger/api/model/RegDateFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/exteragram/messenger/api/model/RegDateFlag;->INTERPOLATED:Lcom/exteragram/messenger/api/model/RegDateFlag;

    .line 17
    new-instance v0, Lcom/exteragram/messenger/api/model/RegDateFlag;

    const-string v1, "LT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/exteragram/messenger/api/model/RegDateFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/exteragram/messenger/api/model/RegDateFlag;->LT:Lcom/exteragram/messenger/api/model/RegDateFlag;

    .line 18
    new-instance v0, Lcom/exteragram/messenger/api/model/RegDateFlag;

    const-string v1, "ET"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/exteragram/messenger/api/model/RegDateFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/exteragram/messenger/api/model/RegDateFlag;->ET:Lcom/exteragram/messenger/api/model/RegDateFlag;

    invoke-static {}, Lcom/exteragram/messenger/api/model/RegDateFlag;->$values()[Lcom/exteragram/messenger/api/model/RegDateFlag;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/api/model/RegDateFlag;->$VALUES:[Lcom/exteragram/messenger/api/model/RegDateFlag;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/api/model/RegDateFlag;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries;"
        }
    .end annotation

    sget-object v0, Lcom/exteragram/messenger/api/model/RegDateFlag;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/exteragram/messenger/api/model/RegDateFlag;
    .locals 1

    const-class v0, Lcom/exteragram/messenger/api/model/RegDateFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/exteragram/messenger/api/model/RegDateFlag;

    return-object p0
.end method

.method public static values()[Lcom/exteragram/messenger/api/model/RegDateFlag;
    .locals 1

    sget-object v0, Lcom/exteragram/messenger/api/model/RegDateFlag;->$VALUES:[Lcom/exteragram/messenger/api/model/RegDateFlag;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/exteragram/messenger/api/model/RegDateFlag;

    return-object v0
.end method
