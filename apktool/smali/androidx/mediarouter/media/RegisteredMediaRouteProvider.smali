.class final Landroidx/mediarouter/media/RegisteredMediaRouteProvider;
.super Landroidx/mediarouter/media/MediaRouteProvider;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/media/RegisteredMediaRouteProvider$PrivateHandler;,
        Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;,
        Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerCallback;,
        Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;,
        Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;,
        Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController;,
        Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ReceiveHandler;
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field private mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

.field private mBound:Z

.field private final mComponentName:Landroid/content/ComponentName;

.field private mConnectionReady:Z

.field private mControllerCallback:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerCallback;

.field private final mControllerConnections:Ljava/util/ArrayList;

.field final mPrivateHandler:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$PrivateHandler;

.field private mStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 88
    const-string v0, "MediaRouteProviderProxy"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1

    .line 102
    new-instance v0, Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;

    invoke-direct {v0, p2}, Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;-><init>(Landroid/content/ComponentName;)V

    invoke-direct {p0, p1, v0}, Landroidx/mediarouter/media/MediaRouteProvider;-><init>(Landroid/content/Context;Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;)V

    .line 92
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mControllerConnections:Ljava/util/ArrayList;

    .line 104
    iput-object p2, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mComponentName:Landroid/content/ComponentName;

    .line 105
    new-instance p1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$PrivateHandler;

    invoke-direct {p1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$PrivateHandler;-><init>()V

    iput-object p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mPrivateHandler:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$PrivateHandler;

    return-void
.end method

.method private attachControllersToConnection()V
    .locals 4

    .line 423
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mControllerConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 425
    iget-object v2, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mControllerConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;

    iget-object v3, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    invoke-interface {v2, v3}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;->attachConnection(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bind()V
    .locals 3

    .line 247
    iget-boolean v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mBound:Z

    if-nez v0, :cond_1

    .line 252
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.MediaRouteProviderService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 256
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    const/16 v1, 0x1001

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 259
    :goto_0
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mBound:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method private createDynamicGroupRouteController(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;
    .locals 4

    .line 311
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProvider;->getDescriptor()Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 313
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->getRoutes()Ljava/util/List;

    move-result-object v0

    .line 314
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 316
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 317
    invoke-virtual {v3}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 318
    new-instance v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController;

    invoke-direct {v0, p0, p1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController;-><init>(Landroidx/mediarouter/media/RegisteredMediaRouteProvider;Ljava/lang/String;)V

    .line 320
    iget-object p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mControllerConnections:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    iget-boolean p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mConnectionReady:Z

    if-eqz p1, :cond_0

    .line 322
    iget-object p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    invoke-interface {v0, p1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;->attachConnection(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;)V

    .line 324
    :cond_0
    invoke-direct {p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->updateBinding()V

    return-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private createRouteController(Ljava/lang/String;Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteProvider$RouteController;
    .locals 4

    .line 288
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProvider;->getDescriptor()Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 290
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->getRoutes()Ljava/util/List;

    move-result-object v0

    .line 291
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 293
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 294
    invoke-virtual {v3}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 295
    new-instance v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;

    invoke-direct {v0, p0, p1, p2}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;-><init>(Landroidx/mediarouter/media/RegisteredMediaRouteProvider;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mControllerConnections:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    iget-boolean p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mConnectionReady:Z

    if-eqz p1, :cond_0

    .line 299
    iget-object p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    invoke-interface {v0, p1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;->attachConnection(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;)V

    .line 301
    :cond_0
    invoke-direct {p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->updateBinding()V

    return-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private detachControllersFromConnection()V
    .locals 3

    .line 430
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mControllerConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 432
    iget-object v2, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mControllerConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;

    invoke-interface {v2}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;->detachConnection()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private disconnect()V
    .locals 2

    .line 407
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 408
    invoke-virtual {p0, v0}, Landroidx/mediarouter/media/MediaRouteProvider;->setDescriptor(Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V

    const/4 v1, 0x0

    .line 409
    iput-boolean v1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mConnectionReady:Z

    .line 410
    invoke-direct {p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->detachControllersFromConnection()V

    .line 411
    iget-object v1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    invoke-virtual {v1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->dispose()V

    .line 412
    iput-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    :cond_0
    return-void
.end method

.method private findControllerById(I)Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;
    .locals 5

    .line 398
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mControllerConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;

    .line 399
    invoke-interface {v3}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;->getControllerId()I

    move-result v4

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private shouldBind()Z
    .locals 2

    .line 231
    iget-boolean v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mStarted:Z

    if-eqz v0, :cond_1

    .line 233
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProvider;->getDiscoveryRequest()Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 239
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mControllerConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private unbind()V
    .locals 3

    .line 272
    iget-boolean v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mBound:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 277
    iput-boolean v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mBound:Z

    .line 278
    invoke-direct {p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->disconnect()V

    .line 280
    :try_start_0
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": unbindService failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaRouteProviderProxy"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private updateBinding()V
    .locals 1

    .line 223
    invoke-direct {p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->shouldBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-direct {p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->bind()V

    return-void

    .line 226
    :cond_0
    invoke-direct {p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->unbind()V

    return-void
.end method


# virtual methods
.method public hasComponentName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 185
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mComponentName:Landroid/content/ComponentName;

    .line 186
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method onConnectionControllerReleasedByProvider(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;I)V
    .locals 1

    .line 388
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    if-ne v0, p1, :cond_1

    .line 389
    invoke-direct {p0, p2}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->findControllerById(I)Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;

    move-result-object p1

    .line 390
    iget-object p2, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mControllerCallback:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerCallback;

    if-eqz p2, :cond_0

    instance-of v0, p1, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    if-eqz v0, :cond_0

    .line 391
    move-object v0, p1

    check-cast v0, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    invoke-interface {p2, v0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerCallback;->onControllerReleasedByProvider(Landroidx/mediarouter/media/MediaRouteProvider$RouteController;)V

    .line 393
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->onControllerReleased(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;)V

    :cond_1
    return-void
.end method

.method onConnectionDescriptorChanged(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V
    .locals 1

    .line 364
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    if-ne v0, p1, :cond_0

    .line 368
    invoke-virtual {p0, p2}, Landroidx/mediarouter/media/MediaRouteProvider;->setDescriptor(Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V

    :cond_0
    return-void
.end method

.method onConnectionDied(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;)V
    .locals 1

    .line 345
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    if-ne v0, p1, :cond_0

    .line 349
    invoke-direct {p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->disconnect()V

    :cond_0
    return-void
.end method

.method onConnectionError(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;Ljava/lang/String;)V
    .locals 0

    .line 354
    iget-object p2, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    if-ne p2, p1, :cond_0

    .line 358
    invoke-direct {p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->unbind()V

    :cond_0
    return-void
.end method

.method onConnectionReady(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;)V
    .locals 1

    .line 333
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    .line 334
    iput-boolean p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mConnectionReady:Z

    .line 335
    invoke-direct {p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->attachControllersToConnection()V

    .line 337
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProvider;->getDiscoveryRequest()Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 339
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->setDiscoveryRequest(Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;)V

    :cond_0
    return-void
.end method

.method onControllerReleased(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;)V
    .locals 1

    .line 417
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mControllerConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 418
    invoke-interface {p1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;->detachConnection()V

    .line 419
    invoke-direct {p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->updateBinding()V

    return-void
.end method

.method public onCreateDynamicGroupRouteController(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;
    .locals 1

    if-eqz p1, :cond_0

    .line 134
    invoke-direct {p0, p1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->createDynamicGroupRouteController(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    move-result-object p1

    return-object p1

    .line 132
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "initialMemberRouteId cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateRouteController(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteProvider$RouteController;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, v0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->createRouteController(Ljava/lang/String;Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    move-result-object p1

    return-object p1

    .line 111
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "routeId cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateRouteController(Ljava/lang/String;Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteProvider$RouteController;
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 125
    invoke-direct {p0, p1, p2}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->createRouteController(Ljava/lang/String;Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    move-result-object p1

    return-object p1

    .line 123
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "routeGroupId cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 120
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "routeId cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDiscoveryRequestChanged(Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;)V
    .locals 1

    .line 139
    iget-boolean v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mConnectionReady:Z

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->setDiscoveryRequest(Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;)V

    .line 142
    :cond_0
    invoke-direct {p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->updateBinding()V

    return-void
.end method

.method onDynamicRouteDescriptorChanged(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;ILandroidx/mediarouter/media/MediaRouteDescriptor;Ljava/util/List;)V
    .locals 1

    .line 375
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    if-ne v0, p1, :cond_0

    .line 379
    invoke-direct {p0, p2}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->findControllerById(I)Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;

    move-result-object p1

    .line 380
    instance-of p2, p1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController;

    if-eqz p2, :cond_0

    .line 381
    check-cast p1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController;

    .line 382
    invoke-virtual {p1, p3, p4}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController;->onDynamicRoutesChanged(Landroidx/mediarouter/media/MediaRouteDescriptor;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 151
    iget-boolean p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mBound:Z

    if-eqz p1, :cond_3

    .line 152
    invoke-direct {p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->disconnect()V

    if-eqz p2, :cond_0

    .line 154
    new-instance p1, Landroid/os/Messenger;

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 155
    :goto_0
    invoke-static {p1}, Landroidx/mediarouter/media/MediaRouteProviderProtocol;->isValidRemoteMessenger(Landroid/os/Messenger;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 156
    new-instance p2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    invoke-direct {p2, p0, p1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;-><init>(Landroidx/mediarouter/media/RegisteredMediaRouteProvider;Landroid/os/Messenger;)V

    .line 157
    invoke-virtual {p2}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->register()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 158
    iput-object p2, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    :cond_1
    return-void

    .line 165
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ": Service returned invalid messenger binder"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaRouteProviderProxy"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 175
    invoke-direct {p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->disconnect()V

    return-void
.end method

.method public rebindIfDisconnected()V
    .locals 1

    .line 212
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->shouldBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    invoke-direct {p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->unbind()V

    .line 214
    invoke-direct {p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->bind()V

    :cond_0
    return-void
.end method

.method public setControllerCallback(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerCallback;)V
    .locals 0

    .line 219
    iput-object p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mControllerCallback:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerCallback;

    return-void
.end method

.method public start()V
    .locals 1

    .line 190
    iget-boolean v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mStarted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 195
    iput-boolean v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mStarted:Z

    .line 196
    invoke-direct {p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->updateBinding()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 201
    iget-boolean v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mStarted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 206
    iput-boolean v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mStarted:Z

    .line 207
    invoke-direct {p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->updateBinding()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
