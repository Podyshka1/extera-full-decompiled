.class public final synthetic Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda55;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LaunchActivity;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lorg/telegram/messenger/Utilities$Callback;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LaunchActivity;JLorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda55;->f$0:Lorg/telegram/ui/LaunchActivity;

    iput-wide p2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda55;->f$1:J

    iput-object p4, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda55;->f$2:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda55;->f$0:Lorg/telegram/ui/LaunchActivity;

    iget-wide v1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda55;->f$1:J

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda55;->f$2:Lorg/telegram/messenger/Utilities$Callback;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/LaunchActivity;->$r8$lambda$xkkZsSQPWtFrhyrwInXfu7QIj2A(Lorg/telegram/ui/LaunchActivity;JLorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method
