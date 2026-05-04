.class public final enum Landroidx/camera/core/impl/stabilization/VideoStabilization;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/stabilization/VideoStabilization$Companion;
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Landroidx/camera/core/impl/stabilization/VideoStabilization;

.field public static final Companion:Landroidx/camera/core/impl/stabilization/VideoStabilization$Companion;

.field public static final enum OFF:Landroidx/camera/core/impl/stabilization/VideoStabilization;

.field public static final enum ON:Landroidx/camera/core/impl/stabilization/VideoStabilization;

.field public static final enum PREVIEW:Landroidx/camera/core/impl/stabilization/VideoStabilization;

.field public static final enum UNSPECIFIED:Landroidx/camera/core/impl/stabilization/VideoStabilization;


# direct methods
.method private static final synthetic $values()[Landroidx/camera/core/impl/stabilization/VideoStabilization;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Landroidx/camera/core/impl/stabilization/VideoStabilization;

    sget-object v1, Landroidx/camera/core/impl/stabilization/VideoStabilization;->UNSPECIFIED:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/core/impl/stabilization/VideoStabilization;->OFF:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/core/impl/stabilization/VideoStabilization;->ON:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/core/impl/stabilization/VideoStabilization;->PREVIEW:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Landroidx/camera/core/impl/stabilization/VideoStabilization;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/impl/stabilization/VideoStabilization;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/impl/stabilization/VideoStabilization;->UNSPECIFIED:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    .line 28
    new-instance v0, Landroidx/camera/core/impl/stabilization/VideoStabilization;

    const-string v1, "OFF"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/impl/stabilization/VideoStabilization;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/impl/stabilization/VideoStabilization;->OFF:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    .line 31
    new-instance v0, Landroidx/camera/core/impl/stabilization/VideoStabilization;

    const-string v1, "ON"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/impl/stabilization/VideoStabilization;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/impl/stabilization/VideoStabilization;->ON:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    .line 34
    new-instance v0, Landroidx/camera/core/impl/stabilization/VideoStabilization;

    const-string v1, "PREVIEW"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/impl/stabilization/VideoStabilization;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/impl/stabilization/VideoStabilization;->PREVIEW:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    invoke-static {}, Landroidx/camera/core/impl/stabilization/VideoStabilization;->$values()[Landroidx/camera/core/impl/stabilization/VideoStabilization;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/stabilization/VideoStabilization;->$VALUES:[Landroidx/camera/core/impl/stabilization/VideoStabilization;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/stabilization/VideoStabilization;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Landroidx/camera/core/impl/stabilization/VideoStabilization$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/core/impl/stabilization/VideoStabilization$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/core/impl/stabilization/VideoStabilization;->Companion:Landroidx/camera/core/impl/stabilization/VideoStabilization$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/core/impl/stabilization/VideoStabilization;
    .locals 1

    const-class v0, Landroidx/camera/core/impl/stabilization/VideoStabilization;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/impl/stabilization/VideoStabilization;

    return-object p0
.end method

.method public static values()[Landroidx/camera/core/impl/stabilization/VideoStabilization;
    .locals 1

    sget-object v0, Landroidx/camera/core/impl/stabilization/VideoStabilization;->$VALUES:[Landroidx/camera/core/impl/stabilization/VideoStabilization;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/camera/core/impl/stabilization/VideoStabilization;

    return-object v0
.end method
