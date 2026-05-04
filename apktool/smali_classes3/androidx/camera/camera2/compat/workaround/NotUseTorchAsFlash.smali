.class public final Landroidx/camera/camera2/compat/workaround/NotUseTorchAsFlash;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/compat/workaround/UseTorchAsFlash;


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/compat/workaround/NotUseTorchAsFlash;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/compat/workaround/NotUseTorchAsFlash;

    invoke-direct {v0}, Landroidx/camera/camera2/compat/workaround/NotUseTorchAsFlash;-><init>()V

    sput-object v0, Landroidx/camera/camera2/compat/workaround/NotUseTorchAsFlash;->INSTANCE:Landroidx/camera/camera2/compat/workaround/NotUseTorchAsFlash;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldDisableAePrecapture()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shouldUseTorchAsFlash(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    .line 167
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
