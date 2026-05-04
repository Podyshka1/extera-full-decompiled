.class public final synthetic Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ProfileActivity;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$User;

.field public final synthetic f$2:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/ActionBar/SimpleTextView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda40;->f$0:Lorg/telegram/ui/ProfileActivity;

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda40;->f$1:Lorg/telegram/tgnet/TLRPC$User;

    iput-object p3, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda40;->f$2:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda40;->f$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda40;->f$1:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda40;->f$2:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/ProfileActivity;->$r8$lambda$NFATUVPDqhIT-TEzYGDEWg1GtUQ(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/ActionBar/SimpleTextView;Landroid/view/View;)V

    return-void
.end method
