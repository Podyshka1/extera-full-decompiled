.class public final synthetic Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/NotificationCenter;

.field public final synthetic f$1:[Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/NotificationCenter;[Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/messenger/NotificationCenter;

    iput-object p2, p0, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda6;->f$1:[Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;

    iput p3, p0, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda6;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/messenger/NotificationCenter;

    iget-object v1, p0, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda6;->f$1:[Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;

    iget v2, p0, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda6;->f$2:I

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->$r8$lambda$jjiN6y9NZib_WH-Cx1wPlySQ8Vo(Lorg/telegram/messenger/NotificationCenter;[Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method
