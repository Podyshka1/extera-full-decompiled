.class public final synthetic Lorg/telegram/ui/Cells/UnconfirmedAuthHintCell$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;ILjava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Cells/UnconfirmedAuthHintCell$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput p2, p0, Lorg/telegram/ui/Cells/UnconfirmedAuthHintCell$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lorg/telegram/ui/Cells/UnconfirmedAuthHintCell$$ExternalSyntheticLambda0;->f$2:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Cells/UnconfirmedAuthHintCell$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget v1, p0, Lorg/telegram/ui/Cells/UnconfirmedAuthHintCell$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lorg/telegram/ui/Cells/UnconfirmedAuthHintCell$$ExternalSyntheticLambda0;->f$2:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/Cells/UnconfirmedAuthHintCell;->$r8$lambda$VsgCjKaKq9oLljJk7R6BjSxv6QY(Lorg/telegram/ui/ActionBar/BaseFragment;ILjava/util/ArrayList;Landroid/view/View;)V

    return-void
.end method
