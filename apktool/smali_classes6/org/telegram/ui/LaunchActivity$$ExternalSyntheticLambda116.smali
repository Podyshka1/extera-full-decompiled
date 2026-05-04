.class public final synthetic Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda116;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$1:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$2:J

.field public final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessagesController;JLjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda116;->f$0:Lorg/telegram/tgnet/TLObject;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda116;->f$1:Lorg/telegram/messenger/MessagesController;

    iput-wide p3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda116;->f$2:J

    iput-object p5, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda116;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda116;->f$0:Lorg/telegram/tgnet/TLObject;

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda116;->f$1:Lorg/telegram/messenger/MessagesController;

    iget-wide v2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda116;->f$2:J

    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda116;->f$3:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/ui/LaunchActivity;->$r8$lambda$M6e9VCAQW4YeMLeM37TipxL_8ng(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessagesController;JLjava/lang/Runnable;)V

    return-void
.end method
