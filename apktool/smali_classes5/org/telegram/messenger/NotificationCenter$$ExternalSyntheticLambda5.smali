.class public final synthetic Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/NotificationCenter;

.field public final synthetic f$1:I

.field public final synthetic f$2:[Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;

.field public final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/NotificationCenter;I[Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/messenger/NotificationCenter;

    iput p2, p0, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda5;->f$1:I

    iput-object p3, p0, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda5;->f$2:[Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;

    iput-object p4, p0, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda5;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 7

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/messenger/NotificationCenter;

    iget v1, p0, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda5;->f$1:I

    iget-object v2, p0, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda5;->f$2:[Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;

    iget-object v3, p0, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda5;->f$3:Ljava/lang/Runnable;

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/NotificationCenter;->$r8$lambda$rTpXNo_lKORA-N_1myriv9-879A(Lorg/telegram/messenger/NotificationCenter;I[Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;Ljava/lang/Runnable;II[Ljava/lang/Object;)V

    return-void
.end method
