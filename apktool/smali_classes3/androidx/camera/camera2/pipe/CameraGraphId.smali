.class public final Landroidx/camera/camera2/pipe/CameraGraphId;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/CameraGraphId$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/CameraGraphId$Companion;

.field private static final cameraGraphIds:Lkotlinx/atomicfu/AtomicInt;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/CameraGraphId$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/CameraGraphId$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/pipe/CameraGraphId;->Companion:Landroidx/camera/camera2/pipe/CameraGraphId$Companion;

    const/4 v0, 0x0

    .line 32
    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU;->atomic(I)Lkotlinx/atomicfu/AtomicInt;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/CameraGraphId;->cameraGraphIds:Lkotlinx/atomicfu/AtomicInt;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Landroidx/camera/camera2/pipe/CameraGraphId;->name:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/CameraGraphId;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getCameraGraphIds$cp()Lkotlinx/atomicfu/AtomicInt;
    .locals 1

    .line 27
    sget-object v0, Landroidx/camera/camera2/pipe/CameraGraphId;->cameraGraphIds:Lkotlinx/atomicfu/AtomicInt;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraGraphId;->name:Ljava/lang/String;

    return-object v0
.end method
