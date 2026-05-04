.class public final synthetic Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    .line 0
    check-cast p1, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;

    invoke-static {p1}, Lcom/exteragram/messenger/plugins/PluginsController;->$r8$lambda$jGDfh3GP87IKbgkjJ7tnmc9dDvk(Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;)I

    move-result p1

    return p1
.end method
