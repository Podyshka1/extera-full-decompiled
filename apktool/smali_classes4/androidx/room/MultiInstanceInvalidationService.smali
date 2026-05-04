.class public final Landroidx/room/MultiInstanceInvalidationService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private final binder:Landroidx/room/IMultiInstanceInvalidationService$Stub;

.field private final callbackList:Landroid/os/RemoteCallbackList;

.field private final clientNames:Ljava/util/Map;

.field private maxClientId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 38
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/room/MultiInstanceInvalidationService;->clientNames:Ljava/util/Map;

    .line 41
    new-instance v0, Landroidx/room/MultiInstanceInvalidationService$callbackList$1;

    invoke-direct {v0, p0}, Landroidx/room/MultiInstanceInvalidationService$callbackList$1;-><init>(Landroidx/room/MultiInstanceInvalidationService;)V

    iput-object v0, p0, Landroidx/room/MultiInstanceInvalidationService;->callbackList:Landroid/os/RemoteCallbackList;

    .line 48
    new-instance v0, Landroidx/room/MultiInstanceInvalidationService$binder$1;

    invoke-direct {v0, p0}, Landroidx/room/MultiInstanceInvalidationService$binder$1;-><init>(Landroidx/room/MultiInstanceInvalidationService;)V

    iput-object v0, p0, Landroidx/room/MultiInstanceInvalidationService;->binder:Landroidx/room/IMultiInstanceInvalidationService$Stub;

    return-void
.end method


# virtual methods
.method public final getCallbackList$room_runtime()Landroid/os/RemoteCallbackList;
    .locals 1

    .line 40
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationService;->callbackList:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method public final getClientNames$room_runtime()Ljava/util/Map;
    .locals 1

    .line 38
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationService;->clientNames:Ljava/util/Map;

    return-object v0
.end method

.method public final getMaxClientId$room_runtime()I
    .locals 1

    .line 37
    iget v0, p0, Landroidx/room/MultiInstanceInvalidationService;->maxClientId:I

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object p1, p0, Landroidx/room/MultiInstanceInvalidationService;->binder:Landroidx/room/IMultiInstanceInvalidationService$Stub;

    return-object p1
.end method

.method public final setMaxClientId$room_runtime(I)V
    .locals 0

    .line 37
    iput p1, p0, Landroidx/room/MultiInstanceInvalidationService;->maxClientId:I

    return-void
.end method
