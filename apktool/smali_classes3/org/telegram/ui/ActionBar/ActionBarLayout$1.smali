.class Lorg/telegram/ui/ActionBar/ActionBarLayout$1;
.super Lorg/telegram/ui/EmptyBaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBarLayout;->getSheetFragment(Z)Lorg/telegram/ui/EmptyBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$1;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-direct {p0}, Lorg/telegram/ui/EmptyBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected updateSheetsVisibility()V
    .locals 1

    .line 511
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->updateSheetsVisibility()V

    .line 512
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$1;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
