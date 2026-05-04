.class public final synthetic Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda57;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/GroupCallActivity;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$Chat;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/GroupCallActivity;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputPeer;Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda57;->f$0:Lorg/telegram/ui/GroupCallActivity;

    iput-object p2, p0, Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda57;->f$1:Lorg/telegram/tgnet/TLRPC$Chat;

    iput-object p3, p0, Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda57;->f$2:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-object p4, p0, Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda57;->f$3:Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda57;->f$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda57;->f$1:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, p0, Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda57;->f$2:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda57;->f$3:Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/GroupCallActivity;->$r8$lambda$2eKIUeAHFomVikUi96o7gwK-Lgs(Lorg/telegram/ui/GroupCallActivity;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputPeer;Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;)V

    return-void
.end method
