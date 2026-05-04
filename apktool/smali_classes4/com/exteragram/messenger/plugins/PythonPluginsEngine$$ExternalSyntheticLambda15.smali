.class public final synthetic Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/Utilities$Callback;

.field public final synthetic f$1:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda15;->f$0:Lorg/telegram/messenger/Utilities$Callback;

    iput-object p2, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda15;->f$1:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda15;->f$0:Lorg/telegram/messenger/Utilities$Callback;

    iget-object v1, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda15;->f$1:Ljava/lang/Throwable;

    invoke-static {v0, v1}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->$r8$lambda$Qoq8K6Pf0qg6Go6zg4818NrllQw(Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Throwable;)V

    return-void
.end method
