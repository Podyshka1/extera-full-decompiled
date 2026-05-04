.class public final synthetic Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda161;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LaunchActivity;

.field public final synthetic f$1:Lorg/telegram/messenger/browser/Browser$Progress;

.field public final synthetic f$2:J

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/Integer;

.field public final synthetic f$5:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public final synthetic f$6:Landroid/os/Bundle;

.field public final synthetic f$7:Lorg/telegram/ui/ChatActivity;

.field public final synthetic f$8:Ljava/lang/String;

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/messenger/browser/Browser$Progress;JILjava/lang/Integer;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/os/Bundle;Lorg/telegram/ui/ChatActivity;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda161;->f$0:Lorg/telegram/ui/LaunchActivity;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda161;->f$1:Lorg/telegram/messenger/browser/Browser$Progress;

    iput-wide p3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda161;->f$2:J

    iput p5, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda161;->f$3:I

    iput-object p6, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda161;->f$4:Ljava/lang/Integer;

    iput-object p7, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda161;->f$5:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p8, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda161;->f$6:Landroid/os/Bundle;

    iput-object p9, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda161;->f$7:Lorg/telegram/ui/ChatActivity;

    iput-object p10, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda161;->f$8:Ljava/lang/String;

    iput p11, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda161;->f$9:I

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 13

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda161;->f$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda161;->f$1:Lorg/telegram/messenger/browser/Browser$Progress;

    iget-wide v2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda161;->f$2:J

    iget v4, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda161;->f$3:I

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda161;->f$4:Ljava/lang/Integer;

    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda161;->f$5:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v7, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda161;->f$6:Landroid/os/Bundle;

    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda161;->f$7:Lorg/telegram/ui/ChatActivity;

    iget-object v9, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda161;->f$8:Ljava/lang/String;

    iget v10, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda161;->f$9:I

    move-object v11, p1

    move-object v12, p2

    invoke-static/range {v0 .. v12}, Lorg/telegram/ui/LaunchActivity;->$r8$lambda$ZB5A_CXNFkmH5OIf3fUrpOqBrRI(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/messenger/browser/Browser$Progress;JILjava/lang/Integer;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/os/Bundle;Lorg/telegram/ui/ChatActivity;Ljava/lang/String;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
