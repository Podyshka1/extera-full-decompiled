.class final Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingRequestOpen"
.end annotation


# instance fields
.field private final activeCamera:Landroidx/camera/camera2/pipe/compat/ActiveCamera;

.field private final request:Landroidx/camera/camera2/pipe/compat/RequestOpen;

.field private final token:Landroidx/camera/camera2/pipe/core/Token;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/RequestOpen;Landroidx/camera/camera2/pipe/compat/ActiveCamera;Landroidx/camera/camera2/pipe/core/Token;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activeCamera"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "token"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;->request:Landroidx/camera/camera2/pipe/compat/RequestOpen;

    .line 199
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;->activeCamera:Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    .line 200
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;->token:Landroidx/camera/camera2/pipe/core/Token;

    return-void
.end method


# virtual methods
.method public final getActiveCamera()Landroidx/camera/camera2/pipe/compat/ActiveCamera;
    .locals 1

    .line 199
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;->activeCamera:Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    return-object v0
.end method

.method public final getRequest()Landroidx/camera/camera2/pipe/compat/RequestOpen;
    .locals 1

    .line 198
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;->request:Landroidx/camera/camera2/pipe/compat/RequestOpen;

    return-object v0
.end method

.method public final getToken()Landroidx/camera/camera2/pipe/core/Token;
    .locals 1

    .line 200
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;->token:Landroidx/camera/camera2/pipe/core/Token;

    return-object v0
.end method
