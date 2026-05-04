.class Lorg/telegram/ui/ActionBar/BottomSheet$1;
.super Landroid/graphics/drawable/ColorDrawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/BottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/BottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/BottomSheet;I)V
    .locals 0

    .line 135
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$1;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-direct {p0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-void
.end method


# virtual methods
.method public setAlpha(I)V
    .locals 0

    .line 138
    invoke-super {p0, p1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 139
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$1;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
