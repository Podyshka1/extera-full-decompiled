.class public final synthetic Lcom/exteragram/messenger/export/controllers/ExportRequestsController$$ExternalSyntheticLambda38;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$CallbackReturn;


# instance fields
.field public final synthetic f$0:Lcom/exteragram/messenger/export/controllers/ExportRequestsController;


# direct methods
.method public synthetic constructor <init>(Lcom/exteragram/messenger/export/controllers/ExportRequestsController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/export/controllers/ExportRequestsController$$ExternalSyntheticLambda38;->f$0:Lcom/exteragram/messenger/export/controllers/ExportRequestsController;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/export/controllers/ExportRequestsController$$ExternalSyntheticLambda38;->f$0:Lcom/exteragram/messenger/export/controllers/ExportRequestsController;

    check-cast p1, Lcom/exteragram/messenger/export/api/ApiWrap$FileProgress;

    invoke-virtual {v0, p1}, Lcom/exteragram/messenger/export/controllers/ExportRequestsController;->loadUserpicProgress(Lcom/exteragram/messenger/export/api/ApiWrap$FileProgress;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
