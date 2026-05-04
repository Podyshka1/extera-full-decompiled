.class public final synthetic Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/ChatAttachAlert;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public final synthetic f$3:Lorg/telegram/ui/ActionBar/BaseFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda21;->f$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda21;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda21;->f$2:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda21;->f$3:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda21;->f$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda21;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda21;->f$2:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda21;->f$3:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v0, v1, v2, v3, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->$r8$lambda$9UOZMRLDM4Mr6bu3_J8emFtCz2Y(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
