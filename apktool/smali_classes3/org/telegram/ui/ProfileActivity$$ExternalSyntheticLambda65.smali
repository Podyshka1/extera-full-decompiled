.class public final synthetic Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda65;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ProfileActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda65;->f$0:Lorg/telegram/ui/ProfileActivity;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda65;->f$0:Lorg/telegram/ui/ProfileActivity;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    invoke-static {v0, p1}, Lorg/telegram/ui/ProfileActivity;->$r8$lambda$9Zk2Sse-cQOawnCDlP23S1Pr8qI(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/tgnet/TLRPC$InputStickerSet;)V

    return-void
.end method
