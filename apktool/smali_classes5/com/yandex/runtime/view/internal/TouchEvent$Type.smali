.class final enum Lcom/yandex/runtime/view/internal/TouchEvent$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/runtime/view/internal/TouchEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/runtime/view/internal/TouchEvent$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yandex/runtime/view/internal/TouchEvent$Type;

.field public static final enum BEGAN:Lcom/yandex/runtime/view/internal/TouchEvent$Type;

.field public static final enum CANCELED:Lcom/yandex/runtime/view/internal/TouchEvent$Type;

.field public static final enum ENDED:Lcom/yandex/runtime/view/internal/TouchEvent$Type;

.field public static final enum MOVED:Lcom/yandex/runtime/view/internal/TouchEvent$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 10
    new-instance v0, Lcom/yandex/runtime/view/internal/TouchEvent$Type;

    const-string v1, "BEGAN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yandex/runtime/view/internal/TouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/runtime/view/internal/TouchEvent$Type;->BEGAN:Lcom/yandex/runtime/view/internal/TouchEvent$Type;

    .line 11
    new-instance v1, Lcom/yandex/runtime/view/internal/TouchEvent$Type;

    const-string v3, "ENDED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/yandex/runtime/view/internal/TouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/yandex/runtime/view/internal/TouchEvent$Type;->ENDED:Lcom/yandex/runtime/view/internal/TouchEvent$Type;

    .line 12
    new-instance v3, Lcom/yandex/runtime/view/internal/TouchEvent$Type;

    const-string v5, "MOVED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/yandex/runtime/view/internal/TouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/yandex/runtime/view/internal/TouchEvent$Type;->MOVED:Lcom/yandex/runtime/view/internal/TouchEvent$Type;

    .line 13
    new-instance v5, Lcom/yandex/runtime/view/internal/TouchEvent$Type;

    const-string v7, "CANCELED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/yandex/runtime/view/internal/TouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/yandex/runtime/view/internal/TouchEvent$Type;->CANCELED:Lcom/yandex/runtime/view/internal/TouchEvent$Type;

    const/4 v7, 0x4

    .line 9
    new-array v7, v7, [Lcom/yandex/runtime/view/internal/TouchEvent$Type;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/yandex/runtime/view/internal/TouchEvent$Type;->$VALUES:[Lcom/yandex/runtime/view/internal/TouchEvent$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/runtime/view/internal/TouchEvent$Type;
    .locals 1

    .line 9
    const-class v0, Lcom/yandex/runtime/view/internal/TouchEvent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/runtime/view/internal/TouchEvent$Type;

    return-object p0
.end method

.method public static values()[Lcom/yandex/runtime/view/internal/TouchEvent$Type;
    .locals 1

    .line 9
    sget-object v0, Lcom/yandex/runtime/view/internal/TouchEvent$Type;->$VALUES:[Lcom/yandex/runtime/view/internal/TouchEvent$Type;

    invoke-virtual {v0}, [Lcom/yandex/runtime/view/internal/TouchEvent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/runtime/view/internal/TouchEvent$Type;

    return-object v0
.end method
