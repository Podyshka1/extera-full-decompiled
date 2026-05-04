.class public final enum Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/ExteraConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MainMenuItem"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

.field public static final enum ARCHIVE:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

.field public static final enum BOTS:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

.field public static final enum BROWSER:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

.field public static final enum CALLS:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

.field public static final enum CONTACTS:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

.field public static final enum DIVIDER:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

.field public static final enum NEW_CHANNEL:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

.field public static final enum NEW_GROUP:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

.field public static final enum PLUGINS:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

.field public static final enum PROFILE:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

.field public static final enum QR:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

.field public static final enum SAVED:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

.field public static final enum SETTINGS:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;


# instance fields
.field public final id:I


# direct methods
.method private static synthetic $values()[Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;
    .locals 3

    const/16 v0, 0xd

    .line 154
    new-array v0, v0, [Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    sget-object v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->DIVIDER:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->PROFILE:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->ARCHIVE:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->BOTS:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->NEW_GROUP:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->CONTACTS:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->NEW_CHANNEL:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->CALLS:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->SAVED:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->SETTINGS:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->PLUGINS:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->BROWSER:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->QR:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 155
    new-instance v0, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-string v3, "DIVIDER"

    invoke-direct {v0, v3, v1, v2}, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->DIVIDER:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    .line 156
    new-instance v0, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    const/4 v1, 0x1

    const/16 v2, 0x12

    const-string v3, "PROFILE"

    invoke-direct {v0, v3, v1, v2}, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->PROFILE:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    .line 157
    new-instance v0, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    const/16 v1, 0xe

    const-string v2, "ARCHIVE"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->ARCHIVE:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    .line 158
    new-instance v0, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    const/16 v1, 0x69

    const-string v2, "BOTS"

    const/4 v4, 0x3

    invoke-direct {v0, v2, v4, v1}, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->BOTS:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    .line 159
    new-instance v0, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    const-string v1, "NEW_GROUP"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->NEW_GROUP:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    .line 160
    new-instance v0, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    const-string v1, "CONTACTS"

    const/4 v2, 0x5

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->CONTACTS:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    .line 161
    new-instance v0, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    const-string v1, "NEW_CHANNEL"

    invoke-direct {v0, v1, v3, v4}, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->NEW_CHANNEL:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    .line 162
    new-instance v0, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    const-string v1, "CALLS"

    const/4 v2, 0x7

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->CALLS:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    .line 163
    new-instance v0, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    const-string v1, "SAVED"

    const/16 v2, 0x8

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v4}, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->SAVED:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    .line 164
    new-instance v0, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    const-string v1, "SETTINGS"

    const/16 v5, 0x9

    invoke-direct {v0, v1, v5, v2}, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->SETTINGS:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    .line 165
    new-instance v0, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    const-string v1, "PLUGINS"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v3, v2}, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->PLUGINS:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    .line 166
    new-instance v0, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    const-string v1, "BROWSER"

    const/16 v2, 0x65

    invoke-direct {v0, v1, v4, v2}, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->BROWSER:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    .line 167
    new-instance v0, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    const/16 v1, 0xc

    const/16 v2, 0x11

    const-string v3, "QR"

    invoke-direct {v0, v3, v1, v2}, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->QR:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    .line 154
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->$values()[Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->$VALUES:[Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 171
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 172
    iput p3, p0, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    return-void
.end method

.method public static getById(I)Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;
    .locals 5

    .line 176
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->values()[Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 177
    iget v4, v3, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;
    .locals 1

    .line 154
    const-class v0, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    return-object p0
.end method

.method public static values()[Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;
    .locals 1

    .line 154
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->$VALUES:[Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    invoke-virtual {v0}, [Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    return-object v0
.end method
