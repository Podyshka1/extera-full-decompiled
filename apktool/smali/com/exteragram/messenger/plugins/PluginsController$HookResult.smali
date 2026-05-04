.class public Lcom/exteragram/messenger/plugins/PluginsController$HookResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/plugins/PluginsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HookResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public cancel:Z

.field public isFinal:Z

.field public result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ZZ)V"
        }
    .end annotation

    .line 947
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 948
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/PluginsController$HookResult;->result:Ljava/lang/Object;

    .line 949
    iput-boolean p2, p0, Lcom/exteragram/messenger/plugins/PluginsController$HookResult;->cancel:Z

    .line 950
    iput-boolean p3, p0, Lcom/exteragram/messenger/plugins/PluginsController$HookResult;->isFinal:Z

    return-void
.end method
