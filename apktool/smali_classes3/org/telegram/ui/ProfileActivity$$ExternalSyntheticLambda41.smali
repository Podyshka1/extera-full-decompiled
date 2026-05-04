.class public final synthetic Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ProfileActivity;

.field public final synthetic f$1:Lcom/exteragram/messenger/api/dto/BadgeDTO;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ProfileActivity;Lcom/exteragram/messenger/api/dto/BadgeDTO;ZLorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda41;->f$0:Lorg/telegram/ui/ProfileActivity;

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda41;->f$1:Lcom/exteragram/messenger/api/dto/BadgeDTO;

    iput-boolean p3, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda41;->f$2:Z

    iput-object p4, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda41;->f$3:Lorg/telegram/tgnet/TLRPC$User;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda41;->f$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda41;->f$1:Lcom/exteragram/messenger/api/dto/BadgeDTO;

    iget-boolean v2, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda41;->f$2:Z

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda41;->f$3:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/ProfileActivity;->$r8$lambda$jEwvqro-f_34YKaD_lfEKRA86Y4(Lorg/telegram/ui/ProfileActivity;Lcom/exteragram/messenger/api/dto/BadgeDTO;ZLorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method
