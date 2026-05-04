.class public final synthetic Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/chaquo/python/PyException;

    invoke-static {v0, p1}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->$r8$lambda$6W5fXYKQUDMRoT_45HRNATPyWXk(Ljava/lang/String;Lcom/chaquo/python/PyException;)V

    return-void
.end method
