.class public final enum Lkotlinx/serialization/json/ClassDiscriminatorMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lkotlinx/serialization/json/ClassDiscriminatorMode;

.field public static final enum ALL_JSON_OBJECTS:Lkotlinx/serialization/json/ClassDiscriminatorMode;

.field public static final enum NONE:Lkotlinx/serialization/json/ClassDiscriminatorMode;

.field public static final enum POLYMORPHIC:Lkotlinx/serialization/json/ClassDiscriminatorMode;


# direct methods
.method private static final synthetic $values()[Lkotlinx/serialization/json/ClassDiscriminatorMode;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlinx/serialization/json/ClassDiscriminatorMode;

    sget-object v1, Lkotlinx/serialization/json/ClassDiscriminatorMode;->NONE:Lkotlinx/serialization/json/ClassDiscriminatorMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/serialization/json/ClassDiscriminatorMode;->ALL_JSON_OBJECTS:Lkotlinx/serialization/json/ClassDiscriminatorMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/serialization/json/ClassDiscriminatorMode;->POLYMORPHIC:Lkotlinx/serialization/json/ClassDiscriminatorMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 88
    new-instance v0, Lkotlinx/serialization/json/ClassDiscriminatorMode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/json/ClassDiscriminatorMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/serialization/json/ClassDiscriminatorMode;->NONE:Lkotlinx/serialization/json/ClassDiscriminatorMode;

    .line 114
    new-instance v0, Lkotlinx/serialization/json/ClassDiscriminatorMode;

    const-string v1, "ALL_JSON_OBJECTS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/json/ClassDiscriminatorMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/serialization/json/ClassDiscriminatorMode;->ALL_JSON_OBJECTS:Lkotlinx/serialization/json/ClassDiscriminatorMode;

    .line 142
    new-instance v0, Lkotlinx/serialization/json/ClassDiscriminatorMode;

    const-string v1, "POLYMORPHIC"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/json/ClassDiscriminatorMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/serialization/json/ClassDiscriminatorMode;->POLYMORPHIC:Lkotlinx/serialization/json/ClassDiscriminatorMode;

    invoke-static {}, Lkotlinx/serialization/json/ClassDiscriminatorMode;->$values()[Lkotlinx/serialization/json/ClassDiscriminatorMode;

    move-result-object v0

    sput-object v0, Lkotlinx/serialization/json/ClassDiscriminatorMode;->$VALUES:[Lkotlinx/serialization/json/ClassDiscriminatorMode;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lkotlinx/serialization/json/ClassDiscriminatorMode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlinx/serialization/json/ClassDiscriminatorMode;
    .locals 1

    const-class v0, Lkotlinx/serialization/json/ClassDiscriminatorMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/json/ClassDiscriminatorMode;

    return-object p0
.end method

.method public static values()[Lkotlinx/serialization/json/ClassDiscriminatorMode;
    .locals 1

    sget-object v0, Lkotlinx/serialization/json/ClassDiscriminatorMode;->$VALUES:[Lkotlinx/serialization/json/ClassDiscriminatorMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlinx/serialization/json/ClassDiscriminatorMode;

    return-object v0
.end method
