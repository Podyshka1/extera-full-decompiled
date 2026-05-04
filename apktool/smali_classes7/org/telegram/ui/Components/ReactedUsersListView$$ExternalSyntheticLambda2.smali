.class public final synthetic Lorg/telegram/ui/Components/ReactedUsersListView$$ExternalSyntheticLambda2;
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
    check-cast p1, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;

    invoke-static {p1}, Lorg/telegram/ui/Components/ReactedUsersListView;->$r8$lambda$IZe4Wi8p9EjDVKlK4u7Qg4F2iVM(Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;)I

    move-result p1

    return p1
.end method
