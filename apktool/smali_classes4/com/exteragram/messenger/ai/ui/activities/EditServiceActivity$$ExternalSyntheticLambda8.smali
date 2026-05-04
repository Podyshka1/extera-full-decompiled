.class public final synthetic Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lcom/exteragram/messenger/ai/network/Client;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/exteragram/messenger/ai/network/Client;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$$ExternalSyntheticLambda8;->f$0:Lcom/exteragram/messenger/ai/network/Client;

    iput-object p2, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$$ExternalSyntheticLambda8;->f$0:Lcom/exteragram/messenger/ai/network/Client;

    iget-object v1, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->$r8$lambda$IF2OhztNDHZYo9j2dTSdnYl0q1I(Lcom/exteragram/messenger/ai/network/Client;Ljava/lang/String;Landroid/content/DialogInterface;)V

    return-void
.end method
