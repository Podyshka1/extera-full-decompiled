.class public final synthetic Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/NotificationsController;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/NotificationsController;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/messenger/NotificationsController;

    iput-object p2, p0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda5;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/messenger/NotificationsController;

    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda5;->f$1:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lorg/telegram/messenger/NotificationsController;->$r8$lambda$WAMA-x5Cuyvs9KRNr9mmvhlNN7A(Lorg/telegram/messenger/NotificationsController;Ljava/util/ArrayList;)V

    return-void
.end method
