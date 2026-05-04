.class Landroidx/core/app/ActivityRecreator$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/app/ActivityRecreator;->queueOnStopIfNecessary(Ljava/lang/Object;ILandroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activityThread:Ljava/lang/Object;

.field final synthetic val$token:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 269
    iput-object p1, p0, Landroidx/core/app/ActivityRecreator$3;->val$activityThread:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/core/app/ActivityRecreator$3;->val$token:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 273
    :try_start_0
    sget-object v0, Landroidx/core/app/ActivityRecreator;->performStopActivity3ParamsMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 274
    iget-object v4, p0, Landroidx/core/app/ActivityRecreator$3;->val$activityThread:Ljava/lang/Object;

    iget-object v5, p0, Landroidx/core/app/ActivityRecreator$3;->val$token:Ljava/lang/Object;

    const/4 v6, 0x3

    .line 275
    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v3

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v6, v2

    const-string v2, "AppCompat recreation"

    aput-object v2, v6, v1

    .line 274
    invoke-virtual {v0, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 277
    :cond_0
    sget-object v0, Landroidx/core/app/ActivityRecreator;->performStopActivity2ParamsMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroidx/core/app/ActivityRecreator$3;->val$activityThread:Ljava/lang/Object;

    iget-object v5, p0, Landroidx/core/app/ActivityRecreator$3;->val$token:Ljava/lang/Object;

    .line 278
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v3

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    .line 277
    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 290
    :goto_0
    const-string v1, "ActivityRecreator"

    const-string v2, "Exception while invoking performStopActivity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 282
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/RuntimeException;

    if-ne v1, v2, :cond_2

    .line 283
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 284
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to stop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 285
    :cond_1
    throw v0

    :cond_2
    :goto_2
    return-void
.end method
