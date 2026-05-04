.class public final enum Lcom/yandex/mapkit/map/TextStyle$Placement;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mapkit/map/TextStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Placement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/mapkit/map/TextStyle$Placement;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yandex/mapkit/map/TextStyle$Placement;

.field public static final enum BOTTOM:Lcom/yandex/mapkit/map/TextStyle$Placement;

.field public static final enum BOTTOM_LEFT:Lcom/yandex/mapkit/map/TextStyle$Placement;

.field public static final enum BOTTOM_RIGHT:Lcom/yandex/mapkit/map/TextStyle$Placement;

.field public static final enum CENTER:Lcom/yandex/mapkit/map/TextStyle$Placement;

.field public static final enum LEFT:Lcom/yandex/mapkit/map/TextStyle$Placement;

.field public static final enum RIGHT:Lcom/yandex/mapkit/map/TextStyle$Placement;

.field public static final enum TOP:Lcom/yandex/mapkit/map/TextStyle$Placement;

.field public static final enum TOP_LEFT:Lcom/yandex/mapkit/map/TextStyle$Placement;

.field public static final enum TOP_RIGHT:Lcom/yandex/mapkit/map/TextStyle$Placement;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 16
    new-instance v0, Lcom/yandex/mapkit/map/TextStyle$Placement;

    const-string v1, "CENTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yandex/mapkit/map/TextStyle$Placement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/mapkit/map/TextStyle$Placement;->CENTER:Lcom/yandex/mapkit/map/TextStyle$Placement;

    .line 17
    new-instance v1, Lcom/yandex/mapkit/map/TextStyle$Placement;

    const-string v3, "LEFT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/yandex/mapkit/map/TextStyle$Placement;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/yandex/mapkit/map/TextStyle$Placement;->LEFT:Lcom/yandex/mapkit/map/TextStyle$Placement;

    .line 18
    new-instance v3, Lcom/yandex/mapkit/map/TextStyle$Placement;

    const-string v5, "RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/yandex/mapkit/map/TextStyle$Placement;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/yandex/mapkit/map/TextStyle$Placement;->RIGHT:Lcom/yandex/mapkit/map/TextStyle$Placement;

    .line 19
    new-instance v5, Lcom/yandex/mapkit/map/TextStyle$Placement;

    const-string v7, "TOP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/yandex/mapkit/map/TextStyle$Placement;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/yandex/mapkit/map/TextStyle$Placement;->TOP:Lcom/yandex/mapkit/map/TextStyle$Placement;

    .line 20
    new-instance v7, Lcom/yandex/mapkit/map/TextStyle$Placement;

    const-string v9, "BOTTOM"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/yandex/mapkit/map/TextStyle$Placement;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/yandex/mapkit/map/TextStyle$Placement;->BOTTOM:Lcom/yandex/mapkit/map/TextStyle$Placement;

    .line 21
    new-instance v9, Lcom/yandex/mapkit/map/TextStyle$Placement;

    const-string v11, "TOP_LEFT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/yandex/mapkit/map/TextStyle$Placement;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/yandex/mapkit/map/TextStyle$Placement;->TOP_LEFT:Lcom/yandex/mapkit/map/TextStyle$Placement;

    .line 22
    new-instance v11, Lcom/yandex/mapkit/map/TextStyle$Placement;

    const-string v13, "TOP_RIGHT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/yandex/mapkit/map/TextStyle$Placement;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/yandex/mapkit/map/TextStyle$Placement;->TOP_RIGHT:Lcom/yandex/mapkit/map/TextStyle$Placement;

    .line 23
    new-instance v13, Lcom/yandex/mapkit/map/TextStyle$Placement;

    const-string v15, "BOTTOM_LEFT"

    move/from16 v16, v2

    const/4 v2, 0x7

    invoke-direct {v13, v15, v2}, Lcom/yandex/mapkit/map/TextStyle$Placement;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/yandex/mapkit/map/TextStyle$Placement;->BOTTOM_LEFT:Lcom/yandex/mapkit/map/TextStyle$Placement;

    .line 24
    new-instance v15, Lcom/yandex/mapkit/map/TextStyle$Placement;

    move/from16 v17, v2

    const-string v2, "BOTTOM_RIGHT"

    move/from16 v18, v4

    const/16 v4, 0x8

    invoke-direct {v15, v2, v4}, Lcom/yandex/mapkit/map/TextStyle$Placement;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/yandex/mapkit/map/TextStyle$Placement;->BOTTOM_RIGHT:Lcom/yandex/mapkit/map/TextStyle$Placement;

    const/16 v2, 0x9

    .line 15
    new-array v2, v2, [Lcom/yandex/mapkit/map/TextStyle$Placement;

    aput-object v0, v2, v16

    aput-object v1, v2, v18

    aput-object v3, v2, v6

    aput-object v5, v2, v8

    aput-object v7, v2, v10

    aput-object v9, v2, v12

    aput-object v11, v2, v14

    aput-object v13, v2, v17

    aput-object v15, v2, v4

    sput-object v2, Lcom/yandex/mapkit/map/TextStyle$Placement;->$VALUES:[Lcom/yandex/mapkit/map/TextStyle$Placement;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/mapkit/map/TextStyle$Placement;
    .locals 1

    .line 15
    const-class v0, Lcom/yandex/mapkit/map/TextStyle$Placement;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/mapkit/map/TextStyle$Placement;

    return-object p0
.end method

.method public static values()[Lcom/yandex/mapkit/map/TextStyle$Placement;
    .locals 1

    .line 15
    sget-object v0, Lcom/yandex/mapkit/map/TextStyle$Placement;->$VALUES:[Lcom/yandex/mapkit/map/TextStyle$Placement;

    invoke-virtual {v0}, [Lcom/yandex/mapkit/map/TextStyle$Placement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/mapkit/map/TextStyle$Placement;

    return-object v0
.end method
