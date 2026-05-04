.class public final synthetic Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda44;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ProfileActivity;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$Chat;

.field public final synthetic f$2:Lcom/exteragram/messenger/api/dto/BadgeDTO;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/tgnet/TLRPC$Chat;Lcom/exteragram/messenger/api/dto/BadgeDTO;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda44;->f$0:Lorg/telegram/ui/ProfileActivity;

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda44;->f$1:Lorg/telegram/tgnet/TLRPC$Chat;

    iput-object p3, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda44;->f$2:Lcom/exteragram/messenger/api/dto/BadgeDTO;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda44;->f$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda44;->f$1:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda44;->f$2:Lcom/exteragram/messenger/api/dto/BadgeDTO;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ProfileActivity;->$r8$lambda$kRsbobVgA7fFsplfc57HW_QRwWs(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/tgnet/TLRPC$Chat;Lcom/exteragram/messenger/api/dto/BadgeDTO;)V

    return-void
.end method
