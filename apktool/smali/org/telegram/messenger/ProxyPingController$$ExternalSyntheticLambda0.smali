.class public final synthetic Lorg/telegram/messenger/ProxyPingController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/ProxyPingController;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lorg/telegram/messenger/SharedConfig$ProxyInfo;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/ProxyPingController;JLorg/telegram/messenger/SharedConfig$ProxyInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ProxyPingController$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/messenger/ProxyPingController;

    iput-wide p2, p0, Lorg/telegram/messenger/ProxyPingController$$ExternalSyntheticLambda0;->f$1:J

    iput-object p4, p0, Lorg/telegram/messenger/ProxyPingController$$ExternalSyntheticLambda0;->f$2:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/ProxyPingController$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/messenger/ProxyPingController;

    iget-wide v1, p0, Lorg/telegram/messenger/ProxyPingController$$ExternalSyntheticLambda0;->f$1:J

    iget-object v3, p0, Lorg/telegram/messenger/ProxyPingController$$ExternalSyntheticLambda0;->f$2:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/ProxyPingController;->$r8$lambda$A6CxG2H98x1ngjbYhmAxtwts59g(Lorg/telegram/messenger/ProxyPingController;JLorg/telegram/messenger/SharedConfig$ProxyInfo;)V

    return-void
.end method
