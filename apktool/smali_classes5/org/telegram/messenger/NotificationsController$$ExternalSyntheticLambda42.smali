.class public final synthetic Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/NotificationsController;

.field public final synthetic f$1:J

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/NotificationsController;JI)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda42;->f$0:Lorg/telegram/messenger/NotificationsController;

    iput-wide p2, p0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda42;->f$1:J

    iput p4, p0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda42;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda42;->f$0:Lorg/telegram/messenger/NotificationsController;

    iget-wide v1, p0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda42;->f$1:J

    iget v3, p0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda42;->f$2:I

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/NotificationsController;->$r8$lambda$34te4E92C9JfH3hOWTyDzwSDTj0(Lorg/telegram/messenger/NotificationsController;JI)V

    return-void
.end method
