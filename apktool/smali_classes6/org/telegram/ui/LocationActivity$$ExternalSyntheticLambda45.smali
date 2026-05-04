.class public final synthetic Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda45;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LocationActivity;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$User;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LocationActivity;Lorg/telegram/tgnet/TLRPC$User;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda45;->f$0:Lorg/telegram/ui/LocationActivity;

    iput-object p2, p0, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda45;->f$1:Lorg/telegram/tgnet/TLRPC$User;

    iput p3, p0, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda45;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda45;->f$0:Lorg/telegram/ui/LocationActivity;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda45;->f$1:Lorg/telegram/tgnet/TLRPC$User;

    iget v2, p0, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda45;->f$2:I

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/LocationActivity;->$r8$lambda$PA6cOXwrl0BH92wWIQtUIGut8VI(Lorg/telegram/ui/LocationActivity;Lorg/telegram/tgnet/TLRPC$User;ILorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method
