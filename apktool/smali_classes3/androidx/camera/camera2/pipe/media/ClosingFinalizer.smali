.class public final Landroidx/camera/camera2/pipe/media/ClosingFinalizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/media/Finalizer;


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/pipe/media/ClosingFinalizer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/media/ClosingFinalizer;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/media/ClosingFinalizer;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/media/ClosingFinalizer;->INSTANCE:Landroidx/camera/camera2/pipe/media/ClosingFinalizer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finalize(Ljava/lang/AutoCloseable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 32
    invoke-static {p1}, Landroidx/camera/camera2/config/UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0;->m(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic finalize(Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Ljava/lang/AutoCloseable;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/media/ClosingFinalizer;->finalize(Ljava/lang/AutoCloseable;)V

    return-void
.end method
