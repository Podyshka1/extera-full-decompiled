.class public final synthetic Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda108;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/tgnet/TLObject;ILjava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda108;->f$0:Lorg/telegram/tgnet/TLObject;

    iput p2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda108;->f$1:I

    iput-object p3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda108;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda108;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda108;->f$0:Lorg/telegram/tgnet/TLObject;

    iget v1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda108;->f$1:I

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda108;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda108;->f$3:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/LaunchActivity;->$r8$lambda$bEwydmSNMGgs3h-Pti7o_ol2sD0(Lorg/telegram/tgnet/TLObject;ILjava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method
