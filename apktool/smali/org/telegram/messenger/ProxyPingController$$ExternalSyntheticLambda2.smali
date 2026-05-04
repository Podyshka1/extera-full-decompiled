.class public final synthetic Lorg/telegram/messenger/ProxyPingController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestTimeDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/ProxyPingController;

.field public final synthetic f$1:Lorg/telegram/messenger/SharedConfig$ProxyInfo;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/ProxyPingController;Lorg/telegram/messenger/SharedConfig$ProxyInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ProxyPingController$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/messenger/ProxyPingController;

    iput-object p2, p0, Lorg/telegram/messenger/ProxyPingController$$ExternalSyntheticLambda2;->f$1:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    return-void
.end method


# virtual methods
.method public final run(J)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/ProxyPingController$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/messenger/ProxyPingController;

    iget-object v1, p0, Lorg/telegram/messenger/ProxyPingController$$ExternalSyntheticLambda2;->f$1:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/messenger/ProxyPingController;->$r8$lambda$_1yTmqZEY_ColhySo4aZk31F_qU(Lorg/telegram/messenger/ProxyPingController;Lorg/telegram/messenger/SharedConfig$ProxyInfo;J)V

    return-void
.end method
