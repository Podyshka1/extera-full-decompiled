.class public final synthetic Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LaunchActivity;

.field public final synthetic f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

.field public final synthetic f$2:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ProfileActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda29;->f$0:Lorg/telegram/ui/LaunchActivity;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda29;->f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

    iput-object p3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda29;->f$2:Lorg/telegram/ui/ProfileActivity;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda29;->f$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda29;->f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda29;->f$2:Lorg/telegram/ui/ProfileActivity;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/LaunchActivity;->$r8$lambda$FgjcIGj5VRmuo5O6-2jKhzNNeGI(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ProfileActivity;Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method
