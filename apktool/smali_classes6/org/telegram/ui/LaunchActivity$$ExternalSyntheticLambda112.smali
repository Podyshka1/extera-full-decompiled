.class public final synthetic Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda112;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LaunchActivity;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public final synthetic f$3:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LaunchActivity;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda112;->f$0:Lorg/telegram/ui/LaunchActivity;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda112;->f$1:Ljava/lang/Runnable;

    iput-object p3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda112;->f$2:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p4, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda112;->f$3:Lorg/telegram/tgnet/TLObject;

    iput p5, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda112;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda112;->f$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda112;->f$1:Ljava/lang/Runnable;

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda112;->f$2:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda112;->f$3:Lorg/telegram/tgnet/TLObject;

    iget v4, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda112;->f$4:I

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/ui/LaunchActivity;->$r8$lambda$qSvkmLwFsMzCzHOB7Chl_R66Yvg(Lorg/telegram/ui/LaunchActivity;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;I)V

    return-void
.end method
