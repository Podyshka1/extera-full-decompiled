.class public final enum Landroidx/room/ObservedTableStates$ObserveOp;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/ObservedTableStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ObserveOp"
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Landroidx/room/ObservedTableStates$ObserveOp;

.field public static final enum ADD:Landroidx/room/ObservedTableStates$ObserveOp;

.field public static final enum NO_OP:Landroidx/room/ObservedTableStates$ObserveOp;

.field public static final enum REMOVE:Landroidx/room/ObservedTableStates$ObserveOp;


# direct methods
.method private static final synthetic $values()[Landroidx/room/ObservedTableStates$ObserveOp;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Landroidx/room/ObservedTableStates$ObserveOp;

    sget-object v1, Landroidx/room/ObservedTableStates$ObserveOp;->NO_OP:Landroidx/room/ObservedTableStates$ObserveOp;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroidx/room/ObservedTableStates$ObserveOp;->ADD:Landroidx/room/ObservedTableStates$ObserveOp;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroidx/room/ObservedTableStates$ObserveOp;->REMOVE:Landroidx/room/ObservedTableStates$ObserveOp;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 605
    new-instance v0, Landroidx/room/ObservedTableStates$ObserveOp;

    const-string v1, "NO_OP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/room/ObservedTableStates$ObserveOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/room/ObservedTableStates$ObserveOp;->NO_OP:Landroidx/room/ObservedTableStates$ObserveOp;

    .line 606
    new-instance v0, Landroidx/room/ObservedTableStates$ObserveOp;

    const-string v1, "ADD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/room/ObservedTableStates$ObserveOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/room/ObservedTableStates$ObserveOp;->ADD:Landroidx/room/ObservedTableStates$ObserveOp;

    .line 607
    new-instance v0, Landroidx/room/ObservedTableStates$ObserveOp;

    const-string v1, "REMOVE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/room/ObservedTableStates$ObserveOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/room/ObservedTableStates$ObserveOp;->REMOVE:Landroidx/room/ObservedTableStates$ObserveOp;

    invoke-static {}, Landroidx/room/ObservedTableStates$ObserveOp;->$values()[Landroidx/room/ObservedTableStates$ObserveOp;

    move-result-object v0

    sput-object v0, Landroidx/room/ObservedTableStates$ObserveOp;->$VALUES:[Landroidx/room/ObservedTableStates$ObserveOp;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Landroidx/room/ObservedTableStates$ObserveOp;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 604
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/room/ObservedTableStates$ObserveOp;
    .locals 1

    const-class v0, Landroidx/room/ObservedTableStates$ObserveOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/room/ObservedTableStates$ObserveOp;

    return-object p0
.end method

.method public static values()[Landroidx/room/ObservedTableStates$ObserveOp;
    .locals 1

    sget-object v0, Landroidx/room/ObservedTableStates$ObserveOp;->$VALUES:[Landroidx/room/ObservedTableStates$ObserveOp;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/room/ObservedTableStates$ObserveOp;

    return-object v0
.end method
