.class public final synthetic Lorg/telegram/ui/ProxyListActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/telegram/ui/ProxyListActivity$$ExternalSyntheticLambda4;->f$0:Z

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/telegram/ui/ProxyListActivity$$ExternalSyntheticLambda4;->f$0:Z

    check-cast p1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    check-cast p2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/ProxyListActivity;->$r8$lambda$F0ntdD2Sew06w0Fb3gFNj5r5cho(ZLorg/telegram/messenger/SharedConfig$ProxyInfo;Lorg/telegram/messenger/SharedConfig$ProxyInfo;)I

    move-result p1

    return p1
.end method
