.class Lorg/telegram/ui/ProfileActivity$1;
.super Landroid/graphics/Paint;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;I)V
    .locals 0

    .line 446
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$1;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0, p2}, Landroid/graphics/Paint;-><init>(I)V

    return-void
.end method


# virtual methods
.method public setAlpha(I)V
    .locals 0

    .line 449
    invoke-super {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 450
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$1;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
