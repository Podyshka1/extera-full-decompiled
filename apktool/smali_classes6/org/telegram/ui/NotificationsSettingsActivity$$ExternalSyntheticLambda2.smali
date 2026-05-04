.class public final synthetic Lorg/telegram/ui/NotificationsSettingsActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsDouble(Ljava/lang/Object;)D
    .locals 2

    .line 0
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    invoke-static {p1}, Lorg/telegram/ui/NotificationsSettingsActivity;->$r8$lambda$NLO7wYLEVKU9wTAFL-ch-Llf-Sc(Lorg/telegram/tgnet/TLRPC$TL_topPeer;)D

    move-result-wide v0

    return-wide v0
.end method
