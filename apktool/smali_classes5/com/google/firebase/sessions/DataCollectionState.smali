.class public final enum Lcom/google/firebase/sessions/DataCollectionState;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/encoders/json/NumberedEnum;


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/google/firebase/sessions/DataCollectionState;

.field public static final enum COLLECTION_DISABLED:Lcom/google/firebase/sessions/DataCollectionState;

.field public static final enum COLLECTION_DISABLED_REMOTE:Lcom/google/firebase/sessions/DataCollectionState;

.field public static final enum COLLECTION_ENABLED:Lcom/google/firebase/sessions/DataCollectionState;

.field public static final enum COLLECTION_SAMPLED:Lcom/google/firebase/sessions/DataCollectionState;

.field public static final enum COLLECTION_SDK_NOT_INSTALLED:Lcom/google/firebase/sessions/DataCollectionState;

.field public static final enum COLLECTION_UNKNOWN:Lcom/google/firebase/sessions/DataCollectionState;


# instance fields
.field private final number:I


# direct methods
.method private static final synthetic $values()[Lcom/google/firebase/sessions/DataCollectionState;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/firebase/sessions/DataCollectionState;

    sget-object v1, Lcom/google/firebase/sessions/DataCollectionState;->COLLECTION_UNKNOWN:Lcom/google/firebase/sessions/DataCollectionState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/sessions/DataCollectionState;->COLLECTION_SDK_NOT_INSTALLED:Lcom/google/firebase/sessions/DataCollectionState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/sessions/DataCollectionState;->COLLECTION_ENABLED:Lcom/google/firebase/sessions/DataCollectionState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/sessions/DataCollectionState;->COLLECTION_DISABLED:Lcom/google/firebase/sessions/DataCollectionState;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/sessions/DataCollectionState;->COLLECTION_DISABLED_REMOTE:Lcom/google/firebase/sessions/DataCollectionState;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/sessions/DataCollectionState;->COLLECTION_SAMPLED:Lcom/google/firebase/sessions/DataCollectionState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 93
    new-instance v0, Lcom/google/firebase/sessions/DataCollectionState;

    const-string v1, "COLLECTION_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/sessions/DataCollectionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/sessions/DataCollectionState;->COLLECTION_UNKNOWN:Lcom/google/firebase/sessions/DataCollectionState;

    .line 96
    new-instance v0, Lcom/google/firebase/sessions/DataCollectionState;

    const-string v1, "COLLECTION_SDK_NOT_INSTALLED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/sessions/DataCollectionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/sessions/DataCollectionState;->COLLECTION_SDK_NOT_INSTALLED:Lcom/google/firebase/sessions/DataCollectionState;

    .line 99
    new-instance v0, Lcom/google/firebase/sessions/DataCollectionState;

    const-string v1, "COLLECTION_ENABLED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/sessions/DataCollectionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/sessions/DataCollectionState;->COLLECTION_ENABLED:Lcom/google/firebase/sessions/DataCollectionState;

    .line 103
    new-instance v0, Lcom/google/firebase/sessions/DataCollectionState;

    const-string v1, "COLLECTION_DISABLED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/sessions/DataCollectionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/sessions/DataCollectionState;->COLLECTION_DISABLED:Lcom/google/firebase/sessions/DataCollectionState;

    .line 106
    new-instance v0, Lcom/google/firebase/sessions/DataCollectionState;

    const-string v1, "COLLECTION_DISABLED_REMOTE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/sessions/DataCollectionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/sessions/DataCollectionState;->COLLECTION_DISABLED_REMOTE:Lcom/google/firebase/sessions/DataCollectionState;

    .line 110
    new-instance v0, Lcom/google/firebase/sessions/DataCollectionState;

    const-string v1, "COLLECTION_SAMPLED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/sessions/DataCollectionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/sessions/DataCollectionState;->COLLECTION_SAMPLED:Lcom/google/firebase/sessions/DataCollectionState;

    invoke-static {}, Lcom/google/firebase/sessions/DataCollectionState;->$values()[Lcom/google/firebase/sessions/DataCollectionState;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/DataCollectionState;->$VALUES:[Lcom/google/firebase/sessions/DataCollectionState;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/DataCollectionState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/firebase/sessions/DataCollectionState;->number:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/sessions/DataCollectionState;
    .locals 1

    const-class v0, Lcom/google/firebase/sessions/DataCollectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 111
    check-cast p0, Lcom/google/firebase/sessions/DataCollectionState;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/sessions/DataCollectionState;
    .locals 1

    sget-object v0, Lcom/google/firebase/sessions/DataCollectionState;->$VALUES:[Lcom/google/firebase/sessions/DataCollectionState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 111
    check-cast v0, [Lcom/google/firebase/sessions/DataCollectionState;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/google/firebase/sessions/DataCollectionState;->number:I

    return v0
.end method
